From: Chunfeng Yun <chunfeng.yun-NuS5LvNUpcJWk0Htik3J/w@public.gmane.org>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: add usb3 to rk3328 devicetree
Date: Tue, 29 Oct 2019 09:58:52 +0800
Message-ID: <1572314332.18464.9.camel@mhfsdcap03>
References: <20191028182254.30739-1-pgwipeout@gmail.com>
 <20191028182254.30739-5-pgwipeout@gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191028182254.30739-5-pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, robin.murphy-5wv7dgnIgG8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2019-10-28 at 18:22 +0000, Peter Geis wrote:
> Now that we have a proper phy driver, we can add the requisite bits to the
> rk3328 device tree.
> Added the u3drd and u3phy nodes.
> 
> Signed-off-by: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 72 ++++++++++++++++++++++++
>  1 file changed, 72 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index 31cc1541f1f5..072e988ad655 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -805,6 +805,47 @@
>  		};
>  	};
>  
> +	usb3phy_grf: syscon@ff460000 {
> +		compatible = "rockchip,usb3phy-grf", "syscon";
> +		reg = <0x0 0xff460000 0x0 0x1000>;
> +	};
> +
> +	u3phy: usb3-phy@ff470000 {
usb-phy?
> +		compatible = "rockchip,rk3328-u3phy";
> +		reg = <0x0 0xff470000 0x0 0x0>;
It's zero length, may be not necessary, how about use ranges with
parameter ?

> +		rockchip,u3phygrf = <&usb3phy_grf>;
> +		rockchip,grf = <&grf>;
> +		interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "linestate";
> +		clocks = <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
> +		clock-names = "u3phy-otg", "u3phy-pipe";
To me, no need u3phy prefix
> +		resets = <&cru SRST_USB3PHY_U2>,
> +			 <&cru SRST_USB3PHY_U3>,
> +			 <&cru SRST_USB3PHY_PIPE>,
> +			 <&cru SRST_USB3OTG_UTMI>,
> +			 <&cru SRST_USB3PHY_OTG_P>,
> +			 <&cru SRST_USB3PHY_PIPE_P>;
> +		reset-names = "u3phy-u2-por", "u3phy-u3-por",
> +			      "u3phy-pipe-mac", "u3phy-utmi-mac",
> +			      "u3phy-utmi-apb", "u3phy-pipe-apb";
ditto

> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		status = "disabled";
> +
> +		u3phy_utmi: utmi@ff470000 {
usb-phy instead of utmi?

> +			reg = <0x0 0xff470000 0x0 0x8000>;
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		u3phy_pipe: pipe@ff478000 {
usb-phy
> +			reg = <0x0 0xff478000 0x0 0x8000>;
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +	};
> +
>  	sdmmc: dwmmc@ff500000 {
>  		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xff500000 0x0 0x4000>;
> @@ -936,6 +977,37 @@
>  		status = "disabled";
>  	};
>  
> +	usbdrd3: usb@ff600000 {
> +		compatible = "rockchip,rk3328-dwc3", "rockchip,rk3399-dwc3";
> +		clocks = <&cru SCLK_USB3OTG_REF>, <&cru ACLK_USB3OTG>,
> +			 <&cru SCLK_USB3OTG_SUSPEND>;
> +		clock-names = "ref", "bus_early",
> +			      "suspend";
> +		#address-cells = <2>;
> +		#size-cells = <2>;
> +		ranges;
> +		clock-ranges;
> +		status = "disabled";
> +
> +		usbdrd_dwc3: dwc3@ff600000 {
> +			compatible = "snps,dwc3";
> +			reg = <0x0 0xff600000 0x0 0x100000>;
> +			interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
> +			dr_mode = "otg";
> +			phys = <&u3phy_utmi>, <&u3phy_pipe>;
> +			phy-names = "usb2-phy", "usb3-phy";
> +			phy_type = "utmi_wide";
> +			snps,dis_enblslpm_quirk;
> +			snps,dis-u2-freeclk-exists-quirk;
> +			snps,dis_u2_susphy_quirk;
> +			snps,dis_u3_susphy_quirk;
> +			snps,dis-del-phy-power-chg-quirk;
> +			snps,dis-tx-ipgap-linecheck-quirk;
> +			snps,xhci-trb-ent-quirk;
> +			status = "disabled";
> +		};
> +	};
> +
>  	gic: interrupt-controller@ff811000 {
>  		compatible = "arm,gic-400";
>  		#interrupt-cells = <3>;
