#  nixos-mailserver: a simple mail server
#  Copyright (C) 2016  Robin Raymond
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program. If not, see <http://www.gnu.org/licenses/>

{ config, pkgs, ... }:

let
  domain = "example.com";
  host_prefix = "mail";
  login_accounts = [ "user1" "user2" ];
  vmail_id_start = 5000;
  vmail_user_name = "vmail";
  vmail_group_name = "vmail";
  mail_dir = "/var/vmail";
  cert_file = "mail-server.crt";
  key_file = "mail-server.key";
  enable_imap = true;
  enable_pop3 = false;
in
{
  imports = [ ./mail-server.nix ];
}
