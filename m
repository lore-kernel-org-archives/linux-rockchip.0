From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix IOMMU second clock name
Date: Mon, 02 Dec 2019 18:36:13 +0100
Message-ID: <2612427.5nXUCueWBK@diego>
References: <20191202170028.26169-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191202170028.26169-1-miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Miquel,

Am Montag, 2. Dezember 2019, 18:00:28 CET schrieb Miquel Raynal:
> By precedence, both the IOMMU driver and the bindings in the doc
> impose two clocks to be filled in Rockchip device trees featuring an
> IOMMU:
> * The AXI clock called 'aclk'.
> * The main peripheral bus clock (PCLK/HCL) called 'iface'.
> 
> Currently, the second clock in px30.dtsi is called 'hclk' and this
> produces the following errors at boot:
> 
>         rk_iommu ff460f00.iommu: Failed to get clk 'iface': -2
>         rk_iommu ff470f00.iommu: Failed to get clk 'iface': -2
> 
> Fix the PX30 device tree by renaming the second misnamed clock. The
> issue has not been reported before probably because the clk_get() call
> is optional for backward DT compatibility reasons.
> 
> Fixes: 7053e06b1422 ("arm64: dts: rockchip: add core dtsi file for PX30 SoCs")
> Signed-off-by: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>

A similar for that issue is already on its way into mainline for 5.5:
https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git/commit/?h=for-next&id=8e57eed2047b9361deb8c5dc4cc3d4e679c5ce50

Heiko


> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index eb992d60e6ba..1fd12bd09e83 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -831,7 +831,7 @@
>  		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
>  		interrupt-names = "vopb_mmu";
>  		clocks = <&cru ACLK_VOPB>, <&cru HCLK_VOPB>;
> -		clock-names = "aclk", "hclk";
> +		clock-names = "aclk", "iface";
>  		power-domains = <&power PX30_PD_VO>;
>  		#iommu-cells = <0>;
>  		status = "disabled";
> @@ -863,7 +863,7 @@
>  		interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
>  		interrupt-names = "vopl_mmu";
>  		clocks = <&cru ACLK_VOPL>, <&cru HCLK_VOPL>;
> -		clock-names = "aclk", "hclk";
> +		clock-names = "aclk", "iface";
>  		power-domains = <&power PX30_PD_VO>;
>  		#iommu-cells = <0>;
>  		status = "disabled";
> 
