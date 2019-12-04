From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [BUG] rk3399 fails to reboot correctly with PCIE device inserted
Date: Wed, 4 Dec 2019 13:28:15 -0500
Message-ID: <CAMdYzYqvNa5_5xMnw=MVOL5iJQq_-cBVGtwQMXQ_JqLvyx=mYA@mail.gmail.com>
References: <CAMdYzYrLX=z-OVoW9RVecjoYK1J8EfLQ=cV1aNUqPsXqiOU+2g@mail.gmail.com>
 <2a5d91f1-033e-8acc-5b57-16ca77204a0b@arm.com>
 <CAMdYzYpdW13roxwHxD5w=XLBiyASp+biMqP-n2+QD9cL5g_hvg@mail.gmail.com>
 <CAMdYzYoCzU4F66Hpdy6XBTWwWi+WmSo50R+sCSDEFOBKr84U1w@mail.gmail.com>
 <CAMdYzYrHvGHRq51fbNp4Y=9HhaEUXhyoYt-dy70xVFrOmkNOTA@mail.gmail.com>
 <55c56fb7-9402-9798-9631-c1c3f607d663@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <55c56fb7-9402-9798-9631-c1c3f607d663-5wv7dgnIgG8@public.gmane.org>
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

On Wed, Dec 4, 2019 at 12:42 PM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
>
> On 04/12/2019 5:28 pm, Peter Geis wrote:
> > On Mon, Nov 25, 2019 at 7:05 PM Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> >>
> >> On Mon, Nov 25, 2019 at 12:10 PM Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> >>>
> >>> On Mon, Nov 25, 2019 at 11:52 AM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
> >>>>
> >>>> Hi Peter,
> >>>>
> >>>> On 25/11/2019 4:28 pm, Peter Geis wrote:
> >>>>> Good Morning,
> >>>>>
> >>>>> Another issue I've come across while testing PCIE on the rockpro64.
> >>>>> When a PCIE device is inserted into the board, and it enumerates
> >>>>> successfully, the board will not reset.
> >>>>> I've tried various states of u-boot-rockchip, u-boot-mainline, with
> >>>>> both miniloader and TPL/SPL.
> >>>>
> >>>> In case it's relevant, what particular PCIe device(s) have you seen the
> >>>> issue with? FWIW I've been running a Samsung 960 Evo NVMe in my
> >>>> NanoPC-T4 with mainline kernels for months now and it's always rebooted
> >>>> flawlessly.
> >>>>
> >>>> Robin.
> >>>
> >>> Currently with a I350 NIC, but also observed with a pcie switch, and the GTX645.
> >>> The NIC works, while the other two didn't without the patch to hijack
> >>> the error handler.
> >>>
> >>> I am running the latest atf built from their github.
> >>
> >> On closer examination, it isn't the pcie devices causing the reboot
> >> issues, the rk3399 just doesn't reboot.
> >> It would seem the trigger with miniloader was random enough that it
> >> appeared to be tied to my pcie testing.
> >> It happens 100% of the time with tpl/spl.
> >
> > With further testing, I think I've found the trigger of the reboot failure.
> > It would seem with ATF compiled from source, psci-reboot is not
> > actually triggering the reboot.
> > The reason my board stopped rebooting entirely is because I had
> > somehow broken the psci-watchdog.
> >
> > I rebuilt all from source, stripping all modifications I had done and
> > using the defconfigs.
> > I get the following message at reboot time:
> > [ 2839.724508] watchdog: watchdog0: watchdog did not stop!
> > [ 2841.162516] reboot: Restarting system
> > U-Boot TPL 2020.01-rc3-00070-g9a0cbae22a-dirty (Dec 03 2019 - 14:07:57)
> > Whereas before the watchdog alert was not triggering and reboot never occurred.
> >
> > It would seem that the pcsi-reboot function is dead, and the only
> > reason the boards are actually rebooting is because the psci-watchdog
> > is triggering the reboot after the kernel fails to check in.
> >
> > Now I am still having the issue with boot hanging after a warm reboot
> > when certain pci-e devices are installed (particularly, the i350
> > network controller).
> > I think this may be due to the pci-e controller driver lacking proper
> > shutdown cleanup code, which is allowing the i350 to continue to
> > trigger either interrupts or dma transfers following the soft-reboot.
> >
> > The hang occurs roughly the same point, when either the iommu or the
> > first dma device is initialized.
> > Occasionally the A72 cluster fails to initialize as well.
>
> It turns out there's been a general issue with upstream ATF failing to
> reboot RK3399 correctly, which has just been tracked down to power
> domain states getting out of sync - there's more info on the U-Boot list
> here: https://lists.denx.de/pipermail/u-boot/2019-December/392348.html
>
> Robin.

Thanks!
Seems there were two issues here, both involving the power bugs I've
been tracking.

First, there was no sanity check if there was a power-off or reset
gpio, before trying to get the gpio.
This broke reset and poweroff functions on board without reset or
power-off gpios.
The fix they implemented is to try to set the gpio value before
getting the gpio, which fails if the gpio doesn't exist and it returns
null in that case.
This fix has been merged as of last night.

The power domain issue hasn't been merged yet, but I've grabbed that
patch and will test it as well.

>
> >
> > Log is below:
> > [    0.261198] Detected PIPT I-cache on CPU5
> > [    0.261223] GICv3: CPU5: found redistributor 101 region 0:0x00000000fefa0000
> > [    0.261235] GICv3: CPU5: using allocated LPI pending table
> > @0x00000000f0120000
> > [    0.261263] CPU5: Booted secondary processor 0x0000000101 [0x410fd082]
> > [    0.261377] smp: Brought up 1 node, 6 CPUs
> > [    0.274833] SMP: Total of 6 processors activated.
> > [    0.275297] CPU features: detected: 32-bit EL0 Support
> > [    0.275801] CPU features: detected: CRC32 instructions
> > [    0.290797] CPU: All CPU(s) started at EL2
> > [    0.291242] alternatives: patching kernel code
> > [    0.294848] devtmpfs: initialized
> > [    0.311658] clocksource: jiffies: mask: 0xffffffff max_cycles:
> > 0xffffffff, max_idle_ns: 7645041785100000 ns
> > [    0.312629] futex hash table entries: 2048 (order: 5, 131072 bytes, linear)
> > [    0.315223] pinctrl core: initialized pinctrl subsystem
> > [    0.318097] DMI not present or invalid.
> > [    0.318989] NET: Registered protocol family 16
> > [    0.326798] DMA: preallocated 256 KiB pool for atomic allocations
> > [    0.327415] audit: initializing netlink subsys (disabled)
> > [    0.328106] audit: type=2000 audit(0.320:1): state=initialized
> > audit_enabled=0 res=1
> > [    0.330213] cpuidle: using governor menu
> > [    0.331160] hw-breakpoint: found 6 breakpoint and 4 watchpoint registers.
> > [    0.334653] Serial: AMBA PL011 UART driver
> > [    0.384125] HugeTLB registered 1.00 GiB page size, pre-allocated 0 pages
> > [    0.384800] HugeTLB registered 32.0 MiB page size, pre-allocated 0 pages
> > [    0.385483] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages
> > [    0.386146] HugeTLB registered 64.0 KiB page size, pre-allocated 0 pages
> > [    0.390063] cryptd: max_cpu_qlen set to 1000
> > [    0.396205] ACPI: Interpreter disabled.
> > [    0.399113] vcc3v3_pcie: supplied by vcc12v_dcin
> > [    0.400706] vcc5v0_sys: supplied by vcc12v_dcin
> > [    0.401426] vcc5v0_usb: supplied by vcc12v_dcin
> > [    0.402060] vcc3v3_sys: supplied by vcc5v0_sys
> > [    0.403275] iommu: Default domain type: Translated
> > [
> >
> >>
> >>>
> >>>>
> >>>>> With miniloader and both variants of u-boot, if you attempt a reboot
> >>>>> it never fires the "reboot: Restarting system" message.
> >>>>> If you trigger a sysrq reboot at this stage, it will reboot, but fails
> >>>>> to start up the two a72 cores and subsequently hangs a second later
> >>>>> when it loads the first dma driver.
> >>>>>
> >>>>> With TPL/SPL on mainline-u-boot (I can't get rockchip-u-boot to work
> >>>>> with TPL/SPL), it fires the "reboot: Restarting system" message, but
> >>>>> never reboots.
> >>>>> sysrq does not function at this point.
> >>>>>
> >>>>> I believe the pcie controller is not being halted, and gets stuck in a
> >>>>> loop with the two a72 cores.
> >>>>>
> >>>>> _______________________________________________
> >>>>> Linux-rockchip mailing list
> >>>>> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> >>>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >>>>>
