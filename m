From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 4/4] arm64: dts: Sapphire board: Fix Type-C port supply
Date: Mon, 10 Sep 2018 16:10:06 +0200
Message-ID: <3744467.8gaGBgj8zp@phil>
References: <9e64e878-07c8-912c-c597-7da7b3f96dd6@collabora.com>
 <2506276.WeVqUmcns7@phil>
 <CAAMcf8Dr6Kfgx6aqy0vk9TBjW1=0sDp=zJAetjAt5AhPVwHDdA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAMcf8Dr6Kfgx6aqy0vk9TBjW1=0sDp=zJAetjAt5AhPVwHDdA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, William wu <wulf-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Montag, 10. September 2018, 15:39:45 CEST schrieb Vicente Bergas:
> On Mon, Sep 10, 2018 at 2:23 PM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> > Am Samstag, 8. September 2018, 21:00:48 CEST schrieb Vicente Bergas:
> >> The reference is the schematic, page 11:
> >> https://dl.vamrs.com/products/sapphire_excavator/RK_SAPPHIRE_SOCBOARD_RK3399_LPDDR3D178P232SD8_V12_20161109HXS.pdf
> >> (alternate link)
> >> http://opensource.rock-chips.com/images/f/f0/RK_Sapphire_RK3399.rar
> >>
> >> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> ---
> >>  .../arm64/boot/dts/rockchip/rk3399-sapphire.dtsi | 16 +++++++++++++++-
> >>  1 file changed, 15 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> >> index b1cb50595..1188c8717 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire.dtsi
> >> @@ -151,6 +151,16 @@
> >>               vin-supply = <&vcc_sys>;
> >>       };
> >>
> >> +     vcc5v0_typec0: vcc5v0-typec0-regulator {
> >> +             compatible = "regulator-fixed";
> >> +             enable-active-high;
> >> +             gpio = <&gpio2 RK_PA0 GPIO_ACTIVE_HIGH>;
> >> +             pinctrl-names = "default";
> >> +             pinctrl-0 = <&vcc5v0_typec0_en>;
> >> +             regulator-name = "vcc5v0_typec0";
> >> +             vin-supply = <&vcc_sys>;
> >> +     };
> >> +
> >>       vcc_sys: vcc-sys {
> >>               compatible = "regulator-fixed";
> >>               regulator-name = "vcc_sys";
> >> @@ -503,6 +513,10 @@
> >>                       rockchip,pins =
> >>                               <4 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
> >>               };
> >> +             vcc5v0_typec0_en: vcc5v0-typec0-en {
> >> +                     rockchip,pins =
> >> +                             <2 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> >> +             };
> >>       };
> >>  };
> >>
> >> @@ -564,7 +578,7 @@
> >>       };
> >>
> >>       u2phy0_host: host-port {
> >> -             phy-supply = <&vcc5v0_host>;
> >> +             phy-supply = <&vcc5v0_typec0>;
> >
> > Hmm, I'm not sure if that is correct.
> >
> > Reading schematics and also the phy port assignments, you can see
> > u2phy0_host being connected to "usb_host0_ehci: usb@fe380000".
> >
> > So I guess the vcc5v0_host should be the correct one for it?
> > Did you mean to add the py-supply to u2phy0_otg instead? Which is one
> > of the ports used by the dwc3?
> >
> >
> > Heiko
> >
> Hi,
> from the schematic these are the connections for the USB ports:
> 
> ##### PHY0 #####
> U1000S is the RK3399 PHY0 used for the USB3 Type-C connector.
> The USB3 Type-C connector is the one labeled J8902.
> From there, the VBUS pin is connected to the VBUS_TYPEC net.
> The VBUS_TYPEC supply is U8905, which has an enable input
>   connected to the GPIO2_A0/CIF_D0 net.
> The GPIO2_A0/CIF_D0 net is driven by the
>   GPIO2_A0/VOP_D0/CIF_D0/I2C2_SDA_u pin of U1000L, which is
>   the RK3399.
> ################
> 
> ##### PHY1 #####
> U1000T is the RK3399 PHY1 used for the USB3 Type-A connector.
> The USB3 Type-A connector is the one labeled CON602.
> From there, the VBUS pin is connected to the VCC5V0_HOST2 net.
> The VCC5V0_HOST2 supply is U1902, which has an enable input
>   connected to the VCC5V0_HOST_EN net.
> The VCC5V0_HOST_EN net is driven by the
>   GPIO4_D1/DP_HOTPLUG_d pin of U1000K, which is the RK3399.
> ################
> 
> So, it is clear that GPIO2_A0 controls the VBUS of PHY0 and
>   GPIO4_D1 controls the VBUS of PHY1.

You have to account for the fact that each phy has two actual ports.
The host_ports are connected to the ehci/ohci controllers.
	u2phy0_host -> usb_host0_ehci + usb_host0_ohci
	u2phy1_host -> usb_host1_ehci + usb_host1_ohci

while the otg-ports supply the usb2-phy phys of the dwc3 controllers.
	u2phy0_otg -> usbdrd3_0
	u2phy1_otg -> usbdrd3_1

So most likely the usb_host supplies go to the host controllers,
while the otg ports will be the most likely candidate for controlling the
typec power.

> At this point, i am not sure how to translate this information
> from the schematic into the DTS. I don't know if it should be
> applied to the "otg" or the "host" side as you are suggesting.
> But it looks quite clear to me that VCC5V0_HOST(GPIO4_D1) is not
> applicaple to the PHY0.
> 
> As stated in the email 0/4, this patch only powers-up the Type-C
> port, but it is still non-working. So, either this patch is wrong
> or more changes are needed like the fusb302.

In general, you should see activity when connecting devices to the
type-c port ... meaning usb sticks and so on. With recent patches the
typec-phy should switch to host mode if no role detection is possible,
so on any non-ChromeOS device you will currently only get host function.

So I guess your best bet is to try a typec->usb3 adapter and a regular
stick right now.

Heiko
