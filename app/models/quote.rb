class Quote < ActiveRecord::Base
	validates :f_name, :l_name, :company, :email, :telephone, presence: true
end
