class OAuthController < ApplicationController

  def authorize
    redirect_to TUDOU_CLIENT.auth_code.authorize_url(redirect_uri: oauth_callback_url)
  end

  def callback
    code = params[:code]
    if code
      token = TUDOU_CLIENT.auth_code.get_token(code, :redirect_uri => oauth_callback_url)
      h_token = token.to_hash
      client = HTTPClient.new()
      fav_list = client.post('http://api.tudou.com/v6/user/fav_list', 'access_token' => h_token[:access_token], 'app_key' => TUDOU_APP_KEY)
      render text: "#{fav_list.body}"
    else
      render text: params['error_info']
    end
  end
end
