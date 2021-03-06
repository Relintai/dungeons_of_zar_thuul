
extends Control
class_name Menu

# Copyright (c) 2019-2020 Péter Magyar
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

export(int, "Main Menu", "Character Select", "Character Create") var start_menu : int = 0
export (NodePath) var main_menu_scene : NodePath
export (NodePath) var character_selector_scene : NodePath
export (NodePath) var charcer_creation_scenes : NodePath

enum StartMenuTypes {
	MAIN_MENU, CHARACTER_SELECT, CHARACTER_CREATE
}

func _ready():
	switch_to_menu(start_menu)
	
func switch_to_menu(menu : int) -> void:
	get_node(main_menu_scene).hide()
	get_node(character_selector_scene).hide()
	get_node(charcer_creation_scenes).hide()
	
	if menu == StartMenuTypes.MAIN_MENU:
		get_node(main_menu_scene).show()
	elif menu == StartMenuTypes.CHARACTER_CREATE:
		get_node(charcer_creation_scenes).show()
	elif menu == StartMenuTypes.CHARACTER_SELECT:
		get_node(character_selector_scene).show()

func switch_to_character_selector() -> void:
	switch_to_menu(StartMenuTypes.CHARACTER_SELECT)

func switch_to_main_menu() -> void:
	switch_to_menu(StartMenuTypes.MAIN_MENU)

func switch_to_character_creator() -> void:
	switch_to_menu(StartMenuTypes.CHARACTER_CREATE)

func _on_About_pressed():
	pass # Replace with function body.
