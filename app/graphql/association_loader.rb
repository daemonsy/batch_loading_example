class AssociationLoader < GraphQL::Dataloader::Source
  def initialize(associations)
    @associations = associations
  end

  def fetch(records)
    preload_associations(records)

    records
  end

  private

  def preload_associations(records)
    ActiveRecord::Associations::Preloader.new(records: records, associations: associations).call
  end

  attr_reader :associations
end
