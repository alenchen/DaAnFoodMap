class CreateResturants < ActiveRecord::Migration
  def self.up
    create_table :resturants do |t|
      t.string :name
      t.text :address
      t.string :tel
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end

  def self.down
    drop_table :resturants
  end
end
