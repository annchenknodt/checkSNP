class LongSnp < ActiveRecord::Base
	validates_presence_of :SNP
	def self.search(search)
		if search
			find(:all, :conditions => ['snp LIKE ?', "#{search}"])
		else
			find(:all, :conditions => ['id = ?',"1050623"])
		end
	end
end
