#creating a database of brothers
class CreateBrothers < ActiveRecord::Migration[5.1]
    def change
        create_table :brothers do |b|
            b.string :first_name
            b.string :last_name
            b.boolean :on_time
            b.string :email
            
            b.timestamps null: false
        end
    end
end