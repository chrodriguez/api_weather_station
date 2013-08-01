# Weather API

REST API that exposes data imported from Davis Weather Station Vantage Pro 2 Plus. 
Imported data is read from an ascii file downloaded by ftp. 

# Install

* Create a database
* Configure `config/database.yml`
* Run bundler: `bundle install`
* Run database migrations: `bundle exec rake db:migrate`

# Use

If weather data file is `data/data.txt` then the following task will import data
to be exported as a REST Api

```
  rake weather:feed:file[data/data.txt]
```

*You should call this task from a crontab after updating data/data.txt*

# API

The REST API, is implemented using sinatra, so you can start it using rackup:

```
  bundle exec rackup
```
## Sercices

* `/last`: last captured data 

# Sample application

You can try the API using provided html inside `public` folder. Try it
accessing: `http://localjpst:9292/index.html`

## TODO
* Add more services 
* Integrate with dashing gem

