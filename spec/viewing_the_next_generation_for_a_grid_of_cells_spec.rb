describe 'viewing the next generation for a grid of cells' do
  describe 'a 4x4 grid with no cells' do
    it 'remains empty' do
      empty_grid = [
        [:dead, :dead, :dead, :dead],
        [:dead, :dead, :dead, :dead],
        [:dead, :dead, :dead, :dead],
        [:dead, :dead, :dead, :dead]
      ]

      expect(next_conway_generation(empty_grid)).to eq(empty_grid)
    end
  end

  def next_conway_generation(grid)
    grid
  end

  xdescribe 'still life' do
    describe 'a 2x2 box of cells on a 4x4 grid' do
      # use :live for alive cells
    end
  end
end