def next_conway_generation(grid)
    grid.each_with_index.map do |row, x_coord|
        row.each_with_index.map do |cell, y_coord|
            living_neighbours = number_of_living_neighbours(row: x_coord, column: y_coord, grid: grid)
            cell_state = conway_state_for_cell(cell,living_neighbours)
        end
    end
end

def number_of_living_neighbours(row:, column:, grid:)
    living_neighbours = 0

    living_neighbours += 1 if grid[row-1][column] == :live
    living_neighbours += 1 if grid[row][column-1] == :live

    living_neighbours
end

def conway_state_for_cell(cell,number_of_living_neighbours)
    cell
end
