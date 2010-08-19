ActiveRecord::Base.establish_connection({
  :database => ":memory:",
  :adapter  => 'sqlite3',
  :timeout  => 500
})

ActiveRecord::Schema.define do
  create_table :authors, :force => true do |t|
    t.string :name
    t.string :first_name
    t.string :last_name
    t.string :phone_number
  end

  create_table :books, :force => true do |t|
    t.string  :author
    t.string  :isbn
    t.decimal :cnd_price
    t.decimal :us_price
    t.string  :summary
    t.string  :title
  end
end