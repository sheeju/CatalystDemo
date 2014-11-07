package RBACTest::Controller::Site;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

RBACTest::Controller::Site - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched RBACTest::Controller::Site in Site.');
}

sub menu1 :Local {
    my ( $self, $c ) = @_;
}

sub menu2 :Local {
    my ( $self, $c ) = @_;
}

sub menu3 :Local {
    my ( $self, $c ) = @_;
}

sub menu4 :Local {
    my ( $self, $c ) = @_;
}

sub menu5 :Local {
    my ( $self, $c ) = @_;
}


=encoding utf8

=head1 AUTHOR

Sheeju Alex,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
