use utf8;
package RBACTest::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

RBACTest::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<User>

=cut

__PACKAGE__->table("User");

=head1 ACCESSORS

=head2 Id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: '"User_Id_seq"'

=head2 LastLoginEpoch

  data_type: 'integer'
  is_nullable: 1

=head2 UserName

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 PasswordSalt

  data_type: 'bytea'
  is_nullable: 0

=head2 PasswordHash

  data_type: 'bytea'
  is_nullable: 0

=head2 PasswordHashType

  data_type: 'enum'
  extra: {custom_type_name => "passwordhashtype",list => ["MD5","SHA-1","SHA-256"]}
  is_nullable: 0

=head2 Status

  data_type: 'enum'
  extra: {custom_type_name => "userstatustype",list => ["Inactive","Active"]}
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "Id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "\"User_Id_seq\"",
  },
  "LastLoginEpoch",
  { data_type => "integer", is_nullable => 1 },
  "UserName",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "PasswordSalt",
  { data_type => "bytea", is_nullable => 0 },
  "PasswordHash",
  { data_type => "bytea", is_nullable => 0 },
  "PasswordHashType",
  {
    data_type => "enum",
    extra => {
      custom_type_name => "passwordhashtype",
      list => ["MD5", "SHA-1", "SHA-256"],
    },
    is_nullable => 0,
  },
  "Status",
  {
    data_type => "enum",
    extra => {
      custom_type_name => "userstatustype",
      list => ["Inactive", "Active"],
    },
    is_nullable => 0,
  },
);

=head1 PRIMARY KEY

=over 4

=item * L</Id>

=back

=cut

__PACKAGE__->set_primary_key("Id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-11-04 17:00:15
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6n8uKI08vMQcsZvVRVC0ZQ

__PACKAGE__->has_many(
	"UserRoles",
	"RBACTest::Schema::Result::UserRole",
	{ "foreign.UserId" => "self.Id" },
	{ cascade_copy => 0, cascade_delete => 0 },
);

__PACKAGE__->many_to_many("Roles", "UserRoles", "Role");


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
