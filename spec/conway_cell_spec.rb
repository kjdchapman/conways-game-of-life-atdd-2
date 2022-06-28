require_relative '../conway_cell'

describe 'conway cell' do
    describe 'a cell in the middle of an empty 3x3 grid' do
        it 'should return 0 living neighbours' do
            grid = [
                [:dead, :dead, :dead],
                [:dead, :dead, :dead],
                [:dead, :dead, :dead]
            ]

            expect(number_of_living_neighbours(row: 1, column: 1, grid: grid)).to eq(0)
        end
    end

    describe 'one live cell in top row, middle column' do
        it 'should return 1 living neighbour' do
            grid = [
                [:dead, :live, :dead],
                [:dead, :dead, :dead],
                [:dead, :dead, :dead]
            ]

            expect(number_of_living_neighbours(row: 1, column: 1, grid: grid)).to eq(1)
        end
    end

    describe 'one live cell in top row, left column' do
        it 'returns 0 living neighbours for the bottom-right cell' do
            grid = [
                [:live, :dead, :dead],
                [:dead, :dead, :dead],
                [:dead, :dead, :dead]
            ]

            expect(number_of_living_neighbours(row: 2, column: 2, grid: grid)).to eq(0)
        end
    end

    describe 'one live cell above, one live cell to the left' do
        it 'returns 2 living neighbours for the middle cell' do
            grid = [
                [:dead, :live, :dead],
                [:live, :dead, :dead],
                [:dead, :dead, :dead]
            ]

            expect(number_of_living_neighbours(row: 1, column: 1, grid: grid)).to eq(2)
        end
    end
end
