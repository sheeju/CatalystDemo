use utf8;
package RBACTest::Schema::Result::RolePermission;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

RBACTest::Schema::Result::RolePermission

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<RolePermission>

=cut

__PACKAGE__->table("RolePermission");

=head1 ACCESSORS

=head2 Id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: '"RolePermission_Id_seq"'

=head2 RoleId

  data_type: 'integer'
  is_nullable: 0

=head2 UtilityId

  data_type: 'integer'
  is_nullable: 0

=head2 PermissionId

  data_type: 'integer'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "Id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "\"RolePermission_Id_seq\"",
  },
  "RoleId",
  { data_type => "integer", is_nullable => 0 },
  "UtilityId",
  { data_type => "integer", is_nullable => 0 },
  "PermissionId",
  { data_type => "integer", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</Id>

=back

=cut

__PACKAGE__->set_primary_key("Id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-11-04 15:16:10
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:lMUaL5n5IjaTPFxrtDiU9Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
