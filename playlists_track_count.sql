select p.name, pl.playlistid, count(pl.trackid)
from playlisttrack pl, playlist p
where pl.playlistid = p.playlistid
group by pl.playlistid;