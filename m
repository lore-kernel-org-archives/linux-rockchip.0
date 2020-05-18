From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: rk3399: fix pd_tcpc0 and pd_tcpc1 node position
Date: Tue, 19 May 2020 00:29:08 +0200
Message-ID: <2978296.PvbIKR7951@diego>
References: <20200428203003.3318-1-jbx6244@gmail.com> <20200428203003.3318-2-jbx6244@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200428203003.3318-2-jbx6244@gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Johan Jonker <jbx6244@gmail.com>, kever.yang@rock-chips.com, Caesar Wang <wxt@rock-chips.com>
Cc: robh+dt@kernel.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Kever, Caesar,

could you double check where the type-c power-domains are located
in the power-tree, as Caesar did add them under pd_vio back in 2016.

Thanks
Heiko

Am Dienstag, 28. April 2020, 22:30:03 CEST schrieb Johan Jonker:
> The pd_tcpc0 and pd_tcpc1 nodes are currently a sub node of pd_vio.
> In the rk3399 TRM figure of the 'Power Domain Partition' and in the
> table of 'Power Domain and Voltage Domain Summary' these power domains
> are positioned directly under VD_LOGIC, so fix that in 'rk3399.dtsi'.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 37279db53..a4dc1bf2e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1056,6 +1056,16 @@
>  				clocks = <&cru HCLK_SDIO>;
>  				pm_qos = <&qos_sdioaudio>;
>  			};
> +			pd_tcpc0@RK3399_PD_TCPD0 {
> +				reg = <RK3399_PD_TCPD0>;
> +				clocks = <&cru SCLK_UPHY0_TCPDCORE>,
> +					 <&cru SCLK_UPHY0_TCPDPHY_REF>;
> +			};
> +			pd_tcpc1@RK3399_PD_TCPD1 {
> +				reg = <RK3399_PD_TCPD1>;
> +				clocks = <&cru SCLK_UPHY1_TCPDCORE>,
> +					 <&cru SCLK_UPHY1_TCPDPHY_REF>;
> +			};
>  			pd_usb3@RK3399_PD_USB3 {
>  				reg = <RK3399_PD_USB3>;
>  				clocks = <&cru ACLK_USB3>;
> @@ -1088,16 +1098,6 @@
>  					pm_qos = <&qos_isp1_m0>,
>  						 <&qos_isp1_m1>;
>  				};
> -				pd_tcpc0@RK3399_PD_TCPD0 {
> -					reg = <RK3399_PD_TCPD0>;
> -					clocks = <&cru SCLK_UPHY0_TCPDCORE>,
> -						 <&cru SCLK_UPHY0_TCPDPHY_REF>;
> -				};
> -				pd_tcpc1@RK3399_PD_TCPD1 {
> -					reg = <RK3399_PD_TCPD1>;
> -					clocks = <&cru SCLK_UPHY1_TCPDCORE>,
> -						 <&cru SCLK_UPHY1_TCPDPHY_REF>;
> -				};
>  				pd_vo@RK3399_PD_VO {
>  					reg = <RK3399_PD_VO>;
>  					#address-cells = <1>;
> 
