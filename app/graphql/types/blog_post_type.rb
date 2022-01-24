module Types
  class BlogPostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :body, String, null: true
    field :blog_id, Integer, null: false
    field :author_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :author, AuthorType, null: false

    def author
      dataloader.with(AssociationLoader, :author).load(object)
      object.author
    end
  end
end

# dataloader.with(ActiveRecordLoader, Author, key: :id).load(object.author_id)
# dataloader.with(AssociationLoader, :author).load(object)
