import i3ipc

ipc = i3ipc.Connection()
prev_focused = None

for window in ipc.get_tree():
	if window.focused:
		prev_focused = window
	else:
		window.command('opacity 0.9')

def on_window_focus(ipc, focused):
	global prev_focused
	if focused.container.id != prev_focused.id: # https://github.com/swaywm/sway/issues/2859
		focused.container.command('opacity 1')
		prev_focused.command('opacity 0.9')
		prev_focused = focused.container

ipc.on("window::focus", on_window_focus)
ipc.main()
