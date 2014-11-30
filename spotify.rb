require 'rspotify'

RSpotify.authenticate('174e2d16dcdd456b9a188cc2f2a3be98', '56340cd815994e93a79edd6fe4b961d3')

user = RSpotify::User.find('1127059000')

user.playlists.each do |playlist|
	Dir.mkdir(playlist.name) unless Dir.exists? playlist.name
	file = File.new("#{playlist.name}/songs.txt", "w+")

	playlist.tracks.each do |track|
		file.puts track.uri
	end

	file.close
end
