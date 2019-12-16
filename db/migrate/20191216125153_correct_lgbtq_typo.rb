class CorrectLgbtqTypo < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :lgttq_status, :string
    add_column :cities, :lgbtq_status, :string
  end
end
