require 'test_helper'

class LongSnpsControllerTest < ActionController::TestCase
  setup do
    @long_snp = long_snps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:long_snps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create long_snp" do
    assert_difference('LongSnp.count') do
      post :create, long_snp: { A1: @long_snp.A1, A2: @long_snp.A2, CHR: @long_snp.CHR, MAF: @long_snp.MAF, NCHROBS: @long_snp.NCHROBS, SNP: @long_snp.SNP }
    end

    assert_redirected_to long_snp_path(assigns(:long_snp))
  end

  test "should show long_snp" do
    get :show, id: @long_snp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @long_snp
    assert_response :success
  end

  test "should update long_snp" do
    patch :update, id: @long_snp, long_snp: { A1: @long_snp.A1, A2: @long_snp.A2, CHR: @long_snp.CHR, MAF: @long_snp.MAF, NCHROBS: @long_snp.NCHROBS, SNP: @long_snp.SNP }
    assert_redirected_to long_snp_path(assigns(:long_snp))
  end

  test "should destroy long_snp" do
    assert_difference('LongSnp.count', -1) do
      delete :destroy, id: @long_snp
    end

    assert_redirected_to long_snps_path
  end
end
