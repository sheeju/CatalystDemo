use strict;
use warnings;

use DispatchTest;

my $app = DispatchTest->apply_default_middlewares(DispatchTest->psgi_app);
$app;

