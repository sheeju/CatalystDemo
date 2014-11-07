#
# rbactest.pl
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2014 Exceleron Inc
# All rights reserved.
#
# Changelog:
# 2014-11-04 - created
#

{
	name => 'RBAC Test',
	#default_view => 'Web',
	'Model::RBACTestDB' => {
		traits       => "Caching",
		cursor_class => "DBIx::Class::Cursor::Cached",
		connect_info => {
			dsn               => "dbi:Pg:database=rbac;host=localhost",
			user              => "sheeju",
			password          => "sheeju",
			quote_field_names => "0",
			quote_char        => "\"",
			name_sep          => ".",
			array_datatypes   => "1",
		},
	},
}

# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

