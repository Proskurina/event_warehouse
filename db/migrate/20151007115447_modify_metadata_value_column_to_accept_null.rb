class ModifyMetadataValueColumnToAcceptNull < ActiveRecord::Migration
  def change
    change_column_null(:metadata, :value, true)
  end
end
