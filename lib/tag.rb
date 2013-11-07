class Tag

  include DataMapper::Resource

  has n, :linkdbs, :through => Resource

  property :id, Serial
  property :text, String
  
end