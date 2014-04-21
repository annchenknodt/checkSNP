class CreateLongSnps < ActiveRecord::Migration
  def change
    create_table :long_snps do |t|
      t.integer :CHR
      t.string :SNP
      t.integer :A1
      t.integer :A2
      t.decimal :MAF
      t.integer :NCHROBS

      t.timestamps
    end
  end
end
