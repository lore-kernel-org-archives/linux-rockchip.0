From: =?UTF-8?q?Myl=C3=A8ne=20Josserand?=
        <mylene.josserand-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Subject: [PATCH v4 0/2] ARM: Add Rockchip rk3288w support
Date: Tue,  2 Jun 2020 10:06:42 +0200
Message-ID: <20200602080644.11333-1-mylene.josserand@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: mturquette-rdvid1DuHRBWk0Htik3J/w@public.gmane.org, sboyd-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: linux-clk-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mylene.josserand-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hello everyone,

Context
-------

Here is my V4 of my patches that add the support for the Rockchip
RK3288w which is a revision of the RK3288. It is mostly the same SOC
except for, at least, one clock tree which is different.
This difference is only known by looking at the BSP kernel [1].

Currently, the mainline kernel will not hang on rk3288w but it is
probably by "chance" because we got an issue on a lower kernel version.

According to Rockchip's U-Boot [2], the rk3288w can be detected using
the HDMI revision number (= 0x1A) in this version of the SOC.

Changelog
---------

This V4 is pretty much the same than the V3. Added the dt-bindings
documentation in clock-controller dt-bindings and fixed some typos
according to Heiko's reviews.

Changes since v3:
   - Updated clock-controller's dt-bindings
   - Fixed indentation

Best regards,
Mylène Josserand

[1] https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/clk/rockchip/clk-rk3288.c#L960..L964
[2] https://github.com/rockchip-linux/u-boot/blob/next-dev/arch/arm/mach-rockchip/rk3288/rk3288.c#L378..L388

Mylène Josserand (2):
  clk: rockchip: rk3288: Handle clock tree for rk3288w
  dt-bindings: clocks: rk3288: add possible rk3288w

 .../bindings/clock/rockchip,rk3288-cru.txt    |  8 +++++++-
 drivers/clk/rockchip/clk-rk3288.c             | 20 +++++++++++++++++--
 2 files changed, 25 insertions(+), 3 deletions(-)

-- 
2.26.2
