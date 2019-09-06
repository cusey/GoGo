![CuseyHub](https://github.com/cusey/ImageForWiki/blob/master/Logos/CuseyHub_Banner_Small.jpg)

# GoGo
by John Cusey


* # Ruby version

* #  System dependencies

* #  Configuration

* #  Database creation

```
$ rails generate model worker 
            name:string 
            position:string 
            office:string 
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
  Worker Load (0.2ms)  SELECT  "workers".* FROM "workers" WHERE "workers"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
=> #<Worker id: 1, name: "Tiger Nixon", position: "System Architect", office: "System Architect", age: 61, startDate: 251, price: 0.3208e6, created_at: "2019-09-05
17:46:56", updated_at: "2019-09-05 17:46:56">
```

## Delete Row

```
irb(main):007:0> w1.destroy
   (0.1ms)  begin transaction
  SQL (0.3ms)  DELETE FROM "workers" WHERE "workers"."id" = ?  [["id", 1]]
   (2.9ms)  commit transaction
=> #<Worker id: 1, name: "Tiger Nixon", position: "System Architect", office: "System Architect", age: 61, startDate: 251, price: 0.3208e6, created_at: "2019-09-05
17:46:56", updated_at: "2019-09-05 17:46:56">
irb(main):008:0> Worker.find(1)
  Worker Load (0.1ms)  SELECT  "workers".* FROM "workers" WHERE "workers"."id" = ? LIMIT ?  [["id", 1], ["LIMIT", 1]]
ActiveRecord::RecordNotFound: Couldn't find Worker with 'id'=1
```
