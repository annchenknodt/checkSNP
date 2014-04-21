json.array!(@long_snps) do |long_snp|
  json.extract! long_snp, :id, :CHR, :SNP, :A1, :A2, :MAF, :NCHROBS
  json.url long_snp_url(long_snp, format: :json)
end
