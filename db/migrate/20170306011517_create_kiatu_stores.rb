class CreateKiatuStores < ActiveRecord::Migration[5.0]
  def change
    create_table(:kiatu_stores) do |t|
      t.column(:store_name, :string)
    end
  end
end
