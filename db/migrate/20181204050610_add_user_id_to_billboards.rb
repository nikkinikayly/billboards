class AddUserIdToBillboards < ActiveRecord::Migration[5.2]
  def change
    add_reference :billboards, :user, foreign_key: true
  end
end
