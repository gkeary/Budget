class LoadSubcat < ActiveRecord::Migration
    def self.up
      require 'pp'

      io = File.open('./db/migrate/subcat.yaml')
      $obj1 = YAML::load(io)

      pp $obj1

      $obj1.each do |major|
        major['subcat'].each do |minor|
          Category.create(
            :name => major['name'],
            :subcat => minor,
            :major => 0)
        end
      end
    end


  def self.down
    Category.delete_all("major = 0")
  end
end



