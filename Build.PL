use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Data::Faker::JapaneseName',
    license             => 'perl',
    dist_author         => 'sakomoko <sakomoko@gmail.com>',
    dist_version_from   => 'lib/Data/Faker/JapaneseName.pm',
    requires => {
        'version'     => 0,
		'Carp'        => 0,
		'YAML'        => 0,
		'Data::Faker' => 0,
    },
	test_requires => {
        'Test::More' => 0,
		'Encode'     => 0,
    },
    add_to_cleanup      => [ 'Data-Faker-JapaneseName-*' ],
);

$builder->create_build_script();
