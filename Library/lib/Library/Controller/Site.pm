package Library::Controller::Site;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller'; }

=head1 NAME

Library::Controller::Site - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched Library::Controller::Site in Site.');
}

sub test : Local 
{
	my ( $self, $c ) = @_;
	$c->stash->{template} = 'site/test.tt';
}

sub testjson : Local
{
	my ( $self, $c ) = @_;
	$c->stash->{books} = {
			'book1' => {'isbn' => '23423', 'author' => 'Curtis Poe'}, 
		'book2' => {'isbn' => '23423', 'author' => 'Curtis Poe'} 
		};
	$c->forward('View::JSON');
}

sub test2 : Local :Does('AJAX') 
{
	my ( $self, $c ) = @_;
	$c->stash->{data} = [1,2];#{
		#	'book1' => {'isbn' => '23423', 'author' => 'Curtis Poe'}, 
		#'book2' => {'isbn' => '23423', 'author' => 'Curtis Poe'} 
		#};
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
