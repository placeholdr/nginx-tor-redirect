# nginx-tor-redirect

Using deny method:
```
location / {
  include tor-deny.conf;
  error_page 403 = @deny;     
}

location @deny {
  return 301 http://url.onion;
}
```


Using geoip module:
```
http {
    include nginx-tor-geo.conf;
}
```

```
location / {
  if ($torUsers) {
    return 301 http://url.onion;
  }
}
```
