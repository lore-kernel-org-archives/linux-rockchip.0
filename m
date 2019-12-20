From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Describe PX30 caches
Date: Fri, 20 Dec 2019 01:55:58 +0100
Message-ID: <1982322.8UTTk47u2F@diego>
References: <20191204103940.22050-1-miquel.raynal@bootlin.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191204103940.22050-1-miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
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
Cc: Mark Rutland <mark.rutland-5wv7dgnIgG8@public.gmane.org>, devicetree-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Maxime Chevallier <maxime.chevallier-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Rob Herring <robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Thomas Petazzoni <thomas.petazzoni-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 4. Dezember 2019, 11:39:40 CET schrieb Miquel Raynal:
> PX30 SoCs feature 4 Cortex-A35 CPUs with each of them a L1 data and
> instruction cache. Both are 32kiB wide (PX30 TRM) and made of 64-bit
> lines (ARM Cortex-A35 manual). I-cache is 2-way set associative (ARM
> Cortex-A35 manual), D-cache is 4-way set associative (ARM
> Cortex-A35manual).
> 
> An L2 cache is placed after these 4 L1 caches (PX30 TRM), is 256kiB
> wide (PX30 TRM) and made of 64-bit lines (ARM Cortex-A35 manual) and
> is 8-way set associative (ARM Cortex-A35 manual).
> 
> Describe all of them in the PX30 DTSI.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> ---
>  arch/arm64/boot/dts/rockchip/px30.dtsi | 35 ++++++++++++++++++++++++++
>  1 file changed, 35 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> index 1fd12bd09e83..0e10a224a84b 100644
> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> @@ -48,6 +48,13 @@
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  			dynamic-power-coefficient = <90>;
>  			operating-points-v2 = <&cpu0_opp_table>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -60,6 +67,13 @@
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  			dynamic-power-coefficient = <90>;
>  			operating-points-v2 = <&cpu0_opp_table>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2>;
>  		};
>  
>  		cpu2: cpu@2 {
> @@ -72,6 +86,13 @@
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  			dynamic-power-coefficient = <90>;
>  			operating-points-v2 = <&cpu0_opp_table>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2>;
>  		};
>  
>  		cpu3: cpu@3 {
> @@ -84,6 +105,13 @@
>  			cpu-idle-states = <&CPU_SLEEP &CLUSTER_SLEEP>;
>  			dynamic-power-coefficient = <90>;
>  			operating-points-v2 = <&cpu0_opp_table>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2>;
>  		};
>  
>  		idle-states {
> @@ -107,6 +135,13 @@
>  				min-residency-us = <2000>;
>  			};
>  		};
> +
> +		l2: l2-cache {
> +			compatible = "cache";
> +			cache-size = <0x40000>;
> +			cache-line-size = <64>;
> +			cache-sets = <512>;
> +		};
>  	};

Looks like Rob did answer my unspoken question, citing his reply to
	"arm64: dts: amazon: add Amazon's Annapurna Labs Alpine v3 support" [0]

"We only define cache attributes if not discoverable or the cache ID 
registers are wrong and you need to override what's discoverable."

So unless the cache information read during boot is wrong, it looks
like we don't need this.

Heiko


[0] https://patchwork.kernel.org/patch/11279705/
