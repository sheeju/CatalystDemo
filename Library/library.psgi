use strict;
use warnings;

use Library;

my $app = Library->apply_default_middlewares(Library->psgi_app);
$app;

