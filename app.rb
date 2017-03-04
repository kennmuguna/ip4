require("sinatra/reloader")
  also_reload("lib/**/*.rb")
  require("./lib/kiatu_brand")
  require("./lib/kiatu_store")
  require("pg")

  DB = PG.connect({:dbname => "kiatu_development"})