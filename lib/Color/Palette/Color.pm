package Color::Palette::Color;
our $VERSION = '0.091392';

use Moose;
# ABSTRACT: a color in RGB space

use Color::Palette::Types qw(Byte);


has [ qw(red green blue) ] => (is => 'ro', isa => Byte, required => 1);


sub hex_triple {
  my ($self) = @_;

  sprintf '#%02x%02x%02x', $self->rgb;
}


sub rgb {
  my ($self) = @_;
  my @rgb = map {; $self->$_ } qw(red green blue);
  return wantarray ? @rgb : \@rgb;
}

no Moose;
1;

__END__

=pod

=head1 NAME

Color::Palette::Color - a color in RGB space

=head1 VERSION

version 0.091392

=head1 DESCRIPTION

This is just a color.  Nothing much to see here.

=head1 ATTRIBUTES

=head2 red

=head2 green

=head2 blue

Each of these is an integer from 0 to 255, inclusive.

=head1 METHODS

=head2 hex_triple

This method returns a string like C<#08a2ef>.

=head2 rgb

This method returns the red, green, and blue components.  In list context, it
returns the list.  In scalar context, it returns an arrayref.

=head1 AUTHOR

  Ricardo SIGNES <rjbs@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2009 by Ricardo SIGNES.

This is free software; you can redistribute it and/or modify it under
the same terms as perl itself.

=cut 


