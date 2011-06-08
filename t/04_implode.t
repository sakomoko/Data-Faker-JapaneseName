use strict;
use warnings;
use Test::More "no_plan";
use Encode;

use_ok('Data::Faker::JapaneseName');
use_ok('Data::Faker', qw/JapaneseName/);

ok( my $faker = Data::Faker->new() );

ok( my $data  = $faker->japanese_name );
ok( utf8::is_utf8( $data ) );

note(encode('utf-8', $data));

ok( $data  = $faker->japanese_name );
ok( utf8::is_utf8( $data ) );

note(encode('utf-8', $data));

ok( $data  = $faker->japanese_name );
ok( utf8::is_utf8( $data ) );

note(encode('utf-8', $data));