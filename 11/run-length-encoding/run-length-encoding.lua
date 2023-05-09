  local encode = function(s)
      local start_char = string.sub(s, 1 , 1)
      local end_str = ""
      return encode_recursive(2, start_char, s, end_str, 1)

  end

  local decode = function(s)
   local end_str = ""
   return decode_recursive(1, s, end_str)
  end

  function decode_recursive(start_index, str, end_str)
      if(string.len(str) == 0) then
          return end_str
      end
      local char = string.sub(str, start_index, start_index)
      if(string.match(char, "%d")) then
          local num = string.match(str, "%d+")
              for i = 1, num do
          end_str = end_str .. string.sub(str, string.len(num)+1, string.len(num)+1)
              end

              return decode_recursive(1, string.sub(str,string.len(num)+2, #str), end_str)
        else
          end_str = end_str .. char
          return decode_recursive(1, string.sub(str, 2, #str), end_str)
      end
  end

  function encode_recursive(start_index, char, str, end_str, count)
      if(start_index > #str) then
          return end_str .. (count == 1 and "" .. char or count .. char)
      else
          if(string.sub(str, start_index, start_index) == char) then
              count = count + 1
              return encode_recursive(start_index+1, char, str, end_str, count)
          else
          end_str = end_str .. (count == 1 and "" .. char or count .. char)
          next_char = string.sub(str, start_index, start_index)
          return encode_recursive(start_index+1, next_char, str, end_str, 1)
          end
  end
end

  return {encode = encode, decode = decode}
