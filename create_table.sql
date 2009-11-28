
class Transaction < ActiveRecord::Migration
  def self.up
   create_table :transactions do |t|
	t.datetime 	:date	
	t.string	:description	
	t.string	:origdesc	
	t.decimal	:amount	
	t.string	:transtype	
	t.string	:category	
	t.string	:accountname	
	t.string	:labels	
	t.string	:notes
      	t.timestamps
    end
  end

  def self.down
    drop_table :transactions
  end
end
