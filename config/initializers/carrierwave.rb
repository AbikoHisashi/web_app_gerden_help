unless Rails.env.development? || Rails.env.test?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: 'AKIA2TEPTGYDCHIUSFFF',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1'
    }

    config.fog_directory  = 'garden-help-photo'
    config.cache_storage = :fog
  end
end
