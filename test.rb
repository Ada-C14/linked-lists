def column_with_max_sum(matrix)
  return nil if matrix.emtpy?
  rows = matrix.length
  columns = matrix[0].length

  total = 0
  column = 0

  rows.times do |row|
    total += matrix[row][0]
  end

  col_counter = 0
  columns.times do |col|
    column_sum = 0
    rows.times.do |row|
        column_sum += matrix[row][column]
  end
  if column_sum > total
    total = column_sum
    column = col_counter
  end
  col_counter += 1
end
return column
end