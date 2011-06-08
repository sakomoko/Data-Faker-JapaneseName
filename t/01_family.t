use strict;
use warnings;
use Test::More "no_plan";
use Encode;

use_ok('Data::Faker::JapaneseName::FamilyName');
use_ok('Data::Faker', qw/JapaneseName::FamilyName/);

ok( my $faker = Data::Faker->new() );

ok( my $data  = $faker->japanese_family_name );
ok( utf8::is_utf8( $data ) );

note(encode('utf-8', $data));

ok( $data  = $faker->japanese_family_name );
ok( utf8::is_utf8( $data ) );

note(encode('utf-8', $data));


ok( $data  = $faker->japanese_family_name_hash );
ok( utf8::is_utf8( $data->{kanji} ) );
ok( utf8::is_utf8( $data->{kana} ) );

note(encode('utf-8', $data->{kanji}));
note(encode('utf-8', $data->{kana}));

ok( $data  = $faker->japanese_family_name_hash );
ok( utf8::is_utf8( $data->{kanji} ) );
ok( utf8::is_utf8( $data->{kana} ) );

note(encode('utf-8', $data->{kanji}));
note(encode('utf-8', $data->{kana}));