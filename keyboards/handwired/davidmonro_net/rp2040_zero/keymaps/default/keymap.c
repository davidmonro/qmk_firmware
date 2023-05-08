// Copyright 2023 David Monro
// SPDX-License-Identifier: GPL-2.0-or-later

#include QMK_KEYBOARD_H

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
    /*
     * ┌───────┐
     * │ SLEEP │
     * └───────┘
     */
    [0] = LAYOUT_ortho_1x1(
        KC_SYSTEM_SLEEP
    )
};
