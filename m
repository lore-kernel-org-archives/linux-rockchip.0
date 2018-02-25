From: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: USB3 regression in RK3399
Date: Sun, 25 Feb 2018 11:03:34 +0100
Message-ID: <CAAMcf8DX4Mjuubnvwz9paMJ9oDYaNX-EKwFpsP9a-RfhHgO5Hg@mail.gmail.com>
References: <CAAMcf8B5zpgbTsCu9t0rs9+jWkwRdO2C+KbF+NOt3ZTQx36aZA@mail.gmail.com>
 <14336855.DpIqxNeK64@phil>
 <CAAMcf8B5ffH-5Q3+PcjWwu5UeDk4ESZR0BNczaED+vnPLwge0w@mail.gmail.com>
 <c8e1bd5a-19ff-9d1c-7e78-b7e605fd1e6b@collabora.com>
 <CAAMcf8C7Px_mC=dex3TqejBNYYUyJxrZHa1c7CbKXj6g==Cbyg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAMcf8C7Px_mC=dex3TqejBNYYUyJxrZHa1c7CbKXj6g==Cbyg-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: William wu <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

(cut)
>>>>> testing on the Sapphire board, which uses the RK3399 SoC, a regression
>>>>> has been found in v4.16-rc2 wrt v4.15.4 regarding the USB3 type-A port:
>>>>> In v4.15.4 it works in USB2-only mode.
>>>>> In v4.16-rc2 it does not work.
(cut)
>>>> Hmm, I'd guess the main issue would be a missing typec-phy driver
>>>> in your kernel (see drivers/phy/rockchip/phy-rockchip-typec.c
(cut)
>> I suspect that what Heiko says is right and typec-phy fails probing. Could you
(cut)

Hello,
this is the patch to blame for the regression:

From c301b327aea898af558b2387252a2f5fc0117dee Mon Sep 17 00:00:00 2001
From: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Date: Fri, 15 Dec 2017 12:00:03 +0100
Subject: [PATCH] arm64: dts: rockchip: add usb3-phy otg-port support for rk3399

Add the usb3 phyter for the USB3.0 OTG controller.

Signed-off-by: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Signed-off-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index b4511503878b..7aa2144e0d47 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -411,8 +411,8 @@
             reg = <0x0 0xfe800000 0x0 0x100000>;
             interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH 0>;
             dr_mode = "otg";
-            phys = <&u2phy0_otg>;
-            phy-names = "usb2-phy";
+            phys = <&u2phy0_otg>, <&tcphy0_usb3>;
+            phy-names = "usb2-phy", "usb3-phy";
             phy_type = "utmi_wide";
             snps,dis_enblslpm_quirk;
             snps,dis-u2-freeclk-exists-quirk;
@@ -444,8 +444,8 @@
             reg = <0x0 0xfe900000 0x0 0x100000>;
             interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
             dr_mode = "otg";
-            phys = <&u2phy1_otg>;
-            phy-names = "usb2-phy";
+            phys = <&u2phy1_otg>, <&tcphy1_usb3>;
+            phy-names = "usb2-phy", "usb3-phy";
             phy_type = "utmi_wide";
             snps,dis_enblslpm_quirk;
             snps,dis-u2-freeclk-exists-quirk;
-- 
2.16.2


Before that patch, in dwc3_core_get_phy in drivers/usb/dwc3/core.c
  if (IS_ERR(dwc->usb3_generic_phy)) {
    ret = PTR_ERR(dwc->usb3_generic_phy);
    if (ret == -ENOSYS || ret == -ENODEV) {
      dwc->usb3_generic_phy = NULL;
      // USB3 phy not in device tree, OK, continue without.
    } else if (ret == -EPROBE_DEFER) {
    } else {
    }
  }


After that patch, in dwc3_core_get_phy in drivers/usb/dwc3/core.c
  if (IS_ERR(dwc->usb3_generic_phy)) {
    ret = PTR_ERR(dwc->usb3_generic_phy);
    if (ret == -ENOSYS || ret == -ENODEV) {
      // USB3 phy is in device tree now, this branch is no longer taken.
    } else if (ret == -EPROBE_DEFER) {
      return ret;
      // No usb3_phy found, ERROR, bail out.
      // At this point it could continue in degraded usb2 mode,
      //   but it does not.
    } else {
    }
  }

An usb3 phy is not found because no usb3 phy is being registered.
No usb3 phy is being registered because no usb3 phy is being probed at all.
I do not know why it is not being probed.
In the configuration file, CONFIG_PHY_ROCKCHIP_TYPEC is set to y.

So, all in all, there are two bugs:
 1.- The regression: usb3 mode is new and does not work, BUT this
     makes the usb2 mode to be discarded.
 2.- The new feature: usb3 mode does not work.

Regards,
  Vicente.
