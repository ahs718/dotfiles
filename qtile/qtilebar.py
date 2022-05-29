from libqtile.bar import Bar

from libqtile.widget.groupbox import GroupBox
from libqtile.widget.currentlayout import CurrentLayout
from libqtile.widget.window_count import WindowCount
from libqtile.widget.windowname import WindowName
from libqtile.widget.volume import Volume
from libqtile.widget.net import Net
from libqtile.widget.systray import Systray
from libqtile.widget.clock import Clock
from libqtile.widget.spacer import Spacer
from libqtile.widget.prompt import Prompt

from colors import catppuccin, catppuccin

bar1 = Bar(
    [
        GroupBox(
            disable_drag=True,
            active=catppuccin["gray2"],
            inactive=catppuccin["gray0"],
            highlight_method="line",
            block_highlight_text_color=catppuccin["lavender"],
            borderwidth=0,
            highlight_color=catppuccin["black1"],
            background=catppuccin["black1"],
        ),
        Spacer(length=30),
        CurrentLayout(
            background=catppuccin["black1"],
            foreground=catppuccin["lavender"]
        ),
        Spacer(length=30),
        WindowCount(
            text_format="缾 {num}",
            background=catppuccin["black1"],
            foreground=catppuccin["mauve"],
            show_zero=True,
        ),
        Spacer(length=30),
        Clock(background=catppuccin["black1"], format=" %a %I:%M %p %m-%d-%Y", foreground=catppuccin["pink"]),
        Spacer(length=30),
        Prompt(foreground=catppuccin["black1"]),
        WindowName(foreground=catppuccin["white"]),
        Spacer(length=100),
        Systray(
            padding=15,
            # background=catppuccin["black1"]
        ),
        Spacer(length=30),
        Volume(fmt="Volume: {}", background=catppuccin["black1"], foreground=catppuccin["blue"]),
        Spacer(length=30),
        Net(background=catppuccin["black1"], foreground=catppuccin["sky"]),
    ],
    margin=[10, 10, 5, 10],
    background=catppuccin["black1"],
    opacity=0.85,
    size=25,
)

bar2 = Bar(
    [
        GroupBox(
            disable_drag=True,
            active=catppuccin["gray2"],
            inactive=catppuccin["gray0"],
            highlight_method="line",
            block_highlight_text_color=catppuccin["lavender"],
            borderwidth=0,
            highlight_color=catppuccin["black1"],
            background=catppuccin["black1"],
        ),
        Spacer(length=30),
        CurrentLayout(
            background=catppuccin["black1"],
            foreground=catppuccin["lavender"],
        ),
        Spacer(length=30),
        WindowCount(
            text_format="缾 {num}",
            background=catppuccin["black1"],
            foreground=catppuccin["mauve"],
            show_zero=True,
        ),
        Spacer(length=30),
        Clock(background=catppuccin["black1"], format=" %a %I:%M %p %m-%d-%Y", foreground=catppuccin["pink"]),
        Spacer(length=30),
        WindowName(foreground=catppuccin["white"]),
        Spacer(length=30),
        Volume(fmt="Volume: {}", background=catppuccin["black1"], foreground=catppuccin["blue"]),
        Spacer(length=30),
        Net(background=catppuccin["black1"], foreground=catppuccin["sky"]),
    ],
    margin=[10, 10, 5, 10],
    background=catppuccin["black1"],
    opacity=0.85,
    size=25,
)
