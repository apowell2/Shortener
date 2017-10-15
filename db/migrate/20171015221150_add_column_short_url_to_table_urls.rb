class AddColumnShortUrlToTableUrls < ActiveRecord::Migration[5.1]
  def change
        add_column :urls, :short_url, :string
  end
end
