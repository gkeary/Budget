require 'pp'

io = File.open('./cat.yaml')  
$obj = YAML::load(io)  
   
pp $obj  

$obj.each do |o|
     Category.create( 
         :name => o['name'], 
         :subcat => o['name'], 
         :major => 1)
    end

