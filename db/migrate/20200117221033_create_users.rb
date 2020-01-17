class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest #password_digest allows Rails to know that we want passwor and password_confirmation in the Usere model

      t.timestamps
    end
  end
end
