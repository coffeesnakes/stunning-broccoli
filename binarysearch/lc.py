def binary_search(sorted_list, item):
    low = 0
    high = len(sorted_list) - 1

    while low <= high:
        mid = (low + high) // 2
        guess = sorted_list[mid]

        if guess == item:
            return mid

        if guess > item:
            high = mid - 1
        else:
            low = mid + 1

    return None



#  Define the function: We'll start by defining a function binary_search that takes a sorted list and the item we're searching for.

#  Initialize two pointers: We need two pointers, low and high, to represent the part of the list we'll search. Initially, low is the first index and high is the last index.

#  Start the loop: We'll keep searching as long as low is less than or equal to high.

#  Find the middle element: We calculate the middle index and get the middle element.

# Check if the middle element is our target: If it is, we return the index.

#  Adjust the search range: If the guess was too high, we adjust high to be mid - 1. If the guess was too low, we adjust low to be mid + 1.

# Item not found: If the item is not in the list, we return None