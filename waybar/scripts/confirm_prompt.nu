#!/usr/bin/env nu

def main [--title: string, --confirm: string, --action: string, --text: string = "", --icon: string = "dialog-question"] {
  zenity --question --title $title --text $text --ok-label $confirm --cancel-label Cancel --icon $icon

  if $env.LAST_EXIT_CODE == 0 {
    nu -c $action
  }
}
