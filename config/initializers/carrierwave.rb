# config/initializers/carrierwave.rb


CarrierWave.configure do |config|
                                                    #config.fog_provider = 'fog/aws'        -# required
  config.storage        = :aws
                                                    #config.fog_public = false
  config.aws_bucket     = ENV["AWS_BUCKET"]         #remvd per https://github.com/sorentwo/carrierwave-aws  ~>ENV('S3_BUCKET_NAME')
  config.aws_acl        = "public-read"

  config.aws_credentials = {
                                                    #config.fog_credentials = {
                                                    #provider:              'AWS',           -# required
    access_key_id:     ENV["AWS_ACCESS_KEY"],       # required -- fog line = aws_access_key_id:
    secret_access_key: ENV["AWS_SECRET_KEY"],       # required -- fog Line = aws_secret_access_key:
    region:            ENV["AWS_REGION"]
  }
                                                    #config.fog_directory  = ENV["AWS_BUCKET"]   -# required
    if Rails.env.development?
      config.cache_dir = '/home/vagrant/uploads_tmp/tmp/uploads'
      config.root = '/home/vagrant/uploads_tmp/tmp'
    end
end
