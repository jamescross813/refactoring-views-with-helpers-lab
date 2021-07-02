module ApplicationHelper

    def display_artist(song)
        # binding.pry
        if song.artist_name.present?
            link_to(song.artist_name, artist_path(song.artist_id))
        else
            link_to("Add Artist", edit_song_path(song.id))
        end
    end
end
