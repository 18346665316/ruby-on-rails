class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
    #索引本身并不能保证唯一型，　所以还需要制定unique: true
    add_index  :users, :email, unique: true
  end
end
