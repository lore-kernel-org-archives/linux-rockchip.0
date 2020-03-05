From: Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 0/4] Enable eDP display on rk3399 evb.
Date: Thu,  5 Mar 2020 19:39:08 +0800
Message-ID: <20200305113912.32226-1-andy.yan@rock-chips.com>
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


When I try to test a patch for eDP on mainline, I found there is no
display suport for this board. So I try to add all the releated things
for it.


Andy Yan (4):
  arm64: dts: rockchip: remove dvs2 pinctrl for pmic on rk3399 evb
  arm64: dts: rockchip: Add pmic dt tree for rk3399 evb
  arm64: dts: rockchip: remove enable-gpio of backlight on rk3399 evb
  arm64: dts: rockchip: Enable eDP display on rk3399 evb

 arch/arm64/boot/dts/rockchip/rk3399-evb.dts | 267 +++++++++++++++++++-
 1 file changed, 261 insertions(+), 6 deletions(-)

-- 
2.17.1
