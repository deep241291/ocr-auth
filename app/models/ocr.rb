class Ocr < ActiveRecord::Base
	mount_uploader :avatar, AvatarUploader

	after_create :parse_file

	def parse_file
		resource = OcrSpace::Resource.new(apikey: ENV['OCR_API_KEY'])
		result = resource.clean_convert file: self.avatar.path
		self.results = result
		self.save!
	end
end
