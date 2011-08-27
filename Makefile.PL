
use strict;
use warnings;

use 5.008;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Release tests for kwalitee",
  "AUTHOR" => "Harley Pig <harleypig\@gmail.com>, Caleb Cushing <xenoterracide\@gmail.com>, Marcel Gruenauer <marcel\@cpan.org>",
  "BUILD_REQUIRES" => {
    "Carp" => 0,
    "English" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "Scalar::Util" => 0,
    "Test::More" => "0.94"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Dist-Zilla-Plugin-Test-Kwalitee",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dist::Zilla::Plugin::Test::Kwalitee",
  "PREREQ_PM" => {
    "Dist::Zilla::Plugin::InlineFiles" => 0,
    "Dist::Zilla::Role::TextTemplate" => 0,
    "Moose" => 0,
    "Test::Kwalitee" => 0,
    "strict" => 0,
    "warnings" => 0
  },
  "VERSION" => "1.112390",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



