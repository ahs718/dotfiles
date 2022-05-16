import os
import subprocess
from typing import List  # noqa: F401

from libqtile import hook

from libqtile.extension.dmenu import DmenuRun
from libqtile.extension.window_list import WindowList
from libqtile.extension.command_set import CommandSet

# import layout objects
from libqtile.layout.columns import Columns
from libqtile.layout.xmonad import MonadTall
from libqtile.layout.stack import Stack
from libqtile.layout.floating import Floating

# import widgets and bar

from libqtile.config import Click, Drag, DropDown, Group, Key, Match, ScratchPad, Screen
from libqtile.lazy import lazy

# from libqtile.utils import guess_terminal

from colors import catppuccin, catppuccin

from bar_transparent_rounded import bar1, bar2

mod = "mod4"
terminal = "alacritty"
# terminal = guess_terminal()

keys = [
    # Launch applications
    Key([mod], "a", lazy.spawn("firefox"), desc="Launch firefox"),
    Key([mod], "d", lazy.spawn("discord"), desc="Launch discord"),
    Key([mod], "s", lazy.spawn("spotify"), desc="Launch spotify"),
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    # dmenu integration
    Key(
        [mod],
        "p",
        lazy.run_extension(
            DmenuRun(
                font="Caskaydia Cove Nerd Font",
                fontsize=16,
                dmenu_commad="dmenu_run",
                dmenu_prompt=" ",
                dmenu_height=10,
                dmenu_lines=15,
                background=catppuccin["black1"],
                foreground=catppuccin["gray2"],
                selected_background=catppuccin["black1"],
                selected_foreground=catppuccin["lavender"],
                dmenu_bottom=False,
            )
        ),
    ),
    Key(
        [mod, "shift"],
        "p",
        lazy.run_extension(
            WindowList(
                all_groups=True,
                font="Caskaydia Cove Nerd Font",
                fontsize=16,
                dmenu_height=10,
                dmenu_prompt=" ",
                # dmenu_lines=15,
                background=catppuccin["black1"],
                foreground=catppuccin["gray2"],
                selected_foreground=catppuccin["lavender"],
                selected_background=catppuccin["black1"],
            )
        ),
    ),
    Key(
        [mod, "control"],
        "p",
        lazy.run_extension(
            CommandSet(
                commands={
                    "College notes": "alacritty -e vim ~/test.txt",
                    "Dev notes": "alacritty -e vim ~/test.txt",
                    "General notes": "alacritty -e ~/vim test.txt",
                    "Other notes": "alacritty -e vim ~/test.txt",
                },
                background=catppuccin["black1"],
                foreground=catppuccin["gray2"],
                dmenu_prompt=" ",
                dmenu_lines=10,
                dmenu_height=10,
                selected_foreground=catppuccin["black1"],
                selected_background=catppuccin["gray2"],
            )
        ),
    ),
    # Toggle floating and fullscreen
    Key([mod], "f", lazy.window.toggle_fullscreen(), desc="Toggle fullscreen mode"),
    Key(
        [mod, "shift"],
        "space",
        lazy.window.toggle_floating(),
        desc="Toggle floating mode",
    ),
    # Switch between windows
    Key([mod], "Left", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "Right", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "Down", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "Up", lazy.layout.up(), desc="Move focus up"),
    Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),
    # Move windows between left/right columns or move up/down in current stack.
    # Moving out of range in Columns layout will create new column.
    Key(
        [mod, "shift"],
        "Left",
        lazy.layout.shuffle_left(),
        desc="Move window to the left",
    ),
    Key(
        [mod, "shift"],
        "Right",
        lazy.layout.shuffle_right(),
        desc="Move window to the right",
    ),
    Key([mod, "shift"], "Down", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "Up", lazy.layout.shuffle_up(), desc="Move window up"),
    # Grow windows. If current window is on the edge of screen and direction
    # will be to screen edge - window would shrink.
    Key(
        [mod, "control"],
        "Left",
        lazy.layout.grow_left(),
        desc="Grow window to the left",
    ),
    Key(
        [mod, "control"],
        "Right",
        lazy.layout.grow_right(),
        desc="Grow window to the right",
    ),
    Key([mod, "control"], "Down", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "Up", lazy.layout.grow_up(), desc="Grow window up"),
    Key([mod], "n", lazy.layout.normalize(), desc="Reset all window sizes"),
    # Toggle between split and unsplit sides of stack.
    # Split = all windows displayed
    # Unsplit = 1 window displayed, like Max layout, but still with
    # multiple stack panes
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
    # Toggle between different layouts as defined below
    Key([mod], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
]

# groups = [Group(i) for i in "123456789"]
groups = [
    Group(name="1", label="", matches=[Match(wm_class="firefox")], layout="stack"),
    Group(
        name="2", label="", matches=[Match(wm_class="code-oss")], layout="monadtall"
    ),
    Group(name="3", label="", matches=[Match(wm_class="Steam")], layout="max"),
    Group(name="4", label="", matches=[Match(wm_class="discord")], layout="columns"),
    Group(name="5", label="嗢", matches=[Match(wm_class="vlc")], layout="columns"),
]

for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name),
                desc="move focused window to group {}".format(i.name),
            ),
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
        Match(wm_class="blueman-manager"),
        Match(wm_class="pavucontrol"),
        Match(wm_class="bitwarden"),
        Match(wm_class="thunar"),
    ],
)

# Drag floating layouts.
mouse = [
    Drag(
        [mod],
        "Button1",
        lazy.window.set_position_floating(),
        start=lazy.window.get_position(),
    ),
    Drag(
        [mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()
    ),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

widget_defaults = dict(
    font="Caskaydia Cove Nerd Font",
    fontsize=16,
    padding=10,
    foreground=catppuccin["black1"],
)

extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        wallpaper="~/.config/qtile/background.png",
        wallpaper_mode="stretch",
        top=bar1,
    ),
    Screen(
        wallpaper="~/.config/qtile/background.png",
        wallpaper_mode="stretch",
        top=bar2,
    ),
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
wmname = "LG3D"
