func binarySearch(sortedList []int, item int) int {
    low := 0
    high := len(sortedList) - 1

    for low <= high {
        mid := (low + high) / 2
        guess := sortedList[mid]

        if guess == item {
            return mid
        }

        if guess > item {
            high = mid - 1
        } else {
            low = mid + 1
        }
    }

    return -1
}


// binary search in goooooooooooooooooooooooooooooooooooooooo func binarySearch(sortedList []int, item int) 