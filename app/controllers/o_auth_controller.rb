class OAuthController < ApplicationController

  def authorize
    redirect_to TUDOU_CLIENT.auth_code.authorize_url(redirect_uri: oauth_callback_url)
  end

  def callback
    code = params[:code]
    if code
      token = TUDOU_CLIENT.auth_code.get_token(code, :redirect_uri => oauth_callback_url)
      h_token = token.to_hash
      render text: "#{h_token[:access_token]}"
    else
      render text: params['error_info']
    end
  end
end
