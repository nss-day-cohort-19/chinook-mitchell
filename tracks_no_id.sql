select t.name "Track", al.title "Album", m.name "MediaType", g.name "Genre"
from track t, album al, mediatype m, genre g;