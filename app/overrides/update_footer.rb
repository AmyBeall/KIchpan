Deface::Override.new(
	:virtual_path => 'spree/shared/_footer',
	:name => 'change footer text',
	:replace => 'div#footer-left p',
	:text => "<p> Kíchpan </p>",
	:original => '4e19837d10001a01f5c46f1d5e1d6002d2364889'
	)