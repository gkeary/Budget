require 'pp'

io = File.open('./subcat.yaml')  
$obj1 = YAML::load(io)  
   
pp $obj1  

$obj1.each do |o|
    o['subcat'].each do |p|
         Category.create( 
                         :name => o['name'], 
                         :subcat => p,
                         :major => 0)
    end
end

