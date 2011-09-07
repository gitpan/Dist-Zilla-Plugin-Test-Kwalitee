use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::KwaliteeTests;
# ABSTRACT: (DEPRECATED) Release tests for kwalitee
our $VERSION = 'v2.0.0'; # VERSION
use Moose;
extends 'Dist::Zilla::Plugin::Test::Kwalitee';


before register_component => sub {
    warn '!!! [KwaliteeTests] is deprecated and will be removed in a future release; replace it with [Test::Kwalitee]';
};
__PACKAGE__->meta->make_immutable;
no Moose;
1;

__END__
=pod

=encoding utf-8

=head1 NAME

Dist::Zilla::Plugin::KwaliteeTests - (DEPRECATED) Release tests for kwalitee

=head1 VERSION

version v2.0.0

=head1 SYNOPSIS

Please use L<Dist::Zilla::Plugin::Test::Kwalitee> instead.

In C<dist.ini>:

    [Test::Kwalitee]

=for test_synopsis 1;
__END__

=head1 AVAILABILITY

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

