use strict;
use warnings;
use Plack::Builder;
use Plack::App::Proxy;

##
# The API key is generated for test user
# Yahoo ID: plackmiddlewareproxyflickr
# Password: lYIDDKmu/OEDE
##
# This is only for demo purpose,
# Please, use your own API key!
##

builder {
    enable 'Image::Scale',
        memory_limit => 50_000_000;
    enable 'Proxy::Flickr',
        apikey => '344b2dbbe8c8b2f4e632dbd8cf4b437f',
        apisecret => 'c261f0fc95ae2b5c';
    Plack::App::Proxy->new();
};

