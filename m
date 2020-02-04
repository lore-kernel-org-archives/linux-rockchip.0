From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
Date: Tue, 4 Feb 2020 10:15:40 -0500
Message-ID: <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <510d310b-30af-7b24-d472-907bc6b2ef46-M8Nx6PV4agg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Adam Van Ymeren <adam-M8Nx6PV4agg@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Sat, Feb 1, 2020 at 5:10 PM Adam Van Ymeren <adam-M8Nx6PV4agg@public.gmane.org> wrote:
>
>
> On 2020-02-01 12:46 p.m., Robin Murphy wrote:
> > On 2020-02-01 3:41 pm, Adam Van Ymeren wrote:
> >>
> >> On 2020-02-01 5:51 a.m., Robin Murphy wrote:
> >>> Hi Adam,
> >>>
> >>> On 2020-01-31 11:38 pm, Adam Van Ymeren wrote:
> >>>> With this change the kernel successfully finds the SD Card and can
> >>>> load
> >>>> a rootfs from it.  Tested on hardware.
> >>>>
> >>>> Signed-off-by: Adam Van Ymeren <adam-M8Nx6PV4agg@public.gmane.org>
> >>>>
> >>>> diff -uprN -X linux-5.5/Documentation/dontdiff
> >>>> linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> >>>> linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> >>>> --- linux-5.5-orig/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> >>>> 2020-01-26 19:23:03.000000000 -0500
> >>>> +++ linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
> >>>> 2020-01-31 16:26:35.377075419 -0500
> >>>> @@ -44,7 +44,7 @@
> >>>>          vcc_sdio: sdmmcio-regulator {
> >>>>            compatible = "regulator-gpio";
> >>>> -        gpios = <&grf_gpio 0 GPIO_ACTIVE_HIGH>;
> >>>> +        gpios = <&gpio0 RK_PD1 GPIO_ACTIVE_HIGH>;
> >>>
> >>> Given that the RK3328 datasheet has no mention of GPIO0_D1 existing at
> >>> all, how sure are you that this is correct - have you tested cards in
> >>> both 3.3V and 1.8V (UHS-1) signalling modes?
> >>>
> >>> The ROC-RK3328-CC schematics show GPIO_MUTE being used to bias the
> >>> feedback pin of an adjustable regulator supplying the SDMMC0 I/O
> >>> domain, so it seems more likely that the pin is correct but the states
> >>> (or the polarity) are backwards.
> >>
> >>
> >> Hmm yeah after reading the schematics this doesn't make sense.  I took
> >> it from the vendors source tree[1], and it definitely allowed my system
> >> to boot when it wouldn't before, but I only tried a 3.3V card.  I'll try
> >> just changing the polarity.  I'll also find a UHS-1 card and test that,
> >> any advice on how to verify that it's running in the 1.8V mode?
> >
> > My preferred method is to stick a meter on either the uSD socket pins
> > or the regulator itself and wiggle the GPIO from userspace, but
> > preferably only if the board can run without a card inserted.
> >
> > That said, I just suddenly remembered about regulator GPIOs being
> > quirky for legacy ABI reasons - I'm now 99% sure that you should
> > simply need to add the "enable-active-high" property to make it
> > actually work as expected.
> >
>
> Whelp I did a whole bunch of tracing and debugging only to realize that
> I didn't have CONFIG_GPIO_SYSCON enabled, so big suprise the gpio-syscon
> driver needed for grf-gpio never came online.  After turning that on I get
>
> [    1.277115] mmc_host mmc1: Bus speed (slot 0) = 400000Hz (slot req
> 400000Hz, actual 400000HZ div = 0)
>
> in my dmesg, which is more than I used to get.  However it fails to
> detect the SDCard.  I tried with and without enable-active-high; on the
> sdmmcio-regulator entry, neither seemed to make a difference.  I'll do
> some more debugging in a bit, its always possible I did something stupid
> like use the wrong .dtb file (or build without CONFIG_GPIO_SYSCON).

I'm interested in this, since I've encountered some oddities with the
sdcard on this board.
With the recent addition of support for ddr4 tpl init in u-boot I
started playing with it again.
I couldn't get the sdcard to detect leaving tpl into spl, causing a
boot failure.
The exact same image works when flashed to the emmc though.

Once we are in the kernel the sdcard detects fine.

I noticed u-boot doesn't have a grf-gpio driver, so the 3.3v/1.8v
regulator is unavailable.

root@firefly:/sys/kernel/debug/mmc1# cat ios
clock:          150000000 Hz
actual clock:   150000000 Hz
vdd:            21 (3.3 ~ 3.4 V)
bus mode:       2 (push-pull)
chip select:    0 (don't care)
power mode:     2 (on)
bus width:      2 (4 bits)
timing spec:    6 (sd uhs SDR104)
signal voltage: 1 (1.80 V)
driver type:    0 (driver type B)

root@firefly:/sys/kernel/debug# cat gpio
gpiochip0: GPIOs 0-31, parent: platform/pinctrl, gpio0:
 gpio-0   (                    |vcc-host-5v-regulato) out hi
 gpio-30  (                    |sdmmc-regulator     ) out lo ACTIVE LOW

gpiochip1: GPIOs 32-63, parent: platform/pinctrl, gpio1:
 gpio-50  (                    |snps,reset          ) out hi ACTIVE LOW
 gpio-58  (                    |vcc-host1-5v-regulat) out hi

gpiochip2: GPIOs 64-95, parent: platform/pinctrl, gpio2:

gpiochip3: GPIOs 96-127, parent: platform/pinctrl, gpio3:

gpiochip5: GPIOs 509-510, parent: platform/rk805-pinctrl, rk805-gpio, can sleep:
 gpio-509 (                    |?                   ) out hi ACTIVE LOW
 gpio-510 (                    |?                   ) out hi ACTIVE LOW

gpiochip4: GPIOs 511-511, parent: platform/ff100000.syscon:grf-gpio,
ff100000.syscon:grf-gpio:
 gpio-511 (                    |vcc_sdio            ) out hi

>
>
> Thanks again!
>
> -Adam
>
> |
>
> |
>
> ||
>
> |
>
> |
>
> |
>
> |||
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
