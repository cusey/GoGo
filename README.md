![CuseyHub](https://github.com/cusey/ImageForWiki/blob/master/Logos/CuseyHub_Banner_Small.jpg)

# GoGo
by John Cusey


* Ruby version

* System dependencies

* Configuration

* Database creation

```
$ rails generate model worker name:string position:string office:string age:integer startDate:date 'price:decimal{10,2}'

Running via Spring preloader in process 543
      invoke  active_record
      create    db/migrate/20190905173317_create_workers.rb
      create    app/models/worker.rb
      invoke    test_unit
      create      test/models/worker_test.rb
      create      test/fixtures/workers.yml
      
$ rake db:migrate
```

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

## Rails Console 

If get cannot load such file error message when trying to run the rails console from the termial window.  

[rails console require cannot load such file readline - stack overflow](https://stackoverflow.com/questions/34875379/rails-console-require-cannot-load-such-file-readline/34876928)     

Readline gem is required by your application but not specified in your Gemfile

Please add this to your gem file

```
gem 'rb-readline' 
```
