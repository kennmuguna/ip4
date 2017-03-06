class CreateKiatuBrands < ActiveRecord::Migration[5.0]
  def change
    create_table(:kiatu_brands) do |t|
      t.column(:brand_name, :string)
    end
  end
end
