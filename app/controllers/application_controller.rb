class ApplicationController < ActionController::Base
  # basic認証コード↓
  before_action :basic_auth  

  private
  # basic認証コード↓
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]  # 環境変数を読み込む記述に変更
    end
  end
end
