From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 4/9] PM / devfreq: exynos-bus: Replace deprecated
 'devfreq' property
Date: Thu, 26 Dec 2019 14:01:19 -0700
Message-ID: <20191226210119.GA8706@bogus>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p11f2bc81d6bb2db3fc4bc257d78c337b9@epcas1p1.samsung.com>
 <20191217055738.28445-5-cw00.choi@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191217055738.28445-5-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chanwoo Choi <cw00.choi@samsung.com>
Cc: krzk@kernel.org, mark.rutland@arm.com, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com, a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Dec 17, 2019 at 02:57:33PM +0900, Chanwoo Choi wrote:
> In order to remove the deprecated 'devfreq' property, replace with
> new 'exynos,parent-bus' property in order to get the parent devfreq device
> in devicetree file instead of 'devfreq' property. But, to guarantee the
> backward-compatibility, keep the support 'devfreq' property.
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  .../bindings/devfreq/exynos-bus.txt           | 16 +++++++--------
>  drivers/devfreq/exynos-bus.c                  | 20 ++++++++++++-------
>  2 files changed, 21 insertions(+), 15 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> index e71f752cc18f..c948cee01124 100644
> --- a/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> +++ b/Documentation/devicetree/bindings/devfreq/exynos-bus.txt
> @@ -45,7 +45,7 @@ Required properties only for parent bus device:
>    of buses.
>  
>  Required properties only for passive bus device:
> -- devfreq: the parent bus device.
> +- exynos,parent-bus: the parent bus device.

If you are going to do something new, why not use the interconnect 
binding here?

Rob
