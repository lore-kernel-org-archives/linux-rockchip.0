From: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 7/9] memory: samsung: exynos5422-dmc: Replace deprecated
 'devfreq-events' property
Date: Thu, 19 Dec 2019 21:19:17 +0100
Message-ID: <20191219201917.GA21576@kozik-lap>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p2c43a45e34983c1b3e60cc6fd842dd33e@epcas1p2.samsung.com>
 <20191217055738.28445-8-cw00.choi@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191217055738.28445-8-cw00.choi@samsung.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chanwoo Choi <cw00.choi@samsung.com>
Cc: robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, leonard.crestez@nxp.com, lukasz.luba@arm.com, a.swigon@samsung.com, m.szyprowski@samsung.com, kgene@kernel.org, myungjoo.ham@samsung.com, kyungmin.park@samsung.com, linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Tue, Dec 17, 2019 at 02:57:36PM +0900, Chanwoo Choi wrote:
> In order to remove the deprecated 'devfreq-events' property, replace with
> new 'exynos,ppmu-device' property in order to get the devfreq-event device
> in devicetree file instead of 'devfreq-events' property. But, to guarantee
> the backward-compatibility, keep the support 'devfreq-events' property.
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>  .../memory-controllers/exynos5422-dmc.txt     |  6 ++--
>  drivers/memory/samsung/exynos5422-dmc.c       | 29 +++++++++++++++----
>  2 files changed, 26 insertions(+), 9 deletions(-)

In general looks good for me but I need an ack from Rob.  Patch should
be also split and sent as one of first in the series (before code).

> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> index 02e4a1f862f1..1e1b3702f045 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> +++ b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> @@ -17,14 +17,14 @@ Required properties for DMC device for Exynos5422:
>  - clock-names : should include "fout_spll", "mout_sclk_spll", "ff_dout_spll2",
>    "fout_bpll", "mout_bpll", "sclk_bpll", "mout_mx_mspll_ccore",
>    "mout_mclk_cdrex"  entries
> -- devfreq-events : phandles for PPMU devices connected to this DMC.
> +- exynos,ppmu-device : phandles for PPMU devices connected to this DMC.
>  - vdd-supply : phandle for voltage regulator which is connected.
>  - reg : registers of two CDREX controllers.
>  - operating-points-v2 : phandle for OPPs described in v2 definition.
>  - device-handle : phandle of the connected DRAM memory device. For more
>  	information please refer to documentation file:
>  	Documentation/devicetree/bindings/ddr/lpddr3.txt
> -- devfreq-events : phandles of the PPMU events used by the controller.
> +- exynos,ppmu-device : phandles of the PPMU events used by the controller.
>  - samsung,syscon-clk : phandle of the clock register set used by the controller,
>  	these registers are used for enabling a 'pause' feature and are not
>  	exposed by clock framework but they must be used in a safe way.
> @@ -73,7 +73,7 @@ Example:
>  			      "mout_mx_mspll_ccore",
>  			      "mout_mclk_cdrex";
>  		operating-points-v2 = <&dmc_opp_table>;
> -		devfreq-events = <&ppmu_event3_dmc0_0>,	<&ppmu_event3_dmc0_1>,
> +		exynos,ppmu-device = <&ppmu_event3_dmc0_0>, <&ppmu_event3_dmc0_1>,
>  				 <&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;

Indentation is broken here.

Best regards,
Krzysztof
