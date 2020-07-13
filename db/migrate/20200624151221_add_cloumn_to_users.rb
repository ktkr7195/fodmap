class AddCloumnToUsers < ActiveRecord::Migration[5.2]
  def change
    # Commenting out these code so I dont get an error with db:migrate
    # add_column  :users,  :confirmation_token,  :string
    # add_column  :users,  :confirmed_at,        :datetime
    # add_column  :users,  :confirmation_sent_at,:datetime    
    # add_column  :users,  :unconfirmed_email,   :string
  end
end
