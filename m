From: Chris Zhong <zyw@rock-chips.com>
Subject: [PATCH v3 0/2] add support holding 24Mhz osc during suspend
Date: Tue, 23 Jun 2015 20:53:38 +0800
Message-ID: <1435064020-7057-1-git-send-email-zyw@rock-chips.com>
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

Changes in v3:
- Fixed commenting style
- Move the #define-s above the rk3288_slp_disable_osc function

Chris Zhong (2):
  ARM: rockchip: add support holding 24Mhz osc during suspend
  ARM: rockchip: remove some useless macro in pm.h

 arch/arm/mach-rockchip/pm.c | 40 ++++++++++++++++++++++++++++++++++++++--
 arch/arm/mach-rockchip/pm.h |  7 -------
 2 files changed, 38 insertions(+), 9 deletions(-)

-- 
1.9.1
