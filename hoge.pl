use strict;
use warnings;

use lib "samples/client/petstore/perl/lib";
use WWW::OpenAPIClient::Object::Order;
use WWW::OpenAPIClient::Object::Pet;
use WWW::OpenAPIClient::Object::MixedPropertiesAndAdditionalPropertiesClass;

use DDP {deparse => 1};
use JSON;
# my $object = WWW::OpenAPIClient::Object::Order->new(id => '1234', complete => !!1);
#
# my $json = JSON->new->convert_blessed->encode($object);
# print $json;

my $pet = WWW::OpenAPIClient::Object::Pet->new->from_hash({id => '123', photoUrls => [123, 'bbb', 421, !!0]});
# my $json = JSON->new->convert_blessed->encode($pet);
# print $json;


# use WWW::OpenAPIClient::Object::Person;
# my $person = WWW::OpenAPIClient::Object::Person->new->from_hash({ duplicated_required => 123, person_required => '2017-07-21T17:32:28Z'});
#  my $json = JSON->new->convert_blessed->encode($person);
#  print $json;
# 

my $class = WWW::OpenAPIClient::Object::MixedPropertiesAndAdditionalPropertiesClass->new->from_hash({ dateTime => '2020-11-06T09:20:48Z'});
  my $json = JSON->new->convert_blessed->encode($class);
  print $json;