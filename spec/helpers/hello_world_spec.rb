# require 'byebug'

require_relative '../../app/models/hello_world'

describe HelloWorld do 
    it "should say 'Hello World' when we call the say_hello method" do 
         hw = HelloWorld.new 
         message = hw.say_hello 
         # byebug
         expect(message).to eq "Hello World!"
    end
end
