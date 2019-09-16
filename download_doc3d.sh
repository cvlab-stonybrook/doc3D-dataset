#!/bin/bash

if [ "$#" -eq 1 ]; then
    outputPath="$1/doc3d"
else
    outputPath="$HOME/Downloads/doc3d"
fi

if ! [ -x "$(command -v wget)" ]; then
    echo "Error!: wget is not installed! Please install it and try again"
    exit 1
fi

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Downloading into $outputPath"
echo -e "\n### ------------------------------------------------------- ###\n"

doc3d_download() {
    local url=$1
    local path=$2
    local files=$3
    
    echo -ne "### Downloading "$files" ###\t\n"
    wget --continue --directory-prefix="$path" "$url" 2>&1
    echo -ne "\b\b\b\b"
    echo " # done"
}

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_1.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_2.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_3.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_4.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_5.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_6.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_7.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_8.zip" "$outputPath/" "Images"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_1.zip" "$outputPath/" "3D Coords"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_2.zip" "$outputPath/" "3D Coords"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_3.zip" "$outputPath/" "3D Coords"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_4.zip" "$outputPath/" "3D Coords"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_5.zip" "$outputPath/" "3D Coords"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_6.zip" "$outputPath/" "3D Coords"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_7.zip" "$outputPath/" "3D Coords"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_8.zip" "$outputPath/" "3D Coords"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_1.zip" "$outputPath/" "Backward Maps"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_2.zip" "$outputPath/" "Backward Maps"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_3.zip" "$outputPath/" "Backward Maps"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_4.zip" "$outputPath/" "Backward Maps"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_5.zip" "$outputPath/" "Backward Maps"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_6.zip" "$outputPath/" "Backward Maps"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_7.zip" "$outputPath/" "Backward Maps"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_8.zip" "$outputPath/" "Backward Maps"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_1.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_2.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_3.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_4.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_5.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_6.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_7.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_8.zip" "$outputPath/" "UVs"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_1.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_2.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_3.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_4.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_5.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_6.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_7.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_8.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_1.zip" "$outputPath/" "Checkerboards"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_2.zip" "$outputPath/" "Checkerboards"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_3.zip" "$outputPath/" "Checkerboards"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_4.zip" "$outputPath/" "Checkerboards"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_5.zip" "$outputPath/" "Checkerboards"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_6.zip" "$outputPath/" "Checkerboards"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_7.zip" "$outputPath/" "Checkerboards"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_8.zip" "$outputPath/" "Checkerboards"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_1.zip" "$outputPath/" "Normals"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_2.zip" "$outputPath/" "Normals"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_3.zip" "$outputPath/" "Normals"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_4.zip" "$outputPath/" "Normals"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_5.zip" "$outputPath/" "Normals"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_6.zip" "$outputPath/" "Normals"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_7.zip" "$outputPath/" "Normals"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_8.zip" "$outputPath/" "Normals"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_1.zip" "$outputPath/" "Depths"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_2.zip" "$outputPath/" "Depths"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_3.zip" "$outputPath/" "Depths"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_4.zip" "$outputPath/" "Depths"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_5.zip" "$outputPath/" "Depths"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_6.zip" "$outputPath/" "Depths"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_7.zip" "$outputPath/" "Depths"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_8.zip" "$outputPath/" "Depths"


echo -e "\n### ------------------------------------------------------- ###\n"
echo "### All done!"
echo -e "\n### ------------------------------------------------------- ###\n"
