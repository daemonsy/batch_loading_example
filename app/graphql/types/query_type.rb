module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :blog, BlogType, null: false, description: "Find a blog by slug" do
      argument :slug, String, required: true
    end

    def blog(slug:)
      Blog.find_by!(slug: slug)
    end
  end
end
