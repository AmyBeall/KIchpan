Deface::Override.new(
	:virtual_path => 'spree/admin/shared/_header',
	:name => 'redo backend header',
	:replace_contents => 'div.container > figure',
	:text => "<h1 id='back_logo'>Kíchpan</h1>",
	)