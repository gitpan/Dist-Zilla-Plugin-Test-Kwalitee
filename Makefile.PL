
use strict;
use warnings;

use 5.008;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Release tests for kwalitee",
  "AUTHOR" => "Harley Pig <harleypig\@gmail.com>, Caleb Cushing <xenoterracide\@gmail.com>, Marcel Gruenauer <marcel\@cpan.org>, Kent Fredric <kentfredric\@gmail.com>, Karen Etheridge <ether\@cpan.org>",
  "BUILD_REQUIRES" => {},
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Dist-Zilla-Plugin-Test-Kwalitee",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Dist::Zilla::Plugin::Test::Kwalitee",
  "PREREQ_PM" => {
    "Data::Section" => "0",
    "Dist::Zilla::File::InMemory" => "0",
    "Dist::Zilla::Role::FileGatherer" => "0",
    "Dist::Zilla::Role::TextTemplate" => "0",
    "File::Path" => "2.07",
    "Moose" => "0",
    "Test::Kwalitee" => "0",
    "strict" => "0",
    "warnings" => "0"
  },
  "TEST_REQUIRES" => {
    "Capture::Tiny" => "0",
    "Carp" => "0",
    "Dist::Zilla::Tester" => "0",
    "File::Path" => "0",
    "Moose::Autobox" => "0",
    "Path::Class" => "0",
    "Scalar::Util" => "0",
    "Test::DZil" => "0",
    "Test::More" => "0.96",
    "Test::Output" => "0",
    "autodie" => "0",
    "blib" => "0"
  },
  "VERSION" => "2.05",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  my $tr = delete $WriteMakefileArgs{TEST_REQUIRES};
  my $br = $WriteMakefileArgs{BUILD_REQUIRES};
  for my $mod ( keys %$tr ) {
    if ( exists $br->{$mod} ) {
      $br->{$mod} = $tr->{$mod} if $tr->{$mod} > $br->{$mod};
    }
    else {
      $br->{$mod} = $tr->{$mod};
    }
  }
}

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



