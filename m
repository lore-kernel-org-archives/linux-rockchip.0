From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk3399 pcie speed
Date: Thu, 23 Apr 2020 12:13:25 -0400
Message-ID: <CAMdYzYq5iQJJ-7qgTvo8j=kEA-rSMCafP2ctsAgmeob7m_oDSw@mail.gmail.com>
References: <20200423150510.6216-1-pgwipeout@gmail.com>
 <CAMdYzYoFvaVXoYo0-vZnEmXK4GKsO_i8Cdggr7AJ8U6uS_ZW8Q@mail.gmail.com>
 <84c67c59-49ec-e33f-250e-875151968ed2@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <84c67c59-49ec-e33f-250e-875151968ed2-5wv7dgnIgG8@public.gmane.org>
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

On Thu, Apr 23, 2020 at 11:49 AM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
>
> On 2020-04-23 4:09 pm, Peter Geis wrote:
> > On Thu, Apr 23, 2020 at 11:05 AM Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> >>
> >> The rk3399 is capable of operating at PCIe gen 2 as per the TRM.
> >> The device-tree incorrectly limits us to gen 1.
> >>
> >> Correctly set the maximum link speed to <2>.
> >>
> >> Tested on the rockpro64.
> >
> > Note, this was tested on the rockpro64 after I performed the hardware
> > fixes as delineated at
> > https://forum.pine64.org/showthread.php?tid=8374
> >
> > We probably will have to drop this back to <1> on board specific dts
> > files if issues are discovered.
>
> I'd say commit 712fa1777207 and the fact that the current rev 1.8
> datasheet only mentions 2.5GT/s rather weaken that argument. It would
> seem safer to leave the default as-is, and only override it for boards
> where Gen2 really is proven to work reliably. Which, er, is already the
> case ;)

Do we have a copy of this errata?
I can't seem to find it.
The write up in that commit is extremely vague.

As the tegra mailing list often points out, the device-tree describes
the hardware as it is.
As:
The rk3399 itself supports PCIe gen 2.
The board specific implementations determine if we need to limit that to gen 1.
The rk3399 should be set to 2, and any board that requires that to be
redefined should do that via an override in their device-tree.
This is similar to the gmac overrides for timing.

Do we have a list of the boards that require pulling back down to gen 1?

>
> That said, "proven to work reliably" is itself a bit doubtful - my
> NanoPC-T4 has always been rock-solid at Gen2 with a Samsung Evo 960
> NVMe, yet I've seen plenty of reports of other NVMe models being
> unusable with mainline due to failing link training ~90% of the time.
> It's a grey area for sure.
>
> Robin.
>
> >>
> >> Signed-off-by: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> ---
> >>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
> >>   1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> index 74f2c3d49095..e9efd330810b 100644
> >> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >> @@ -248,7 +248,7 @@
> >>                                  <0 0 0 3 &pcie0_intc 2>,
> >>                                  <0 0 0 4 &pcie0_intc 3>;
> >>                  linux,pci-domain = <0>;
> >> -               max-link-speed = <1>;
> >> +               max-link-speed = <2>;
> >>                  msi-map = <0x0 &its 0x0 0x1000>;
> >>                  phys = <&pcie_phy 0>, <&pcie_phy 1>,
> >>                         <&pcie_phy 2>, <&pcie_phy 3>;
> >> --
> >> 2.20.1
> >>
