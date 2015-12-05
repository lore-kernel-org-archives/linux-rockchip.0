From: Michael Turquette <mturquette@baylibre.com>
Subject: RE: [PATCH 6/8] ARM: dts: rockchip: add clock-cells for usb phy nodes
Date: Fri, 04 Dec 2015 16:07:57 -0800
Message-ID: <56622add5458d_650d3fc0582a72d87e@quark.notmuch>
References: <1446673454-9529-1-git-send-email-heiko@sntech.de>
 <1446673454-9529-7-git-send-email-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1446673454-9529-7-git-send-email-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com, mturquette@baylibre.com, sboyd@codeaurora.org
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, dianders@chromium.org, romain.perier@gmail.com, arnd@arndb.de, Heiko Stuebner <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

Heiko Stuebner wrote:
> Add the #clock-cells properties for the usbphy nodes as they
> provide the pll-clocks now.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Reviewed-by: Michael Turquette <mturquette@baylibre.com>

> ---
>  arch/arm/boot/dts/rk3066a.dtsi | 2 ++
>  arch/arm/boot/dts/rk3188.dtsi  | 2 ++
>  arch/arm/boot/dts/rk3288.dtsi  | 3 +++
>  3 files changed, 7 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
> index 946f187..3e4b41b 100644
> --- a/arch/arm/boot/dts/rk3066a.dtsi
> +++ b/arch/arm/boot/dts/rk3066a.dtsi
> @@ -181,6 +181,7 @@
>  			reg = <0x17c>;
>  			clocks = <&cru SCLK_OTGPHY0>;
>  			clock-names = "phyclk";
> +			#clock-cells = <0>;
>  		};
>  
>  		usbphy1: usb-phy1 {
> @@ -188,6 +189,7 @@
>  			reg = <0x188>;
>  			clocks = <&cru SCLK_OTGPHY1>;
>  			clock-names = "phyclk";
> +			#clock-cells = <0>;
>  		};
>  	};
>  
> diff --git a/arch/arm/boot/dts/rk3188.dtsi b/arch/arm/boot/dts/rk3188.dtsi
> index 6399942..48a287e 100644
> --- a/arch/arm/boot/dts/rk3188.dtsi
> +++ b/arch/arm/boot/dts/rk3188.dtsi
> @@ -156,6 +156,7 @@
>  			reg = <0x10c>;
>  			clocks = <&cru SCLK_OTGPHY0>;
>  			clock-names = "phyclk";
> +			#clock-cells = <0>;
>  		};
>  
>  		usbphy1: usb-phy1 {
> @@ -163,6 +164,7 @@
>  			reg = <0x11c>;
>  			clocks = <&cru SCLK_OTGPHY1>;
>  			clock-names = "phyclk";
> +			#clock-cells = <0>;
>  		};
>  	};
>  
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index c64a116..51a5d29 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -943,6 +943,7 @@
>  			reg = <0x320>;
>  			clocks = <&cru SCLK_OTGPHY0>;
>  			clock-names = "phyclk";
> +			#clock-cells = <0>;
>  		};
>  
>  		usbphy1: usb-phy1 {
> @@ -950,6 +951,7 @@
>  			reg = <0x334>;
>  			clocks = <&cru SCLK_OTGPHY1>;
>  			clock-names = "phyclk";
> +			#clock-cells = <0>;
>  		};
>  
>  		usbphy2: usb-phy2 {
> @@ -957,6 +959,7 @@
>  			reg = <0x348>;
>  			clocks = <&cru SCLK_OTGPHY2>;
>  			clock-names = "phyclk";
> +			#clock-cells = <0>;
>  		};
>  	};
>  
> -- 
> 2.6.2
> 
