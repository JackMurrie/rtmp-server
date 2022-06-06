## Start server
```bash
docker-compose up
```

## Testing
cd to /data then run:
```bash
ffmpeg -re -i "Rick Astley - Never Gonna Give You Up (Official Music Video)-dQw4w9WgXcQ.mkv" -c:v copy -c:a aac -ar 44100 -ac 1 -f flv rtmp://localhost/live/stream
```
or for hls over rtmp
```bash
ffmpeg -re -i "Rick Astley - Never Gonna Give You Up (Official Music Video)-dQw4w9WgXcQ.mkv" -c:v copy -c:a aac -ar 44100 -ac 1 -f flv rtmp://localhost/hls/stream
```

Stream accesible at:
- rtmp://localhost/live/stream (raw rtmp stream)
- http://localhost:8080/stream.m3u8 (hls)
- http://localhost:8080/stat (stats)

## Useful
sudo systemctl reload nginx.service
stats https://github.com/arut/nginx-rtmp-module/blob/master/stat.xsl
docker image https://hub.docker.com/r/tiangolo/nginx-rtmp/
nginx rtmp doco:
- https://github.com/arut/nginx-rtmp-module/wiki/Directives#exec_push
- https://github.com/arut/nginx-rtmp-module
