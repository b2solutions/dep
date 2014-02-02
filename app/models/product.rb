class Product < ActiveRecord::Base
	validates :title, :description, :image_url, presence: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :title, uniqueness: true, length: {minimum: 10,
		message: 'The title you entered seems a bit too short'}
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: 'must be a URL for GIF, JPG, or PNG image.'
	}

<<<<<<< HEAD
	def self.latest
		Product.order(:updated_at).last
	end
=======
>>>>>>> 557a8199dd6b6f04a914f5f1f95a5be42282abe4
end
