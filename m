From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
Date: Thu, 5 Dec 2019 13:10:53 -0500
Message-ID: <CAMdYzYrx0fSAJ0foUF8sP8JrBzRbW_ETDgK72zt-LsU=OYPraA@mail.gmail.com>
References: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
 <2a5d91f1-033e-8acc-5b57-16ca77204a0b@arm.com>
 <CAMdYzYpdW13roxwHxD5w=XLBiyASp+biMqP-n2+QD9cL5g_hvg@mail.gmail.com>
 <CAMdYzYoCzU4F66Hpdy6XBTWwWi+WmSo50R+sCSDEFOBKr84U1w@mail.gmail.com>
 <CAMdYzYrHvGHRq51fbNp4Y=9HhaEUXhyoYt-dy70xVFrOmkNOTA@mail.gmail.com>
 <55c56fb7-9402-9798-9631-c1c3f607d663@arm.com>
 <CAMdYzYqvNa5_5xMnw=MVOL5iJQq_-cBVGtwQMXQ_JqLvyx=mYA@mail.gmail.com>
 <CAMdYzYorsxrb1_xWjeAW-76QQ3a+Y+5iHskhM4M1N5rsUzoY7w@mail.gmail.com>
 <eb09e106-e708-8857-690e-0052f860f19c@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <eb09e106-e708-8857-690e-0052f860f19c-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: heiko.stuebner-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Dec 5, 2019 at 12:31 PM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
>
> On 05/12/2019 1:07 pm, Peter Geis wrote:
> [...]
> > The power off issue still exists, but I dug into the psci pm code for
> > the poweroff function and unless there is a gpio this function is a
> > no-op.
> > For this reason I think the rk808 driver should be modified to set
> > itself as the primary poweroff provider if the
> > rockchip,system-power-controller flag is set.
> > The other option is to somehow make ATF aware of the rk808 and have it
> > trigger the poweroff.
> > Thoughts on this?
>
> Yeah, this seems to be a fundamental limitation of the RK808 that, short
> of wiring up a GPIO to literally hold down the power button, the only
> way to convince it to turn off is over I2C. Downstream kernels seem to
> hack around this by short-circuiting ATF on shutdown such that the RK808
> driver pulls the plug before PSCI_SYSTEM_OFF ever gets called, but I'm
> not sure that's viable in general since it precludes gracefully shutting
> down the Secure world software stack.
>
> The main challenge in implementing I2C-based shutdown in ATF would be
> making it sufficiently robust without being incredibly complicated.
> Since the hardware resources are owned by the Non-Secure world, ATF
> can't make any assumptions about them being in a sane and usable state
> at the point where it might want to touch them - a shutdown could
> potentially be invoked while the I2C controller is already in the middle
> of a transfer. Possibly bit-banging GPIOs, including a bus recovery
> sequence, might be sufficient yet still relatively small and simple?
>
> Robin.

Theoretically, how dangerous is it to pull the rug out from under ATF
without calling a graceful shutdown?
Since it shouldn't be touching any non-volatile storage anyways,
anything it was doing is going to be gone when power is cut.

The reset handler for arm implements a hierarchy of reset handlers,
where multiple handlers can register with a priority, and they are
called in order until someone actually reboots the device.
Is there similar functionality in the shutdown handler as well?
If there is, we could have PSCI_SYSTEM_OFF called, but since it
doesn't actually do anything eventually have the rk808 driver trigger
and actually power off the board.
Or does calling PSCI_SYSTEM_OFF cause the ATF to halt any remaining
kernel functions?

Doesn't u-boot use simple non-dma drivers for i2c?
Would we be able to trigger a reset of the i2c controller, then
request a single transfer, using something similar?
Another option would be the u-boot poweroff driver, which set a flag
for u-boot to hold at next boot, but we could have a custom handler in
u-boot to trigger the poweroff instead of holding.

>
> > [0] https://github.com/ARM-software/arm-trusted-firmware/commit/45d4611563038486890b40d61e41b68213326afc
> > [1] https://github.com/armbian/build/blob/master/patch/atf/atf-rk3399/switch-power-domains-on-before-reset.patch
> >>
> >>>
> >>>>
> >>>> Log is below:
> >>>> [    0.261198] Detected PIPT I-cache on CPU5
> >>>> [    0.261223] GICv3: CPU5: found redistributor 101 region 0:0x00000000fefa0000
> >>>> [    0.261235] GICv3: CPU5: using allocated LPI pending table
> >>>> @0x00000000f0120000
> >>>> [    0.261263] CPU5: Booted secondary processor 0x0000000101 [0x410fd082]
> >>>> [    0.261377] smp: Brought up 1 node, 6 CPUs
> >>>> [    0.274833] SMP: Total of 6 processors activated.
> >>>> [    0.275297] CPU features: detected: 32-bit EL0 Support
> >>>> [    0.275801] CPU features: detected: CRC32 instructions
> >>>> [    0.290797] CPU: All CPU(s) started at EL2
> >>>> [    0.291242] alternatives: patching kernel code
> >>>> [    0.294848] devtmpfs: initialized
> >>>> [    0.311658] clocksource: jiffies: mask: 0xffffffff max_cycles:
> >>>> 0xffffffff, max_idle_ns: 7645041785100000 ns
> >>>> [    0.312629] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
> >>>> [    0.315223] pinctrl core: initialized pinctrl subsystem
> >>>> [    0.318097] DMI not present or invalid.
> >>>> [    0.318989] NET: Registered protocol family 16
> >>>> [    0.326798] DMA: preallocated 256 KiB pool for atomic allocations
> >>>> [    0.327415] audit: initializing netlink subsys (disabled)
> >>>> [    0.328106] audit: type=2000 audit(0.320:1): state=initialized
> >>>> audit_enabled=0 res=1
> >>>> [    0.330213] cpuidle: using governor menu
> >>>> [    0.331160] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
> >>>> [    0.334653] Serial: AMBA PL011 UART driver
> >>>> [    0.384125] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
> >>>> [    0.384800] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
> >>>> [    0.385483] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
> >>>> [    0.386146] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
> >>>> [    0.390063] cryptd: max_cpu_qlen set to 1000
> >>>> [    0.396205] ACPI: Interpreter disabled.
> >>>> [    0.399113] vcc3v3_pcie: supplied by vcc12v_dcin
> >>>> [    0.400706] vcc5v0_sys: supplied by vcc12v_dcin
> >>>> [    0.401426] vcc5v0_usb: supplied by vcc12v_dcin
> >>>> [    0.402060] vcc3v3_sys: supplied by vcc5v0_sys
> >>>> [    0.403275] iommu: Default domain type: Translated
> >>>> [
> >>>>
> >>>>>
> >>>>>>
> >>>>>>>
> >>>>>>>> With miniloader and both variants of u-boot, if you attempt a reboot
> >>>>>>>> it never fires the "reboot: Restarting system" message.
> >>>>>>>> If you trigger a sysrq reboot at this stage, it will reboot, but fails
> >>>>>>>> to start up the two a72 cores and subsequently hangs a second later
> >>>>>>>> when it loads the first dma driver.
> >>>>>>>>
> >>>>>>>> With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
> >>>>>>>> with TPL/SPL), it fires the "reboot: Restarting system" message, but
> >>>>>>>> never reboots.
> >>>>>>>> sysrq does not function at this point.
> >>>>>>>>
> >>>>>>>> I believe the pcie controller is not being halted, and gets stuck in a
> >>>>>>>> loop with the two a72 cores.
> >>>>>>>>
> >>>>>>>> _______________________________________________
> >>>>>>>> Linux-rockchip mailing list
> >>>>>>>> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> >>>>>>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >>>>>>>>
