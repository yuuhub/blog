require 'rails_helper'

RSpec.describe Article, type: :model do
    let!(:article) { Article.new }

    context 'Validations' do
        it '1. is not valid without name' do
            article.content = 'Sample body'
            article.title = nil

            expect(article).to_not be_valid
            expect(article.errors).to be_present
            expect(article.errors.to_h.keys).to include(:title)
        end

        it '2. is not valid without body' do
            article.title = 'Sample name'
            article.content = nil

            expect(article).to_not be_valid
            expect(article.errors).to be_present
            expect(article.errors.to_h.keys).to include(:content)
        end

        it '3. Creates a new article if attributes are valid' do
            article_count = Article.count
            article.title = "title"
            article.content = "content"

            article.save!

            expect(Article.count).to eq(1)
        end
    end
end