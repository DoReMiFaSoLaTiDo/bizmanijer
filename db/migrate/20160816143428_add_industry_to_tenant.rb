class AddIndustryToTenant < ActiveRecord::Migration
  def change
    add_column :tenants, :sector, :string
    add_column :tenants, :sector_code, :string
  end
end
