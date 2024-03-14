#!/bin/bash
# this script is to combine multiple files that contains subdomains/IPs in one file called allassets
# there is some tools you may need before using the script check accoringly
# Output file to store allassets
output_file="allassets"


while true; do
    # Check if output file already exists, if yes, remove it
    if [ -f "$output_file" ]; then
        rm "$output_file"
    fi

    # Loop through each file # you need to change the file names
    for file in assetfinder finddomainer gitlab_domains github_domains subfinder; do
        # Check if the current file exists
        if [ -f "$file" ]; then
            # Use anew to add unique subdomains from the current file to the output file
            anew -q "$output_file" < "$file"
        else
            echo "File $file not found."
        fi
    done


    # Remove duplicates subdomains using sort -u
    sort -u -o "$output_file" "$output_file"

    echo "All unique subdomains have been appended to $output_file."


    # Sleep for two days
    sleep 2d
done

