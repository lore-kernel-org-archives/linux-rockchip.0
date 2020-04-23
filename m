From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399 pcie speed
Date: Thu, 23 Apr 2020 14:16:49 -0400
Message-ID: <CAMdYzYq4GsJMC=KV748jy-v6aTFJ-O9B1S5kEdkFVPs1Rg1_Fg@mail.gmail.com>
References: <20200423150510.6216-1-pgwipeout@gmail.com>
 <CAMdYzYoFvaVXoYo0-vZnEmXK4GKsO_i8Cdggr7AJ8U6uS_ZW8Q@mail.gmail.com>
 <84c67c59-49ec-e33f-250e-875151968ed2@arm.com>
 <CAMdYzYq5iQJJ-7qgTvo8j=kEA-rSMCafP2ctsAgmeob7m_oDSw@mail.gmail.com>
 <CAL_Jsq+Wg=q2YcWPUAYoZO8YE9s56KvEC_YUyMB2TmyRqsjFTQ@mail.gmail.com>
 <d463ef54-2363-ea1c-e07d-e9a6de87c73e@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <d463ef54-2363-ea1c-e07d-e9a6de87c73e-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Thu, Apr 23, 2020 at 1:40 PM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
>
> On 2020-04-23 5:26 pm, Rob Herring wrote:
> > On Thu, Apr 23, 2020 at 11:13 AM Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> >>
> >> On Thu, Apr 23, 2020 at 11:49 AM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
> >>>
> >>> On 2020-04-23 4:09 pm, Peter Geis wrote:
> >>>> On Thu, Apr 23, 2020 at 11:05 AM Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> >>>>>
> >>>>> The rk3399 is capable of operating at PCIe gen 2 as per the TRM.
> >>>>> The device-tree incorrectly limits us to gen 1.
> >>>>>
> >>>>> Correctly set the maximum link speed to <2>.
> >>>>>
> >>>>> Tested on the rockpro64.
> >>>>
> >>>> Note, this was tested on the rockpro64 after I performed the hardware
> >>>> fixes as delineated at
> >>>> https://forum.pine64.org/showthread.php?tid=8374
> >
> > Are you going to fix everyone's board?
> >
> >>>>
> >>>> We probably will have to drop this back to <1> on board specific dts
> >>>> files if issues are discovered.
> >>>
> >>> I'd say commit 712fa1777207 and the fact that the current rev 1.8
> >>> datasheet only mentions 2.5GT/s rather weaken that argument. It would
> >>> seem safer to leave the default as-is, and only override it for boards
> >>> where Gen2 really is proven to work reliably. Which, er, is already the
> >>> case ;)
> >>
> >> Do we have a copy of this errata?
> >> I can't seem to find it.
> >> The write up in that commit is extremely vague.
>
> I'm not a Rockchip customer, so I don't have access to any more RK3399
> documentation than you do. However, I have been involved in plenty of
> errata discussions, writeups, and workarounds for Arm Ltd. IP, so based
> on general experience if I see a patch like that coming directly from
> the silicon vendor, I'm inclined to trust it at face value.
>
> >> As the tegra mailing list often points out, the device-tree describes
> >> the hardware as it is.
> >
> > I think that's DT describes the h/w not settings for the Linux kernel
> > which is different from what's discussed here.
>
> Seconded - this is not a matter of software policy, it's still a
> property of the hardware regardless of what exact route it takes into
> the final DTB. If anyone wants to get into the philosophical argument of
> how accurately a SoC dtsi should describe the SoC in isolation, then I'd
> push for the correct default speed actually being 0GT/s, since if you
> don't consider the board then the link layer isn't even powered ;)
>
> >> As:
> >> The rk3399 itself supports PCIe gen 2.
>
> That's what's in question here - clearly RK3399 *was designed* to
> support Gen2, but Rockchip have since decided that they will only
> officially support using it at Gen1 speeds.
>
> >> The board specific implementations determine if we need to limit that to gen 1.
> >> The rk3399 should be set to 2, and any board that requires that to be
> >> redefined should do that via an override in their device-tree.
> >> This is similar to the gmac overrides for timing.
>
> Note that the GMAC delay settings are not "overrides", they are
> board-specific parameters based the physical trace lengths between the
> SoC and the external phy.
>
> AFAICS this would be far more like putting the 2GHz/1.5GHz OPPs into the
> base dtsi - on the basis that that was also an original design target[1]
> and does work on some RK3399s - then expecting board authors to remember
> to downgrade them to the 1.8GHz/1.4GHz that ended up being the
> officially-supported maximum for all the chips that weren't lucky enough
> to be special "OP1"s.
>
> >> Do we have a list of the boards that require pulling back down to gen 1?
>
> Any that are likely to suffer wobbly signal integrity by exporting the
> PCIe signals on random pin headers instead of proper connectors would
> probably be a fair starting point, but most of that list would consist
> of any number of current and future boards that are not yet supported
> upstream, and would potentially not be supported upstream for even
> longer if some poor engineer wastes time chasing random PCI errors
> because someone set the default to an unsupported value.
>
> Robin.
>
> [1]
> https://www.cnx-software.com/2016/02/22/more-details-about-rockchip-rk3399-cortex-a72-soc-4k-h-264h-265vp9-usb-3-0-pcie-and-displayport/
>
> >>> That said, "proven to work reliably" is itself a bit doubtful - my
> >>> NanoPC-T4 has always been rock-solid at Gen2 with a Samsung Evo 960
> >>> NVMe, yet I've seen plenty of reports of other NVMe models being
> >>> unusable with mainline due to failing link training ~90% of the time.
> >>> It's a grey area for sure.
> >
> > That seems pretty clear to me as to what the default should be. What's
> > most likely to work OOTB for users.
> >
> > Rob
> >

Very well, I am properly chastised.
This will have to remain something an individual user will do, until
someone comes up with something better.
