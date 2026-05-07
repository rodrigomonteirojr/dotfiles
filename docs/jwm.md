# SUMMARY
Joe Wing's JWM configuration documentation explains XML-based settings for window manager appearance, behavior, and key bindings.

# IDEAS
- The XML configuration format allows both manual and programmatic editing easily for JWM window manager settings.
- Multiple root menus can be assigned to different mouse buttons or key combinations.
- Dynamic menus reload from file or executable output each time the menu is shown.
- Include tag statically merges other config files or program output at parse time.
- Group settings apply options to programs based on regex matching of name or class.
- Options for groups include aerosnap, centered, noborder, maximized, sticky, tiled, and more.
- WindowStyle supports flat or motif decorations with configurable border width and corner radius.
- TrayStyle controls tray look with flat/motif, font, colors, and opacity.
- TaskListStyle can group windows by class and show only current desktop tasks.
- PagerStyle sets colors for active/inactive windows and desktops in the pager.
- MenuStyle defines active and inactive colors, font, outline, and opacity for menus.
- PopupStyle enables or disables popups for tray buttons, clocks, menus, pagers, and tasks.
- Colors can be hex triplets, X11 names, or gradients separated by colon.
- Icon search paths are scanned for matching filenames; default icon used if not found.
- Key bindings use modifier masks (A, C, S, 1-5) and keysyms for various actions.
- Mouse bindings have context (border, title, root, etc.) and button numbers for press/release.
- Desktops can be organized as 2D grid with custom names and backgrounds per desktop.
- Focus model options include click, clicktitle, sloppy, sloppytitle with different raise behavior.
- SnapMode enables border or screen snapping with configurable distance between windows.
- MoveMode can be opaque or outline, with optional mask for drag and delay for cross-desktop moves.
- ResizeMode also supports opaque or outline with coordinate display options.
- Double click sensitivity is adjustable via DoubleClickDelta and DoubleClickSpeed settings.
- Startup, restart, and shutdown commands can be configured in the XML file.
- Custom icons for close, maximize, minimize, and menu buttons are replaceable.
- Opacity requires a composite manager like compton to function correctly.
- Tray can autohide from left, right, top, bottom edges or be disabled.
- Tray layout can be horizontal or vertical with fixed, left, center, or right alignment.
- Pager can display desktop names with labeled attribute set to true or false.
- Window title can include client machine name from WM_CLIENT_MACHINE property.
- Regex patterns in Name and Class tags allow flexible window matching for groups.

# INSIGHTS
- JWM's XML architecture enables both human readability and machine automation of configuration.
- The cascading style hierarchy reduces duplication by inheriting defaults from parent tags.
- Regex-based grouping empowers users to define consistent behaviors for complex application sets.
- Dynamic menus allow real-time updates from scripts, merging flexibility with static structure.
- Advanced opacity and compositing features push JWM beyond traditional lightweight window managers.
- The focus model choices reflect trade-offs between efficiency and discoverability for different workflows.
- Tray and menu customization demonstrate JWM's commitment to desktop environment personalization.
- The inclusion of commands for startup, restart, and shutdown enables seamless session management.
- Icon search paths with fallback defaults ensure visual consistency even without application icons.
- Keyboard and mouse binding flexibility turns JWM into a highly scriptable window management tool.

# QUOTES
- "Configuration of JWM is done by editing ".jwmrc"." — JWM documentation
- "Before restarting JWM, it is a good idea to run "jwm -p" to make sure the configuration file is free of errors." — JWM documentation
- "The root menu in JWM is the primary way of starting programs." — JWM documentation
- "Multiple root menus are possible. See the onroot attribute for more information." — JWM documentation
- "Within the RootMenu tag the following tags are supported: Menu, Dynamic, Program, Separator, Desktops, SendTo, Stick, Maximize, Minimize, Shade, Move, Resize, Kill, Close, Restart, Exit." — JWM documentation
- "Dynamic menus: a file to load for the root menu. If the name begins with 'exec:', then the name of an executable can be provided that will output the root menu." — JWM documentation
- "Program groups allow one to specify options which apply to a group of programs by their name and/or class." — JWM documentation
- "The WindowStyle tag controls the look of window borders." — JWM documentation
- "The TrayStyle tag controls the look of the tray." — JWM documentation
- "The TaskListStyle tag controls the look of task lists." — JWM documentation
- "The PagerStyle tag controls the look of pagers on the tray." — JWM documentation
- "The MenuStyle tag controls the look of menus in JWM." — JWM documentation
- "The PopupStyle tag controls the look of popup windows such as those shown when the mouse sits over a task list item." — JWM documentation
- "Colors for various parts of JWM are specified within specific tags." — JWM documentation
- "Icons for windows that don't supply an icon via the _NET_WM_ICON hint are located by searching the icon search path(s)..." — JWM documentation
- "Keyboard bindings in JWM are controlled by the configuration file." — JWM documentation
- "Mouse bindings are configured using Mouse tags." — JWM documentation
- "Virtual desktops are controlled with the Desktops tag." — JWM documentation
- "The following tags may also be supplied: ButtonClose, ButtonMax, ButtonMaxActive, ButtonMenu, ButtonMin, DefaultIcon, DoubleClickDelta, DoubleClickSpeed, FocusModel, MoveMode, ResizeMode, RestartCommand, ShutdownCommand, SnapMode, StartupCommand." — JWM documentation
- "Note that icon, PNG, JPEG, and XPM support are compile-time options." — JWM documentation
- "Square icons work best." — JWM documentation
- "The optional mask attribute specifies the key mask that, when held, allows one to move the window by dragging it." — JWM documentation
- "The optional coordinates attribute determines the location of the move status window." — JWM documentation
- "The optional delay attribute sets the delay in milliseconds before moving a window to a different desktop." — JWM documentation

# HABITS
- Always validate configuration with "jwm -p" before restarting to avoid losing menus.
- Use multiple root menus assigned to different mouse buttons for quick access.
- Include dynamic menus from scripts to keep application lists up to date.
- Group similar applications with regex to apply consistent window behaviors.
- Set a default icon to ensure all windows have a recognizable task bar entry.
- Configure key bindings for frequent actions like switching desktops and maximizing.
- Customize focus model to match personal workflow, e.g., sloppy for less clicking.
- Enable snap mode with a comfortable distance to align windows effortlessly.
- Use composite manager for transparency effects on windows, trays, and menus.
- Organize desktops in a grid and name them for easy navigation via keys.
- Test new configuration snippets in a separate include file before merging.
- Use gradients in backgrounds and title bars for subtle visual differentiation.
- Set a low double-click delta to prevent accidental window operations.
- Assign tray autohide to reclaim screen space without losing quick access.
- Store icons in a centralized directory and add path to IconPath for consistency.

# FACTS
- X server recognizes color names like "red" and hex triplets like #FF0000.
- Gradients are specified as two colors separated by a colon in configuration.
- Composite manager like compton is required for opacity effects in JWM.
- _NET_WM_ICON hint provides window icons from applications to the window manager.
- WM_CLASS hint contains instance name and class for window matching in groups.
- Extended POSIX regular expressions are used for Name and Class matching.
- XStringToKeysym converts key strings to keysym codes for key bindings.
- xmodmap can reconfigure physical key mappings for modifier masks.
- strftime format strings control clock display; %I:%M %p is default.
- tzset function determines time zone for clock display; defaults to local.
- The scroll wheel over menu items moves through them when menu is open.
- Button 3 over a pager with drag allows moving a window to another desktop.
- JWM supports multiple screens via the screen attribute in Tray tag.
- Compile-time options include XPM, PNG, JPEG icon format support.
- DoubleClickDelta default is 2 pixels; range 0-32.
- DoubleClickSpeed default is 400 milliseconds; range 1-2000.
- Snap distance default is 5 pixels; range 1-32.
- Move delay default is 1000 milliseconds; 0 disables cross-desktop dragging.
- FocusModel default is sloppy; other options: click, clicktitle, sloppytitle.
- Window border width minimum is 1, maximum is 128 pixels.

# REFERENCES
- JWM project on GitHub: https://github.com/joewing/jwm
- JWM release notes: https://github.com/joewing/jwm/releases
- Compton composite manager: https://github.com/chjj/compton
- strftime(3) man page for clock format
- tzset(3) man page for time zone
- regex(7) man page for extended POSIX regular expressions
- XStringToKeysym for key symbols
- xmodmap program for modifier key configuration
- _NET_WM_ICON hint from freedesktop.org standards
- WM_CLIENT_MACHINE property
- Example configuration file: example.jwmrc
- Fonts documentation: fonts.html
- Colors section: colors.html (within same document)
- Icon path directories for XPM, PNG, JPEG
- Makefile compile-time options for image support

# ONE-SENTENCE TAKEAWAY
JWM's XML configuration empowers deep customization via dynamic menus, regex groups, and flexible bindings.

# RECOMMENDATIONS
- Validate your configuration with "jwm -p" before restarting to avoid screen lockout.
- Use multiple root menus assigned to different mouse buttons for quick access.
- Include dynamic menus from scripts to keep application lists current automatically.
- Group similar applications with regex to apply consistent window behaviors quickly.
- Set a default icon to ensure all windows have a recognizable task bar entry.
- Configure key bindings for frequent actions like switching desktops and maximizing windows.
- Customize focus model to match personal workflow for efficiency or minimal clicking.
- Enable snap mode with a comfortable distance to align windows effortlessly without gaps.
- Use composite manager for transparency effects on windows, trays, and menus elegantly.
- Organize desktops in a grid and name them for easy navigation via key shortcuts.
- Test new configuration snippets in a separate include file before merging into main.
- Use gradients in backgrounds and title bars for subtle visual differentiation without bloat.
- Set a low double-click delta to prevent accidental window operations on fast clicks.
- Assign tray autohide to reclaim screen space without losing quick access to tools.
- Store icons in a centralized directory and add path to IconPath for consistency.
- Use the optional delay on MoveMode to prevent accidental desktop switches during drag.
- Create separate tray layouts for each monitor using the screen attribute for multihead setups.
- Disable popups for elements you don't need to reduce visual distraction and lag.
- Experiment with different decorations like motif for a retro look or flat for modern.
- Leverage the RestartCommand to automatically launch another WM after exiting JWM.