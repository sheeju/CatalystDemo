{
	name => 'Library',
	default_view => 'Web',
	'Model::LibraryDB' => {
		traits       => "Caching",
		cursor_class => "DBIx::Class::Cursor::Cached",
		connect_info => {
			dsn               => "dbi:Pg:database=library;host=localhost",
			user              => "sheeju",
			password          => "sheeju",
			quote_field_names => "0",
			quote_char        => "\"",
			name_sep          => ".",
			array_datatypes   => "1",
		},
	},
}
