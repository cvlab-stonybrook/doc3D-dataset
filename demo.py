import os
import argparse
import matplotlib.pyplot as plt
import hdf5storage as h5
import cv2
import random
import subprocess

parser = argparse.ArgumentParser(description='Params')
parser.add_argument('--data_root', nargs='?', type=str, default='~/Downloads/doc3d/', 
                    help='Path to the downloaded dataset')
parser.add_argument('--folder', nargs='?', type=int, default=1, 
                    help='Folder ID to read from')
parser.add_argument('--download_sample', dest='download_sample', action='store_true',
					help='If you want to download a sample data and run demo.py on it | Useful if you\'re curious before downloading the entire data..')

args = parser.parse_args()

if args.download_sample:
	f_dir=os.path.join(args.data_root,'img','8')
else:
	f_dir=os.path.join(args.data_root,'img',str(args.folder))
	
choices=[f for f in os.listdir(f_dir) if 'png' in f]
fname= random.choice(choices)
img=cv2.imread()
uv = cv2.imread(,cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)
wc = cv2.imread(os.path.join(root,'wc',str(folder),f[:-3]+'exr'),cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)
n = cv2.imread(os.path.join(root,'norm',str(folder),f[:-3]+'exr'),cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)

##### Read Image #####
img_path=os.path.join(f_dir,fname)
img=cv2.imread(img_path)

##### Read 3D Coords #####
wc_path=os.path.join(root,'wc',str(folder),f[:-3]+'exr')
wc=cv2.imread(wc_path,cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)

##### Read Backward Map #####
bm_path = os.path.join(root,'bm',str(folder),f[:-3]+'mat')
bm = h5.loadmat(bm_path)['bm']

##### Read UV Map #####
uv_path = os.path.join(root,'uv',str(folder),f[:-3]+'exr')
uv=cv2.imread(uv_path,cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)

##### Read Depth Map #####
dmap_path = os.path.join(root,'dmap',str(folder),f[:-3]+'exr')
dmap=cv2.imread(dmap_path,cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)

##### Read Normal Map #####
norm_path=os.path.join(root,'norm',str(folder),f[:-3]+'exr')
norm=cv2.imread(norm_path,cv2.IMREAD_ANYCOLOR | cv2.IMREAD_ANYDEPTH)

##### Read Albedo #####
alb_path=os.path.join(root,'alb',str(folder),f[:-3]+'png')
alb=cv2.imread(alb_path)

##### Read Checkerboard Image #####
recon_path=os.path.join(root,'recon',str(folder),f[:-8]+'chess480001.png')
recon=cv2.imread(recon_path)

##### Display image and GTs #####
