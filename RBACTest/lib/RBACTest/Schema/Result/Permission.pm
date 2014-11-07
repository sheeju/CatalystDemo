use utf8;
package RBACTest::Schema::Result::Permission;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

RBACTest::Schema::Result::Permission

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<Permission>

=cut

__PACKAGE__->table("Permission");

=head1 ACCESSORS

=head2 Id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0
  sequence: '"Permission_Id_seq"'

=head2 Permission

  data_type: 'varchar'
  is_nullable: 0
  size: 255

=cut

__PACKAGE__->add_columns(
  "Id",
  {
    data_type         => "integer",
    is_auto_increment => 1,
    is_nullable       => 0,
    sequence          => "\"Permission_Id_seq\"",
  },
  "Permission",
  { data_type => "varchar", is_nullable => 0, size => 255 },
);

=head1 PRIMARY KEY

=over 4

=item * L</Id>

=back

=cut

__PACKAGE__->set_primary_key("Id");


# Created by DBIx::Class::Schema::Loader v0.07039 @ 2014-11-04 15:16:10
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:T8esl4kThOSpbP9DTs2KeA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
