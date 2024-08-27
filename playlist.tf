resource "spotify_playlist" "goto" {
    name = "goto"
    tracks = ["7iXYRR70wewzVYzWScm99j"]
}

data "spotify_search_track" "Eminem" {
    artist = "Eminem"
}

resource "spotify_playlist" "slim_Shady" {
    name = "Slim Shady"
    tracks = [data.spotify_search_track.Eminem.tracks[0].id,
    data.spotify_search_track.Eminem.tracks[1].id,
    data.spotify_search_track.Eminem.tracks[2].id]
}