require_relative '../conway_cell'

describe 'a 4x4 grid with no cells' do
  describe 'still life' do
    describe 'a grid of dead cells' do
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

    describe 'a 2x2 box of cells on a 4x4 grid' do
      it 'remains the same' do
        box_grid = [
          [:dead, :dead, :dead, :dead],
          [:dead, :live, :live, :dead],
          [:dead, :live, :live, :dead],
          [:dead, :dead, :dead, :dead]
        ]

        expect(next_conway_generation(box_grid)).to eq(box_grid)
      end
    end
  end

  describe 'oscillators' do
    describe 'blinker (length 3)' do
      xit 'should rotate 90 degrees every generation' do
        blinker = [
          [:dead, :dead, :dead, :dead, :dead],
          [:dead, :dead, :live, :dead, :dead],
          [:dead, :dead, :live, :dead, :dead],
          [:dead, :dead, :live, :dead, :dead],
          [:dead, :dead, :dead, :dead, :dead]
        ]

        horizontal_line = [
          [:dead, :dead, :dead, :dead, :dead],
          [:dead, :dead, :dead, :dead, :dead],
          [:dead, :live, :live, :live, :dead],
          [:dead, :dead, :dead, :dead, :dead],
          [:dead, :dead, :dead, :dead, :dead],

        ]

        expect(next_conway_generation(blinker)).to eq(horizontal_line)
      end
    end
  end
end
