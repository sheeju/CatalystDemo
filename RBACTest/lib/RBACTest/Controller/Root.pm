package RBACTest::Controller::Root;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config(namespace => '');

=encoding utf-8

=head1 NAME

RBACTest::Controller::Root - Root Controller for RBACTest

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=head2 index

The root page (/)

=cut


sub test : Local 
{
	my ( $self, $c ) = @_;
	$c->stash->{template} = 'test.tt';
}

sub welcome :Path :Args(0) 
{
	my ( $self, $c ) = @_;
	$c->stash->{template} = 'welcome.tt2';
}

sub message: Local 
{
	my ( $self, $c ) = @_;
	
	if($c->req->method eq 'POST') {
		$c->stash->{message} = $c->request->param( 'message' );

	}
	$c->stash->{template} = 'message.tt2';
}

sub login: Local {
	my ( $self, $c ) = @_;

	if($c->req->method eq 'POST') {
		my $username = $c->request->param( 'username' );
		my $password = $c->request->param( 'password' );

		if ($c->authenticate({ UserName => $username,
					PasswordHash => $password} )) {
			$c->log->info("Auth Success!!");
			$c->assert_user_roles( qw/Admin/ );
			# authentication successful
		} else {
			# authentication failed
			$c->log->info("Auth Failed!!");
		}
	}
	$c->stash->{template} = 'login.tt2';
}

sub home: Local {
	my ( $self, $c ) = @_;

	$c->stash->{template} = 'home.tt2';
}

sub logout: Local {
	my ( $self, $c ) = @_;

	$c->logout( );
	$c->response->redirect($c->uri_for('/'));
}


=head2 default

Standard 404 error page

=cut

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Sheeju Alex,,,

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
