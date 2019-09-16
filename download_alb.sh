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

doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_1.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_2.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_3.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_4.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_5.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_6.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_7.zip" "$outputPath/" "Albedos"
doc3d_download "http://vision.cs.stonybrook.edu/~sagnik/doc3d/alb_8.zip" "$outputPath/" "Albedos"

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Unzipping downloaded files ###"
echo -e "\n### ------------------------------------------------------- ###\n"
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


echo -e "\n### ------------------------------------------------------- ###\n"
echo "### All done!"
echo -e "\n### ------------------------------------------------------- ###\n"

