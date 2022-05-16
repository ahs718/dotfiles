from libqtile.bar import Bar

from libqtile.widget.groupbox import GroupBox
from libqtile.widget.currentlayout import CurrentLayout
from libqtile.widget.window_count import WindowCount
from libqtile.widget.windowname import WindowName
from libqtile.widget.cpu import CPU
from libqtile.widget.memory import Memory
from libqtile.widget.net import Net
from libqtile.widget.systray import Systray
from libqtile.widget.clock import Clock
from libqtile.widget.spacer import Spacer
from libqtile.widget.prompt import Prompt

from colors import catppuccin_morning, catppuccin_night
from unicodes import left_arrow, left_half_circle, right_half_circle

bar1 = Bar(
    [
        left_half_circle(catppuccin_night["lavender"]),
        CurrentLayout(
            background=catppuccin_night["lavender"],
        ),
        right_half_circle(catppuccin_night["lavender"]),
        Spacer(length=10),
        left_half_circle(catppuccin_morning["blue"]),
        WindowCount(
            text_format="缾 {num}",
            background=catppuccin_morning["blue"],
            show_zero=True,
        ),
        right_half_circle(catppuccin_morning["blue"]),
        Spacer(length=10),
        left_half_circle(catppuccin_morning["sky"]),
        Clock(background=catppuccin_morning["sky"], format=" %a %I:%M %p %m-%d-%Y"),
        right_half_circle(catppuccin_morning["sky"]),
        Spacer(length=10),
        Prompt(foreground=catppuccin_night["black1"]),
        WindowName(foreground=catppuccin_night["black1"]),
        left_half_circle(catppuccin_night["black1"]),
        GroupBox(
            disable_drag=True,
            active=catppuccin_night["gray2"],
            inactive=catppuccin_night["gray0"],
            highlight_method="line",
            block_highlight_text_color=catppuccin_night["lavender"],
            borderwidth=0,
            highlight_color=catppuccin_night["black1"],
            background=catppuccin_night["black1"],
        ),
        right_half_circle(catppuccin_night["black1"]),
        Spacer(length=100),
        Systray(
            padding=15,
            # background='#00000000'
        ),
        Spacer(length=10),
        left_half_circle(catppuccin_morning["teal"]),
        CPU(
            format=" {freq_current}GHz {load_percent}%",
            background=catppuccin_morning["teal"],
        ),
        right_half_circle(catppuccin_morning["teal"]),
        Spacer(length=10),
        left_half_circle(catppuccin_morning["mauve"]),
        Memory(
            format=" {MemUsed: .0f}{mm}/{MemTotal: .0f}{mm}",
            background=catppuccin_morning["mauve"],
        ),
        right_half_circle(catppuccin_morning["mauve"]),
        Spacer(length=10),
        left_half_circle(catppuccin_morning["blue"]),
        Net(background=catppuccin_morning["blue"]),
        right_half_circle(catppuccin_morning["blue"]),
    ],
    margin=[10, 10, 5, 10],
    background="#00000000",
    opacity=0.85,
    size=25,
)

bar2 = Bar(
    [
        left_half_circle(catppuccin_night["lavender"]),
        CurrentLayout(
            background=catppuccin_night["lavender"],
        ),
        right_half_circle(catppuccin_night["lavender"]),
        Spacer(length=10),
        left_half_circle(catppuccin_morning["blue"]),
        WindowCount(
            text_format="缾 {num}",
            background=catppuccin_morning["blue"],
            show_zero=True,
        ),
        right_half_circle(catppuccin_morning["blue"]),
        Spacer(length=10),
        left_half_circle(catppuccin_morning["sky"]),
        Clock(background=catppuccin_morning["sky"], format=" %a %I:%M %p %m-%d-%Y"),
        right_half_circle(catppuccin_morning["sky"]),
        Spacer(length=10),
        # Prompt(foreground=gruvbox['fg']),
        WindowName(foreground=catppuccin_night["black1"]),
        left_half_circle(catppuccin_night["black1"]),
        GroupBox(
            disable_drag=True,
            active=catppuccin_night["gray2"],
            inactive=catppuccin_night["gray0"],
            highlight_method="line",
            block_highlight_text_color=catppuccin_night["lavender"],
            borderwidth=0,
            highlight_color=catppuccin_night["black1"],
            background=catppuccin_night["black1"],
        ),
        right_half_circle(catppuccin_night["black1"]),
        Spacer(length=100),
        left_half_circle(catppuccin_morning["teal"]),
        CPU(
            format=" {freq_current}GHz {load_percent}%",
            background=catppuccin_morning["teal"],
        ),
        right_half_circle(catppuccin_morning["teal"]),
        Spacer(length=10),
        left_half_circle(catppuccin_morning["mauve"]),
        Memory(
            format=" {MemUsed: .0f}{mm}/{MemTotal: .0f}{mm}",
            background=catppuccin_morning["mauve"],
        ),
        right_half_circle(catppuccin_morning["mauve"]),
        Spacer(length=10),
        left_half_circle(catppuccin_morning["blue"]),
        Net(background=catppuccin_morning["blue"]),
        right_half_circle(catppuccin_morning["blue"]),
    ],
    margin=[10, 10, 5, 10],
    background="#00000000",
    opacity=0.85,
    size=25,
)
