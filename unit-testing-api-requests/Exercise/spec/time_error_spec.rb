
# Output of URI - {"abbreviation":"BST","client_ip":"
# 2a00:23c7:2b06:6601:541b:b9:5a2b:88d1","datetime":"2022-05-26T15:34:30.7
# 05526+01:00","day_of_week":4,"day_of_year":146,"dst":true,"dst_from":
# "2022-03-27T01:00:00+00:00","dst_offset":3600,"dst_until":
# "2022-10-30T01:00:00+00:00","raw_offset":0,"timezone":
# "Europe/London","unixtime":1653575670,"utc_datetime":
# "2022-05-26T14:34:30.705526+00:00","utc_offset":"+01:00","week_number":21}%  
# Output of Time.now - 2022-05-26 15:35:51.570053 +0100 

require 'time_error'
require 'date'
RSpec.describe TimeError do
  it "Gets the server time from URI" do

    #time = DateTime.parse("2022-05-26 16:02:42 +0100")
    #result = DateTime.parse("2022-05-26 15:02:42 +0000")
    sample_uri_data = "{\"abbreviation\":\"BST\",\"client_ip\":\"2a00:23c7:2b06:6601:541b:b9:5a2b:88d1\",\"datetime\":\"2022-05-26T16:02:42.475279+01:00\",\"day_of_week\":4,\"day_of_year\":146,\"dst\":true,\"dst_from\":\"2022-03-27T01:00:00+00:00\",\"dst_offset\":3600,\"dst_until\":\"2022-10-30T01:00:00+00:00\",\"raw_offset\":0,\"timezone\":\"Europe/London\",\"unixtime\":1653577362,\"utc_datetime\":\"2022-05-26T15:02:42.475279+00:00\",\"utc_offset\":\"+01:00\",\"week_number\":21}"
    
    fake_requestor = double :requester

    time = Time.new(2022, 05, 26, 16, 02, 42)
    expect(fake_requestor).to receive(:get).with(URI("https://worldtimeapi.org/api/ip"))
    .and_return(sample_uri_data)
    
    time_error = TimeError.new(fake_requestor)
    
    expect(time_error.error(time)).to eq 0
  end
end