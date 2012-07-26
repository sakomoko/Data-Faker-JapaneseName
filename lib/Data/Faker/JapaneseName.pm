package Data::Faker::JapaneseName;
use warnings;
use strict;
use Carp;
use YAML;
use utf8;
use base 'Data::Faker';
use Data::Faker::JapaneseName::FamilyName;
use Data::Faker::JapaneseName::Male;
use Data::Faker::JapaneseName::Female;

use version; our $VERSION = qv('0.0.3');

=pod

=head1 NAME

Data::Faker::JapaneseName - Data::Faker plugin

=head1 SYNOPSIS and USAGE

  use Data::Faker;

  my $faker = Data::Faker->new();

  print "Name:    ".$faker->japanese_name."\n";

  See L<Data::Faker>

=head1 DATA PROVIDERS

=over 4

=item japanese_name

Return a fake japanese persons name (utf8 on).

=back

=head1 AUTHOR

sakomoko  C<< <sakomoko@gmail.com> >>

=head1 LICENCE AND COPYRIGHT

Copyright (c) 2010, sakomoko C<< <sakomoko@gmail.com> >>. All rights reserved.

This module is free software; you can redistribute it and/or
modify it under the same terms as Perl itself. See L<perlartistic>.

=cut

__PACKAGE__->register_plugin(
	japanese_name => sub {
			my $self = shift;
			my $num = rand();
			if ( $num > 0.5 ) {
				$self->japanese_family_name . $self->japanese_female_name;
			} else {
				$self->japanese_family_name . $self->japanese_male_name;
			}
	},
	japanese_female_full_name => sub {
			my $self = shift;
			$self->japanese_family_name . $self->japanese_female_name;
	},
	japanese_male_full_name => sub {
			my $self = shift;
			$self->japanese_family_name . $self->japanese_male_name;
	},
);

1;
