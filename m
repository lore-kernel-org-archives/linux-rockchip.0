From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v3 0/14] Patches to improve transfer efficiency for Rockchip SoCs.
Date: Sat, 18 Jul 2020 16:40:29 +0200
Message-ID: <1883465.KieDo6KLrp@phil>
References: <1593439555-68130-1-git-send-email-sugar.zhang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1593439555-68130-1-git-send-email-sugar.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: devicetree-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Sugar Zhang <sugar.zhang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: Vinod Koul <vkoul-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Andy Yan <andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Carlos de Paula <me-FwFLQrstKkX3oGB3hsPCZA@public.gmane.org>, dmaengine-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Chen-Yu Tsai <wens-jdAy2FN1RRM@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 29. Juni 2020, 16:05:41 CEST schrieb Sugar Zhang:
> Changes in v3:
> - rephrase commit message
> - fix typos in commit message
> - split the patch for [PATCH V2 1/14]
> - reorder the patch series
> 
> Changes in v2:
> - fix FATAL ERROR: Unable to parse input tree
> 
> Sugar Zhang (14):
>   dmaengine: pl330: Remove the burst limit for quirk 'NO-FLUSHP'
>   dmaengine: pl330: Improve transfer efficiency for the dregs
>   dt-bindings: dma: pl330: Document the quirk 'arm,pl330-periph-burst'
>   dmaengine: pl330: Add quirk 'arm,pl330-periph-burst'
>   ARM: dts: rk3036: Add 'arm,pl330-periph-burst' for dmac
>   ARM: dts: rk322x: Add 'arm,pl330-periph-burst' for dmac
>   ARM: dts: rk3288: Add 'arm,pl330-periph-burst' for dmac
>   ARM: dts: rk3xxx: Add 'arm,pl330-periph-burst' for dmac
>   ARM: dts: rv1108: Add 'arm,pl330-periph-burst' for dmac
>   arm64: dts: px30: Add 'arm,pl330-periph-burst' for dmac
>   arm64: dts: rk3308: Add 'arm,pl330-periph-burst' for dmac
>   arm64: dts: rk3328: Add 'arm,pl330-periph-burst' for dmac
>   arm64: dts: rk3368: Add 'arm,pl330-periph-burst' for dmac
>   arm64: dts: rk3399: Add 'arm,pl330-periph-burst' for dmac

applied the patches 5-14 but merged them into one for arm32
and one for arm64 and did some slight reordering when the new
property was added at the bottom of the node.

Thanks
Heiko
