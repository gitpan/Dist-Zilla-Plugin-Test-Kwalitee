use 5.008;
use strict;
use warnings;

package Dist::Zilla::Plugin::KwaliteeTests;
{
  $Dist::Zilla::Plugin::KwaliteeTests::VERSION = '2.020000';
}

# ABSTRACT: (DEPRECATED) Release tests for kwalitee
use Moose;
extends 'Dist::Zilla::Plugin::Test::Kwalitee';


before register_component => sub {
  warn '!!! [KwaliteeTests] is deprecated, and will be removed in a future release. Please use [Test::Kwalitee] instead.';
};

__PACKAGE__->meta->make_immutable;
no Moose;
1;

__END__
=pod

=head1 NAME

Dist::Zilla::Plugin::KwaliteeTests - (DEPRECATED) Release tests for kwalitee

=head1 VERSION

version 2.020000

=for test_synopsis 1;
__END__

=head1 SYNOPSIS

In C<dist.ini>:

    [Test::Kwalitee]
    skiptest=use_strict ; Don't test for strictness.

=head1 DESCRIPTION

Please use L<Dist::Zilla::Plugin::Test::Kwalitee> instead.

This is an extension of L<Dist::Zilla::Plugin::InlineFiles>, providing the
following file:

  xt/release/kwalitee.t - a standard Test::Kwalitee test

=head1 AUTHORS

=over 4

=item *

Harley Pig <harleypig@gmail.com>

=item *

Caleb Cushing <xenoterracide@gmail.com>

=item *

Marcel Gruenauer <marcel@cpan.org>

=item *

Kent Fredric <kentfredric@gmail.com>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Alan Young.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

