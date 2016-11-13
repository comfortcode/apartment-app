SparkPostRails.configure do |c|
  c.api_key = ENV['SPARKPOST_KEY']
  c.track_opens = true 
  c.track_clicks = true
  c.transactional = true
end