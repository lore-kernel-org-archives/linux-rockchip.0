From: Johan Jonker <jbx6244-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Re: [PATCH] ARM: dts: rockchip: add display nodes for rk322x
Date: Fri, 21 Jun 2019 17:51:08 +0200
Message-ID: <1066dc84-f438-78a7-59fb-1ff0c44e3432@gmail.com>
References: <1854794.0zkvb3x0FP@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1854794.0zkvb3x0FP@phil>
Content-Language: en-US
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi Justin, Heiko,

How about hdmi_out?
See rk3066a.dtsi rk3066a-mk808.dts

> +	hdmi: hdmi at 200a0000 {
> +		compatible = "rockchip,rk3228-dw-hdmi";
> +		reg = <0x200a0000 0x20000>;
> +		reg-io-width = <4>;
> +		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru SCLK_HDMI_HDCP>, <&cru PCLK_HDMI_CTRL>, <&cru
SCLK_HDMI_CEC>;
> +		clock-names = "isfr", "iahb", "cec";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hdmii2c_xfer &hdmi_hpd &hdmi_cec>;
> +		resets = <&cru SRST_HDMI_P>;
> +		reset-names = "hdmi";
> +		phys = <&hdmi_phy>;
> +		phy-names = "hdmi";
> +		rockchip,grf = <&grf>;
> +		status = "disabled";
> +
> +		ports {

			#address-cells = <1>;
			#size-cells = <0>;

> +			hdmi_in: port {

			hdmi_in: port@0 {
				reg = <0>;

> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				hdmi_in_vop: endpoint at 0 {
> +					reg = <0>;
> +					remote-endpoint = <&vop_out_hdmi>;
> +				};
> +			};

			hdmi_out: port@1 {
				reg = <1>;
			};


> +		};
> +	};
> +
