class CreateBillboards < ActiveRecord::Migration[5.2]
  def change
    create_table :billboards do |t|
      t.string :name

      t.timestamps
    end
  end
end
