
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Color-Palette',
  NAME      => 'Color::Palette',
  AUTHOR    => 'Ricardo\ SIGNES\ \<rjbs\@cpan\.org\>',
  ABSTRACT  => 'a set of named colors',
  VERSION   => '0.091392',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "MooseX::Types" => '0',
    "List::MoreUtils" => '0',
    "Moose" => '0',
  },
);
