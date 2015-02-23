class Course < ActiveRecord::Base
	belongs_to :user

	validates :title, :presence => { :message => "Doh, you didn't enter a title!" }
	validates :description, :presence => true
	validates :cost, :presence => true, :numericality => {:greater_than_or_equal_to => 0}
end
