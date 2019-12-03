From: Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Add missing cpu operating points for
 rk3288-tinker
Date: Tue, 3 Dec 2019 11:56:43 +0800
Message-ID: <e94676c8-b759-6a30-8ef3-285fc0ba10a4@rock-chips.com>
References: <20191202153540.26143-1-redchenjs@foxmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191202153540.26143-1-redchenjs@foxmail.com>
Content-Language: en-US
Sender: linux-kernel-owner@vger.kernel.org
To: Jack Chen <redchenjs@foxmail.com>, heiko@sntech.de
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, robh+dt@kernel.org, Jack Chen <redchenjs@live.com>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Jack,

On 2019/12/2 下午11:35, Jack Chen wrote:
> From: Jack Chen <redchenjs@live.com>
>
> The Tinker Board / S devices use a special chip variant called rk3288-c
> and use different operating points with a higher max frequency.
>
> So add the missing operating points for Tinker Board / S devices, also
> increase the vdd_cpu regulator-max-microvolt to 1400000 uV so that the
> cpu can operate at 1.8 GHz.
>
> Signed-off-by: Jack Chen <redchenjs@live.com>

This patch looks good to me,


Reviewed-by: Kever Yang <kever.yang@rock-chips.com>

Thanks,
- Kever
> ---
>   arch/arm/boot/dts/rk3288-tinker.dtsi | 13 ++++++++++++-
>   1 file changed, 12 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/rk3288-tinker.dtsi b/arch/arm/boot/dts/rk3288-tinker.dtsi
> index 81e4e953d4a4..09e83b3d5e7d 100644
> --- a/arch/arm/boot/dts/rk3288-tinker.dtsi
> +++ b/arch/arm/boot/dts/rk3288-tinker.dtsi
> @@ -113,6 +113,17 @@
>   	cpu0-supply = <&vdd_cpu>;
>   };
>   
> +&cpu_opp_table {
> +	opp-1704000000 {
> +		opp-hz = /bits/ 64 <1704000000>;
> +		opp-microvolt = <1350000>;
> +	};
> +	opp-1800000000 {
> +		opp-hz = /bits/ 64 <1800000000>;
> +		opp-microvolt = <1400000>;
> +	};
> +};
> +
>   &gmac {
>   	assigned-clocks = <&cru SCLK_MAC>;
>   	assigned-clock-parents = <&ext_gmac>;
> @@ -175,7 +186,7 @@
>   				regulator-always-on;
>   				regulator-boot-on;
>   				regulator-min-microvolt = <750000>;
> -				regulator-max-microvolt = <1350000>;
> +				regulator-max-microvolt = <1400000>;
>   				regulator-name = "vdd_arm";
>   				regulator-ramp-delay = <6000>;
>   				regulator-state-mem {
