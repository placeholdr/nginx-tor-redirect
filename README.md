# nginx-tor-redirect

Using deny method:
```
location / {
  include nginx1.conf;
  error_page 403 = @deny;     
}

location @deny {
  return 301 http://url.onion;
}
```


Using geoip module:
```
location / {
  if ($torUsers) {
    return 301 http://url.onion;
  }
}
```
