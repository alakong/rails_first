class HomeController < ApplicationController
#하나의 액션
#여기서 수행된 코드의 결과가 views의 home아래 lotto라는 같은 이름의 view를 실행
  def lotto
    @lotto=(1..45).to_a.sample(6)
  end

  def index
  end

  def welcome
  @name= params[:name]
  end


end
