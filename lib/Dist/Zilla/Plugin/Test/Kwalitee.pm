use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::Test::Kwalitee;
# ABSTRACT: Release tests for kwalitee
our $VERSION = '2.0.1'; # VERSION
use Moose;
extends 'Dist::Zilla::Plugin::InlineFiles';

__PACKAGE__->meta->make_immutable;
no Moose;
1;




=pod

=encoding utf-8

=head1 NAME

Dist::Zilla::Plugin::Test::Kwalitee - Release tests for kwalitee

=head1 VERSION

version 2.0.1

=head1 SYNOPSIS

In C<dist.ini>:

    [KwaliteeTests]

=head1 DESCRIPTION

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the
following file:

    xt/release/kwalitee.t - a standard Test::Kwalitee test

=for test_synopsis 1;
__END__

=head1 AVAILABILITY

The project homepage is L<http://metacpan.org/release/Dist-Zilla-Plugin-Test-Kwalitee/>.

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see L<http://search.cpan.org/dist/Dist-Zilla-Plugin-Test-Kwalitee/>.

The development version lives at L<http://github.com/doherty/Dist-Zilla-Plugin-Test-Kwalitee>
and may be cloned from L<git://github.com/doherty/Dist-Zilla-Plugin-Test-Kwalitee.git>.
Instead of sending patches, please fork this project using the standard
git and github infrastructure.

=head1 SOURCE

The development version is on github at L<http://github.com/doherty/Dist-Zilla-Plugin-Test-Kwalitee>
and may be cloned from L<git://github.com/doherty/Dist-Zilla-Plugin-Test-Kwalitee.git>

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<https://github.com/doherty/Dist-Zilla-Plugin-Test-Kwalitee/issues>.

=head1 AUTHORS

=over 4

=item *

Marcel Grünauer <marcel@cpan.org>

=item *

Mike Doherty <doherty@cpan.org>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Mike Doherty.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__DATA__
___[ xt/release/kwalitee.t ]___
#!perl

use Test::More;

eval "use Test::Kwalitee";
plan skip_all => "Test::Kwalitee required for testing kwalitee"
  if $@;
