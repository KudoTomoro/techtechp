class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :companyname
      t.string :name
      t.string :phonenumber
      t.string :mailaddress
      t.string :mailaddressconfirm
      t.string :title
      t.string :content
      t.timestamps
    end
  end
end
