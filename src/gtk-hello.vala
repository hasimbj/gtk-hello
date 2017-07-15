//program hello world menggunakan Vala

//main function
int main(string[] args){
	//inisialisasi Gtk
	Gtk.init(ref args);
	//buat objek window
	var window = new Gtk.Window();
	window.title = "Hello World!";
	window.set_border_width(12);
	window.set_position(Gtk.WindowPosition.CENTER);
	window.set_default_size(400, 100);
	window.destroy.connect(Gtk.main_quit);

	var button = new Gtk.Button.with_label("Klik disini");
	button.clicked.connect(() => {
		button.label = "Hello World...";
		button.set_sensitive(false);
	});

	window.add(button);
	window.show_all();

	Gtk.main();

	return 0;
}