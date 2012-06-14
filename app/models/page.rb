class Page < ActiveRecord::Base

	def url
		"/#{slug}"
	end

	def self.make_slug(title)
		title.to_url
	end

end
