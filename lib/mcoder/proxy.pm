package code::proxy;

our $VERSION = '0.01';

use strict;
use warnings;

require code;

sub import {
    @_='proxy', [@_];
    goto &code::import
}

1;
__END__
# Below is stub documentation for your module. You'd better edit it!

=head1 NAME

code::proxy - Perl extension for proxy methods generation

=head1 SYNOPSIS

  use code::proxy legs => qw(run walk jump);
  # is equivalent to...
  # sub run { shift->legs->run(@_) };
  # sub walk { shift->legs->walk(@_) };
  # sub jump { shift->legs->jump(@_) };

  use code::proxy q({_cutter}) => qw(cut);
  # sub cut { shift->{_cutter}->cut(@_) };

  use code::proxy coder => { code_c => 'code' };
  # sub code_c { shift->coder->code(@_) };

=head1 ABSTRACT

create proxy methods to other objects accessible via a has-a relation

=head1 DESCRIPTION

look at the synopsis!

=head2 EXPORT

the proxy methods defined


=head1 SEE ALSO

L<Class::MethodMaker>

=head1 AUTHOR

Salvador Fandiño, E<lt>sfandino@yahoo.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2003 by Salvador Fandiño

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
