function rows(letter::Char)
    alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    if letter ∉ alphabet
        throw(ArgumentError("letter ∉ alphabet"))
    end
    alphArr = []
    for letter in alphabet
        push!(alphArr, letter)
    end

    ord = indexOf(letter, alphArr)
    size = 2*ord - 1
    result = []
    for r = 1 : ord
        line = ""
        for c = 1 : size
            if c+r-1 == ord  ||  c-r+1 == ord
                line *= alphArr[r]
            else
                line *= ' '
            end
        end

        push!(result, line)
    end

    for r = ord+1 : size
        line = ""
        for c = 1 : size
            if r-c+1 == ord  ||  (c+r-1) % (size-1) == ord
                line *= alphArr[size - r + 1]
            else
                line *= ' '
            end
        end
        push!(result, line)
    end

    result
end

#-------------------------------------------------------------------------------
function indexOf(item, a)
# The array, a, must be sorted from low to high
    lo = 1
    hi = length(a)


    while lo ≤ hi
        mid = lo + (hi - lo) ÷ 2

        if     a[mid] == item;   return mid
        elseif a[mid] <  item;   lo = mid + 1
        else                     hi = mid - 1
        end
    end

    throw("item not in a")
end
#-------------------------------------------------------------------------------
