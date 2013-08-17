
use strict;
use warnings;

use 5.006;

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
    "Data::Section" => "0.004",
    "Dist::Zilla::File::InMemory" => "0",
    "Dist::Zilla::Role::FileGatherer" => "0",
    "Dist::Zilla::Role::PrereqSource" => "0",
    "Dist::Zilla::Role::TextTemplate" => "0",
    "Moose" => "0",
    "Sub::Exporter::ForMethods" => "0",
    "namespace::autoclean" => "0",
    "strict" => "0",
    "warnings" => "0"
  },
  "TEST_REQUIRES" => {
    "Capture::Tiny" => "0",
    "Carp" => "0",
    "Dist::Zilla::Tester" => "0",
    "File::Path" => "2.07",
    "Path::Class" => "0",
    "Scalar::Util" => "0",
    "Test::More" => "0.94",
    "blib" => "0"
  },
  "VERSION" => "2.06",
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



