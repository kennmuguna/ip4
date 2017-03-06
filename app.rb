 require('sinatra/activerecord') 
  require('sinatra')
  require("sinatra/reloader")
  require("./lib/kiatu_brand")
  require("./lib/kiatu_store")
  also_reload("lib/**/*.rb")
  require("pg")

  get("/") do
    erb(:index)
  end

  get("/kiatu_brand_form") do
    erb(:kiatu_brand_form)
  end

  post("/kiatu_brands") do
    name = params.fetch("name")
    kiatu_brand = Kiatu_brand.new({:name => name, :id => nil})
    kiatu_brand.save()
    erb(:kiatu_brand_success)
  end

  get("/kiatu_store_form") do
    erb(:kiatu_store_form)
  end

  post("/kiatu_stores") do
    name = params.fetch("name")
    kiatu_store = Kiatu_store.new({:name => name, :id => nil})
    kiatu_store.save()
    erb(:kiatu_store_success)
  end

  get("/kiatu_brands") do
    @kiatu_brands = Kiatu_brand.all()
    erb(:kiatu_brands)
  end

  get("/kiatu_stores") do
    @kiatu_stores = Kiatu_store.all()
    erb(:kiatu_stores)
  end
    