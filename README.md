
# doc3D 
Doc3D is the first 3D dataset focused on document unwarping with realistic paper warping and renderings.
<p align="center">
  <img src="data.gif">
</p>

It contains 100k images with the following ground-truths:
- 3D Coordinates
- Depth 
- UV
- Backward Mapping
- Albedo
- Normals
- Checkerboard

This repository contains all the necessary bash scripts to download the dataset-
- To download the dataset you need to obtain a username and password. Please fill out the [Google Form](https://forms.gle/RTfi7LUSrt891VuN8) to request one.
- Update the assigned username password in the download scripts at lines: `local uname=****` `local pass=****`
- To download the entire dataset at once (in the default directory `$HOME/Downloads/doc3d`), use the following command:
    - `bash download_doc3d.sh`
- To download in a specific directory-
    - `bash download_doc3d.sh <out_dir>`
- Individual bash scripts are provided to download a specific part of the data. Following will download all the image files in `<out_dir>/doc3d/img/`- 
    - `bash download_img.sh <out_dir>`

**Rendering codes are available!!**: You can use the scripts [here](https://github.com/sagniklp/doc3D-renderer) to *render your own version of doc3D*.

**Some Notes:** 
- A download can be interrupted and resumed later, wget keeps track of it. 
- Already downloaded files will be skipped and partially downloaded files will be resumed.
- The scripts are tested on Linux and Mac. For windows, a bash shell [[probably-useful](https://itsfoss.com/install-bash-on-windows/)] should work.

### Visualize Data:
Run the `demo.py` file to display a random image and corresponding ground-truths. `demo.py` takes the following flags-	
- `--data_root` : Path to the doc3d dataset.
- `--folder` : Specific folder to load image from.
- `--download_sample` : If you want to download some samples and run `demo.py` on it. useful if you want to visualize it before downloading the entire data.
- `--unwarp` : Unwarp input image using the ground-truth backward mapping. 


### Release Updates:
- **Sep 16, 2019:** v0.5 (36K images, no depth map) 
- **Sep 17, 2019:** v0.5.1 (Depth maps for v0.5 images)
- **Sep 21, 2019:** Rendering code is now available! 
- **Sep 22, 2019:** v0.9 (65K images, no albedos) 
- **Mar 11, 2020:** Please send an email to request the meshes (`.obj`)

### Citation:
If you use the dataset, please consider citing our work-
```
@inproceedings{SagnikKeICCV2019, 
Author = {Sagnik Das*, Ke Ma*, Zhixin Shu, Dimitris Samaras, Roy Shilkrot}, 
Booktitle = {Proceedings of International Conference on Computer Vision}, 
Title = {DewarpNet: Single-Image Document Unwarping With Stacked 3D and 2D Regression Networks}, 
Year = {2019}}   
```
#### Acknowlegement: 
- Bash scripts are adapted from [epic-kitchens-download-scripts](https://github.com/epic-kitchens/download-scripts). 
- Textures are obtained from:
  - [Yes! Magazine](https://issues.yesmagazine.org/) under Creative Commons Licence.
  - [CVF Open Access](http://openaccess.thecvf.com/menu.py)
  - From books available under [Project Gutenberg](https://www.gutenberg.org/) 
