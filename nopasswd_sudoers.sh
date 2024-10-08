# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

Defaults        env_reset
Defaults        env_keep += "BLOCKSIZE"
Defaults        env_keep += "COLORFGBG COLORTERM"
Defaults        env_keep += "__CF_USER_TEXT_ENCODING"
Defaults        env_keep += "CHARSET LANG LANGUAGE LC_ALL LC_COLLATE LC_CTYPE"
Defaults        env_keep += "LC_MESSAGES LC_MONETARY LC_NUMERIC LC_TIME"
Defaults        env_keep += "LINES COLUMNS"
Defaults        env_keep += "LSCOLORS"
Defaults        env_keep += "SSH_AUTH_SOCK"
Defaults        env_keep += "TZ"
Defaults        env_keep += "DISPLAY XAUTHORIZATION XAUTHORITY"
Defaults        env_keep += "EDITOR VISUAL"
Defaults        env_keep += "HOME MAIL"

Defaults        secure_path="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/puppetlabs/bin"

Defaults        umask=0022

Defaults        lecture_file = "/etc/sudo_lecture"

root            ALL=(ALL)   ALL

%admin          ALL=(ALL) NOPASSWD: ALL