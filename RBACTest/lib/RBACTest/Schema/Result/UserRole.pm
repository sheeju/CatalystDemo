use utf8;
package RBACTest::Schema::Result::UserRole;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

RBACTest::Schema::Result::UserRole

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<UserRole>

=cut

__PACKAGE__->table("UserRole");

=head1 ACCESSORS

=head2 UserId

  data_type: 'integer'
  is_nullable: 0

=head2 RoleId

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "UserId",
  { data_type => "integer", is_nullable => 0 },
  "RoleId",
  { data_type => "integer", is_nullable => 0 },
);


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-11-04 15:16:10
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:HlgyjqT8/HbC6AS6mbDiCQ

__PACKAGE__->belongs_to(
	"Role",
	"RBACTest::Schema::Result::Role",
	{ Id => "RoleId" },
	{ is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);

# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
