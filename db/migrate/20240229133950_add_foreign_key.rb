class AddForeignKey < ActiveRecord::Migration[7.1]
  def change
    add_reference :bookings, :user
  end
end
