class CasesController < ApplicationController
  
  def index
    @cases = Case.all.order("case_date DESC")
  end

end