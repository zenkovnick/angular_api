collection @phones
attributes :id, :phone_id, :age, :name, :snippet, :image_url
node :id {|node| node.id.to_s}
