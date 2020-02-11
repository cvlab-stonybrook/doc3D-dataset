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
    local uname=****    # put your username
    local pass=****     # put your password
    
    echo -ne "### Downloading "$files" ###\t\n"
    wget --continue --user "$uname" --password "$pass" --directory-prefix="$path" "$url" 2>&1
    echo -ne "\b\b\b\b"
    echo " # done"
}

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_1.zip" "$outputPath/" "doc3d/img_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_2.zip" "$outputPath/" "doc3d/img_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_3.zip" "$outputPath/" "doc3d/img_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_4.zip" "$outputPath/" "doc3d/img_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_5.zip" "$outputPath/" "doc3d/img_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_6.zip" "$outputPath/" "doc3d/img_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_7.zip" "$outputPath/" "doc3d/img_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_8.zip" "$outputPath/" "doc3d/img_8.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_9.zip" "$outputPath/" "doc3d/img_9.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_10.zip" "$outputPath/" "doc3d/img_10.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_11.zip" "$outputPath/" "doc3d/img_11.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_12.zip" "$outputPath/" "doc3d/img_12.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_13.zip" "$outputPath/" "doc3d/img_13.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_14.zip" "$outputPath/" "doc3d/img_14.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_15.zip" "$outputPath/" "doc3d/img_15.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_16.zip" "$outputPath/" "doc3d/img_16.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_17.zip" "$outputPath/" "doc3d/img_17.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_18.zip" "$outputPath/" "doc3d/img_18.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_19.zip" "$outputPath/" "doc3d/img_19.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_20.zip" "$outputPath/" "doc3d/img_20.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_21.zip" "$outputPath/" "doc3d/img_21.zip"

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_1.zip" "$outputPath/" "doc3d/wc_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_2.zip" "$outputPath/" "doc3d/wc_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_3.zip" "$outputPath/" "doc3d/wc_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_4.zip" "$outputPath/" "doc3d/wc_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_5.zip" "$outputPath/" "doc3d/wc_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_6.zip" "$outputPath/" "doc3d/wc_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_7.zip" "$outputPath/" "doc3d/wc_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_8.zip" "$outputPath/" "doc3d/wc_8.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_9.zip" "$outputPath/" "doc3d/wc_9.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_10.zip" "$outputPath/" "doc3d/wc_10.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_11.zip" "$outputPath/" "doc3d/wc_11.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_12.zip" "$outputPath/" "doc3d/wc_12.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_13.zip" "$outputPath/" "doc3d/wc_13.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_14.zip" "$outputPath/" "doc3d/wc_14.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_15.zip" "$outputPath/" "doc3d/wc_15.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_16.zip" "$outputPath/" "doc3d/wc_16.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_17.zip" "$outputPath/" "doc3d/wc_17.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_18.zip" "$outputPath/" "doc3d/wc_18.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_19.zip" "$outputPath/" "doc3d/wc_19.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_20.zip" "$outputPath/" "doc3d/wc_20.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_21.zip" "$outputPath/" "doc3d/wc_21.zip"

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_1.zip" "$outputPath/" "doc3d/bm_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_2.zip" "$outputPath/" "doc3d/bm_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_3.zip" "$outputPath/" "doc3d/bm_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_4.zip" "$outputPath/" "doc3d/bm_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_5.zip" "$outputPath/" "doc3d/bm_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_6.zip" "$outputPath/" "doc3d/bm_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_7.zip" "$outputPath/" "doc3d/bm_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_8.zip" "$outputPath/" "doc3d/bm_8.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_9.zip" "$outputPath/" "doc3d/bm_9.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_10.zip" "$outputPath/" "doc3d/bm_10.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_11.zip" "$outputPath/" "doc3d/bm_11.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_12.zip" "$outputPath/" "doc3d/bm_12.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_13.zip" "$outputPath/" "doc3d/bm_13.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_14.zip" "$outputPath/" "doc3d/bm_14.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_15.zip" "$outputPath/" "doc3d/bm_15.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_16.zip" "$outputPath/" "doc3d/bm_16.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_17.zip" "$outputPath/" "doc3d/bm_17.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_18.zip" "$outputPath/" "doc3d/bm_18.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_19.zip" "$outputPath/" "doc3d/bm_19.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_20.zip" "$outputPath/" "doc3d/bm_20.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_21.zip" "$outputPath/" "doc3d/bm_21.zip"

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_1.zip" "$outputPath/" "doc3d/uv_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_2.zip" "$outputPath/" "doc3d/uv_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_3.zip" "$outputPath/" "doc3d/uv_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_4.zip" "$outputPath/" "doc3d/uv_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_5.zip" "$outputPath/" "doc3d/uv_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_6.zip" "$outputPath/" "doc3d/uv_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_7.zip" "$outputPath/" "doc3d/uv_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_8.zip" "$outputPath/" "doc3d/uv_8.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_10.zip" "$outputPath/" "doc3d/uv_10.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_11.zip" "$outputPath/" "doc3d/uv_11.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_12.zip" "$outputPath/" "doc3d/uv_12.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_13.zip" "$outputPath/" "doc3d/uv_13.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_14.zip" "$outputPath/" "doc3d/uv_14.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_15.zip" "$outputPath/" "doc3d/uv_15.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_16.zip" "$outputPath/" "doc3d/uv_16.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_17.zip" "$outputPath/" "doc3d/uv_17.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_18.zip" "$outputPath/" "doc3d/uv_18.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_19.zip" "$outputPath/" "doc3d/uv_19.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_20.zip" "$outputPath/" "doc3d/uv_20.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_21.zip" "$outputPath/" "doc3d/uv_21.zip"

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_1.zip" "$outputPath/" "doc3d/alb_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_2.zip" "$outputPath/" "doc3d/alb_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_3.zip" "$outputPath/" "doc3d/alb_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_4.zip" "$outputPath/" "doc3d/alb_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_5.zip" "$outputPath/" "doc3d/alb_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_6.zip" "$outputPath/" "doc3d/alb_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_7.zip" "$outputPath/" "doc3d/alb_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_8.zip" "$outputPath/" "doc3d/alb_8.zip"

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_1.zip" "$outputPath/" "doc3d/recon_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_2.zip" "$outputPath/" "doc3d/recon_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_3.zip" "$outputPath/" "doc3d/recon_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_4.zip" "$outputPath/" "doc3d/recon_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_5.zip" "$outputPath/" "doc3d/recon_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_6.zip" "$outputPath/" "doc3d/recon_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_7.zip" "$outputPath/" "doc3d/recon_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_8.zip" "$outputPath/" "doc3d/recon_8.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_9.zip" "$outputPath/" "doc3d/recon_9.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_10.zip" "$outputPath/" "doc3d/recon_10.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_11.zip" "$outputPath/" "doc3d/recon_11.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_12.zip" "$outputPath/" "doc3d/recon_12.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_13.zip" "$outputPath/" "doc3d/recon_13.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_14.zip" "$outputPath/" "doc3d/recon_14.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_15.zip" "$outputPath/" "doc3d/recon_15.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_16.zip" "$outputPath/" "doc3d/recon_16.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_17.zip" "$outputPath/" "doc3d/recon_17.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_18.zip" "$outputPath/" "doc3d/recon_18.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_19.zip" "$outputPath/" "doc3d/recon_19.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_20.zip" "$outputPath/" "doc3d/recon_20.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/recon_21.zip" "$outputPath/" "doc3d/recon_21.zip"

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_1.zip" "$outputPath/" "doc3d/norm_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_2.zip" "$outputPath/" "doc3d/norm_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_3.zip" "$outputPath/" "doc3d/norm_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_4.zip" "$outputPath/" "doc3d/norm_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_5.zip" "$outputPath/" "doc3d/norm_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_6.zip" "$outputPath/" "doc3d/norm_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_7.zip" "$outputPath/" "doc3d/norm_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_8.zip" "$outputPath/" "doc3d/norm_8.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_9.zip" "$outputPath/" "doc3d/norm_9.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_10.zip" "$outputPath/" "doc3d/norm_10.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_11.zip" "$outputPath/" "doc3d/norm_11.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_12.zip" "$outputPath/" "doc3d/norm_12.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_13.zip" "$outputPath/" "doc3d/norm_13.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_14.zip" "$outputPath/" "doc3d/norm_14.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_15.zip" "$outputPath/" "doc3d/norm_15.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_16.zip" "$outputPath/" "doc3d/norm_16.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_17.zip" "$outputPath/" "doc3d/norm_17.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_18.zip" "$outputPath/" "doc3d/norm_18.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_19.zip" "$outputPath/" "doc3d/norm_19.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_20.zip" "$outputPath/" "doc3d/norm_20.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_21.zip" "$outputPath/" "doc3d/norm_21.zip"

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_1.zip" "$outputPath/" "doc3d/dmap_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_2.zip" "$outputPath/" "doc3d/dmap_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_3.zip" "$outputPath/" "doc3d/dmap_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_4.zip" "$outputPath/" "doc3d/dmap_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_5.zip" "$outputPath/" "doc3d/dmap_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_6.zip" "$outputPath/" "doc3d/dmap_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_7.zip" "$outputPath/" "doc3d/dmap_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_8.zip" "$outputPath/" "doc3d/dmap_8.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_9.zip" "$outputPath/" "doc3d/dmap_9.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_10.zip" "$outputPath/" "doc3d/dmap_10.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_11.zip" "$outputPath/" "doc3d/dmap_11.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_12.zip" "$outputPath/" "doc3d/dmap_12.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_13.zip" "$outputPath/" "doc3d/dmap_13.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_14.zip" "$outputPath/" "doc3d/dmap_14.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_15.zip" "$outputPath/" "doc3d/dmap_15.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_16.zip" "$outputPath/" "doc3d/dmap_16.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_17.zip" "$outputPath/" "doc3d/dmap_17.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_18.zip" "$outputPath/" "doc3d/dmap_18.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_19.zip" "$outputPath/" "doc3d/dmap_19.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_20.zip" "$outputPath/" "doc3d/dmap_20.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_21.zip" "$outputPath/" "doc3d/dmap_21.zip"



echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Unzipping downloaded files ###"
echo -e "\n### ------------------------------------------------------- ###\n"
echo -e $outputPath"/img_1.zip .."
unzip -q $outputPath"/img_1.zip" -d $outputPath
rm $outputPath"doc3d/img_1.zip"
echo -e $outputPath"/img_2.zip .."
unzip -q $outputPath"/img_2.zip" -d $outputPath
rm $outputPath"doc3d/img_2.zip"
echo -e $outputPath"/img_3.zip .."
unzip -q $outputPath"/img_3.zip" -d $outputPath
rm $outputPath"doc3d/img_3.zip"
echo -e $outputPath"/img_4.zip .."
unzip -q $outputPath"/img_4.zip" -d $outputPath
rm $outputPath"doc3d/img_4.zip"
echo -e $outputPath"/img_5.zip .."
unzip -q $outputPath"/img_5.zip" -d $outputPath
rm $outputPath"doc3d/img_5.zip"
echo -e $outputPath"/img_6.zip .."
unzip -q $outputPath"/img_6.zip" -d $outputPath
rm $outputPath"doc3d/img_6.zip"
echo -e $outputPath"/img_7.zip .."
unzip -q $outputPath"/img_7.zip" -d $outputPath
rm $outputPath"doc3d/img_7.zip"
echo -e $outputPath"/img_8.zip .."
unzip -q $outputPath"/img_8.zip" -d $outputPath
rm $outputPath"doc3d/img_8.zip"
echo -e $outputPath"/img_9.zip .."
unzip -q $outputPath"/img_9.zip" -d $outputPath
rm $outputPath"doc3d/img_9.zip"
echo -e $outputPath"/img_10.zip .."
unzip -q $outputPath"/img_10.zip" -d $outputPath
rm $outputPath"doc3d/img_10.zip"
echo -e $outputPath"/img_11.zip .."
unzip -q $outputPath"/img_11.zip" -d $outputPath
rm $outputPath"doc3d/img_11.zip"
echo -e $outputPath"/img_12.zip .."
unzip -q $outputPath"/img_12.zip" -d $outputPath
rm $outputPath"doc3d/img_12.zip"
echo -e $outputPath"/img_13.zip .."
unzip -q $outputPath"/img_13.zip" -d $outputPath
rm $outputPath"doc3d/img_13.zip"
echo -e $outputPath"/img_14.zip .."
unzip -q $outputPath"/img_14.zip" -d $outputPath
rm $outputPath"doc3d/img_14.zip"
echo -e $outputPath"/img_15.zip .."
unzip -q $outputPath"/img_15.zip" -d $outputPath
rm $outputPath"doc3d/img_15.zip"
echo -e $outputPath"/img_16.zip .."
unzip -q $outputPath"/img_16.zip" -d $outputPath
rm $outputPath"doc3d/img_16.zip"
echo -e $outputPath"/img_17.zip .."
unzip -q $outputPath"/img_17.zip" -d $outputPath
rm $outputPath"doc3d/img_17.zip"
echo -e $outputPath"/img_18.zip .."
unzip -q $outputPath"/img_18.zip" -d $outputPath
rm $outputPath"doc3d/img_18.zip"
echo -e $outputPath"/img_19.zip .."
unzip -q $outputPath"/img_19.zip" -d $outputPath
rm $outputPath"doc3d/img_19.zip"
echo -e $outputPath"/img_20.zip .."
unzip -q $outputPath"/img_20.zip" -d $outputPath
rm $outputPath"doc3d/img_20.zip"
echo -e $outputPath"/img_21.zip .."
unzip -q $outputPath"/img_21.zip" -d $outputPath
rm $outputPath"doc3d/img_21.zip"
echo -e $outputPath"/wc_1.zip .."
unzip -q $outputPath"/wc_1.zip" -d $outputPath
rm $outputPath"doc3d/wc_1.zip"
echo -e $outputPath"/wc_2.zip .."
unzip -q $outputPath"/wc_2.zip" -d $outputPath
rm $outputPath"doc3d/wc_2.zip"
echo -e $outputPath"/wc_3.zip .."
unzip -q $outputPath"/wc_3.zip" -d $outputPath
rm $outputPath"doc3d/wc_3.zip"
echo -e $outputPath"/wc_4.zip .."
unzip -q $outputPath"/wc_4.zip" -d $outputPath
rm $outputPath"doc3d/wc_4.zip"
echo -e $outputPath"/wc_5.zip .."
unzip -q $outputPath"/wc_5.zip" -d $outputPath
rm $outputPath"doc3d/wc_5.zip"
echo -e $outputPath"/wc_6.zip .."
unzip -q $outputPath"/wc_6.zip" -d $outputPath
rm $outputPath"doc3d/wc_6.zip"
echo -e $outputPath"/wc_7.zip .."
unzip -q $outputPath"/wc_7.zip" -d $outputPath
rm $outputPath"doc3d/wc_7.zip"
echo -e $outputPath"/wc_8.zip .."
unzip -q $outputPath"/wc_8.zip" -d $outputPath
rm $outputPath"doc3d/wc_8.zip"
echo -e $outputPath"/wc_9.zip .."
unzip -q $outputPath"/wc_9.zip" -d $outputPath
rm $outputPath"doc3d/wc_9.zip"
echo -e $outputPath"/wc_10.zip .."
unzip -q $outputPath"/wc_10.zip" -d $outputPath
rm $outputPath"doc3d/wc_10.zip"
echo -e $outputPath"/wc_11.zip .."
unzip -q $outputPath"/wc_11.zip" -d $outputPath
rm $outputPath"doc3d/wc_11.zip"
echo -e $outputPath"/wc_12.zip .."
unzip -q $outputPath"/wc_12.zip" -d $outputPath
rm $outputPath"doc3d/wc_12.zip"
echo -e $outputPath"/wc_13.zip .."
unzip -q $outputPath"/wc_13.zip" -d $outputPath
rm $outputPath"doc3d/wc_13.zip"
echo -e $outputPath"/wc_14.zip .."
unzip -q $outputPath"/wc_14.zip" -d $outputPath
rm $outputPath"doc3d/wc_14.zip"
echo -e $outputPath"/wc_15.zip .."
unzip -q $outputPath"/wc_15.zip" -d $outputPath
rm $outputPath"doc3d/wc_15.zip"
echo -e $outputPath"/wc_16.zip .."
unzip -q $outputPath"/wc_16.zip" -d $outputPath
rm $outputPath"doc3d/wc_16.zip"
echo -e $outputPath"/wc_17.zip .."
unzip -q $outputPath"/wc_17.zip" -d $outputPath
rm $outputPath"doc3d/wc_17.zip"
echo -e $outputPath"/wc_18.zip .."
unzip -q $outputPath"/wc_18.zip" -d $outputPath
rm $outputPath"doc3d/wc_18.zip"
echo -e $outputPath"/wc_19.zip .."
unzip -q $outputPath"/wc_19.zip" -d $outputPath
rm $outputPath"doc3d/wc_19.zip"
echo -e $outputPath"/wc_20.zip .."
unzip -q $outputPath"/wc_20.zip" -d $outputPath
rm $outputPath"doc3d/wc_20.zip"
echo -e $outputPath"/wc_21.zip .."
unzip -q $outputPath"/wc_21.zip" -d $outputPath
rm $outputPath"doc3d/wc_21.zip"
echo -e $outputPath"/bm_1.zip .."
unzip -q $outputPath"/bm_1.zip" -d $outputPath
rm $outputPath"doc3d/bm_1.zip"
echo -e $outputPath"/bm_2.zip .."
unzip -q $outputPath"/bm_2.zip" -d $outputPath
rm $outputPath"doc3d/bm_2.zip"
echo -e $outputPath"/bm_3.zip .."
unzip -q $outputPath"/bm_3.zip" -d $outputPath
rm $outputPath"doc3d/bm_3.zip"
echo -e $outputPath"/bm_4.zip .."
unzip -q $outputPath"/bm_4.zip" -d $outputPath
rm $outputPath"doc3d/bm_4.zip"
echo -e $outputPath"/bm_5.zip .."
unzip -q $outputPath"/bm_5.zip" -d $outputPath
rm $outputPath"doc3d/bm_5.zip"
echo -e $outputPath"/bm_6.zip .."
unzip -q $outputPath"/bm_6.zip" -d $outputPath
rm $outputPath"doc3d/bm_6.zip"
echo -e $outputPath"/bm_7.zip .."
unzip -q $outputPath"/bm_7.zip" -d $outputPath
rm $outputPath"doc3d/bm_7.zip"
echo -e $outputPath"/bm_8.zip .."
unzip -q $outputPath"/bm_8.zip" -d $outputPath
rm $outputPath"doc3d/bm_8.zip"
echo -e $outputPath"/bm_9.zip .."
unzip -q $outputPath"/bm_9.zip" -d $outputPath
rm $outputPath"doc3d/bm_9.zip"
echo -e $outputPath"/bm_10.zip .."
unzip -q $outputPath"/bm_10.zip" -d $outputPath
rm $outputPath"doc3d/bm_10.zip"
echo -e $outputPath"/bm_11.zip .."
unzip -q $outputPath"/bm_11.zip" -d $outputPath
rm $outputPath"doc3d/bm_11.zip"
echo -e $outputPath"/bm_12.zip .."
unzip -q $outputPath"/bm_12.zip" -d $outputPath
rm $outputPath"doc3d/bm_12.zip"
echo -e $outputPath"/bm_13.zip .."
unzip -q $outputPath"/bm_13.zip" -d $outputPath
rm $outputPath"doc3d/bm_13.zip"
echo -e $outputPath"/bm_14.zip .."
unzip -q $outputPath"/bm_14.zip" -d $outputPath
rm $outputPath"doc3d/bm_14.zip"
echo -e $outputPath"/bm_15.zip .."
unzip -q $outputPath"/bm_15.zip" -d $outputPath
rm $outputPath"doc3d/bm_15.zip"
echo -e $outputPath"/bm_16.zip .."
unzip -q $outputPath"/bm_16.zip" -d $outputPath
rm $outputPath"doc3d/bm_16.zip"
echo -e $outputPath"/bm_17.zip .."
unzip -q $outputPath"/bm_17.zip" -d $outputPath
rm $outputPath"doc3d/bm_17.zip"
echo -e $outputPath"/bm_18.zip .."
unzip -q $outputPath"/bm_18.zip" -d $outputPath
rm $outputPath"doc3d/bm_18.zip"
echo -e $outputPath"/bm_19.zip .."
unzip -q $outputPath"/bm_19.zip" -d $outputPath
rm $outputPath"doc3d/bm_19.zip"
echo -e $outputPath"/bm_20.zip .."
unzip -q $outputPath"/bm_20.zip" -d $outputPath
rm $outputPath"doc3d/bm_20.zip"
echo -e $outputPath"/bm_21.zip .."
unzip -q $outputPath"/bm_21.zip" -d $outputPath
rm $outputPath"doc3d/bm_21.zip"
echo -e $outputPath"/uv_1.zip .."
unzip -q $outputPath"/uv_1.zip" -d $outputPath
rm $outputPath"doc3d/uv_1.zip"
echo -e $outputPath"/uv_2.zip .."
unzip -q $outputPath"/uv_2.zip" -d $outputPath
rm $outputPath"doc3d/uv_2.zip"
echo -e $outputPath"/uv_3.zip .."
unzip -q $outputPath"/uv_3.zip" -d $outputPath
rm $outputPath"doc3d/uv_3.zip"
echo -e $outputPath"/uv_4.zip .."
unzip -q $outputPath"/uv_4.zip" -d $outputPath
rm $outputPath"doc3d/uv_4.zip"
echo -e $outputPath"/uv_5.zip .."
unzip -q $outputPath"/uv_5.zip" -d $outputPath
rm $outputPath"doc3d/uv_5.zip"
echo -e $outputPath"/uv_6.zip .."
unzip -q $outputPath"/uv_6.zip" -d $outputPath
rm $outputPath"doc3d/uv_6.zip"
echo -e $outputPath"/uv_7.zip .."
unzip -q $outputPath"/uv_7.zip" -d $outputPath
rm $outputPath"doc3d/uv_7.zip"
echo -e $outputPath"/uv_8.zip .."
unzip -q $outputPath"/uv_8.zip" -d $outputPath
rm $outputPath"doc3d/uv_8.zip"
echo -e $outputPath"/uv_9.zip .."
unzip -q $outputPath"/uv_9.zip" -d $outputPath
rm $outputPath"doc3d/uv_9.zip"
echo -e $outputPath"/uv_10.zip .."
unzip -q $outputPath"/uv_10.zip" -d $outputPath
rm $outputPath"doc3d/uv_10.zip"
echo -e $outputPath"/uv_11.zip .."
unzip -q $outputPath"/uv_11.zip" -d $outputPath
rm $outputPath"doc3d/uv_11.zip"
echo -e $outputPath"/uv_12.zip .."
unzip -q $outputPath"/uv_12.zip" -d $outputPath
rm $outputPath"doc3d/uv_12.zip"
echo -e $outputPath"/uv_13.zip .."
unzip -q $outputPath"/uv_13.zip" -d $outputPath
rm $outputPath"doc3d/uv_13.zip"
echo -e $outputPath"/uv_14.zip .."
unzip -q $outputPath"/uv_14.zip" -d $outputPath
rm $outputPath"doc3d/uv_14.zip"
echo -e $outputPath"/uv_15.zip .."
unzip -q $outputPath"/uv_15.zip" -d $outputPath
rm $outputPath"doc3d/uv_15.zip"
echo -e $outputPath"/uv_16.zip .."
unzip -q $outputPath"/uv_16.zip" -d $outputPath
rm $outputPath"doc3d/uv_16.zip"
echo -e $outputPath"/uv_17.zip .."
unzip -q $outputPath"/uv_17.zip" -d $outputPath
rm $outputPath"doc3d/uv_17.zip"
echo -e $outputPath"/uv_18.zip .."
unzip -q $outputPath"/uv_18.zip" -d $outputPath
rm $outputPath"doc3d/uv_18.zip"
echo -e $outputPath"/uv_19.zip .."
unzip -q $outputPath"/uv_19.zip" -d $outputPath
rm $outputPath"doc3d/uv_19.zip"
echo -e $outputPath"/uv_20.zip .."
unzip -q $outputPath"/uv_20.zip" -d $outputPath
rm $outputPath"doc3d/uv_20.zip"
echo -e $outputPath"/uv_21.zip .."
unzip -q $outputPath"/uv_21.zip" -d $outputPath
rm $outputPath"doc3d/uv_21.zip"
echo -e $outputPath"/dmap_1.zip .."
unzip -q $outputPath"/dmap_1.zip" -d $outputPath
rm $outputPath"doc3d/dmap_1.zip"
echo -e $outputPath"/dmap_2.zip .."
unzip -q $outputPath"/dmap_2.zip" -d $outputPath
rm $outputPath"doc3d/dmap_2.zip"
echo -e $outputPath"/dmap_3.zip .."
unzip -q $outputPath"/dmap_3.zip" -d $outputPath
rm $outputPath"doc3d/dmap_3.zip"
echo -e $outputPath"/dmap_4.zip .."
unzip -q $outputPath"/dmap_4.zip" -d $outputPath
rm $outputPath"doc3d/dmap_4.zip"
echo -e $outputPath"/dmap_5.zip .."
unzip -q $outputPath"/dmap_5.zip" -d $outputPath
rm $outputPath"doc3d/dmap_5.zip"
echo -e $outputPath"/dmap_6.zip .."
unzip -q $outputPath"/dmap_6.zip" -d $outputPath
rm $outputPath"doc3d/dmap_6.zip"
echo -e $outputPath"/dmap_7.zip .."
unzip -q $outputPath"/dmap_7.zip" -d $outputPath
rm $outputPath"doc3d/dmap_7.zip"
echo -e $outputPath"/dmap_8.zip .."
unzip -q $outputPath"/dmap_8.zip" -d $outputPath
rm $outputPath"doc3d/dmap_8.zip"
echo -e $outputPath"/dmap_9.zip .."
unzip -q $outputPath"/dmap_9.zip" -d $outputPath
rm $outputPath"doc3d/dmap_9.zip"
echo -e $outputPath"/dmap_10.zip .."
unzip -q $outputPath"/dmap_10.zip" -d $outputPath
rm $outputPath"doc3d/dmap_10.zip"
echo -e $outputPath"/dmap_11.zip .."
unzip -q $outputPath"/dmap_11.zip" -d $outputPath
rm $outputPath"doc3d/dmap_11.zip"
echo -e $outputPath"/dmap_12.zip .."
unzip -q $outputPath"/dmap_12.zip" -d $outputPath
rm $outputPath"doc3d/dmap_12.zip"
echo -e $outputPath"/dmap_13.zip .."
unzip -q $outputPath"/dmap_13.zip" -d $outputPath
rm $outputPath"doc3d/dmap_13.zip"
echo -e $outputPath"/dmap_14.zip .."
unzip -q $outputPath"/dmap_14.zip" -d $outputPath
rm $outputPath"doc3d/dmap_14.zip"
echo -e $outputPath"/dmap_15.zip .."
unzip -q $outputPath"/dmap_15.zip" -d $outputPath
rm $outputPath"doc3d/dmap_15.zip"
echo -e $outputPath"/dmap_16.zip .."
unzip -q $outputPath"/dmap_16.zip" -d $outputPath
rm $outputPath"doc3d/dmap_16.zip"
echo -e $outputPath"/dmap_17.zip .."
unzip -q $outputPath"/dmap_17.zip" -d $outputPath
rm $outputPath"doc3d/dmap_17.zip"
echo -e $outputPath"/dmap_18.zip .."
unzip -q $outputPath"/dmap_18.zip" -d $outputPath
rm $outputPath"doc3d/dmap_18.zip"
echo -e $outputPath"/dmap_19.zip .."
unzip -q $outputPath"/dmap_19.zip" -d $outputPath
rm $outputPath"doc3d/dmap_19.zip"
echo -e $outputPath"/dmap_20.zip .."
unzip -q $outputPath"/dmap_20.zip" -d $outputPath
rm $outputPath"doc3d/dmap_20.zip"
echo -e $outputPath"/dmap_21.zip .."
unzip -q $outputPath"/dmap_21.zip" -d $outputPath
rm $outputPath"doc3d/dmap_21.zip"
echo -e $outputPath"/recon_1.zip .."
unzip -q $outputPath"/recon_1.zip" -d $outputPath
rm $outputPath"doc3d/recon_1.zip"
echo -e $outputPath"/recon_2.zip .."
unzip -q $outputPath"/recon_2.zip" -d $outputPath
rm $outputPath"doc3d/recon_2.zip"
echo -e $outputPath"/recon_3.zip .."
unzip -q $outputPath"/recon_3.zip" -d $outputPath
rm $outputPath"doc3d/recon_3.zip"
echo -e $outputPath"/recon_4.zip .."
unzip -q $outputPath"/recon_4.zip" -d $outputPath
rm $outputPath"doc3d/recon_4.zip"
echo -e $outputPath"/recon_5.zip .."
unzip -q $outputPath"/recon_5.zip" -d $outputPath
rm $outputPath"doc3d/recon_5.zip"
echo -e $outputPath"/recon_6.zip .."
unzip -q $outputPath"/recon_6.zip" -d $outputPath
rm $outputPath"doc3d/recon_6.zip"
echo -e $outputPath"/recon_7.zip .."
unzip -q $outputPath"/recon_7.zip" -d $outputPath
rm $outputPath"doc3d/recon_7.zip"
echo -e $outputPath"/recon_8.zip .."
unzip -q $outputPath"/recon_8.zip" -d $outputPath
rm $outputPath"doc3d/recon_8.zip"
echo -e $outputPath"/recon_9.zip .."
unzip -q $outputPath"/recon_9.zip" -d $outputPath
rm $outputPath"doc3d/recon_9.zip"
echo -e $outputPath"/recon_10.zip .."
unzip -q $outputPath"/recon_10.zip" -d $outputPath
rm $outputPath"doc3d/recon_10.zip"
echo -e $outputPath"/recon_11.zip .."
unzip -q $outputPath"/recon_11.zip" -d $outputPath
rm $outputPath"doc3d/recon_11.zip"
echo -e $outputPath"/recon_12.zip .."
unzip -q $outputPath"/recon_12.zip" -d $outputPath
rm $outputPath"doc3d/recon_12.zip"
echo -e $outputPath"/recon_13.zip .."
unzip -q $outputPath"/recon_13.zip" -d $outputPath
rm $outputPath"doc3d/recon_13.zip"
echo -e $outputPath"/recon_14.zip .."
unzip -q $outputPath"/recon_14.zip" -d $outputPath
rm $outputPath"doc3d/recon_14.zip"
echo -e $outputPath"/recon_15.zip .."
unzip -q $outputPath"/recon_15.zip" -d $outputPath
rm $outputPath"doc3d/recon_15.zip"
echo -e $outputPath"/recon_16.zip .."
unzip -q $outputPath"/recon_16.zip" -d $outputPath
rm $outputPath"doc3d/recon_16.zip"
echo -e $outputPath"/recon_17.zip .."
unzip -q $outputPath"/recon_17.zip" -d $outputPath
rm $outputPath"doc3d/recon_17.zip"
echo -e $outputPath"/recon_18.zip .."
unzip -q $outputPath"/recon_18.zip" -d $outputPath
rm $outputPath"doc3d/recon_18.zip"
echo -e $outputPath"/recon_19.zip .."
unzip -q $outputPath"/recon_19.zip" -d $outputPath
rm $outputPath"doc3d/recon_19.zip"
echo -e $outputPath"/recon_20.zip .."
unzip -q $outputPath"/recon_20.zip" -d $outputPath
rm $outputPath"doc3d/recon_20.zip"
echo -e $outputPath"/recon_21.zip .."
unzip -q $outputPath"/recon_21.zip" -d $outputPath
rm $outputPath"doc3d/recon_21.zip"
echo -e $outputPath"/norm_1.zip .."
unzip -q $outputPath"/norm_1.zip" -d $outputPath
rm $outputPath"doc3d/norm_1.zip"
echo -e $outputPath"/norm_2.zip .."
unzip -q $outputPath"/norm_2.zip" -d $outputPath
rm $outputPath"doc3d/norm_2.zip"
echo -e $outputPath"/norm_3.zip .."
unzip -q $outputPath"/norm_3.zip" -d $outputPath
rm $outputPath"doc3d/norm_3.zip"
echo -e $outputPath"/norm_4.zip .."
unzip -q $outputPath"/norm_4.zip" -d $outputPath
rm $outputPath"doc3d/norm_4.zip"
echo -e $outputPath"/norm_5.zip .."
unzip -q $outputPath"/norm_5.zip" -d $outputPath
rm $outputPath"doc3d/norm_5.zip"
echo -e $outputPath"/norm_6.zip .."
unzip -q $outputPath"/norm_6.zip" -d $outputPath
rm $outputPath"doc3d/norm_6.zip"
echo -e $outputPath"/norm_7.zip .."
unzip -q $outputPath"/norm_7.zip" -d $outputPath
rm $outputPath"doc3d/norm_7.zip"
echo -e $outputPath"/norm_8.zip .."
unzip -q $outputPath"/norm_8.zip" -d $outputPath
rm $outputPath"doc3d/norm_8.zip"
echo -e $outputPath"/norm_9.zip .."
unzip -q $outputPath"/norm_9.zip" -d $outputPath
rm $outputPath"doc3d/norm_9.zip"
echo -e $outputPath"/norm_10.zip .."
unzip -q $outputPath"/norm_10.zip" -d $outputPath
rm $outputPath"doc3d/norm_10.zip"
echo -e $outputPath"/norm_11.zip .."
unzip -q $outputPath"/norm_11.zip" -d $outputPath
rm $outputPath"doc3d/norm_11.zip"
echo -e $outputPath"/norm_12.zip .."
unzip -q $outputPath"/norm_12.zip" -d $outputPath
rm $outputPath"doc3d/norm_12.zip"
echo -e $outputPath"/norm_13.zip .."
unzip -q $outputPath"/norm_13.zip" -d $outputPath
rm $outputPath"doc3d/norm_13.zip"
echo -e $outputPath"/norm_14.zip .."
unzip -q $outputPath"/norm_14.zip" -d $outputPath
rm $outputPath"doc3d/norm_14.zip"
echo -e $outputPath"/norm_15.zip .."
unzip -q $outputPath"/norm_15.zip" -d $outputPath
rm $outputPath"doc3d/norm_15.zip"
echo -e $outputPath"/norm_16.zip .."
unzip -q $outputPath"/norm_16.zip" -d $outputPath
rm $outputPath"doc3d/norm_16.zip"
echo -e $outputPath"/norm_17.zip .."
unzip -q $outputPath"/norm_17.zip" -d $outputPath
rm $outputPath"doc3d/norm_17.zip"
echo -e $outputPath"/norm_18.zip .."
unzip -q $outputPath"/norm_18.zip" -d $outputPath
rm $outputPath"doc3d/norm_18.zip"
echo -e $outputPath"/norm_19.zip .."
unzip -q $outputPath"/norm_19.zip" -d $outputPath
rm $outputPath"doc3d/norm_19.zip"
echo -e $outputPath"/norm_20.zip .."
unzip -q $outputPath"/norm_20.zip" -d $outputPath
rm $outputPath"doc3d/norm_20.zip"
echo -e $outputPath"/norm_21.zip .."
unzip -q $outputPath"/norm_21.zip" -d $outputPath
rm $outputPath"doc3d/norm_21.zip"
echo -e $outputPath"/alb_1.zip .."
unzip -q $outputPath"/alb_1.zip" -d $outputPath 
rm $outputPath"doc3d/alb_1.zip"
echo -e $outputPath"/alb_2.zip .."
unzip -q $outputPath"/alb_2.zip" -d $outputPath
rm $outputPath"doc3d/alb_2.zip" 
echo -e $outputPath"/alb_3.zip .."
unzip -q $outputPath"/alb_3.zip" -d $outputPath
rm $outputPath"doc3d/alb_3.zip"
echo -e $outputPath"/alb_4.zip .."
unzip -q $outputPath"/alb_4.zip" -d $outputPath 
rm $outputPath"doc3d/alb_4.zip" 
echo -e $outputPath"/alb_5.zip .."
unzip -q $outputPath"/alb_5.zip" -d $outputPath
rm $outputPath"doc3d/alb_5.zip" 
echo -e $outputPath"/alb_6.zip .."
unzip -q $outputPath"/alb_6.zip" -d $outputPath
rm $outputPath"doc3d/alb_6.zip"
echo -e $outputPath"/alb_7.zip .."
unzip -q $outputPath"/alb_7.zip" -d $outputPath
rm $outputPath"doc3d/alb_7.zip" 
echo -e $outputPath"/alb_8.zip .."
unzip -q $outputPath"/alb_8.zip" -d $outputPath
rm $outputPath"doc3d/alb_8.zip" 


echo -e "\n### ------------------------------------------------------- ###\n"
echo "### All done!"
echo -e "\n### ------------------------------------------------------- ###\n"
