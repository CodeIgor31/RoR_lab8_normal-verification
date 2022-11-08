# frozen_string_literal: true

require_relative 'spec_helper'
require_relative 'rails_helper'

# testing PalindromsController
RSpec.describe PalindromsController, type: :controller do
  context 'res_array function check' do
    it 'returns correct array' do
      expect(PalindromsController.result_array(11)).to eq([0, 1, 2, 3, 11])
      expect(PalindromsController.result_array(0)).to eq([0])
      expect(PalindromsController.result_array(-1)).to eq([])
    end
  end

  describe 'GET index' do
    context 'check index(main) page' do
      it 'has a 200 status code' do
        get :index
        expect(response.status).to eq(200)
      end
    end
  end

  describe 'GET result' do
    context 'check result(table) page' do
      it 'has a 200 status code' do
        get :result
        expect(response.status).to eq(200)
      end
    end
  end
end
# RSpec.describe PalindromsController, type: :controller do
#   context 'notice message test' do
#     #let(:params){:num => -1} 
#     it 'return notice message' do
#       @obj = PalindromsController.new
#       post :result, :params => { :widget => { :num => -1 } }
#       p controller.params[:num]
#       @obj.result
#       expect(flash[:notice]).to eq('Вводите числа >= 0')
#     end
#   end
# end
