From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix rk3328-roc-cc sdmmcio-regulator
Date: Wed, 5 Feb 2020 13:43:21 -0500
Message-ID: <CAMdYzYopKjRpVnyq2k84XZK0kmR_ZBH8KNjVyPz3upQjx0rLJQ@mail.gmail.com>
References: <87imkryz5t.fsf@vany.ca>
 <7b9829b3-e2d2-95b1-03cb-1af7a3c6acad@arm.com>
 <4a6a9d81-c831-4167-7fbf-64805940fb6f@vany.ca>
 <d8a8b696-268b-1ea8-7b5e-406a651011ff@arm.com>
 <510d310b-30af-7b24-d472-907bc6b2ef46@vany.ca>
 <CAMdYzYo5V2rHE6Axx9p67n3FcCFpQ5TA+m7kqaE3Uqn6d0QUhw@mail.gmail.com>
 <7b36198e-25c0-4f3b-d871-6bd5aaf619d8@vany.ca>
 <CAMdYzYp_dVjn18-6gy5MVpuGcOpf26eaPitfNZhARCixfrtYCA@mail.gmail.com>
 <2f863743-f5fd-7702-ac22-762dbca834cb@vany.ca>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <2f863743-f5fd-7702-ac22-762dbca834cb-M8Nx6PV4agg@public.gmane.org>
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

> > First question, which kernel are you running?
> > Current mainline (5.4.17) works out of the box for the rk3328-roc-cc.
>
> Not from my experience.  I'm trying 5.5, but I also tried a fresh build
> ot 5.4.17 and neither will load from the sdcard in their default
> configuration.  If you have this working can you share your kernel config?

Considering all of the components to boot off emmc (which you are
clearly doing since you boot at all) are the same as the ones required
for sdmmc I doubt it's a configuration issue.
But to answer your question, I used the defconfig, stripped all of the
non rockchip components out, and made the base drivers builtin.

>
> >
> > Second question, do you have the libre board or the team firefly board?
>
> The libre.computer board.
>
> >
> > Third question, what is the current state of the grf-gpio pin?
> > Also, what is the state of the regmap for register 428 at
> > /sys/kernel/debug/regmap/dummy-syscon@ff100000/registers
> >
> > Also, it likely works because those GPIOs don't exist, as such it is
> > leaving the grf registers as is from u-boot.
>
> Makes sense.  If I remove vcc_sdio from the device tree, and remove the
> vqmmc entry from the sdmmc node, then the kernel continues to boot.  In
> that case I have
>
> # cat /sys/kernel/debug/regmap/dummy-syscon\@ff100000/registers | grep 428
>
> 428: 0000f800

As it should be, this should mean your mute pin is off (default state)
and the vqmmc voltage should be 3.3v.

>
> # cat /sys/kernel/debug/mmc1/ios
> clock:        0 Hz
> vdd:        0 (invalid)
> bus mode:    2 (push-pull)
> chip select:    0 (don't care)
> power mode:    0 (off)
> bus width:    0 (1 bits)
> timing spec:    0 (legacy)
> signal voltage:    0 (3.30 V)
> driver type:    0 (driver type B)

It's not detecting anything at all.
You say you booted off this card?

Could you run a `dmesg | grep mmc` and send all the results?

>
> # cat /sys/kernel/debug/gpio
> gpiochip0: GPIOs 0-31, parent: platform/pinctrl, gpio0:
>  gpio-30  (                    |sdmmc-regulator     ) out lo ACTIVE LOW
>
> gpiochip1: GPIOs 32-63, parent: platform/pinctrl, gpio1:
>  gpio-58  (                    |vcc-host1-5v-regulat) out hi
>
> gpiochip2: GPIOs 64-95, parent: platform/pinctrl, gpio2:
>
> gpiochip3: GPIOs 96-127, parent: platform/pinctrl, gpio3:
>
> gpiochip4: GPIOs 511-511, parent: platform/ff100000.syscon:grf-gpio,
> ff100000.syscon:grf-gpio:
>
>
> I notice that I don't have the entry for vcc-host-5v-regulator.  In fact
> vcc-host-5v-regulator doesn't appear in the device tree anywhere that I
> can find.  It only appears in the rock64 device tree.  What device
> tree/kernel version are you using?

I've got usb 2 and 3 fully working, that regulator is part of the usb subsystem.

>
> $ grep -R vcc-host-5v-regulat linux-5.5/
> linux-5.5/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts:
> vcc_host_5v: vcc-host-5v-regulator {
>
> $ grep -R vcc-host-5v-regulat linux-5.4.17/
> linux-5.4.17/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts:
> vcc_host_5v: vcc-host-5v-regulator {
>
> >>
> >> Calling regmap_write seems wrong, as we end up setting all bits in the register, so this should probably be regmap_update_bits.  The top 16-bits are write-enable for the lower 16-bits, but I can't find documentation if it works to set both the write enable bit and the target bit at the same time.
> > data = (val ? BIT(bit) : 0) | BIT(bit + 16); handles setting both the
> > bit and the write bit.
> Right I saw that, I was more wondering if it's legal to set both in the
> same operation, or if the chip requires you to set the write bit, and
> then the data bit in a subsequent write.
> >> Tonight I will try splitting that into two calls to update the high bit first as well as changing to regmap_update_bits.  Any other ideas welcome.
> >>
> >> Sorry if this was too verbose or too much context, I'm new to this kind of work.
> > I hate to say it, but you probably have something else going on here.
> > From my ouya porting experience, sdmmc can be very touchy in odd configurations.
> > I would try reducing the clock rate and trying again, also you can
> > limit the timing spec mode as well.
>
> Any advice on how to reduce the clock rate/timing spec mode?  I also
> just found a PDF showing the position of the components on the board, so
> I should be able to find a test point to see if the regulator is
> producing 1.8V vs 3.3V as its supposed to.

Documentation/devicetree/bindings/mmc/mmc-controller.yaml
max-frequency for frequency cap.
sd-uhs-sdr12 through sd-uhs-ddr50 set sd card modes.
You can also try bus-width = <1>;

>
> >
> > Could you send the data from the following sources?
> > /sys/kernel/debug/mmc1/ios
> > /sys/kernel/debug/gpio
>
>
> Pasted above.
>
>
> > Also, try reseating the sdcard.
> > I submitted a patch in October which fixes the sdcard on boot.
> > Recently gpio functionality on the rk3328 was fixed which allowed
> > vcc_sd to shut down during boot.
> > Reseating the card would trigger card detection, which powers the
> > regulator back up and the card enumerates.
> > Check that regulator-boot-on; is under the vcc_sd: sdmmc-regulator.
>
> I've re-seated the sdcard a bunch. If I do nothing but reboot the board
> and toggle between the stock device tree and one with vcc_sdio/vqmmc
> removed I can reliably boot vs not-boot the board.  regulator-boot-on is
> there for vcc_sd.
>
>
> I really appreciate the help!
>

I hate to ask the dumb questions, but I have a few just for clarity.
With no emmc attached, does your board boot off the sdcard?
Are you sure the sdcard is good?

> One thing I did notice, though, is that GPIO_MUTE seems to have some
> inherent coupling to the analog codec, as the value automatically goes
> high when starting to play audio, and low again when stopping (but can
> still be manually toggled in between). Thus unless there's some secret
> to disabling that behaviour then it might not be safe to enable analog
> audio on these ROC-CC boards for fear of messing up peoples' SD cards.

Robin,
Do you know if that is the SOC doing that or the drivers?
