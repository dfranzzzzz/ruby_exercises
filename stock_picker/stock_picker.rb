def stock_picker (stock_values)
  value_pairs= {}
  stock_values.each_with_index { | a, a_index |

    stock_values.each_with_index { | b, b_index |
      if b_index > a_index 
        value_pairs[[a_index, b_index]] = b - a
      else 0
      end
    }

  }

  value_pairs = value_pairs.sort_by { | k, v | v}
  max_profit = value_pairs[-1]
  max_profit[0]
  
end

# stock_picker([17,3,6,9,15,8,6,1,10])