import UIKit

let albums = ["Red Bone", "Wu-Tang Forever", "Jurassic 5", "Red Bone", "red Bone", "Wu-Tang Forever"]

print("There are \(albums.count) albums")

let uniqueAlbums = Set(albums)

print("There are \(uniqueAlbums.count) unique albums")
