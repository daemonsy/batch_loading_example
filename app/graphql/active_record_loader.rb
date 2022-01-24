class ActiveRecordLoader < GraphQL::Dataloader::Source
  attr_reader :model_class, :key
  def initialize(model_class, key: :id)
    @model_class = model_class
    @key = key
  end

  def fetch(ids)
    records = model_class.where(key => ids)
    # return a list with `nil` for any ID that wasn't found
    ids.map { |id| records.find { |r| r.id.to_s == id.to_s } }
  end
end
