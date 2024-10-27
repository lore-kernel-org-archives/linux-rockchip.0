Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A44BED13571
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Oct 2024 22:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/hLh08b91KTv/TVoEoVGwSgFLaNoQrMDxSM6MeZzMI=; b=e5ZXJXrLoRT1fI
	5tt2lH0YOjzAKCzWUtc4sG/IQi7mWM6FrxNAXsmTdJ0sk9b1w4NPo/+1ELar4lc8USqvB1Ot3Rsh2
	GlRWqcx7XDXC7MwYxHatzC8S2MTVM0TBqna5lgfSkbsl98MHyPprXw+Qzdz058UjXjBxHBHKEvumQ
	dYXajSRJKK94cidLiM+FtmF6i1ebS0aD78xxmNmxV1RUNi9ozh5ejWwJoE6ucNdxSPlN5LqfAcDFq
	CCrOfuZrO6BXG9gY+6jWBCAc2HXlB77yKBIh009OLR4q5IvDHCMTPSVGvJDBpXIXe77/F1td3O10r
	qKjcPYpeP1kvwvU1nLuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5C4H-0000000924s-2H8B;
	Sun, 27 Oct 2024 22:49:05 +0000
Received: from vps.xff.cz ([195.181.215.36])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5C2e-000000091pg-3RpI;
	Sun, 27 Oct 2024 22:47:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=xff.cz; s=mail;
	t=1730069239; bh=8Zm5MjZ8zaSPXSP0fhK2I0ghqIIU2RPotYegaZLnZUw=;
	h=Date:From:To:Cc:Subject:X-My-GPG-KeyId:References:From;
	b=PcYLK+tykd5DXK6UAW1uAKNzSwdgN0bb20OIhaDMlm6umHy1gO0DAdPGBEV+dCbki
	 noVA/7EVjEXZkcOeJ38sCieKfrfUb/Nkg+RMKo0SacO7c4bgGcEcEP7c2GdsL/G/Eu
	 gXG+kdMN3iv0RW1ROMmu281Z3/iXv5Af/d3Obe7k=
Date: Sun, 27 Oct 2024 23:47:19 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>
To: Chen-Yu Tsai <wens@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: orangepi-5-plus: Enable USB 3.0
 ports
Message-ID: <pe2ornjaqn24i7e3x64rfdtqbp2c347mc5okgj5y6bfvkwnv6z@jux5yei3vxxa>
Mail-Followup-To: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>, 
	Chen-Yu Tsai <wens@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
References: <20241025175415.887368-1-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241025175415.887368-1-wens@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241027_154725_347813_88B3D3B5 
X-CRM114-Status: GOOD (  21.71  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Chen-Yu,

On Sat, Oct 26, 2024 at 01:54:15AM GMT, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> The Orange Pi 5 Plus has its first USB 3.0 interface on the SoC wired
> directly to the USB type C port next to the MASKROM button, and the
> second interface wired to a USB 3.0 hub which in turn is connected to
> the USB 3.0 host ports on the board, as well as the USB 2.0 connection
> on the M.2 E-key slot.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>

CCing the DTS author would be nice. :)

Thanks for submitting this. I found a few issues. See below:

> ---
>  .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 132 ++++++++++++++++++
>  1 file changed, 132 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> index dd03c9db6953..b826c5e368aa 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> @@ -177,6 +177,18 @@ daicodec: simple-audio-card,codec {
>  		};
>  	};
>  
> +	vbus_typec: vbus-typec-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio4 RK_PB0 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&typec5v_pwren>;
> +		regulator-name = "vbus_typec";

This is named vbus5v0_typec in the schematic.

> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
>  	vcc3v3_pcie30: vcc3v3-pcie30-regulator {
>  		compatible = "regulator-fixed";
>  		enable-active-high;
> @@ -339,6 +351,56 @@ &i2c6 {
>  	clock-frequency = <400000>;
>  	status = "okay";
>  
> +	usbc0: usb-typec@22 {
> +		compatible = "fcs,fusb302";
> +		reg = <0x22>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <RK_PD3 IRQ_TYPE_LEVEL_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&usbc0_int>;
> +		vbus-supply = <&vbus_typec>;
> +		status = "okay";
> +
> +		usb_con: connector {
> +			compatible = "usb-c-connector";
> +			label = "USB-C";
> +			data-role = "dual";
> +			op-sink-microwatt = <1000000>;
> +			power-role = "dual";
> +			sink-pdos =
> +				<PDO_FIXED(5000, 1000, PDO_FIXED_USB_COMM)>;

The board can't sink power from this port. It's a source only port. So sink-pdos
can be lower, so that if you plug this into type-c hub as a peripheral, the hub
doesn't need to reserve 5W for this port.

op-sink-microwat can also be lower. The port will not sink any power when
connected to 5V VBUS externally.

Otherwise you can probably keep power-role = "dual";

> +			source-pdos =
> +				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;

This port can't source 3A. U22 (SY6280AAC) is configured via Rset for 1.44A
limit. So let's say 1.5A.

> +			try-power-role = "source";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					usbc0_hs: endpoint {
> +						remote-endpoint = <&usb_host0_xhci_drd_sw>;
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +					usbc0_ss: endpoint {
> +						remote-endpoint = <&usbdp_phy0_typec_ss>;
> +					};
> +				};
> +
> +				port@2 {
> +					reg = <2>;
> +					usbc0_sbu: endpoint {
> +						remote-endpoint = <&usbdp_phy0_typec_sbu>;
> +					};
> +				};
> +			};
> +		};
> +	};
> +
>  	hym8563: rtc@51 {
>  		compatible = "haoyu,hym8563";
>  		reg = <0x51>;
> @@ -480,6 +542,16 @@ vcc5v0_usb20_en: vcc5v0-usb20-en {
>  			rockchip,pins = <3 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> +
> +	usb-typec {
> +		usbc0_int: usbc0-int {
> +			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +
> +		typec5v_pwren: typec5v-pwren {
> +			rockchip,pins = <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
>  };
>  
>  &pwm2 {
> @@ -871,6 +943,22 @@ &tsadc {
>  	status = "okay";
>  };
>  
> +&u2phy0 {
> +	status = "okay";
> +};
> +
> +&u2phy0_otg {
> +	status = "okay";
> +};
> +
> +&u2phy1 {
> +	status = "okay";
> +};
> +
> +&u2phy1_otg {

Needs:
	phy-supply = <&vcc5v0_host>;

> +	status = "okay";
> +};
> +
>  &u2phy2 {
>  	status = "okay";
>  };
> @@ -899,6 +987,33 @@ &uart9 {
>  	status = "okay";
>  };
>  
> +&usbdp_phy0 {
> +	mode-switch;
> +	orientation-switch;
> +	sbu1-dc-gpios = <&gpio4 RK_PA6 GPIO_ACTIVE_HIGH>;
> +	sbu2-dc-gpios = <&gpio4 RK_PA7 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +
> +	port {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		usbdp_phy0_typec_ss: endpoint@0 {
> +			reg = <0>;
> +			remote-endpoint = <&usbc0_ss>;
> +		};
> +
> +		usbdp_phy0_typec_sbu: endpoint@1 {
> +			reg = <1>;
> +			remote-endpoint = <&usbc0_sbu>;
> +		};
> +	};
> +};
> +
> +&usbdp_phy1 {
> +	status = "okay";
> +};
> +
>  &usb_host0_ehci {
>  	status = "okay";
>  };
> @@ -907,6 +1022,18 @@ &usb_host0_ohci {
>  	status = "okay";
>  };
>  
> +&usb_host0_xhci {
> +	dr_mode = "otg";

This is the default. No need to have it here.

Kind regards,
	o.

> +	usb-role-switch;
> +	status = "okay";
> +
> +	port {
> +		usb_host0_xhci_drd_sw: endpoint {
> +			remote-endpoint = <&usbc0_hs>;
> +		};
> +	};
> +};
> +
>  &usb_host1_ehci {
>  	status = "okay";
>  };
> @@ -915,6 +1042,11 @@ &usb_host1_ohci {
>  	status = "okay";
>  };
>  
> +&usb_host1_xhci {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
>  &vop_mmu {
>  	status = "okay";
>  };
> -- 
> 2.39.5
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
