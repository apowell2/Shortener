class AddColumnLongUrlToTableUrls < ActiveRecord::Migration[5.1]
  def change
    add_column :urls, :long_url, :string
  end
end
