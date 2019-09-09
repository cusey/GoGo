![CuseyHub](https://github.com/cusey/ImageForWiki/blob/master/Logos/CuseyHub_Banner_Small.jpg)

# GoGo
By John Cusey


* # Ruby version

* #  System dependencies

* #  Configuration

* #  Database creation

```
$ rails generate model worker 
            name:string 
            position:string 
            office:string 
            gender:string
            age:integer 
            startDate:date 
            'price:decimal{10,2}'

Running via Spring preloader in process 543
      invoke  active_record
      create    db/migrate/20190905173317_create_workers.rb
      create    app/models/worker.rb
      invoke    test_unit
      create      test/models/worker_test.rb
      create      test/fixtures/workers.yml
      
$ rake db:migrate
```

*  # Database initialization

[db/seeds](https://github.com/cusey/GoGo/blob/master/db/seeds.rb)

```
$ rake db:seed
```


*  # How to run the test suite

* # Services (job queues, cache servers, search engines, etc.)

*  # Deployment instructions

*  # Rails Console 

## Starting Console

```
$ rails console

Running via Spring preloader in process 576
Loading development environment (Rails 5.0.7)
irb(main):001:0>
```

## Errors Starting Console

If get cannot load such file error message when trying to run the rails console from the termial window.  

[rails console require cannot load such file readline - stack overflow](https://stackoverflow.com/questions/34875379/rails-console-require-cannot-load-such-file-readline/34876928)     

Readline gem is required by your application but not specified in your Gemfile

Please add this to your gem file

```
gem 'rb-readline' 
```

## Select First Row
```
irb(main):004:0> Worker.find(1)

  Worker Load (0.2ms)  SELECT  "workers".* FROM "workers" 
            WHERE "workers"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
=> #<Worker 
            id: 1, 
            name: "Tiger Nixon", 
            position: "System Architect", 
            office: "System Architect", 
            age: 61, 
            startDate: 251, 
            price: 0.3208e6, 
            created_at: "2019-09-05
17:46:56", updated_at: "2019-09-05 17:46:56">
```

## Delete Row

```
irb(main):007:0> w1.destroy

   (0.1ms)  begin transaction
  SQL (0.3ms)  DELETE FROM "workers" 
            WHERE "workers"."id" = ?  [["id", 1]]
            
   (2.9ms)  commit transaction
=> #<Worker 
            id: 1, 
            name: "Tiger Nixon", 
            position: "System Architect", 
            office: "System Architect", 
            age: 61, 
            startDate: 251, 
            price: 0.3208e6, 
            created_at: "2019-09-05
17:46:56", updated_at: "2019-09-05 17:46:56">
```
Checking if record is in the database

```
irb(main):008:0> Worker.find(1)

  Worker Load (0.1ms)  SELECT  "workers".* FROM "workers" 
            WHERE "workers"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
ActiveRecord::RecordNotFound: Couldn't find Worker with 'id'=1
```

## Calling Helper Method from console 

```
module ReportHelper
    
    def format_name(name)
        return "Sir #{name}"
    end 
    
end
```
GoGo/app/helpers/report_helper.rb

You need to added the "helper" before the method name when using the ruby console    

```
irb(main):021:0* helper.format_name(Worker.first)

  Worker Load (0.2ms)  SELECT  "workers".* FROM "workers" 
            ORDER BY "workers"."id" ASC LIMIT ?  [["LIMIT", 1]]
=> "Sir Tiger Nixon"
```

* # Unit Testing

## Setting up Rspec

```
$ bin/rspec --init
   exist   .rspec
   exist   spec/spec_helper.rb
```
Checking the version of Rspec

```
$ bin/rspec --version
RSpec 3.6
  - rspec-core 3.6.0
  - rspec-expectations 3.6.0
  - rspec-mocks 3.6.0
  - rspec-support 3.6.0
```

## Rspec Unit Test Code

```
require 'rspec'

class ReportHelper
    
    def format_name(worker_name,worker_gender)
        
        if "M"  == worker_gender
          return "Mr. #{worker_name}"
        else
          return "Ms. #{worker_name}"
        end
          
    end 
    
end

describe ReportHelper do
  it 'English honorific to name' do
    helper = ReportHelper.new
    expect(helper.format_name("John Cusey","M")).to eq("Mr. John Cusey")
  end
end
```
**_spec/helpers/report_helper_spec.rb_**

## Run the Unit Test     

```
$ rspec spec/helpers/report_helper_spec.rb --format documentation

ReportHelper
  English honorific to name

Finished in 0.00139 seconds (files took 0.08836 seconds to load)
1 example, 0 failures
```

* # Byebug

Byebug is a Ruby 2 debugger.

```
class HelloWorld
   def say_hello 
      "Hello World!"
   end
end
```
**_app/models/hello_world.rb_**

```
require 'byebug'

require_relative '../../app/models/hello_world'

describe HelloWorld do 
    it "should say 'Hello World' when we call the say_hello method" do 
         hw = HelloWorld.new 
         message = hw.say_hello 
         byebug
         expect(message).to eq "Hello World!"
    end
end
```
**_spec/helpers/hello_helper_spec.rb_**

```
$ rspec spec --format documentation

HelloWorld

[4, 13] in /projects/web-rails-simple/spec/helpers/hello_world_spec.rb
    4:
    5: describe HelloWorld do
    6:     it "should say 'Hello World' when we call the say_hello method" do
    7:          hw = HelloWorld.new
    8:          message = hw.say_hello
    9:          byebug
=> 10:          expect(message).to eq "Hello World!"
   11:     end
   12: end
   13:
(byebug) message
"Hello World!"
```
Terminal Window

[How to use Byebug in Rails development](https://www.youtube.com/watch?v=YX3EQvCUHsg)









