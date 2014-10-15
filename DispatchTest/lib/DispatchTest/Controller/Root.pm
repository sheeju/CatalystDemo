package DispatchTest::Controller::Root;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
use YAML;
__PACKAGE__->config(namespace => '');

=encoding utf-8

=head1 NAME

DispatchTest::Controller::Root - Root Controller for DispatchTest

=head1 DESCRIPTION

[enter your description here]

=cut


sub catchall : Path {
	my ( $self, $c ) = @_;
	push @{$c->stash->{matches}},
	{ 'Root' . ' -> ' . $c->action => $c->req->args };
}

sub begin : Private {
	my ($self, $c) = @_;
	push @{$c->stash->{matches}},
	{ 'Root' . ' -> ' . 'begin' => $c->req->args };
}

sub auto : Private {
	my ($self, $c) = @_;
	push @{$c->stash->{matches}},
	{ 'Root' . ' -> ' . 'auto' => $c->req->args };
}

sub end : ActionClass('RenderView') {
	my ($self, $c) = @_;
	push @{$c->stash->{matches}}, 'Root' . ' -> ' . "end";
	$c->res->body("<pre>\n" . Dump ($c->stash->{matches}) . "</pre>");
}

=head1 AUTHOR

Sheeju Alex,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
