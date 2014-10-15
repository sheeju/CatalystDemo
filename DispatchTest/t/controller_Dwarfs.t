use strict;
use warnings;
use Test::More;


use Catalyst::Test 'DispatchTest';
use DispatchTest::Controller::Dwarfs;

ok( request('/dwarfs')->is_success, 'Request should succeed' );
done_testing();
