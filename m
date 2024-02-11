Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9FC3C4829A
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Feb 2024 19:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NlIIr6LZYiqwFxC6zGfLhE8ZBoe92oiKKgKbA8b3U6M=; b=UB+YmNdTbwxr4V
	4Rhy+xyApiyTM9j2X9B1cpiyQl47orEy8LwsK1jGIYmv/q/4NinZ8kXLi5icZ4RvmfkcYVcvdKuT6
	jJWSngHnvXVZThFP0sczdj1/06K7njnlyq+aiu/+75tbe2rbD5BV5LB7V0BF24hrFWqbVLU7sn6vH
	h3EnL0uGxjrYc3+SI8NBjDQbPnMWGTg25pLvbwZR+iXymyff7yjvQGPZs0373x4kvJ/5GLSQzZee5
	DicGI8o52f+HnghXKYViJOCArqRdDBOldR1G8KnTNkDFRJHArRwvAI5uS3UcMsy9oKjFVre9dHjb6
	KI7v6AXy+93TlNM2u6BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZFRf-00000003D5H-3Fxy;
	Sun, 11 Feb 2024 19:24:55 +0000
Received: from forward502b.mail.yandex.net ([2a02:6b8:c02:900:1:45:d181:d502])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZFRa-00000003D48-42KT;
	Sun, 11 Feb 2024 19:24:53 +0000
Received: from mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:c19a:0:640:943d:0])
	by forward502b.mail.yandex.net (Yandex) with ESMTPS id EF3C75E8F2;
	Sun, 11 Feb 2024 22:24:40 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id bOrWZP1OjeA0-GQutgD4Z;
	Sun, 11 Feb 2024 22:24:39 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.com; s=mail;
	t=1707679480; bh=qH7n8BBTtmjWH7BLroA9TvV0Az20WPNeUUvkeOfGcV0=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=P1FBs1XbpeY1Bpk1pS/bN3EJymfSMyLbtsi3OWdQ7So791M8jPHgL2dsjWgUacxNK
	 X2LOI/THK3Bb/J9aVpT0jgZ/jYX7Tk9wS8TJ4ZwwS9wCeLoWfQ2aiwBnCn/qETGnkI
	 tD8gk/7tU5kpeNx6IvBJ5d8uYTSmDwEL5nyH99j0=
Authentication-Results: mail-nwsmtp-smtp-production-main-17.iva.yp-c.yandex.net; dkim=pass header.i=@yandex.com
Message-ID: <6bc2f825-7e50-488d-a373-a211ac2cc8e1@yandex.com>
Date: Sun, 11 Feb 2024 20:24:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 06/10] arm64: dts: rockchip: add USBDP phys on rk3588
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Frank Wang <frank.wang@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20240209181831.104687-1-sebastian.reichel@collabora.com>
 <20240209181831.104687-7-sebastian.reichel@collabora.com>
Content-Language: en-US
From: Johan Jonker <jbx6244@yandex.com>
In-Reply-To: <20240209181831.104687-7-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240211_112451_602473_23F94F4F 
X-CRM114-Status: GOOD (  11.65  )
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



On 2/9/24 19:17, Sebastian Reichel wrote:
> Add both USB3-Displayport PHYs to RK3588 SoC DT.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588.dtsi  | 62 +++++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 73 +++++++++++++++++++++++
>  2 files changed, 135 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588.dtsi b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> index 5519c1430cb7..c26288ec75ce 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588.dtsi
> @@ -17,6 +17,37 @@ pipe_phy1_grf: syscon@fd5c0000 {
>  		reg = <0x0 0xfd5c0000 0x0 0x100>;
>  	};
>  
> +	usbdpphy1_grf: syscon@fd5cc000 {
> +		compatible = "rockchip,rk3588-usbdpphy-grf", "syscon";
> +		reg = <0x0 0xfd5cc000 0x0 0x4000>;
> +	};
> +
> +	usb2phy1_grf: syscon@fd5d4000 {

> +		compatible = "rockchip,rk3588-usb2phy-grf", "syscon",
> +			     "simple-mfd";

Use same line like usb2phy2_grf.

> +		reg = <0x0 0xfd5d4000 0x0 0x4000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +

> +		u2phy1: usb2-phy@4000 {

        "usb2phy@[0-9a-f]+$":

> +			compatible = "rockchip,rk3588-usb2phy";
> +			reg = <0x4000 0x10>;
> +			interrupts = <GIC_SPI 394 IRQ_TYPE_LEVEL_HIGH 0>;

> +			resets = <&cru SRST_OTGPHY_U3_1>, <&cru SRST_P_USB2PHY_U3_1_GRF0>;
> +			reset-names = "phy", "apb";
> +			clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>;
> +			clock-names = "phyclk";
> +			clock-output-names = "usb480m_phy1";
> +			#clock-cells = <0>;

Align with the (new) documentation
about property ordering.

> +			status = "disabled";
> +
> +			u2phy1_otg: otg-port {
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
> +		};
> +	};
> +
>  	i2s8_8ch: i2s@fddc8000 {
>  		compatible = "rockchip,rk3588-i2s-tdm";
>  		reg = <0x0 0xfddc8000 0x0 0x1000>;
> @@ -310,6 +341,37 @@ sata-port@0 {
>  		};
>  	};
>  
> +	usbdp_phy1: phy@fed90000 {
> +		compatible = "rockchip,rk3588-usbdp-phy";
> +		reg = <0x0 0xfed90000 0x0 0x10000>;

> +		rockchip,u2phy-grf = <&usb2phy1_grf>;
> +		rockchip,usb-grf = <&usb_grf>;
> +		rockchip,usbdpphy-grf = <&usbdpphy1_grf>;
> +		rockchip,vo-grf = <&vo0_grf>;
> +		clocks = <&cru CLK_USBDPPHY_MIPIDCPPHY_REF>,
> +			 <&cru CLK_USBDP_PHY1_IMMORTAL>,
> +			 <&cru PCLK_USBDPPHY1>,
> +			 <&u2phy1>;
> +		clock-names = "refclk", "immortal", "pclk", "utmi";
> +		resets = <&cru SRST_USBDP_COMBO_PHY1_INIT>,
> +			 <&cru SRST_USBDP_COMBO_PHY1_CMN>,
> +			 <&cru SRST_USBDP_COMBO_PHY1_LANE>,
> +			 <&cru SRST_USBDP_COMBO_PHY1_PCS>,
> +			 <&cru SRST_P_USBDPPHY1>;
> +		reset-names = "init", "cmn", "lane", "pcs_apb", "pma_apb";

Align with the (new) documentation
about property ordering.

> +		status = "disabled";
> +
> +		usbdp_phy1_dp: dp-port {
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		usbdp_phy1_u3: usb3-port {
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +	};
> +
>  	combphy1_ps: phy@fee10000 {
>  		compatible = "rockchip,rk3588-naneng-combphy";
>  		reg = <0x0 0xfee10000 0x0 0x100>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> index 36b1b7acfe6a..553e1883cfe4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
> @@ -536,6 +536,37 @@ pipe_phy2_grf: syscon@fd5c4000 {
>  		reg = <0x0 0xfd5c4000 0x0 0x100>;
>  	};
>  
> +	usbdpphy0_grf: syscon@fd5c8000 {
> +		compatible = "rockchip,rk3588-usbdpphy-grf", "syscon";
> +		reg = <0x0 0xfd5c8000 0x0 0x4000>;
> +	};
> +
> +	usb2phy0_grf: syscon@fd5d0000 {

> +		compatible = "rockchip,rk3588-usb2phy-grf", "syscon",
> +			     "simple-mfd";

Use same line like usb2phy2_grf.

> +		reg = <0x0 0xfd5d0000 0x0 0x4000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +

> +		u2phy0: usb2-phy@0 {

From grf.yaml:

        "usb2phy@[0-9a-f]+$":

> +			compatible = "rockchip,rk3588-usb2phy";
> +			reg = <0x0 0x10>;
> +			interrupts = <GIC_SPI 393 IRQ_TYPE_LEVEL_HIGH 0>;

> +			resets = <&cru SRST_OTGPHY_U3_0>, <&cru SRST_P_USB2PHY_U3_0_GRF0>;
> +			reset-names = "phy", "apb";
> +			clocks = <&cru CLK_USB2PHY_HDPTXRXPHY_REF>;
> +			clock-names = "phyclk";
> +			clock-output-names = "usb480m_phy0";
> +			#clock-cells = <0>;

Align with the (new) documentation
about property ordering.

> +			status = "disabled";
> +
> +			u2phy0_otg: otg-port {
> +				#phy-cells = <0>;
> +				status = "disabled";
> +			};
> +		};
> +	};
> +
>  	usb2phy2_grf: syscon@fd5d8000 {
>  		compatible = "rockchip,rk3588-usb2phy-grf", "syscon", "simple-mfd";

Fix usb2phy2_grf as well.

        "usb2phy@[0-9a-f]+$":

>  		reg = <0x0 0xfd5d8000 0x0 0x4000>;
> @@ -561,6 +592,17 @@ u2phy2_host: host-port {
>  		};
>  	};
>  
> +	vo0_grf: syscon@fd5a6000 {
> +		compatible = "rockchip,rk3588-vo-grf", "syscon";
> +		reg = <0x0 0xfd5a6000 0x0 0x2000>;
> +		clocks = <&cru PCLK_VO0GRF>;
> +	};
> +
> +	usb_grf: syscon@fd5ac000 {
> +		compatible = "rockchip,rk3588-usb-grf", "syscon";
> +		reg = <0x0 0xfd5ac000 0x0 0x4000>;
> +	};
> +
>  	usb2phy3_grf: syscon@fd5dc000 {
>  		compatible = "rockchip,rk3588-usb2phy-grf", "syscon", "simple-mfd";

Fix usb2phy3_grf as well.

        "usb2phy@[0-9a-f]+$":


>  		reg = <0x0 0xfd5dc000 0x0 0x4000>;
> @@ -2360,6 +2402,37 @@ dmac2: dma-controller@fed10000 {
>  		#dma-cells = <1>;
>  	};
>  
> +	usbdp_phy0: phy@fed80000 {
> +		compatible = "rockchip,rk3588-usbdp-phy";
> +		reg = <0x0 0xfed80000 0x0 0x10000>;

> +		rockchip,u2phy-grf = <&usb2phy0_grf>;
> +		rockchip,usb-grf = <&usb_grf>;
> +		rockchip,usbdpphy-grf = <&usbdpphy0_grf>;
> +		rockchip,vo-grf = <&vo0_grf>;
> +		clocks = <&cru CLK_USBDPPHY_MIPIDCPPHY_REF>,
> +			 <&cru CLK_USBDP_PHY0_IMMORTAL>,
> +			 <&cru PCLK_USBDPPHY0>,
> +			 <&u2phy0>;
> +		clock-names = "refclk", "immortal", "pclk", "utmi";
> +		resets = <&cru SRST_USBDP_COMBO_PHY0_INIT>,
> +			 <&cru SRST_USBDP_COMBO_PHY0_CMN>,
> +			 <&cru SRST_USBDP_COMBO_PHY0_LANE>,
> +			 <&cru SRST_USBDP_COMBO_PHY0_PCS>,
> +			 <&cru SRST_P_USBDPPHY0>;
> +		reset-names = "init", "cmn", "lane", "pcs_apb", "pma_apb";

Align with the (new) documentation
about property ordering.

> +		status = "disabled";
> +
> +		usbdp_phy0_dp: dp-port {
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		usbdp_phy0_u3: usb3-port {
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};
> +	};
> +
>  	combphy0_ps: phy@fee00000 {
>  		compatible = "rockchip,rk3588-naneng-combphy";
>  		reg = <0x0 0xfee00000 0x0 0x100>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
