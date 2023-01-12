module main

import os
import term

fn main() {
	print("file name: ")
	file_name := os.get_line()
	file_exists := if os.exists(file_name) { term.green(os.exists(file_name).str()) } else { term.red(os.exists(file_name).str()) }
	println("Does the file exist? ${file_exists}")
	if !os.exists(file_name) {
		return
	}
	file := os.read_lines(file_name)!

	for l in file {
		println(l)
	}
}
