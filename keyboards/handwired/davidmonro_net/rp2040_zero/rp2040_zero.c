// Copyright 2023 David Monro
// SPDX-License-Identifier: GPL-2.0+

#include "quantum.h"

#ifdef RGBLIGHT_ENABLE

// Blue on boot, but you never actually see that
// Dim red when suspended
// Bright green when active

void keyboard_post_init_kb(void) {
    keyboard_post_init_user();
}


void keyboard_post_init_user() {
  rgblight_sethsv_at(HSV_BLUE, 0);
}

void suspend_power_down_user(void) {
    // code will run multiple times while keyboard is suspended
  rgblight_setrgb_at(20,0,0, 0);
}

void suspend_wakeup_init_user(void) {
  rgblight_sethsv_at(HSV_GREEN, 0);
}
#endif
