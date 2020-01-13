require "./codegen/**"
require "yaml"
require "option_parser"

module Onchain::Shard
  
  if ARGV.size > 1 
    yml_string = File.read(ARGV[0])
    
    yml = YAML.parse yml_string
      
    ModelGenerator.generate_models(yml, ARGV[1])
    
    APIGenerator.generate_api(yml, ARGV[1])
  else
    puts "Pass in the name of the file" 
  end
  
end