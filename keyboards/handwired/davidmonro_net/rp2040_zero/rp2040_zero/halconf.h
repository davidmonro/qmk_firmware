// Copyright 2022 Stefan Kerkmann
// Copied from handwired/onekey/rp2040 2023 David Monro
// SPDX-License-Identifier: GPL-2.0-or-later

#pragma once

#define HAL_USE_I2C TRUE
#define HAL_USE_PWM TRUE
#define HAL_USE_ADC TRUE

#include_next <halconf.h>
