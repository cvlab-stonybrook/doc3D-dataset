# doc3D
Doc3D is the first 3D dataset focused on document unwarping, it contains 100k images with the following ground-truths:
- 3D Coordinates
- Depth 
- UV
- Backward Mapping
- Albedo
- Normals
- Checkerboard

This repository contains all the necessary bash scripts to download the dataset-
- To download the entire dataset at once (in the default directory `$HOME/Downloads/doc3d`), use the following command:
    - `bash download_doc3d.sh`
- To download in a specific directory-
    - `bash download_doc3d.sh <out_dir>`
- Individual bash scripts are provided to download a specific part of the data. Following will download all the image files in `<out_dir>/doc3d/img/`- 
    - `bash download_img.sh <out_dir>`

**Some Notes:** 
- A download can be interrupted and resumed later, wget keeps track of it. 
- Already downloaded files will be skipped and partially downloaded files will be resumed.
- The scripts are tested on Linux and Mac. For windows, a bash shell [[heads-up](https://itsfoss.com/install-bash-on-windows/)] should work.

### Release Updates:
- **Sep 16,2019:** v0.5 (36K images, no depth map) 
- **Upcoming:** v0.5.1 (Depth maps for v0.5 images)
- Rest of the images (with ground-truths), meshes and, our rendering code will be available soon!

### Citation:
If you use the dataset, please consider citing our work-
```
@inproceedings{SagnikKeICCV2019, 
Author = {Sagnik Das*, Ke Ma*, Zhixin Shu, Dimitris Samaras, Roy Shilkrot}, 
Booktitle = {Proceedings of International Conference on Computer Vision}, 
Title = {DewarpNet: Single-Image Document Unwarping With Stacked 3D and 2D Regression Networks}, 
Year = {2019}}   
```
##### Acknowlegement: 
Bash scripts are adapted from [epic-kitchens-download-scripts](https://github.com/epic-kitchens/download-scripts). 