class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  #自动生成一个ｓｅｓｓｉｏｎ辅助模块，　而且，　其中的辅助方法会自动引入到
  # 试图中，　如果载控制器的基类中引入辅助方法，　还可以载控制器中　使用
  include SessionsHelper
end
