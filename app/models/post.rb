class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validate :true_fact

    def true_fact
        if title == "True Facts"
            errors.add(:title, "not allowed")
        end
    end
end
