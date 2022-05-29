# import layout objects
from libqtile.layout.columns import Columns
from libqtile.layout.xmonad import MonadTall
from libqtile.layout.stack import Stack
from libqtile.layout.floating import Floating

# import widgets and bar

from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy

# from libqtile.utils import guess_terminal

from colors import catppuccin, catppuccin

from qtilebar import bar1, bar2

mod = "mod4"
terminal = "alacritty"
# terminal = guess_terminal()

keys = [
    # Launch applications
    Key([mod], "a", lazy.spawn("firefox"), desc="Launch firefox"),
    Key([mod], "d", lazy.spawn("discord"), desc="Launch discord"),
    Key([mod], "s", lazy.group[4].toscreen(), lazy.spawn("spotify"), desc="Launch spotify"),
    Key([mod], "c", lazy.spawn("code"), desc="Launch vscode"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([mod], 'p', lazy.spawn('rofi -show drun'), desc="Launch rofi menu"),

    # Volume control
    Key([], "XF86AudioLowerVolume", lazy.spawn("amixer set Master 5%- unmute")),
    Key([], "XF86AudioRaiseVolume", lazy.spawn("amixer set Master 5%+ unmute")),
    Key([], "XF86AudioMute", lazy.spawn("amixer set Master togglemute")),
    Key([], "XF86AudioMicMute", lazy.spawn("amixer set Capture togglemute")),
    # Audio
    Key([], "XF86AudioNext", lazy.spawn("playerctl -a next")),
    Key([], "XF86AudioPrev", lazy.spawn("playerctl -a previous")),
    Key([], "XF86AudioPlay", lazy.spawn("playerctl -a play-pause")),

    # Toggle floating and fullscreen
    Key([mod], "f", lazy.window.toggle_fullscreen(), desc="Toggle fullscreen mode"),
    Key([mod, "shift"], "space", lazy.window.toggle_floating(), desc="Toggle floating mode"),
    # Switch between windows
    Key([mod], "Left", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "Right", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "Down", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "Up", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key([mod, "shift"], "Left", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "Right", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "Down", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "Up", lazy.layout.shuffle_up(), desc="Move window up"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key([mod, "control"], "Left", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "Right", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "Down", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "Up", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(), desc="Toggle between split and unsplit sides of stack"),
    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
]

# groups = [Group(i) for i in "123456789"]
groups = [
    Group(name="1", label="", matches=[Match(wm_class="firefox")], layout="stack"),
    Group(name="2", label="", matches=[Match(wm_class="code-oss")], layout="monadtall"),
    Group(name="3", label="", matches=[Match(wm_class="Steam")], layout="stack"),
    Group(name="4", label="", matches=[Match(wm_class="discord")], layout="monadtall"),
]

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key([mod], i.name, lazy.group[i.name].toscreen(), desc="Switch to group {}".format(i.name)),
            # mod1 + shift + letter of group = move focused window to group
            Key([mod, "shift"], i.name, lazy.window.togroup(i.name), desc="move focused window to group {}".format(i.name)),
        ]
    )

layouts = [
    Stack(
        border_normal=catppuccin["gray0"],
        border_focus=catppuccin["blue"],
        border_width=2,
        num_stacks=1,
        margin=10,
    ),
    MonadTall(
        border_normal=catppuccin["gray0"],
        border_focus=catppuccin["blue"],
        margin=10,
        border_width=2,
        single_border_width=2,
        single_margin=10,
    ),
    Columns(
        border_normal=catppuccin["gray0"],
        border_focus=catppuccin["blue"],
        border_width=2,
        border_normal_stack=catppuccin["gray0"],
        border_focus_stack=catppuccin["sky"],
        border_on_single=2,
        margin=10,
        margin_on_single=10,
    ),
]

floating_layout = Floating(
    border_normal=catppuccin["gray0"],
    border_focus=catppuccin["red"],
    border_width=3,
    float_rules=[
        *Floating.default_float_rules,
        Match(wm_class="bitwarden"),
        Match(wm_class="Thunar"),
    ],
)

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

widget_defaults = dict(
    font="Caskaydia Cove Nerd Font Mono",
    fontsize=16,
    padding=10,
    foreground=catppuccin["black1"],
)

extension_defaults = widget_defaults.copy()

screens = [
    Screen(top=bar2),
    Screen(top=bar1),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = ""
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wmname = "Qtile"
