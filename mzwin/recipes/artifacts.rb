
aFile = File.new("D:/mzzipcode/artifacts/version.txt", "r")
zipname = aFile.read.strip
aFile.close

windows_zipfile 'D:/MozartV2_POC/' do
  source "D:/mzzipcode/artifacts/#{zipname}"
  action :unzip
end


