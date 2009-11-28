class LoadCat < ActiveRecord::Migration
  require 'pp'
  def self.up

    io = File.open('./db/migrate/cat.yaml')
    $obj = YAML::load(io)  
   
    pp $obj  

    $obj.each do |o|
         Category.create( 
             :name => o['name'], 
             :subcat => o['name'], 
             :major => 1)
    end
  end

  def self.down
        Category.delete_all("major = 1")
  end
end
