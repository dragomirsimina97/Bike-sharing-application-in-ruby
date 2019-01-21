class CreateBikes < ActiveRecord::Migration[5.1]
  def up
    create_table 'bikes' do |t|
      t.string 'Bike_ID'
	  t.string 'State'
      t.string 'Station'
      t.datetime 'Time'
    end
  end

  def down
    drop_table 'bikes' # deletes the whole table and all its data!
  end

end
