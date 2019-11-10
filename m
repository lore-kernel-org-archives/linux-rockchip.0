From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [BUG] rk3399-rockpro64 pcie synchronous external abort
Date: Sun, 10 Nov 2019 10:43:48 -0500
Message-ID: <CAMdYzYo6mKSMXoDR7St1ynUJ9f3sh=0rgNAbbVvFAfJn82VvVQ@mail.gmail.com>
References: <CAMdYzYoTwjKz4EN8PtD5pZfu3+SX+68JL+dfvmCrSnLL=K6Few@mail.gmail.com>
 <CAMdYzYqQpVrA9DpN5GRc2RqvsShSamw2EBJDxwng1aE3sfpfdg@mail.gmail.com>
 <CAD=FV=XXrSsnr08bbY_Lv39tdNSUOyDDSVj_3+701eYNpFRhWQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=XXrSsnr08bbY_Lv39tdNSUOyDDSVj_3+701eYNpFRhWQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Sat, Nov 9, 2019 at 11:38 AM Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
>
> Hi,
>
> On Fri, Nov 8, 2019 at 5:09 PM Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> >
> > Good Evening,
> >
> > I'm not sure, but I believe the pcie address space built into the
> > rk3399 is not large enough to accommodate the pcie addresses the card
> > requires.
> > I've been trying to figure out if it's possible to use system ram
> > instead, but so far I haven't been successful.
> > Also, the ram layout for the rk3399 is odd considering the TRM, if
> > anyone has any insights in to that, I'd be grateful.
> >
> > On Mon, Nov 4, 2019 at 1:55 PM Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > >
> > > Good Morning,
> > >
> > > I'm attempting to debug an issue with the rockpro64 pcie port.
> > > It would appear that the port does not like various cards, including
> > > cards of the same make that randomly work or do not work, such as
> > > Intel i340 based NICs.
> > > I'm experiencing it with a GTX645 gpu.
> > >
> > > This seems to be a long running issue, referenced both at [0], and [1].
> > > There was an attempt to rectify it, by adding a delay between training
> > > and probing [2], but that doesn't seem to be the issue here.
> > > It appears that when we probe further into the card, such as devfn >
> > > 1, we trigger the bug.
> > > I've added a print statement that prints the devfn, address, and size
> > > information, which you can see below.
> > >
> > > I've attempted setting the available number of lanes to 1 as well, to
> > > no difference.
> > >
> > > If anyone could point me in the right direction as to where to
> > > continue debugging, I'd greatly appreciate it.
>
> I don't have tons of knowledge here, but your thread happened to fly
> by my Inbox and it reminded me of issues we faced during the bringup
> of rk3399-gru-kevin where our WiFi driver would kill the whole system
> in random / hard to debug ways.
>
> If I remember, the problem was that the rk3399 PCIe behaved very badly
> when you try to access the bus is in certain power save modes.  I
> think that traditional x86-based controllers just return 0xff in the
> same state, but rk3399 gives some sorts of asynchronous bus errors.
>
> IIRC our problem was fixed with:
>
> https://crrev.com/c/402092 - FROMLIST: mwifiex: fix corner case power save issue
>
> ...that's about all the knowledge I have around this area, but
> possibly it could point you in the right direction?
>
> -Doug

Thanks!

Unfortunately this is happening before it even gets done probing the
pcie controller, and has not had a chance to enter a power save state.
I plugged in an i350 two port nic and examined the assigned address spaces.
I've attached it below.
Judging by the usage, I think this controller has enough address space
for another two port NIC, and that's about it.
I'm pretty sure now that the rk3399 controller just doesn't have the
address space to map larger devices.
I'm pretty sure the IOMMU would allow us to address system memory as
pcie address space and overcome this limitation, but I don't know how
to do that.

The address space for the nic is below:
f8000000-f8ffffff : axi-base
fa000000-fbdfffff : MEM
  fa000000-fa4fffff : PCI Bus 0000:01
    fa000000-fa07ffff : 0000:01:00.0
      fa000000-fa07ffff : igb
    fa080000-fa0fffff : 0000:01:00.0
    fa100000-fa17ffff : 0000:01:00.1
      fa100000-fa17ffff : igb
    fa180000-fa1fffff : 0000:01:00.1
    fa200000-fa27ffff : 0000:01:00.0
    fa280000-fa2fffff : 0000:01:00.0
    fa300000-fa37ffff : 0000:01:00.1
    fa380000-fa3fffff : 0000:01:00.1
    fa400000-fa403fff : 0000:01:00.0
      fa400000-fa403fff : igb
    fa404000-fa407fff : 0000:01:00.1
      fa404000-fa407fff : igb
fd000000-fdffffff : f8000000.pcie

$ dmesg | grep pci | grep -v devfn
[   64.408414] pci 0000:01:00.1: reg 0x1c: [mem 0x00000000-0x00003fff]
[   64.408508] pci 0000:01:00.1: reg 0x30: [mem 0x00000000-0x0007ffff pref]
[   64.408546] pci 0000:01:00.1: Max Payload Size set to 256 (was 128, max 512)
[   64.409002] pci 0000:01:00.1: PME# supported from D0 D3hot D3cold
[   64.409016] pci 0000:01:00.1: PME# disabled
[   64.409179] pci 0000:01:00.1: reg 0x184: [mem 0x00000000-0x0000ffff
64bit pref]
[   64.409181] pci 0000:01:00.1: VF(n) BAR0 space: [mem
0x00000000-0x0007ffff 64bit pref] (contains BAR0 for 8 VFs)
[   64.409268] pci 0000:01:00.1: reg 0x190: [mem 0x00000000-0x0000ffff
64bit pref]
[   64.409271] pci 0000:01:00.1: VF(n) BAR3 space: [mem
0x00000000-0x0007ffff 64bit pref] (contains BAR3 for 8 VFs)
