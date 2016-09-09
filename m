From: Ziyuan Xu <xzy.xu@rock-chips.com>
Subject: Re: [PATCH 2/6] arm64: dts: rockchip: add pd_emmc power node for
 rk3399
Date: Fri, 9 Sep 2016 15:50:23 +0800
Message-ID: <b65ff08f-e444-5642-81db-6a7000ef41d0@rock-chips.com>
References: <1473406836-6720-1-git-send-email-zhangqing@rock-chips.com>
 <1473406836-6720-3-git-send-email-zhangqing@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1473406836-6720-3-git-send-email-zhangqing@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de, wxt@rock-chips.com
Cc: huangtao@rock-chips.com, linux-rockchip@lists.infradead.org, shawn.lin@rock-chips.com, linux-kernel@vger.kernel.org, zyw@rock-chips.com, william.wu@rock-chips.com, jay.xu@rock-chips.com, xxx@rock-chips.com, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

hi Elaine,


On 2016年09月09日 15:40, Elaine Zhang wrote:
> 1.add pd node for RK3399 Soc
> 2.create power domain tree
> 3.add qos node for domain
> 4.add the pd_emmc consumers node
>
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>

I had push this patch, see [0]

[0] https://patchwork.kernel.org/patch/9320423/

> ---
>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 10 ++++++++++
>   1 file changed, 10 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 52b4bfb52288..869b52d60b73 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -269,6 +269,7 @@
>   		#clock-cells = <0>;
>   		phys = <&emmc_phy>;
>   		phy-names = "phy_arasan";
> +		power-domains = <&power RK3399_PD_EMMC>;
>   		status = "disabled";
>   	};
>   
> @@ -690,6 +691,10 @@
>   		status = "disabled";
>   	};
>   
> +	qos_emmc: qos@ffa58000 {
> +		compatible = "syscon";
> +		reg = <0x0 0xffa58000 0x0 0x20>;
> +	};
>   	qos_gmac: qos@ffa5c000 {
>   		compatible = "syscon";
>   		reg = <0x0 0xffa5c000 0x0 0x20>;
> @@ -827,6 +832,11 @@
>   				reg = <RK3399_PD_EDP>;
>   				clocks = <&cru PCLK_EDP_CTRL>;
>   			};
> +			pd_emmc@RK3399_PD_EMMC {
> +				reg = <RK3399_PD_EMMC>;
> +				clocks = <&cru ACLK_EMMC>;
> +				pm_qos = <&qos_emmc>;
> +			};
>   			pd_gmac@RK3399_PD_GMAC {
>   				reg = <RK3399_PD_GMAC>;
>   				clocks = <&cru ACLK_GMAC>;
