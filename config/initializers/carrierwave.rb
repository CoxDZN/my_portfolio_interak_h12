CarrierWave.configure do |config|
  config.ftp_host = "ftp://195.128.174.135/"
  config.ftp_port = 21
  config.ftp_user = "#"
  config.ftp_passwd = "#"
  config.ftp_folder = "/coxdzn.com/rails_uplaod"
  config.ftp_url = "http://coxdzn.com/rails_upload"
  config.passive = false # false by default
end

# CarrierWave.configure do |config|
#   config.fog_credentials = {
#     :provider               => 'AWS',                        # required
#     :aws_access_key_id      => 'AKIAJIXFHU7YMNCH25ZA',                        # required
#     :aws_secret_access_key  => '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',                        # required
#     :region                 => 'us-west-2',                  # optional, defaults to 'us-east-1'
#     :host                   => 's3.example.com',             # optional, defaults to nil
#     :endpoint               => 'http://myawbuckets.s3-website-us-east-1.amazonaws.com/' # optional, defaults to nil
#   }
#   config.fog_directory  = 'name_of_directory'                     # required
#   config.fog_public     = false                                   # optional, defaults to true
#   config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
# end