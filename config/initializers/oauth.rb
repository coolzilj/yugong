TUDOU_SITE = 'https://api.tudou.com'

TUDOU_CLIENT = OAuth2::Client.new(
    '0eb59079ed79f0e0',
    '1f77fa32335a1069a97e2ab7f20d2582',
    :site => TUDOU_SITE,
    :authorize_url => '/oauth2/authorize',
    :token_url => '/oauth2/access_token'
)
