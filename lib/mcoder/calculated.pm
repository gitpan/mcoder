package mcoder::calculated;

our $VERSION = '0.01';

use strict;
use warnings;

require mcoder;

sub import {
    @_='calculated', [@_];
    goto &mcoder::import
}

1;
__END__

=head1 NAME

mcoder::calculated - Perl extension for calculated methods generation

=head1 SYNOPSIS

  use mcoder::calculated qw(runner walker jumper);
  use mcoder::calculated { coder => '_coder' };

  sub _calculate_runner { ... }
  sub _calculate_walker { ... }
  sub _calculate_jumper { ... }
  sub _calculate_coder { ... }

=head1 ABSTRACT

create get methods to retrieve object attributes that automatically
call a _calculate_* method when the attribute doesn' exist.

=head1 DESCRIPTION

look at the synopsis!

=head2 EXPORT

the get methods defined


=head1 SEE ALSO

L<Class::MethodMaker>

=head1 AUTHOR

Salvador Fandi�o, E<lt>sfandino@yahoo.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by Salvador Fandi�o

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
