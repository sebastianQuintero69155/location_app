class AddPasswordDigestToLogins < ActiveRecord::Migration[5.2]
  def change
    add_column :logins , :password_digest, :string
  end
end
