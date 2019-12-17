From: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH 7/9] memory: samsung: exynos5422-dmc: Replace deprecated
 'devfreq-events' property
Date: Tue, 17 Dec 2019 11:03:58 +0000
Message-ID: <500aaeb0-85ca-c1f5-2f30-a7b1e95810b6@arm.com>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055106epcas1p2c43a45e34983c1b3e60cc6fd842dd33e@epcas1p2.samsung.com>
 <20191217055738.28445-8-cw00.choi@samsung.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191217055738.28445-8-cw00.choi@samsung.com>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Chanwoo Choi <cw00.choi@samsung.com>, krzk@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com, heiko@sntech.de, leonard.crestez@nxp.com
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org, a.swigon@samsung.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kyungmin.park@samsung.com, myungjoo.ham@samsung.com, kgene@kernel.org, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
List-Id: linux-rockchip.vger.kernel.org

Hi Chanwoo,

On 12/17/19 5:57 AM, Chanwoo Choi wrote:
> In order to remove the deprecated 'devfreq-events' property, replace with
> new 'exynos,ppmu-device' property in order to get the devfreq-event device
> in devicetree file instead of 'devfreq-events' property. But, to guarantee
> the backward-compatibility, keep the support 'devfreq-events' property.
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>   .../memory-controllers/exynos5422-dmc.txt     |  6 ++--
>   drivers/memory/samsung/exynos5422-dmc.c       | 29 +++++++++++++++----
>   2 files changed, 26 insertions(+), 9 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> index 02e4a1f862f1..1e1b3702f045 100644
> --- a/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> +++ b/Documentation/devicetree/bindings/memory-controllers/exynos5422-dmc.txt
> @@ -17,14 +17,14 @@ Required properties for DMC device for Exynos5422:
>   - clock-names : should include "fout_spll", "mout_sclk_spll", "ff_dout_spll2",
>     "fout_bpll", "mout_bpll", "sclk_bpll", "mout_mx_mspll_ccore",
>     "mout_mclk_cdrex"  entries
> -- devfreq-events : phandles for PPMU devices connected to this DMC.
> +- exynos,ppmu-device : phandles for PPMU devices connected to this DMC.
>   - vdd-supply : phandle for voltage regulator which is connected.
>   - reg : registers of two CDREX controllers.
>   - operating-points-v2 : phandle for OPPs described in v2 definition.
>   - device-handle : phandle of the connected DRAM memory device. For more
>   	information please refer to documentation file:
>   	Documentation/devicetree/bindings/ddr/lpddr3.txt
> -- devfreq-events : phandles of the PPMU events used by the controller.
> +- exynos,ppmu-device : phandles of the PPMU events used by the controller.
>   - samsung,syscon-clk : phandle of the clock register set used by the controller,
>   	these registers are used for enabling a 'pause' feature and are not
>   	exposed by clock framework but they must be used in a safe way.
> @@ -73,7 +73,7 @@ Example:
>   			      "mout_mx_mspll_ccore",
>   			      "mout_mclk_cdrex";
>   		operating-points-v2 = <&dmc_opp_table>;
> -		devfreq-events = <&ppmu_event3_dmc0_0>,	<&ppmu_event3_dmc0_1>,
> +		exynos,ppmu-device = <&ppmu_event3_dmc0_0>, <&ppmu_event3_dmc0_1>,
>   				 <&ppmu_event3_dmc1_0>, <&ppmu_event3_dmc1_1>;
>   		device-handle = <&samsung_K3QF2F20DB>;
>   		vdd-supply = <&buck1_reg>;
> diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
> index c3195111d646..96593f37a478 100644
> --- a/drivers/memory/samsung/exynos5422-dmc.c
> +++ b/drivers/memory/samsung/exynos5422-dmc.c
> @@ -1270,10 +1270,17 @@ static int exynos5_dmc_init_clks(struct exynos5_dmc *dmc)
>   static struct devfreq_event_dev *get_edev_by_node(struct device_node *np,
>   							int index)
>   {
> -	struct device_node *node = of_parse_phandle(np, "devfreq-events",
> +	struct device_node *node = of_parse_phandle(np, "exynos,ppmu-device",
>   							index);
> -	if (!node)
> -		return ERR_PTR(-ENODEV);
> +	if (!node) {
> +		 /*
> +		  * Check the deprecated 'devfreq-events' property
> +		  * to support backward-compatibility.
> +		 */
> +		node = of_parse_phandle(np, "devfreq-events", index);
> +		if (!node)
> +			return ERR_PTR(-ENODEV);
> +	}
>   	return devfreq_event_get_edev_by_node(node);
>   }
>   
> @@ -1292,10 +1299,20 @@ static int exynos5_performance_counters_init(struct exynos5_dmc *dmc)
>   	int ret, i;
>   
>   	dmc->num_counters = of_property_count_elems_of_size(dmc->dev->of_node,
> -					"devfreq-events", sizeof(u32));
> +					"exynos,ppmu-device", sizeof(u32));
>   	if (dmc->num_counters < 0) {
> -		dev_err(dmc->dev, "could not get devfreq-event counters\n");
> -		return dmc->num_counters;
> +		 /*
> +		  * Check the deprecated 'devfreq-events' property
> +		  * to support backward-compatibility.
> +		 */
> +		dmc->num_counters = of_property_count_elems_of_size(
> +					dmc->dev->of_node,
> +					"devfreq-events", sizeof(u32));
> +		if (dmc->num_counters < 0) {
> +			dev_err(dmc->dev,
> +				"could not get devfreq-event counters\n");
> +			return dmc->num_counters;
> +		}
>   	}
>   
>   	counters_size = sizeof(struct devfreq_event_dev) * dmc->num_counters;
> 

Looks good to me. The fallback with backward-compatibility is a good
idea in my opinion. Thank you for the change and feel free to and my:

Reviewed-by: Lukasz Luba <lukasz.luba@arm.com>


Regarding the whole patch set, for the first glance it looks reasonable
and good. AIRC some developers were arguing for the "devfreq-events"
entry in DT. Now it should be fine. I will spend more time today for
reviewing the whole patch set.

Regards,
Lukasz
