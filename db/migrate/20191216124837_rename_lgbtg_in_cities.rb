class RenameLgbtgInCities < ActiveRecord::Migration[5.2]
  def change
    remove_column :cities, :lgbtq_statue, :string
    add_column :cities, :lgttq_status, :string
  end
end
