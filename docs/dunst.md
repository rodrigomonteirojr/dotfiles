SUMMARY
Dunst documentation details configuration of a notification daemon with rule-based filtering and scripting for desktop notifications.

IDEAS
- Dunst configuration uses ini-like sections with filtering and modifying rules for notifications.
- Notifications can be stacked together if duplicates of same program, summary, body, icon, urgency.
- The geometry setting is deprecated and split into width, height, origin, notification_limit, offset.
- Notifications can be sorted by urgency descending, ascending, id, or update time.
- A pause level system allows partial pause: only high urgency notifications get through.
- On Wayland, global keyboard shortcuts are not possible; use dunstctl instead.
- Dunst supports recursive icon lookup using icon_theme for simpler configuration.
- Scripts can be triggered by rules and receive notification details via environment variables.
- The progress bar can be customized with height, width, alignment, frame, corner radius.
- Icons can have rounded corners and specific corners rounded independently.
- The notification window can have rounded corners and specific corners selected.
- Mouse clicks can be configured to perform actions like close, context, open URL.
- The ignore_dbusclose setting lets you enforce dunst's timeout over application's close request.
- Fullscreen handling has modes: show, delay, pushback, suppress for different behaviors.
- Stack tags allow notifications from same app to replace each other (e.g., volume).
- Transient notifications bypass idle_threshold, useful for urgent but short-lived alerts.
- Markup can be fully allowed, stripped, or disabled for security or compatibility.
- Duplicate count can be hidden with hide_duplicate_count.
- History length limits how many past notifications can be recalled.
- Sticky history prevents recalled notifications from timing out automatically.
- The format string supports appname, summary, body, category, icon, progress etc.
- Word wrap and ellipsize control how long text is displayed.
- Icon position can be left, right, top, or off for minimal notifications.
- Hide text feature shows only icon and progress bar, useful for volume/brightness.
- Notify-send hints allow setting colors, progress, icon, category, stack tag.
- Actions can be invoked via middle click or context menu using dmenu.
- Time format accepts units: ms, s, m, h, d; default seconds.
- The default_pause_level and override_pause_level enable prioritization of notifications.
- On Wayland, notifications appear on layer overlay to show above fullscreen windows.
- Rules can filter by desktop_entry which is not localized, more reliable than appname.

INSIGHTS
- Rule-based filtering and modification enable fine-grained control over notification appearance.
- Stacking duplicates reduces visual clutter while preserving the count of events.
- Partial pause modes allow critical alerts to bypass silence phases effectively.
- Wayland's security constraints force alternative interaction patterns like dunstctl.
- Recursive icon lookup simplifies configuration by eliminating manual path lists.
- Script integration empowers automation and custom responses to incoming notifications.
- Customizable progress bars and icons enhance visual communication of system status.
- Mouse and keyboard bindings offer efficient and ergonomic notification management.
- Fullscreen handling modes balance focus and interruption during immersive tasks.
- Timeout and idle thresholds respect user availability and attention span.
- Color and markup handling require careful security and compatibility considerations.
- History and recall features prevent loss of important transient notifications.

QUOTES
- "The configuration is divided into sections in an ini-like format." - dunst documentation
- "Dunst has Wayland support since version 1.6.0." - dunst documentation
- "Keyboard shortcuts have been moved to the global section of the config for consistency with other settings." - dunst documentation
- "Wayland does not allow applications to listen to global keyboard events, so this feature can be implemented only for X." - dunst documentation
- "If something doesn't quite work in Wayland, please file a bug report." - dunst documentation
- "Note that some variables may be empty." - dunst documentation (scripting)
- "It's important to note that markup in the format option will be parsed regardless of what this is set to." - dunst documentation
- "Dunst tries to find a color that fits the rest of the notification color scheme automatically." - dunst documentation
- "A notification will appear whenever notification's override_pause_level is greater than the paused level." - dunst documentation
- "The number of notifications that can appear at one time." - dunst documentation
- "Two notifications are considered duplicate if the name of the program that sent it, summary, body, icon and urgency are all identical." - dunst documentation
- "If set to true, duplicate notifications will be stacked together instead of being displayed separately." - dunst documentation
- "The POSIX syntax is more powerful and will eventually become the default." - dunst documentation
- "If you find a problem with these new features, make sure to report it." - dunst documentation
- "Dunst will warn you if an optional feature isn't supported and will disable the corresponding functionality." - dunst documentation
- "Colors are values with the format #RGB or #RRGGBB." - dunst documentation
- "You may also specify a transparency component by using the format #RGBA or #RRGGBBAA." - dunst documentation
- "Dunst is released under the BSD 3-Clause License." - dunst documentation
- "Dunst allows notifiers (i.e.: programs that send the notifications) to specify actions." - dunst documentation
- "A notification indicating how many notifications are not being displayed due to the notification limit will be shown in place of the last notification slot." - dunst documentation
- "The height in pixels of the separator between notifications, if set to 0 there will be no separating line." - dunst documentation
- "If an integer value is passed to dunst as a hint, a progress bar will be drawn at the bottom of the notification." - dunst documentation
- "The corner radius of the icon image in pixels. Gives the icon rounded corners." - dunst documentation
- "Pending notifications are redisplayed in a first-in-last-out order." - dunst documentation
- "The 'experimental' section contains experimental and unstable settings." - dunst documentation

HABITS
- Enable POSIX regex for more powerful filtering of notification rules.
- Use dunstctl instead of keyboard shortcuts when running on Wayland compositor.
- Configure mouse clicks to close or invoke actions for efficient interaction.
- Set stack_duplicates to true to reduce clutter from repeated notifications.
- Use hide_text for volume or brightness notifications that only need a progress bar.
- Set ignore_dbusclose to enforce your own timeout over application preferences.
- Always run scripts even for suppressed notifications by setting always_run_script true.
- Utilize sticky_history to prevent recalled notifications from timing out automatically.
- Limit notification_limit to avoid overwhelming the screen with too many alerts.
- Position notifications with origin and offset for consistent screen placement.
- Use icon_theme with recursive lookup for simpler icon configuration.
- Set min_icon_size and max_icon_size to ensure consistent icon appearance.
- Configure fullscreen mode to pushback when focusing on immersive tasks.
- Use override_pause_level to allow critical notifications through during pauses.
- Regularly use dunstctl history to retrieve and review dismissed notifications.
- Set layer to overlay on Wayland to show notifications above fullscreen windows.
- Customize progress bar appearance with height, width, and corner radius settings.
- Use rules with desktop_entry filter for reliable application matching.
- Enable per_monitor_dpi for proper scaling across multiple monitors.

FACTS
- Dunst uses the layer shell protocol on Wayland, not a regular window.
- Global keyboard shortcuts cannot be implemented on Wayland.
- POSIX Extended Regular Expressions use '.*' instead of '*' for wildcards.
- Dunst can use PCRE regular expressions if enabled in experimental section.
- The notification spec defines standard categories for different notification types.
- GLib based applications export their desktop-entry name which is not localized.
- The dmenu command is used for the notification context menu.
- Time format accepts units: ms, s, m, h, d with seconds as default.
- Dunst is released under the BSD 3-Clause License.
- Default history length is 20 notifications.
- Default progress bar height is 10 pixels.
- Default separator height is 2 pixels.
- Default frame width is 3 pixels.
- Default padding is 8 pixels.
- Default corner radius is 0 resulting in square notifications.
- Notifications can be sorted by urgency descending or update time.
- Stack tags can be set via synchronous or private-synchronous hints.
- Fullscreen detection on Wayland requires a recent compositor supporting the protocol.
- Font is parsed as a Pango font description string.
- Icon lookup uses XDG_DATA_HOME/icons and XDG_DATA_DIRS/icons directories.

REFERENCES
- notify-send
- dunstify
- dunstctl
- dmenu
- xdg-open
- https://specifications.freedesktop.org/notification-spec/latest/categories.html
- https://docs.gtk.org/Pango/pango_markup.html
- https://github.com/dunst-project/dunst
- https://en.wikipedia.org/wiki/Perl_Compatible_Regular_Expressions
- https://en.m.wikibooks.org/wiki/Regular_Expressions/POSIX-Extended_Regular_Expressions
- Sascha Kruse
- Dunst contributors
- BSD 3-Clause License
- dunst(1), dunstctl(1), dmenu(1), notify-send(1), dunstify(1)
- https://specifications.freedesktop.org/icon-theme-spec/icon-theme-spec-latest.html
- https://docs.gtk.org/Pango/type_func.FontDescription.from_string.html
- https://github.com/dunst-project/dunst/issues

RECOMMENDATIONS
- Use POSIX regular expressions for more powerful notification filtering rules.
- Enable recursive icon lookup by setting enable_recursive_icon_lookup to true.
- Set override_pause_level on critical notifications to bypass pause modes.
- Use stack_duplicates with hide_duplicate_count for clean stacked notifications.
- Apply hide_text for volume or brightness notifications that only need progress.
- Set ignore_dbusclose to true to enforce your own notification timeout.
- Configure mouse_*_click to close_current, do_action, or open_url for efficiency.
- Use dunstctl history to bring back dismissed notifications when needed.
- Set fullscreen to pushback to hide notifications during fullscreen activities.
- Enable sticky_history to prevent recalled notifications from auto-dismissing.
- Limit notification_limit to 5 to avoid screen clutter from many alerts.
- Use format with markup tags for richer and more informative notifications.
- Set word_wrap to true and ellipsize to middle for long notification texts.
- Disable icon_position by setting it to off for iconless minimalist notifications.
- Color code notifications by app using rules with background and foreground.
- Turn off progress_bar if you don't need the progress display feature.
- Write a script to log or forward notifications using environment variables.
- Use per_monitor_dpi on multi-monitor setups for correct scaling per display.
- Set pause_on_mouse_over to prevent timeout while hovering over a notification.
- Trigger dunstctl commands from window manager keybindings on Wayland.

ONE-SENTENCE TAKEAWAY
Dunst is a highly customizable notification daemon with rule-based filtering, scripting, and multi-desktop support.

EXAMPLE
```
# See dunst(5) for all configuration options

[global]
    ### Display ###

    # Which monitor should the notifications be displayed on.
    monitor = 0

    # Display notification on focused monitor.  Possible modes are:
    #   mouse: follow mouse pointer
    #   keyboard: follow window with keyboard focus
    #   none: don't follow anything
    #
    # "keyboard" needs a window manager that exports the
    # _NET_ACTIVE_WINDOW property.
    # This should be the case for almost all modern window managers.
    #
    # If this option is set to mouse or keyboard, the monitor option
    # will be ignored.
    follow = none

    ### Geometry ###

    # The width of the window, excluding the frame.
    # dynamic width from 0 to 300
    # width = (0, 300)
    # constant width of 300
    width = 300

    # The height of a single notification, excluding the frame.
    # dynamic height from 0 to 300
    height = (0, 300)
    # constant height of 300
    # height = 300
    # NOTE: Dunst from version 1.11 and older don't support dynamic height
    #       and the given value is treated as the maximum height

    # Position the notification in the top right corner
    origin = top-right

    # Offset from the origin
    # NOTE: Dunst from version 1.11 and older use this alternative notation
    # offset = 10x50
    offset = (10, 50)

    # Scale factor. It is auto-detected if value is 0.
    scale = 0

    # Maximum number of notification (0 means no limit)
    notification_limit = 20

    ### Progress bar ###

    # Turn on the progress bar. It appears when a progress hint is passed with
    # for example dunstify -h int:value:12
    progress_bar = true

    # Set the progress bar height. This includes the frame, so make sure
    # it's at least twice as big as the frame width.
    progress_bar_height = 10

    # Set the frame width of the progress bar
    progress_bar_frame_width = 1

    # Set the minimum width for the progress bar
    progress_bar_min_width = 150

    # Set the maximum width for the progress bar
    progress_bar_max_width = 300

    # Corner radius for the progress bar. 0 disables rounded corners.
    progress_bar_corner_radius = 0

    # Define which corners to round when drawing the progress bar. If progress_bar_corner_radius
    # is set to 0 this option will be ignored.
    progress_bar_corners = all

    # Corner radius for the icon image.
    icon_corner_radius = 0

    # Define which corners to round when drawing the icon image. If icon_corner_radius
    # is set to 0 this option will be ignored.
    icon_corners = all

    # Show how many messages are currently hidden (because of
    # notification_limit).
    indicate_hidden = yes

    # The transparency of the window.  Range: [0; 100].
    # This option will only work if a compositing window manager is
    # present (e.g. xcompmgr, compiz, etc.). (X11 only)
    transparency = 0

    # Draw a line of "separator_height" pixel height between two
    # notifications.
    # Set to 0 to disable.
    # If gap_size is greater than 0, this setting will be ignored.
    separator_height = 2

    # Padding between text and separator.
    padding = 8

    # Horizontal padding.
    horizontal_padding = 8

    # Padding between text and icon.
    text_icon_padding = 0

    # Defines width in pixels of frame around the notification window.
    # Set to 0 to disable.
    frame_width = 3

    # Defines color of the frame around the notification window.
    frame_color = "#aaaaaa"

    # Size of gap to display between notifications - requires a compositor.
    # If value is greater than 0, separator_height will be ignored and a border
    # of size frame_width will be drawn around each notification instead.
    # Click events on gaps do not currently propagate to applications below.
    gap_size = 0

    # Define a color for the separator.
    # possible values are:
    #  * auto: dunst tries to find a color fitting to the background;
    #  * foreground: use the same color as the foreground;
    #  * frame: use the same color as the frame;
    #  * anything else will be interpreted as a X color.
    separator_color = frame

    # Sort type.
    # possible values are:
    #  * id: sort by id
    #  * urgency_ascending: sort by urgency (low then normal then critical)
    #  * urgency_descending: sort by urgency (critical then normal then low)
    #  * update: sort by update (most recent always at the top)
    sort = yes

    # Don't remove messages, if the user is idle (no mouse or keyboard input)
    # for longer than idle_threshold seconds.
    # Set to 0 to disable.
    # A client can set the 'transient' hint to bypass this. See the rules
    # section for how to disable this if necessary
    # idle_threshold = 120

    ### Text ###

    font = Monospace 8

    # The spacing between lines.  If the height is smaller than the
    # font height, it will get raised to the font height.
    line_height = 0

    # Possible values are:
    # full: Allow a small subset of html markup in notifications:
    #        <b>bold</b>
    #        <i>italic</i>
    #        <s>strikethrough</s>
    #        <u>underline</u>
    #
    #        For a complete reference see
    #        <https://docs.gtk.org/Pango/pango_markup.html>.
    #
    # strip: This setting is provided for compatibility with some broken
    #        clients that send markup even though it's not enabled on the
    #        server. Dunst will try to strip the markup but the parsing is
    #        simplistic so using this option outside of matching rules for
    #        specific applications *IS GREATLY DISCOURAGED*.
    #
    # no:    Disable markup parsing, incoming notifications will be treated as
    #        plain text. Dunst will not advertise that it has the body-markup
    #        capability if this is set as a global setting.
    #
    # It's important to note that markup inside the format option will be parsed
    # regardless of what this is set to.
    markup = full

    # The format of the message.  Possible variables are:
    #   %a  appname
    #   %s  summary
    #   %b  body
    #   %c  category
    #   %S  stack_tag
    #   %i  iconname (including its path)
    #   %I  iconname (without its path)
    #   %p  progress value if set ([  0%] to [100%]) or nothing
    #   %n  progress value if set without any extra characters
    #   %%  literal %
    # Markup is allowed
    format = "<b>%s</b>\n%b"

    # Alignment of message text.
    # Possible values are "left", "center" and "right".
    alignment = left

    # Vertical alignment of message text and icon.
    # Possible values are "top", "center" and "bottom".
    vertical_alignment = center

    # Show age of message if message is older than show_age_threshold
    # seconds.
    # Set to -1 to disable.
    show_age_threshold = 60

    # Specify where to make an ellipsis in long lines.
    # Possible values are "start", "middle" and "end".
    ellipsize = middle

    # Ignore newlines '\n' in notifications.
    ignore_newline = no

    # Stack together notifications with the same content
    stack_duplicates = true

    # Hide the count of stacked notifications with the same content
    hide_duplicate_count = false

    # Display indicators for URLs (U) and actions (A).
    show_indicators = yes

    # When set to true (recommended), you can use POSIX regular expressions for filtering rules.
    # If this is set to false (not recommended), dunst will use fnmatch(3) for matching strings.
    # Dunst doesn't pass any flags to fnmatch, so you cannot make use of extended patterns.
    #
    # Note that this will eventually be true by default.
    enable_posix_regex = false

    ### Icons ###

    # Recursive icon lookup. You can set a single theme, instead of having to
    # define all lookup paths.
    enable_recursive_icon_lookup = true

    # Set icon theme (only used for recursive icon lookup)
    icon_theme = Adwaita
    # You can also set multiple icon themes, with the leftmost one being used first.
    # icon_theme = "Adwaita, breeze"

    # Align icons left/right/top/off
    icon_position = left

    # Scale small icons up to this size, set to 0 to disable. Helpful
    # for e.g. small files or high-dpi screens. In case of conflict,
    # max_icon_size takes precedence over this.
    min_icon_size = 32

    # Scale larger icons down to this size, set to 0 to disable
    max_icon_size = 128

    # Paths to default icons (only necessary when not using recursive icon lookup)
    icon_path = /usr/share/icons/gnome/16x16/status/:/usr/share/icons/gnome/16x16/devices/

    ### History ###

    # Should a notification popped up from history be sticky or timeout
    # as if it would normally do.
    sticky_history = yes

    # Maximum amount of notifications kept in history
    history_length = 20

    ### Misc/Advanced ###

    # dmenu path.
    dmenu = /usr/bin/dmenu -p dunst:

    # Browser for opening urls in context menu.
    browser = /usr/bin/xdg-open

    # Always run rule-defined scripts, even if the notification is suppressed
    always_run_script = true

    # Define the title of the windows spawned by dunst (X11 only)
    title = Dunst

    # Define the class of the windows spawned by dunst (X11 only)
    class = Dunst

    # Define the corner radius of the notification window
    # in pixel size. If the radius is 0, you have no rounded
    # corners.
    # The radius will be automatically lowered if it exceeds half of the
    # notification height to avoid clipping text and/or icons.
    corner_radius = 0

    # Define which corners to round when drawing the window. If the corner radius
    # is set to 0 this option will be ignored.
    #
    # Comma-separated list of the corners. The accepted corner values are bottom-right,
    # bottom-left, top-right, top-left, top, bottom, left, right or all.
    corners = all

    # Ignore the dbus closeNotification message.
    # Useful to enforce the timeout set by dunst configuration. Without this
    # parameter, an application may close the notification sent before the
    # user defined timeout.
    ignore_dbusclose = false

    ### Wayland ###
    # These settings are Wayland-specific. They have no effect when using X11

    # Uncomment this if you want to let notifications appear under fullscreen
    # applications (default: overlay)
    # layer = top

    # Set this to true to use X11 output on Wayland.
    force_xwayland = false

    ### Legacy

    # Use the Xinerama extension instead of RandR for multi-monitor support.
    # This setting is provided for compatibility with older nVidia drivers that
    # do not support RandR and using it on systems that support RandR is highly
    # discouraged.
    #
    # By enabling this setting dunst will not be able to detect when a monitor
    # is connected or disconnected which might break follow mode if the screen
    # layout changes.
    force_xinerama = false

    ### mouse

    # Defines list of actions for each mouse event
    # Possible values are:
    # * none: Don't do anything.
    # * do_action: Invoke the action determined by the action_name rule. If there is no
    #              such action, open the context menu.
    # * open_url: If the notification has exactly one url, open it. If there are multiple
    #             ones, open the context menu.
    # * close_current: Close current notification.
    # * remove_current: Remove current notification from history.
    # * close_all: Close all notifications.
    # * context: Open context menu for the notification.
    # * context_all: Open context menu for all notifications.
    # These values can be strung together for each mouse event, and
    # will be executed in sequence.
    mouse_left_click = close_current
    mouse_middle_click = do_action, close_current
    mouse_right_click = close_all

# Experimental features that may or may not work correctly. Do not expect them
# to have a consistent behaviour across releases.
[experimental]
    # Calculate the dpi to use on a per-monitor basis.
    # If this setting is enabled the Xft.dpi value will be ignored and instead
    # dunst will attempt to calculate an appropriate dpi value for each monitor
    # using the resolution and physical size. This might be useful in setups
    # where there are multiple screens with very different dpi values.
    per_monitor_dpi = false

    # Pause notification timeout when mouse hovers over the notification window.
    # When enabled, notifications won't timeout while the mouse pointer is over
    # them. The timeout resumes when the pointer leaves the window.
    # Only works on Wayland.
    pause_on_mouse_over = false

    # Use PCRE regular expressions for filtering rules.
    # This setting overrides enable_posix_regex.
    enable_pcre_regex = false

[urgency_low]
    # IMPORTANT: colors have to be defined in quotation marks.
    # Otherwise the "#" and following would be interpreted as a comment.
    background = "#222222"
    foreground = "#888888"
    timeout = 10
    # Icon for notifications with low urgency
    default_icon = dialog-information

[urgency_normal]
    background = "#285577"
    foreground = "#ffffff"
    timeout = 10
    override_pause_level = 30
    # Icon for notifications with normal urgency
    default_icon = dialog-information

[urgency_critical]
    background = "#900000"
    foreground = "#ffffff"
    frame_color = "#ff0000"
    timeout = 0
    override_pause_level = 60
    # Icon for notifications with critical urgency
    default_icon = dialog-warning

# Every section that isn't one of the above is interpreted as a rules to
# override settings for certain messages.
#
# Messages can be matched by
#    appname (discouraged, see desktop_entry)
#    body
#    category
#    desktop_entry
#    icon
#    match_transient
#    msg_urgency
#    stack_tag
#    summary
#
# and you can override the
#    background
#    foreground
#    format
#    frame_color
#    fullscreen
#    new_icon
#    set_stack_tag
#    set_transient
#    set_category
#    timeout
#    urgency
#    icon_position
#    skip_display
#    history_ignore
#    action_name
#    word_wrap
#    ellipsize
#    alignment
#    hide_text
#    override_pause_level
#
# Shell-like globbing will get expanded.
#
# Instead of the appname filter, it's recommended to use the desktop_entry filter.
# GLib based applications export their desktop-entry name. In comparison to the appname,
# the desktop-entry won't get localized.
#
# You can also allow a notification to appear even when paused. Notification will appear whenever notification's override_pause_level >= dunst's paused level.
# This can be used to set partial pause modes, where more urgent notifications get through, but less urgent stay paused. To do that, you can override the following in the rules:
# override_pause_level = X

# SCRIPTING
# You can specify a script that gets run when the rule matches by
# setting the "script" option.
# The script will be called as follows:
#   script appname summary body icon urgency
# where urgency can be "LOW", "NORMAL" or "CRITICAL".
#
# NOTE: It might be helpful to run dunst -print in a terminal in order
# to find fitting options for rules.

# Disable the transient hint so that idle_threshold cannot be bypassed from the
# client
#[transient_disable]
#    match_transient = yes
#    set_transient = no
#
# Make the handling of transient notifications more strict by making them not
# be placed in history.
#[transient_history_ignore]
#    match_transient = yes
#    history_ignore = yes

# fullscreen values
# show: show the notifications, regardless if there is a fullscreen window opened
# delay: displays the new notification, if there is no fullscreen window active
#        If the notification is already drawn, it won't get undrawn.
# pushback: same as delay, but when switching into fullscreen, the notification will get
#           withdrawn from screen again and will get delayed like a new notification
# suppress: withdraw the displayed notification when entering fullscreen and never show
#           the new notifications that arrive during fullscreen mode
#[fullscreen_delay_everything]
#    fullscreen = delay
#[fullscreen_show_critical]
#    msg_urgency = critical
#    fullscreen = show

#[espeak]
#    summary = "*"
#    script = dunst_espeak.sh

#[script-test]
#    summary = "*script*"
#    script = dunst_test.sh

#[ignore]
#    # This notification will not be displayed
#    summary = "foobar"
#    skip_display = true

#[history-ignore]
#    # This notification will not be saved in history
#    summary = "foobar"
#    history_ignore = yes

#[skip-display]
#    # This notification will not be displayed, but will be included in the history
#    summary = "foobar"
#    skip_display = yes

#[signed_on]
#    appname = Pidgin
#    summary = "*signed on*"
#    urgency = low
#
#[signed_off]
#    appname = Pidgin
#    summary = *signed off*
#    urgency = low
#
#[says]
#    appname = Pidgin
#    summary = *says*
#    urgency = critical
#
#[twitter]
#    appname = Pidgin
#    summary = *twitter.com*
#    urgency = normal
#
#[stack-volumes]
#    appname = "some_volume_notifiers"
#    set_stack_tag = "volume"
#
```
