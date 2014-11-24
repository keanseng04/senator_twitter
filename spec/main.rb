require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "By4xvw5Te5PssBIgdO1BeFxNs"
  config.consumer_secret     = "ElIkbSXrKZenEUqPU2AoaPkgW13Et5YA9voH9dkOkvbCVmAKd5"
  config.access_token        = "123976307-AwqybvaEPDjVU7RExyipBPWTPWvUz1kUfY4raf3G"
  config.access_token_secret = "iA90lvyaNN3cXgPRAlOpbO1RcOLCkXiQFtMpRXxDzFUlP"
end

p client.user_timeline("limkokwing")