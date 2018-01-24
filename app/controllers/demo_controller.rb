class DemoController < ApplicationController
  def index
    #捕捉取出link中的参数,index链接中的参数
    @spm =params['spm']
    @id= params[:id]
  end

  def print
    @str = "Wolrd!"
  end
end
