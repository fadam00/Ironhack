class Project < ApplicationRecord
	has_many :time_entries
	validates :name, presence: true, 
					uniqueness: true,
					length: { maximum: 30 },
					format: {with: /\[alpha]/}
	def #Project.clean_old
		self.clean_old
		project = Project.where("created_at > ?",  7.days.ago)
		project.destroy_all

	end

end
