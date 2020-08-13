if Rails.env.production?
  require 'carrierwave/storage/abstract'
  require 'carrierwave/storage/file'
  require 'carrierwave/storage/fog'
  CarrierWave.configure do |config|
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      # Amazon S3用の設定
      provider: 'AWS',
      region: Rails.application.credentials.s3[:s3_region],
      aws_access_key_id: Rails.application.credentials.s3[:s3_access_key],
      aws_secret_access_key: Rails.application.credentials.s3[:s3_secret_key]
    }
    config.fog_directory = 'happy-gut-fodmap'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/happy-gut-fodmap'
  end
end
