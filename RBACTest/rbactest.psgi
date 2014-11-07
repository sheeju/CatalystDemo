use strict;
use warnings;

use RBACTest;

my $app = RBACTest->apply_default_middlewares(RBACTest->psgi_app);
$app;

