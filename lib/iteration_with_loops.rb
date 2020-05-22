def join_nested_strings(src)
  # src will be an Array of Arrays of Strings and Integers
  # Combine all Strings present in the AoA into a single value and return it
  output = ""
  index1 = 0
  current_val = nil
  while index1 < src.count do
    index2 = 0
    while index2 < src[index1].count do
      current_val = src[index1][index2]
      if current_val.is_a? String
        output = output + " " + current_val
      end
      index2 += 1
    end
    index1 += 1
  end
  output
end
