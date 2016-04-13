class Checklist < ActiveRecord::Base
	belongs_to :user
	validates_inclusion_of :networks, :pro_networks, :community, :seo, :cms, :crowdfunding, in: [true, false], :message => "Veuillez choisir une réponse."
end
