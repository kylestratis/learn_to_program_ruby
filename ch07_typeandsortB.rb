# Same as typeandsortB but sort without using sort method

#Attempting to implement Merge Sort with ruby. 

def mergeSort array
    if array.count <= 1
        return array
    end

    middle = array.count / 2
    left = mergeSort array.slice(0, middle)
    right = mergeSort array.slice(middle, array.count)

    left_offset = 0
    right_offset = 0

    while left_offset < left.count && right_offset < right.count
        a = left[left_offset]
        b = right[right_offset]

        if a <= b
            array.push a
            left_offset += 1
        else
            array.push b
            right_offset += 1
        end
    end
    return merge(left, right)
end

def merge(left, right)
    result = []
    while !left.empty? and !right.empty?
        if left.first <= right.first
            result.push left.shift
        else
            result.push right.shift
        end
    end

    # If either array has only 1 left
    while !left.empty?
        result.push left.shift
    end
    while !right.empty?
        result.push right.shift
    end

    return result
end

puts 'Enter some words'
input = 0
array = []
while input != ''
    input = gets.chomp
    if input != ''
        array.push input
    end
end
result = mergeSort array
puts result.to_s