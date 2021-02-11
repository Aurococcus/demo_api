class ArticleSerializer
  include JSONAPI::Serializer

  attributes :title, :body

  belongs_to :author
end
