class FixDescriptionColumnTypo < ActiveRecord::Migration[6.0]
  def change
    rename_column :characters, :descriptiond, :description
  end
end
