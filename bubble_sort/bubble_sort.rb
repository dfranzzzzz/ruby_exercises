def bubble_sort (array)
  swapped = true
  until swapped == false
    swapped = false
    for i in 1..(array.length() - 1)
      if array[i - 1 ] > array[i]
        array[i -1], array[i] = array [i], array[i-1]
        swapped = true
      end
    end
  end
  array
end

# bubble_sort([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])