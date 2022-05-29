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
from unicodes import left_arrow, left_half_circle, right_half_circle

bar1 = Bar(
    [
        left_half_circle(catppuccin["black1"]),
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
        right_half_circle(catppuccin["black1"]),
        Spacer(length=10),
        left_half_circle(catppuccin["black1"]),
        CurrentLayout(
            background=catppuccin["black1"],
            foreground=catppuccin["lavender"]
        ),
        right_half_circle(catppuccin["black1"]),
        Spacer(length=10),
        left_half_circle(catppuccin["black1"]),
        WindowCount(
            text_format="缾 {num}",
            background=catppuccin["black1"],
            foreground=catppuccin["mauve"],
            show_zero=True,
        ),
        right_half_circle(catppuccin["black1"]),
        Spacer(length=10),
        left_half_circle(catppuccin["black1"]),
        Clock(background=catppuccin["black1"],
              format=" %a %I:%M %p %m-%d-%Y", foreground=catppuccin["pink"]),
        right_half_circle(catppuccin["black1"]),
        Spacer(length=10),
        Prompt(foreground=catppuccin["black1"]),
        WindowName(foreground=catppuccin["black1"]),
        Spacer(length=100),
        Systray(
            padding=15,
            # background=catppuccin["black1"]
        ),
        Spacer(length=10),
        left_half_circle(catppuccin["black1"]),
        Volume(fmt="Volume: {}",
               background=catppuccin["black1"], foreground=catppuccin["blue"]),
        right_half_circle(catppuccin["black1"]),
        Spacer(length=10),
        left_half_circle(catppuccin["black1"]),
        Net(background=catppuccin["black1"], foreground=catppuccin["sky"]),
        right_half_circle(catppuccin["black1"]),
    ],
    margin=[10, 10, 5, 10],
    background="#00000000",
    opacity=0.85,
    size=25,
)

bar2 = Bar(
    [
        left_half_circle(catppuccin["black1"]),
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
        right_half_circle(catppuccin["black1"]),
        Spacer(length=10),
        left_half_circle(catppuccin["black1"]),
        CurrentLayout(
            background=catppuccin["black1"],
            foreground=catppuccin["lavender"],
        ),
        right_half_circle(catppuccin["black1"]),
        Spacer(length=10),
        left_half_circle(catppuccin["black1"]),
        WindowCount(
            text_format="缾 {num}",
            background=catppuccin["black1"],
            foreground=catppuccin["mauve"],
            show_zero=True,
        ),
        right_half_circle(catppuccin["black1"]),
        Spacer(length=10),
        left_half_circle(catppuccin["black1"]),
        Clock(background=catppuccin["black1"],
              format=" %a %I:%M %p %m-%d-%Y", foreground=catppuccin["pink"]),
        right_half_circle(catppuccin["black1"]),
        Spacer(length=10),
        WindowName(foreground=catppuccin["black1"]),
        Spacer(length=10),
        left_half_circle(catppuccin["black1"]),
        Volume(fmt="Volume: {}",
               background=catppuccin["black1"], foreground=catppuccin["blue"]),
        right_half_circle(catppuccin["black1"]),
        Spacer(length=10),
        left_half_circle(catppuccin["black1"]),
        Net(background=catppuccin["black1"], foreground=catppuccin["sky"]),
        right_half_circle(catppuccin["black1"]),
    ],
    margin=[10, 10, 5, 10],
    background="#00000000",
    opacity=0.85,
    size=25,
)