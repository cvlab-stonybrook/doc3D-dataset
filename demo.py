import os
import argparse
import matplotlib.pyplot as plt
import hdf5storage as h5
import cv2
import random
import subprocess
import numpy as np

parser = argparse.ArgumentParser(description='Params')
parser.add_argument('--data_root', nargs='?', type=str, default='~/Downloads/doc3d/', 
                    help='Path to the downloaded dataset')
parser.add_argument('--folder', nargs='?', type=int, default=1, 
                    help='Folder ID to read from')
parser.add_argument('--download_sample', dest='download_sample', action='store_true',
					help='If you want to download a sample data and run demo.py on it | Useful to visualize before downloading the entire data.')
parser.add_argument('--unwarp', dest='unwarp', action='store_true',
					help='Unwarp input image using gt backward mapping.')
args = parser.parse_args()

root=os.path.expanduser(args.data_root)
folder=args.folder
if args.download_sample:
	f_dir=os.path.join(root,'img','8')
	folder='8'
	dwnld_cmd=['wget','--directory-prefix',root,'http://vision.cs.stonybrook.edu/~sagnik/demo.zip']
	subprocess.call(dwnld_cmd)
	unzip_cmd=['unzip','-q',os.path.join(root,'demo.zip'),'-d',root]
	subprocess.call(unzip_cmd)
	rm_cmd=['rm',os.path.join(root,'demo.zip')]
	subprocess.call(rm_cmd)
else:
	f_dir=os.path.join(root,'img',str(folder))
	
choices=[f for f in os.listdir(f_dir) if 'png' in f]
fname= random.choice(choices)

##### Read Image #####
img_path=os.path.join(f_dir,fname)
img=cv2.imread(img_path)

##### Read 3D Coords #####
wc_path=os.path.join(root,'wc',str(folder),fname[:-3]+'exr')
wc=cv2.imread(wc_path,cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)
# scale wc
xmx, xmn, ymx, ymn,zmx, zmn= 1.2539363, -1.2442188, 1.2396319, -1.2289206, 0.6436657, -0.67492497     ## value obtained from the entire dataset 
wc[:,:,0]= (wc[:,:,0]-zmn)/(zmx-zmn)
wc[:,:,1]= (wc[:,:,1]-ymn)/(ymx-ymn)
wc[:,:,2]= (wc[:,:,2]-xmn)/(xmx-xmn)

##### Read Backward Map #####
bm_path = os.path.join(root,'bm',str(folder),fname[:-3]+'mat')
bm = h5.loadmat(bm_path)['bm']

##### Read UV Map #####
uv_path = os.path.join(root,'uv',str(folder),fname[:-3]+'exr')
uv=cv2.imread(uv_path,cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)

##### Read Depth Map #####
dmap_path = os.path.join(root,'dmap',str(folder),fname[:-3]+'exr')
dmap=cv2.imread(dmap_path,cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)[:,:,0]
#print np.max(dmap)		### 10000000000.0, this is the default blender value
#### do some clipping and scaling to display it
dmap[dmap>30.0]=30 
dmap= 1- ((dmap-np.min(dmap))/(np.max(dmap)-np.min(dmap)))

##### Read Normal Map #####
norm_path=os.path.join(root,'norm',str(folder),fname[:-3]+'exr')
norm=cv2.imread(norm_path,cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)

##### Read Albedo #####
alb_path=os.path.join(root,'alb',str(folder),fname[:-3]+'png')
alb=cv2.imread(alb_path)

##### Read Checkerboard Image #####
recon_path=os.path.join(root,'recon',str(folder),fname[:-8]+'chess480001.png')
recon=cv2.imread(recon_path)

##### Display image and GTs #####
f,axrr=plt.subplots(2,4)
for ax in axrr:
	for a in ax:
		a.set_xticks([])
		a.set_yticks([])

axrr[0][0].imshow(img)
axrr[0][0].title.set_text('image')
axrr[0][1].imshow(wc)
axrr[0][1].title.set_text('3D coords')
axrr[0][2].imshow(bm[:,:,0])    ### Alternatively bm[:,:,1] can be displayed
axrr[0][2].title.set_text('backward map')
axrr[0][3].imshow(uv)
axrr[0][3].title.set_text('uv map')
axrr[1][0].imshow(dmap)
axrr[1][0].title.set_text('depth map')
axrr[1][1].imshow(norm)
axrr[1][1].title.set_text('normal map')
axrr[1][2].imshow(alb)
axrr[1][2].title.set_text('albedo')
axrr[1][3].imshow(recon)
axrr[1][3].title.set_text('checkerboard')
plt.tight_layout()
plt.show()


'''
Let's use the backward mapping to dewarp the image. 
You need PyTorch for this part of the code.
'''
if args.unwarp:
	import torch
	import torch.nn.functional as F

	# scale bm to -1.0 to 1.0
	bm_ = bm / np.array([448, 448])
	bm_=(bm_-0.5)*2
	bm_ = np.reshape(bm_, (1, 448, 448, 2))
	bm_ = torch.from_numpy(bm_).float()
	img_ = alb.transpose((2, 0, 1)).astype(np.float32)/255.0
	img_ = np.expand_dims(img_, 0)
	img_ = torch.from_numpy(img_)
	uw = F.grid_sample(img_, bm_)
	uw = uw[0].numpy().transpose((1, 2, 0))

	f,axrr=plt.subplots(1,2)
	for ax in axrr:
                a.set_xticks([])
                a.set_yticks([])
	axrr[0].imshow(alb)
	axrr[0].title.set_text('input')
	axrr[1].imshow(uw)
	axrr[1].title.set_text('gt-unwarped')
	plt.show()
