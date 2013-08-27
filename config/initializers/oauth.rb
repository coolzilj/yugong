TUDOU_SITE = 'https://api.tudou.com'
TUDOU_APP_KEY = '0eb59079ed79f0e0'
TUDOU_APP_SECRET = '1f77fa32335a1069a97e2ab7f20d2582'

TUDOU_CLIENT = OAuth2::Client.new(
    TUDOU_APP_KEY,
    TUDOU_APP_SECRET,
    :site => TUDOU_SITE,
    :authorize_url => '/oauth2/authorize',
    :token_url => '/oauth2/access_token'
)
