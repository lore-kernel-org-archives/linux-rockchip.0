From: David Summers <beagleboard-8lkWs+DogrrqRUWtDFdff/XRex20P6io@public.gmane.org>
Subject: Re: [PATCH v4 0/2] Reworked rk3288-tinker-s devicetree
Date: Sat, 6 Oct 2018 13:54:37 +0100
Message-ID: <5dc8cdc9-20d5-bafa-3693-67ec09577234@davidjohnsummers.uk>
References: <20180923113807.11558-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20180923113807.11558-1-heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Content-Language: en-GB
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Heiko,

Re: 
http://lists.infradead.org/pipermail/linux-rockchip/2018-September/021762.html

We've just had another use on Arm Arch interested in installing on a 
Tinker Board. So this gives the chance to test the wi-fi patch on a 
Tinker Board as well as Tinker Board S; so give better of where to apply 
the patch.

So half thinking of having another go at the wi-fi patch.

But should first check, what problems did you see with the patch? Let me 
know and I'll see if I can incorporate in patch update. As much as 
anything, I want to minimize the number of tb{s}.dtb that I send out to 
arch arm users, as testing before submission. E.g. the users have 
limited tolerance, may be able to try a few device trees with them - but 
if it takes too many iterations, they will just switch to linarno kernel ...

Ta,

David.

On 23/09/2018 12:38, Heiko Stuebner wrote:
> Hi David,
>
> I've adpated your patches 1+2 like so and would like to add them this way
> later on. Biggest change is of course making patch 1 solely about moving
> the shared parts to the dtsi and adding the tinker-s.dts including the
> emmc in the second patch.
>
> Apart from that you can also see some previously missing style-related
> fixes. For example patch subject lines are somewhat specific, to allow
> people browsing the git history to realize the core patch contents just
> from the "headline" and also use the "correct" prefixes which vary
> depending on the subsystem your changing.
>
> For future patches you can just do a "git log --oneline arch/arm/boot/dts"
> (change directory depending on location of the change of course), to
> see that arm32 dts use "ARM: dts: $soc-vendor: foo".
>
>
> Also providing a commit message describing the individual change
> in a bit more detail is important.
>
> The wifi patch is a different issue, so I'll reply there.
>
>
> Heiko
>
> David Summers (2):
>    ARM: dts: rockchip: move shared tinker-board nodes to a common dtsi
>    ARM: dts: rockchip: add rk3288-based Tinker board S
>
>   .../devicetree/bindings/arm/rockchip.txt      |   4 +
>   arch/arm/boot/dts/Makefile                    |   1 +
>   arch/arm/boot/dts/rk3288-tinker-s.dts         |  26 +
>   arch/arm/boot/dts/rk3288-tinker.dts           | 498 +----------------
>   arch/arm/boot/dts/rk3288-tinker.dtsi          | 504 ++++++++++++++++++
>   5 files changed, 537 insertions(+), 496 deletions(-)
>   create mode 100644 arch/arm/boot/dts/rk3288-tinker-s.dts
>   create mode 100644 arch/arm/boot/dts/rk3288-tinker.dtsi
>
