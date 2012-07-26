use strict;
use warnings;
use Data::Faker;
use Data::Faker::JapaneseName;
use Encode;

my $faker = Data::Faker->new();
print "ready..\n";
while (my $ret = <STDIN>){
	my $family_name_ref = Data::Faker->japanese_family_name_hash;
	my $first_name_ref = Data::Faker->japanese_male_name_hash;
	print encode 'utf-8', $family_name_ref->{kanji} . $first_name_ref->{kanji} . '  ('. $family_name_ref->{kana} . ' ' . $first_name_ref->{kana} . ')' . "\n";
}
