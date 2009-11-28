`
`
class Transaction < ActiveRecord::Migration
  def self.up
   create_table :transactions do |t|
        t.date     :date
        t.string	 :description
        t.string	 :desc_original
        t.decimal  :amount, :precision => 12, :scale => 2
        t.string	 :transtype #%w{ debit, credit}
        t.string	 :category
        t.string	 :account_name
        t.string	 :labels
        t.string	 :notes
      	t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end