use utf8;
package RBACTest::Schema::Result::Role;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

RBACTest::Schema::Result::Role

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<Role>

=cut

__PACKAGE__->table("Role");

=head1 ACCESSORS

=head2 Id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: '"Role_Id_seq"'

=head2 Name

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=head2 Description

  data_type: 'text'
  is_nullable: 1

=head2 ParentId

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "Id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "\"Role_Id_seq\"",
  },
  "Name",
  { data_type => "varchar", is_nullable => 0, size => 255 },
  "Description",
  { data_type => "text", is_nullable => 1 },
  "ParentId",
  { data_type => "integer", is_nullable => 1 },
);

=head1 PRIMARY KEY

=over 4

=item * L</Id>

=back

=cut

__PACKAGE__->set_primary_key("Id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-11-04 15:16:10
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7bP36twEgfjOvx4MTmmW1A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
