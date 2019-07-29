class CreateInquiries < ActiveRecord::Migration[5.0]
  def change
    create_table :inquiries do |t|
      t.string :company
      t.string :name
      t.string :tel
      t.string :mail
      t.string :confirmation_mail
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
