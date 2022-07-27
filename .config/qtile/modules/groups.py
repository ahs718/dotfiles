from libqtile.config import Group, Key, Match, ScratchPad, DropDown
from libqtile.lazy import lazy
from utils.settings import workspace_names
from modules.keys import keys, mod, shift

workspaces = [
    {"name": workspace_names[0], "key": "1", "matches": [
        Match(wm_class="firefox")], "lay": "bsp"},
    {"name": workspace_names[1], "key": "2", "matches": [
        Match(wm_class="code-oss")], "lay": "monadtall"},
    {"name": workspace_names[2], "key": "3", "matches": [], "lay": "bsp"},
    {"name": workspace_names[3], "key": "4", "matches": [
        Match(wm_class="discord")], "lay": "bsp"},
    {"name": workspace_names[4], "key": "5", "matches": [
        Match(wm_class="Spotify")], "lay": "bsp"},
    {"name": workspace_names[5], "key": "6", "matches": [
        Match(wm_class="org.gnome.Nautilus")], "lay": "bsp"},
    {"name": workspace_names[6], "key": "7", "matches": [
        Match(wm_class="notion-app")], "lay": "bsp"},
]
