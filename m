From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 3/3] This patch adds wifi to asus tinker board S
Date: Thu, 11 Oct 2018 12:12:34 +0200
Message-ID: <2811253.FAip1BQNUo@phil>
References: <20180922170236.8690-1-beagleboard@davidjohnsummers.uk>
 <5682345.Yzn33l6ONg@phil>
 <efb16675-0382-64b1-ceb5-acee3f95628d@davidjohnsummers.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <efb16675-0382-64b1-ceb5-acee3f95628d-8lkWs+DogrrqRUWtDFdff/XRex20P6io@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: David Summers <beagleboard-8lkWs+DogrrqRUWtDFdff/XRex20P6io@public.gmane.org>
Cc: linux-bluetooth-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>, Johan Hedberg <johan.hedberg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 11. Oktober 2018, 12:09:51 CEST schrieb David Summers:
> On 08/10/2018 10:30, Heiko Stuebner wrote:
> > Hi David,
> >
> > Am Samstag, 22. September 2018, 19:02:36 CEST schrieb David Summers:
> >> Now as fair as I understand. the asus tinker board contains a wifi
> >> So should this patch be added to the tinker board dtsi ?
> >>
> >> It also far move complex - it adds far more things, so consider
> >>
> >> Signed-off-by: David Summers <beagleboard-8lkWs+DogrrqRUWtDFdff/XRex20P6io@public.gmane.org>
> >> ---
> >>   arch/arm/boot/dts/rk3288-tinker-s.dts | 93 +++++++++++++++++++++++++++
> >>   1 file changed, 93 insertions(+)
> >>
> >> diff --git a/arch/arm/boot/dts/rk3288-tinker-s.dts b/arch/arm/boot/dts/rk3288-tinker-s.dts
> >> index bc691e3f9c07..3d91924fd8db 100644
> >> --- a/arch/arm/boot/dts/rk3288-tinker-s.dts
> >> +++ b/arch/arm/boot/dts/rk3288-tinker-s.dts
> >> @@ -10,6 +10,95 @@
> >>   / {
> >>   	model = "Rockchip RK3288 Asus Tinker Board S";
> >>   	compatible = "asus,rk3288-tinker-s", "rockchip,rk3288";
> >> +
> >> +	wireless-bluetooth {
> >> +		compatible = "bluetooth-platdata";
> >> +		uart_rts_gpios = <&gpio4 19 GPIO_ACTIVE_LOW>;
> >> +		pinctrl-names = "default","rts_gpio";
> >> +		pinctrl-0 = <&uart0_rts>;
> >> +		pinctrl-1 = <&uart0_gpios>;
> >> +		BT,reset_gpio    = <&gpio4 29 GPIO_ACTIVE_HIGH>;
> >> +		BT,wake_gpio     = <&gpio4 26 GPIO_ACTIVE_HIGH>;
> >> +		BT,wake_host_irq = <&gpio4 31 GPIO_ACTIVE_HIGH>;
> >> +		status = "okay";
> >> +	};
> > the basic problem here is, that all these nodes stem from the so called
> > soc-vendor-tree. Devicetree bindings normally go through a review process
> > while soc vendors often invent their own shortcut that is not and will
> > not be supported by the mainline kernel.
> >
> > Bluetooth-platdata and wlan-platdata are examples of that.
> >
> > Additionally, the kernel now has the somewhat new "serdev" to manage the
> > needed connection between bluetooth and uart. See
> > http://events17.linuxfoundation.org/sites/events/files/slides/serdev-elce-2017-2.pdf
> > for an introduction.
> 
> Sigh - this just got difficult:
> 
> https://github.com/torvalds/linux/blob/master/drivers/bluetooth/btrtl.c
> 
> Which is the bluetooth driver for Realtek RTL8723BS neither contains the 
> device tree tabs ("static const struct of_device_id") so it can't be 
> referred to in the device tree, nor is it linked in with serdev, so it 
> probably can't go as sub child of uart0.
> 
> I'll look at those changes first ...

or alternatively, take small steps and at first "simply" add the core sdio
device that already does the wifi and then later add serdev stuff.
I'm also only of limited help here, as while I know that it exists now,
so far I haven't had to much contact with it.


Heiko
