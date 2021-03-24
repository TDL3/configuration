set http_proxy "http://127.0.0.1:7890/"
set HTTP_PROXY $http_proxy

set https_proxy $http_proxy
set HTTPS_PROXY $http_proxy

set ftp_proxy $http_proxy
set FTP_PROXY $http_proxy

set rsync_proxy $http_proxy
set RSYNC_PROXY $http_proxy

set all_proxy "socks5://127.0.0.1:7891"
set ALL_PROXY $all_proxy

set no_proxy "localhost,127.0.0.1,192.168.0.1,::1,*.local"
set NO_PROXY $no_proxy
