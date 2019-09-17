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

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_1.zip" "$outputPath/" "doc3d/img_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_2.zip" "$outputPath/" "doc3d/img_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_3.zip" "$outputPath/" "doc3d/img_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_4.zip" "$outputPath/" "doc3d/img_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_5.zip" "$outputPath/" "doc3d/img_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_6.zip" "$outputPath/" "doc3d/img_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_7.zip" "$outputPath/" "doc3d/img_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/img_8.zip" "$outputPath/" "doc3d/img_8.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_1.zip" "$outputPath/" "doc3d/wc_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_2.zip" "$outputPath/" "doc3d/wc_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_3.zip" "$outputPath/" "doc3d/wc_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_4.zip" "$outputPath/" "doc3d/wc_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_5.zip" "$outputPath/" "doc3d/wc_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_6.zip" "$outputPath/" "doc3d/wc_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_7.zip" "$outputPath/" "doc3d/wc_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/wc_8.zip" "$outputPath/" "doc3d/wc_8.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_1.zip" "$outputPath/" "doc3d/bm_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_2.zip" "$outputPath/" "doc3d/bm_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_3.zip" "$outputPath/" "doc3d/bm_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_4.zip" "$outputPath/" "doc3d/bm_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_5.zip" "$outputPath/" "doc3d/bm_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_6.zip" "$outputPath/" "doc3d/bm_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_7.zip" "$outputPath/" "doc3d/bm_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/bm_8.zip" "$outputPath/" "doc3d/bm_8.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_1.zip" "$outputPath/" "doc3d/uv_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_2.zip" "$outputPath/" "doc3d/uv_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_3.zip" "$outputPath/" "doc3d/uv_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_4.zip" "$outputPath/" "doc3d/uv_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_5.zip" "$outputPath/" "doc3d/uv_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_6.zip" "$outputPath/" "doc3d/uv_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_7.zip" "$outputPath/" "doc3d/uv_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/uv_8.zip" "$outputPath/" "doc3d/uv_8.zip"
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
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_1.zip" "$outputPath/" "doc3d/norm_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_2.zip" "$outputPath/" "doc3d/norm_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_3.zip" "$outputPath/" "doc3d/norm_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_4.zip" "$outputPath/" "doc3d/norm_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_5.zip" "$outputPath/" "doc3d/norm_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_6.zip" "$outputPath/" "doc3d/norm_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_7.zip" "$outputPath/" "doc3d/norm_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/norm_8.zip" "$outputPath/" "doc3d/norm_8.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_1.zip" "$outputPath/" "doc3d/dmap_1.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_2.zip" "$outputPath/" "doc3d/dmap_2.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_3.zip" "$outputPath/" "doc3d/dmap_3.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_4.zip" "$outputPath/" "doc3d/dmap_4.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_5.zip" "$outputPath/" "doc3d/dmap_5.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_6.zip" "$outputPath/" "doc3d/dmap_6.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_7.zip" "$outputPath/" "doc3d/dmap_7.zip"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/dmap_8.zip" "$outputPath/" "doc3d/dmap_8.zip"



echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Unzipping downloaded files ###"
echo -e "\n### ------------------------------------------------------- ###\n"
echo -e $outputPath"/img_1.zip .."
unzip -q $outputPath"/img_1.zip" -d $outputPath 
echo -e $outputPath"/img_2.zip .."
unzip -q $outputPath"/img_2.zip" -d $outputPath
echo -e $outputPath"/img_3.zip .."
unzip -q $outputPath"/img_3.zip" -d $outputPath
echo -e $outputPath"/img_4.zip .."
unzip -q $outputPath"/img_4.zip" -d $outputPath 
echo -e $outputPath"/img_5.zip .."
unzip -q $outputPath"/img_5.zip" -d $outputPath
echo -e $outputPath"/img_6.zip .."
unzip -q $outputPath"/img_6.zip" -d $outputPath
echo -e $outputPath"/img_7.zip .."
unzip -q $outputPath"/img_7.zip" -d $outputPath
echo -e $outputPath"/img_8.zip .."
unzip -q $outputPath"/img_8.zip" -d $outputPath
echo -e $outputPath"/wc_1.zip .."
unzip -q $outputPath"/wc_1.zip" -d $outputPath 
echo -e $outputPath"/wc_2.zip .."
unzip -q $outputPath"/wc_2.zip" -d $outputPath
echo -e $outputPath"/wc_3.zip .."
unzip -q $outputPath"/wc_3.zip" -d $outputPath
echo -e $outputPath"/wc_4.zip .."
unzip -q $outputPath"/wc_4.zip" -d $outputPath 
echo -e $outputPath"/wc_5.zip .."
unzip -q $outputPath"/wc_5.zip" -d $outputPath
echo -e $outputPath"/wc_6.zip .."
unzip -q $outputPath"/wc_6.zip" -d $outputPath
echo -e $outputPath"/wc_7.zip .."
unzip -q $outputPath"/wc_7.zip" -d $outputPath
echo -e $outputPath"/wc_8.zip .."
unzip -q $outputPath"/wc_8.zip" -d $outputPath
echo -e $outputPath"/uv_1.zip .."
unzip -q $outputPath"/uv_1.zip" -d $outputPath 
echo -e $outputPath"/uv_2.zip .."
unzip -q $outputPath"/uv_2.zip" -d $outputPath
echo -e $outputPath"/uv_3.zip .."
unzip -q $outputPath"/uv_3.zip" -d $outputPath
echo -e $outputPath"/uv_4.zip .."
unzip -q $outputPath"/uv_4.zip" -d $outputPath 
echo -e $outputPath"/uv_5.zip .."
unzip -q $outputPath"/uv_5.zip" -d $outputPath
echo -e $outputPath"/uv_6.zip .."
unzip -q $outputPath"/uv_6.zip" -d $outputPath
echo -e $outputPath"/uv_7.zip .."
unzip -q $outputPath"/uv_7.zip" -d $outputPath
echo -e $outputPath"/uv_8.zip .."
unzip -q $outputPath"/uv_8.zip" -d $outputPath
echo -e $outputPath"/bm_1.zip .."
unzip -q $outputPath"/bm_1.zip" -d $outputPath 
echo -e $outputPath"/bm_2.zip .."
unzip -q $outputPath"/bm_2.zip" -d $outputPath
echo -e $outputPath"/bm_3.zip .."
unzip -q $outputPath"/bm_3.zip" -d $outputPath
echo -e $outputPath"/bm_4.zip .."
unzip -q $outputPath"/bm_4.zip" -d $outputPath 
echo -e $outputPath"/bm_5.zip .."
unzip -q $outputPath"/bm_5.zip" -d $outputPath
echo -e $outputPath"/bm_6.zip .."
unzip -q $outputPath"/bm_6.zip" -d $outputPath
echo -e $outputPath"/bm_7.zip .."
unzip -q $outputPath"/bm_7.zip" -d $outputPath
echo -e $outputPath"/bm_8.zip .."
unzip -q $outputPath"/bm_8.zip" -d $outputPath
echo -e $outputPath"/recon_1.zip .."
unzip -q $outputPath"/recon_1.zip" -d $outputPath 
echo -e $outputPath"/recon_2.zip .."
unzip -q $outputPath"/recon_2.zip" -d $outputPath
echo -e $outputPath"/recon_3.zip .."
unzip -q $outputPath"/recon_3.zip" -d $outputPath
echo -e $outputPath"/recon_4.zip .."
unzip -q $outputPath"/recon_4.zip" -d $outputPath 
echo -e $outputPath"/recon_5.zip .."
unzip -q $outputPath"/recon_5.zip" -d $outputPath
echo -e $outputPath"/recon_6.zip .."
unzip -q $outputPath"/recon_6.zip" -d $outputPath
echo -e $outputPath"/recon_7.zip .."
unzip -q $outputPath"/recon_7.zip" -d $outputPath
echo -e $outputPath"/recon_8.zip .."
unzip -q $outputPath"/recon_8.zip" -d $outputPath
echo -e $outputPath"/alb_1.zip .."
unzip -q $outputPath"/alb_1.zip" -d $outputPath 
echo -e $outputPath"/alb_2.zip .."
unzip -q $outputPath"/alb_2.zip" -d $outputPath
echo -e $outputPath"/alb_3.zip .."
unzip -q $outputPath"/alb_3.zip" -d $outputPath
echo -e $outputPath"/alb_4.zip .."
unzip -q $outputPath"/alb_4.zip" -d $outputPath 
echo -e $outputPath"/alb_5.zip .."
unzip -q $outputPath"/alb_5.zip" -d $outputPath
echo -e $outputPath"/alb_6.zip .."
unzip -q $outputPath"/alb_6.zip" -d $outputPath
echo -e $outputPath"/alb_7.zip .."
unzip -q $outputPath"/alb_7.zip" -d $outputPath
echo -e $outputPath"/alb_8.zip .."
unzip -q $outputPath"/alb_8.zip" -d $outputPath
echo -e $outputPath"/norm_1.zip .."
unzip -q $outputPath"/norm_1.zip" -d $outputPath 
echo -e $outputPath"/norm_2.zip .."
unzip -q $outputPath"/norm_2.zip" -d $outputPath
echo -e $outputPath"/norm_3.zip .."
unzip -q $outputPath"/norm_3.zip" -d $outputPath
echo -e $outputPath"/norm_4.zip .."
unzip -q $outputPath"/norm_4.zip" -d $outputPath 
echo -e $outputPath"/norm_5.zip .."
unzip -q $outputPath"/norm_5.zip" -d $outputPath
echo -e $outputPath"/norm_6.zip .."
unzip -q $outputPath"/norm_6.zip" -d $outputPath
echo -e $outputPath"/norm_7.zip .."
unzip -q $outputPath"/norm_7.zip" -d $outputPath
echo -e $outputPath"/norm_8.zip .."
unzip -q $outputPath"/norm_8.zip" -d $outputPath
echo -e $outputPath"/dmap_1.zip .."
unzip -q $outputPath"/dmap_1.zip" -d $outputPath 
echo -e $outputPath"/dmap_2.zip .."
unzip -q $outputPath"/dmap_2.zip" -d $outputPath
echo -e $outputPath"/dmap_3.zip .."
unzip -q $outputPath"/dmap_3.zip" -d $outputPath
echo -e $outputPath"/dmap_4.zip .."
unzip -q $outputPath"/dmap_4.zip" -d $outputPath 
echo -e $outputPath"/dmap_5.zip .."
unzip -q $outputPath"/dmap_5.zip" -d $outputPath
echo -e $outputPath"/dmap_6.zip .."
unzip -q $outputPath"/dmap_6.zip" -d $outputPath
echo -e $outputPath"/dmap_7.zip .."
unzip -q $outputPath"/dmap_7.zip" -d $outputPath
echo -e $outputPath"/dmap_8.zip .."
unzip -q $outputPath"/dmap_8.zip" -d $outputPath



echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Cleaning Up ###"
echo -e "\n### ------------------------------------------------------- ###\n"

rm $outputPath"doc3d/recon_1.zip" 
rm $outputPath"doc3d/recon_2.zip" 
rm $outputPath"doc3d/recon_3.zip"
rm $outputPath"doc3d/recon_4.zip" 
rm $outputPath"doc3d/recon_5.zip" 
rm $outputPath"doc3d/recon_6.zip"
rm $outputPath"doc3d/recon_7.zip" 
rm $outputPath"doc3d/recon_8.zip" 
rm $outputPath"doc3d/bm_1.zip" 
rm $outputPath"doc3d/bm_2.zip" 
rm $outputPath"doc3d/bm_3.zip"
rm $outputPath"doc3d/bm_4.zip" 
rm $outputPath"doc3d/bm_5.zip" 
rm $outputPath"doc3d/bm_6.zip"
rm $outputPath"doc3d/bm_7.zip" 
rm $outputPath"doc3d/bm_8.zip" 
rm $outputPath"doc3d/img_1.zip" 
rm $outputPath"doc3d/img_2.zip" 
rm $outputPath"doc3d/img_3.zip"
rm $outputPath"doc3d/img_4.zip" 
rm $outputPath"doc3d/img_5.zip" 
rm $outputPath"doc3d/img_6.zip"
rm $outputPath"doc3d/img_7.zip" 
rm $outputPath"doc3d/img_8.zip" 
rm $outputPath"doc3d/norm_1.zip" 
rm $outputPath"doc3d/norm_2.zip" 
rm $outputPath"doc3d/norm_3.zip"
rm $outputPath"doc3d/norm_4.zip" 
rm $outputPath"doc3d/norm_5.zip" 
rm $outputPath"doc3d/norm_6.zip"
rm $outputPath"doc3d/norm_7.zip" 
rm $outputPath"doc3d/norm_8.zip" 
rm $outputPath"doc3d/uv_1.zip" 
rm $outputPath"doc3d/uv_2.zip" 
rm $outputPath"doc3d/uv_3.zip"
rm $outputPath"doc3d/uv_4.zip" 
rm $outputPath"doc3d/uv_5.zip" 
rm $outputPath"doc3d/uv_6.zip"
rm $outputPath"doc3d/uv_7.zip" 
rm $outputPath"doc3d/uv_8.zip" 
rm $outputPath"doc3d/wc_1.zip" 
rm $outputPath"doc3d/wc_2.zip" 
rm $outputPath"doc3d/wc_3.zip"
rm $outputPath"doc3d/wc_4.zip" 
rm $outputPath"doc3d/wc_5.zip" 
rm $outputPath"doc3d/wc_6.zip"
rm $outputPath"doc3d/wc_7.zip" 
rm $outputPath"doc3d/wc_8.zip" 
rm $outputPath"doc3d/alb_1.zip" 
rm $outputPath"doc3d/alb_2.zip" 
rm $outputPath"doc3d/alb_3.zip"
rm $outputPath"doc3d/alb_4.zip" 
rm $outputPath"doc3d/alb_5.zip" 
rm $outputPath"doc3d/alb_6.zip"
rm $outputPath"doc3d/alb_7.zip" 
rm $outputPath"doc3d/alb_8.zip" 
rm $outputPath"doc3d/dmap_1.zip" 
rm $outputPath"doc3d/dmap_2.zip" 
rm $outputPath"doc3d/dmap_3.zip"
rm $outputPath"doc3d/dmap_4.zip" 
rm $outputPath"doc3d/dmap_5.zip" 
rm $outputPath"doc3d/dmap_6.zip"
rm $outputPath"doc3d/dmap_7.zip" 
rm $outputPath"doc3d/dmap_8.zip" 

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### All done!"
echo -e "\n### ------------------------------------------------------- ###\n"
