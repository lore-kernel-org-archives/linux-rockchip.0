From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH 0/2] add support holding 24Mhz osc during suspend
Date: Sun, 21 Jun 2015 17:44:37 +0800
Message-ID: <1434879879-25162-1-git-send-email-zyw@rock-chips.com>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: heiko@sntech.de, dianders@chromium.org
Cc: linux-rockchip@lists.infradead.org, sonnyrao@chromium.org, amstan@google.com, dtor@google.com, Chris Zhong <zyw@rock-chips.com>, Russell King <linux@arm.linux.org.uk>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Since the usb-phy clocks are not connected to the 32khz clock-in, they
only have 24Mhz as the clock source. If we want to wake up system via
usb device, we should hold the 24Mhz osc during suspend.
This Patch has tested on chromebook jerry board, with another patch[0],
we can wakeup system via usb keyboard.

[0] https://chromium-review.googlesource.com/#/c/277811/3


Chris Zhong (2):
  ARM: rockchip: add support holding 24Mhz osc during suspend
  ARM: rockchip: remove some useless macro in pm.h

 arch/arm/mach-rockchip/pm.c | 34 +++++++++++++++++++++++++++++++---
 arch/arm/mach-rockchip/pm.h |  7 -------
 2 files changed, 31 insertions(+), 10 deletions(-)

-- 
1.9.1
