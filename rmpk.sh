# getArray copied from StackOverflow http://stackoverflow.com/a/20295018/1876983
# Read the file in parameter and fill the array named "array"
getArray() {
    L=() # Create array
    while IFS= read -r line # Read a line
    do
        L+=("$line") # Append line to the array
    done < "$1"
}

getArray "packages.txt"
unset i
for i in "${L[@]}"
do
  rm -rf $HOME/OBS/home:fusion809:arch_extra/"$i"
done
echo $i
