Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF992C87FC9
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Aug 2025 08:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhyG/NNiY/F8WWcbkizWEvX3HOylEWeo/ME9FpnQye8=; b=NiYQ16hKgyUvsa
	Io4fJRL7BGN6+CyWEknUcvnAAbpyTseFT3NW6uWhRADa5RExsl5n50xF7GjiRSBgSpe6fwd6d/WJh
	NjeMVI29sn/tkm8jiY22yJBzQqIz3ZDp00NER4oz002BfHFfqNlBp23SCaRe1AL1ti3UuoiTTRtsk
	78UwElDVJtoua/ooruM91U+D3BoBR0DCGftxFMK+TewRVL4vLW60/BxDr3VgXVBRMLyMDTWCWWB4A
	fUlVDrQIM8f3rLhX9060nmp6WcG5xku/oljEryzeuyef89Q4GUGTJ/b4MP9RcaFLv2CY8nkHFCoUI
	dSALfw4tfwg9ET01BXrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ui7qD-00000007Lca-1xfz;
	Sat, 02 Aug 2025 08:43:45 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ui7nd-00000007LSO-00Ax;
	Sat, 02 Aug 2025 08:41:06 +0000
Received: from pendragon.ideasonboard.com (cpc89244-aztw30-2-0-cust6594.18-1.cable.virginm.net [86.31.185.195])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id BF8443DA;
	Sat,  2 Aug 2025 10:40:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1754124015;
	bh=oU87yynY9OkNgePab14EjtA/FIdmNPBXak8v0Yc3ONw=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Sq0wK0UZ1/OTJRLm9pXvJu54D1dPk8BwkywGBb+UMvI+mhZPlDYatUsOGJIOIE60y
	 ejjM1AmPtIgKuJlf0nn5fcldd2VyDVXdxAd8aTEy5pi6yFvWV6kKToQUBFdGWVhq99
	 FtF8A3AQmeHrwBoa5ua618nv+FmlJB/z8rGx1hOk=
MIME-Version: 1.0
In-Reply-To: <20250620-camera-v4-3-0201a8ed5fae@bootlin.com>
References: <20250620-camera-v4-0-0201a8ed5fae@bootlin.com> <20250620-camera-v4-3-0201a8ed5fae@bootlin.com>
Subject: Re: [PATCH v4 3/4] arm64: dts: rockchip: describe I2c Bus 1 and IMX258 world camera on PinePhone Pro
From: Kieran Bingham <kieran.bingham@ideasonboard.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, imx@lists.linux.dev, Olivier Benjamin <olivier.benjamin@bootlin.com>, ~diederik/pine64-discuss@lists.sr.ht, Dragan Simic <dsimic@manjaro.org>, Ondrej Jirman <megi@xff.cz>
To: Conor Dooley <conor+dt@kernel.org>, Fabio Estevam <festevam@gmail.com>, Heiko Stuebner <heiko@sntech.de>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Nicholas Roth <nicholas@rothemail.net>, Olivier Benjamin <olivier.benjamin@bootlin.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Date: Sat, 02 Aug 2025 09:40:57 +0100
Message-ID: <175412405784.2356345.13601254650114566601@ping.linuxembedded.co.uk>
User-Agent: alot/0.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250802_014105_189632_14DEDA2C 
X-CRM114-Status: GOOD (  26.18  )
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

Hi Olivier,

I'm very pleased to see this support getting upstreamed!

Quoting Olivier Benjamin (2025-06-20 16:21:34)
> Add the description of the rear/world camera (IMX258) on the PinePhone Pro
> to the device dts file.
> It receives commands on the I2C Bus 1 at address 0x1a and transmits data
> over CSI-MIPI.
> 
> The I2C address for IMX258 can be found in the IMX258-0AQH5 Software
> Reference Manual, page 24, section 2.3.1: 0b0011010 = 0x1a.
> Section 3 indicates the module has 4 pairs of data lines. While 4-lane
> mode is nominal, 2-lane mode should also be supported.
> 
> The pin muxing info was extracted from the PinePhone Pro schematic v1.0
> as well as the RK3399 datasheet revision 1.8.
> 
> Table 2-3 in section 2.8 of the RK3399 datasheet contains the mapping
> of IO functions for the SoC pins. Page 52 shows GPIO1_A0, page 54 shows
> GPIO2_D4.
> 
> For I2C power, the PinePhone Pro schematic page 11 quadrants A4 and A5:
> RK3399_J.AA8 and RK3399_J.Y8 get power from vcaa1v8_codec, so turn it on
> 
> The IMX258 also uses the following regulators, expected by its driver:
>  - vana (2.8V analog), called AVDD2V8_DVP on P.18 q.C1 and derived from
>    VCC1V8_S3 on P.13 q.B2
>  - vdig (1.2V digital core), called DVDD_DVP on P.18 q.C1 and shown on
>    P.18 q.D3 to be equivalent to VCC1V2_DVP derived from VCC3V3_SYS on
>    P.13 q.B3. Note that this regulator's voltage is inconsistently
>    labeled either 1.2V or 1.5V
> 
> RK3399_J.AG1 is GPIO4_A1/I2C1_SDA, RK3399_J.Y6 is GPIO4_A2/I2C1_SCL
> This is the default pinctrl "i2c1_xfer" for i2c1 from rk3399-base.
> 
> For the reset (RESET) signal:
> page 11 quadrant D2             | p.18 q.C3-4 | p.18 q.C2
> RK3399_E.R25 -> GPIO1_A0 -> Camera_RST -> MIPI_RST0 -> IMX258.12
> 
> For the powerdown (PWDN) signal:
> page 11 quadrants B4-5          | p.18 q.C2
> RK3399_G.AF8 -> GPIO2_D4 -> DVP_PDN1_H -> IMX258.14
> 
> Helped-by: Dragan Simic <dsimic@manjaro.org>
> Co-developed-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Ondrej Jirman <megi@xff.cz>
> Signed-off-by: Olivier Benjamin <olivier.benjamin@bootlin.com>
> ---
>  .../boot/dts/rockchip/rk3399-pinephone-pro.dts     | 93 ++++++++++++++++++++++
>  1 file changed, 93 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> index 04ba4c4565d0a205e2e46d7535c6a3190993621d..b335d044138b413359ba54269ab646142254a55f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
> @@ -114,6 +114,16 @@ vcc3v3_sys: regulator-vcc3v3-sys {
>                 vin-supply = <&vcc_sys>;
>         };
>  
> +       avdd2v8_dvp: regulator-avdd2v8-dvp {
> +               compatible = "regulator-fixed";
> +               regulator-name = "avdd2v8_dvp";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <2800000>;
> +               regulator-max-microvolt = <2800000>;
> +               vin-supply = <&vcc3v3_sys>;
> +       };
> +
>         vcca1v8_s3: regulator-vcc1v8-s3 {
>                 compatible = "regulator-fixed";
>                 regulator-name = "vcca1v8_s3";
> @@ -136,6 +146,16 @@ vcc1v8_codec: regulator-vcc1v8-codec {
>                 vin-supply = <&vcc3v3_sys>;
>         };
>  
> +       vcc1v2_dvp: regulator-vcc1v2-dvp {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vcc1v2_dvp";
> +               regulator-always-on;
> +               regulator-boot-on;
> +               regulator-min-microvolt = <1200000>;
> +               regulator-max-microvolt = <1200000>;
> +               vin-supply = <&vcca1v8_s3>;
> +       };
> +
>         wifi_pwrseq: sdio-wifi-pwrseq {
>                 compatible = "mmc-pwrseq-simple";
>                 clocks = <&rk818 1>;
> @@ -312,6 +332,8 @@ vcc3v0_touch: LDO_REG2 {
>  
>                         vcca1v8_codec: LDO_REG3 {
>                                 regulator-name = "vcca1v8_codec";
> +                               regulator-always-on;
> +                               regulator-boot-on;

Is regulator-boot-on needed when regulator-always-on is set? Doesn't
-always-on take precedence and ensure it's enabled if it's not on
anyway?

It seems odd to have (need?) both ...? but I'm no DT expert on this part
- it just stands out to me.


>                                 regulator-min-microvolt = <1800000>;
>                                 regulator-max-microvolt = <1800000>;
>                         };
> @@ -420,6 +442,45 @@ regulator-state-mem {
>         };
>  };
>  
> +&i2c1 {
> +       clock-frequency = <400000>;
> +       pinctrl-0 = <&i2c1_xfer &cif_clkouta>;
> +       assigned-clocks = <&cru SCLK_CIF_OUT>;
> +       assigned-clock-rates = <24000000>;
> +       status = "okay";
> +
> +       wcam: camera@1a {
> +               compatible = "sony,imx258";
> +               reg = <0x1a>;
> +               clocks = <&cru SCLK_CIF_OUT>; /* MIPI_MCLK0, derived from CIF_CLKO */
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&camera_rst>;
> +               /* Note: both cameras also depend on vcca1v8_codec to power the I2C bus. */

Should that be represented by the i2c1 bus then?

> +               vif-supply = <&vcc1v8_dvp>;
> +               vana-supply = <&avdd2v8_dvp>;
> +               vdig-supply = <&vcc1v2_dvp>; /* DVDD_DVP is the same as VCC1V2_DVP */
> +               reset-gpios = <&gpio1 RK_PA0 GPIO_ACTIVE_LOW>;
> +               orientation = <1>; /* V4L2_CAMERA_ORIENTATION_BACK */
> +               rotation = <270>;
> +               lens-focus = <&wcam_lens>;
> +
> +               port {
> +                       wcam_out: endpoint {
> +                               remote-endpoint = <&mipi_in_wcam>;
> +                               data-lanes = <1 2 3 4>;
> +                               link-frequencies = /bits/ 64 <636000000>;
> +                       };
> +               };
> +       };
> +
> +       wcam_lens: camera-lens@c {
> +               compatible = "dongwoon,dw9714";
> +               reg = <0x0c>;
> +               /* Same I2c bus as both cameras, depends on vcca1v8_codec for power. */
> +               vcc-supply = <&vcc1v8_dvp>;
> +       };
> +};
> +
>  &i2c3 {
>         i2c-scl-rising-time-ns = <450>;
>         i2c-scl-falling-time-ns = <15>;
> @@ -462,6 +523,28 @@ &io_domains {
>         status = "okay";
>  };
>  
> +&isp1 {
> +       status = "okay";
> +
> +       ports {
> +               port@0 {
> +                       mipi_in_wcam: endpoint@0 {
> +                               reg = <0>;
> +                               remote-endpoint = <&wcam_out>;
> +                               data-lanes = <1 2 3 4>;
> +                       };
> +               };
> +       };
> +};
> +
> +&mipi_dphy_rx0 {
> +       status = "okay";
> +};
> +
> +&isp1_mmu {
> +       status = "okay";
> +};
> +
>  &mipi_dsi {
>         status = "okay";
>         clock-master;
> @@ -495,6 +578,10 @@ mipi_in_panel: endpoint {
>         };
>  };
>  
> +&mipi_dsi1 {
> +       status = "okay";
> +};
> +

Is this an unrelated change? The Camera should be on CSI - not DSI?

>  &pmu_io_domains {
>         pmu1830-supply = <&vcc_1v8>;
>         status = "okay";
> @@ -507,6 +594,12 @@ pwrbtn_pin: pwrbtn-pin {
>                 };
>         };
>  
> +       camera {
> +               camera_rst_l: camera-rst-l {
> +                       rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;
> +               };
> +       };
> +
>         leds {
>                 red_led_pin: red-led-pin {
>                         rockchip,pins = <4 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
> 
> -- 
> 2.49.0
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
