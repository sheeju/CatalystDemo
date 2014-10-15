package DispatchTest::Controller::Dwarfs;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

DispatchTest::Controller::Dwarfs - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub catchall : Path {
	my ( $self, $c ) = @_;
	push @{$c->stash->{matches}},
	{ 'Dwarfs' . ' -> ' . $c->action => $c->req->args };
}

sub begin : Private {
	my ($self, $c) = @_;
	push @{$c->stash->{matches}},
	{ 'Dwarfs' . ' -> ' . 'begin' => $c->req->args };
}

sub auto : Private {
	my ($self, $c) = @_;
	push @{$c->stash->{matches}},
	{ 'Dwarfs' . ' -> ' . 'auto' => $c->req->args };
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
