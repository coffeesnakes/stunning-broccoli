#!/bin/bash

# Function to count files and directories
count_files_and_dirs() {
    local dir=$1
    local num_files=0
    local num_dirs=0

    # If the directory exists
    if [[ -d $dir ]]; then
        # Loop through items in the directory
        for item in "$dir"/*; do
            # If the item is a directory
            if [[ -d $item ]]; then
                num_dirs=$((num_dirs + 1))
                # Recursively count files and directories in the subdirectory
                local sub_count=$(count_files_and_dirs "$item")
                num_files=$((num_files + $(echo $sub_count | cut -d' ' -f1)))
                num_dirs=$((num_dirs + $(echo $sub_count | cut -d' ' -f2)))
            # If the item is a file
            elif [[ -f $item ]]; then
                num_files=$((num_files + 1))
            fi
        done
    fi

    echo "$num_files $num_dirs"
}

# Main script
main() {
    local dir=$1

    # If no directory is provided, use the current directory
    if [[ -z $dir ]]; then
        dir="."
    fi

    local count=$(count_files_and_dirs "$dir")
    local num_files=$(echo $count | cut -d' ' -f1)
    local num_dirs=$(echo $count | cut -d' ' -f2)

    echo "Number of files in '$dir': $num_files"
    echo "Number of directories in '$dir': $num_dirs"
}

main "$@"#!/bin/bash

# Function to count files and directories
count_files_and_dirs() {
    local dir=$1
    local num_files=0
    local num_dirs=0

    # If the directory exists
    if [[ -d $dir ]]; then
        # Loop through items in the directory
        for item in "$dir"/*; do
            # If the item is a directory
            if [[ -d $item ]]; then
                num_dirs=$((num_dirs + 1))
                # Recursively count files and directories in the subdirectory
                local sub_count=$(count_files_and_dirs "$item")
                num_files=$((num_files + $(echo $sub_count | cut -d' ' -f1)))
                num_dirs=$((num_dirs + $(echo $sub_count | cut -d' ' -f2)))
            # If the item is a file
            elif [[ -f $item ]]; then
                num_files=$((num_files + 1))
            fi
        done
    fi

    echo "$num_files $num_dirs"
}

# Main script
main() {
    local dir=$1

    # If no directory is provided, use the current directory
    if [[ -z $dir ]]; then
        dir="."
    fi

    local count=$(count_files_and_dirs "$dir")
    local num_files=$(echo $count | cut -d' ' -f1)
    local num_dirs=$(echo $count | cut -d' ' -f2)

    echo "Number of files in '$dir': $num_files"
    echo "Number of directories in '$dir': $num_dirs"
}
main "$@"
# bleh