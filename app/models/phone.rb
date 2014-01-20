class Phone
  include Mongoid::Document
  field :age, type: String
  field :phone_id, type: String
  field :image_url, type: String
  field :name, type: String
  field :snippet, type: String

  #field :additional_features, type: String
  #field :android, type: Document
  #field :availability, type: Document
  #field :battery, type: Document
  #field :camera, type: Hash
  #field :connectivity, type: Hash
  #field :description, type: Hash
  #field :hardware, type: Hash
  #field :images, type: Array
  #field :size_and_weight, type: Hash
  #field :storage, type: Hash

end
