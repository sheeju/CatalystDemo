use strict;
use warnings;
use Test::More;


use Catalyst::Test 'RBACTest';
use RBACTest::Controller::Site;

ok( request('/site')->is_success, 'Request should succeed' );
done_testing();
