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

echo -e "\n### ------------------------------------------------------- ###\n"
echo "### Unzipping downloaded files ###"
echo -e "\n### ------------------------------------------------------- ###\n"
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


echo -e "\n### ------------------------------------------------------- ###\n"
echo "### All done!"
echo -e "\n### ------------------------------------------------------- ###\n"

