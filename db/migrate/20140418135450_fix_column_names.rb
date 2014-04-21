class FixColumnNames < ActiveRecord::Migration
  def self.up
	rename_column :long_snps, :SNP, :snp
	rename_column :long_snps, :CHR, :chr
	rename_column :long_snps, :A1, :a1
	rename_column :long_snps, :A2, :a2
	rename_column :long_snps, :MAF, :maf
	rename_column :long_snps, :NCHROBS, :nchrobs

	end
end
