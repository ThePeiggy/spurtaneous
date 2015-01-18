class Cause < ActiveRecord::Base
	belongs_to :user
	validates :name, presence: true
	validates :unit_donation, presence: true
	validates :hits, presence: true

	scope :abandoned, -> { where(hits: 0) }
	scope :today, lambda { WHERE("created_at BETWEEN '#{DateTime.now.beginning_of_day}' AND '#{DateTime.now.end_of_day}'")}

	def add_hit
		update_attribute(:hits, hits + 1)
	end

	def self.available(limit)
		return where("unit_donation <= ?", limit)
	end

	def money_raised
		hits * unit_donation
	end
end
