#!/usr/bin/env perl

use strict;
use warnings;
use Crypt::SaltedHash;

my $string = "+++linux";
$string =~ m/[+]*(.*)/;
print $1;

my $stored_password = '$PBKDF2$HMACSHA1:1000:bHV4ZW1idXJna0tB4/Lo9MtMLaGHOtY9ig==$sUKYw9mZ66E8fLL2w01Rq2EotiY=';
my $password = 'somepw';

my $return = Crypt::SaltedHash->validate( $stored_password, $password, undef );