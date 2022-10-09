Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6FA1C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Oct 2022 20:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R+aPH52ENLGNfvguFaeqU3ePmVH63I7nJHhWbKTrzC0=; b=SOKadPPg3yquYA
	zLAzZCvbSse9e5Y7h4OEtdfFccQgy/BZle3RcQ3laXR0ZT242unixv54JoEHP0AEpTaXGscmj8vEw
	8AkJapqbKYUqgsZ5P0U5f79NdLQVAajSaJchc1xvjnKeC5B6iiPSrKzX3QKIYv9u3bIlOl1usOEMk
	p1OQALmXv4pgELGB9iRN503hzFzxPGZKtQS99eazyK9d/zq7FG0ZUhMtlHPk2IuOkWX1J9k6PlQU4
	UrMdL3aWXmiI3WjRsof19valLzl0cbA8nd6hSMz7XX4G8U9PjQEpLBRKVo0QwR7EzdfNUTOm1/1SV
	rbpmKIYo+UjyY/Vu55iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohd2C-00G8hr-VF; Sun, 09 Oct 2022 20:36:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohd2A-00G8hM-Fc; Sun, 09 Oct 2022 20:36:28 +0000
Received: from p5b1274fa.dip0.t-ipconnect.de ([91.18.116.250] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ohd25-0005Xm-EO; Sun, 09 Oct 2022 22:36:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: pgwipeout@gmail.com, Furkan Kardame <f.kardame@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Furkan Kardame <f.kardame@manjaro.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable pcie2 and audio jack on rk3566-roc-pc
Date: Sun, 09 Oct 2022 22:36:20 +0200
Message-ID: <37302600.XM6RcZxFsP@phil>
In-Reply-To: <20221009200707.106046-1-f.kardame@manjaro.org>
References: <20221009200707.106046-1-f.kardame@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221009_133626_574849_031A3C4E 
X-CRM114-Status: GOOD (  19.14  )
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

Hi Furkan,

Am Sonntag, 9. Oktober 2022, 22:07:07 CEST schrieb Furkan Kardame:
> Add dts nodes to enable combphy2, pcie2 and audio jack.
> Disable i2c5 as it not used.

A commit message like this very much indicates that its contents want
to get split over multiple patches.

A commit should do one thing that can be described with a full commit
message but not multiple different things.


The big patches would be:
- enable sound on rk3566-roc-pc
- enable pcie2 on rk3566-roc-pc

plus the other stuff I mention below.


> Signed-off-by: Furkan Kardame <f.kardame@manjaro.org>
> ---
>  .../arm64/boot/dts/rockchip/rk3566-roc-pc.dts | 97 ++++++++++++++++++-
>  1 file changed, 93 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> index dba648c2f..1e5c83012 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-roc-pc.dts
> @@ -39,6 +39,28 @@ hdmi_con_in: endpoint {
>  		};
>  	};
>  
> +	i2s1_8ch: i2s@fe410000 {
> +		compatible = "rockchip,rk3568-i2s-tdm";
> +		reg = <0x0 0xfe410000 0x0 0x1000>;
> +		interrupts = <GIC_SPI 53 IRQ_TYPE_LEVEL_HIGH>;
> +		assigned-clocks = <&cru CLK_I2S1_8CH_TX_SRC>, <&cru CLK_I2S1_8CH_RX_SRC>;
> +		assigned-clock-rates = <1188000000>, <1188000000>;
> +		clocks = <&cru MCLK_I2S1_8CH_TX>, <&cru MCLK_I2S1_8CH_RX>,
> +			 <&cru HCLK_I2S1_8CH>;
> +		clock-names = "mclk_tx", "mclk_rx", "hclk";
> +		dmas = <&dmac1 3>, <&dmac1 2>;
> +		dma-names = "rx", "tx";
> +		resets = <&cru SRST_M_I2S1_8CH_TX>, <&cru SRST_M_I2S1_8CH_RX>;
> +		reset-names = "tx-m", "rx-m";
> +		rockchip,grf = <&grf>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_sclkrx
> +			     &i2s1m0_lrcktx &i2s1m0_lrckrx
> +			     &i2s1m0_sdi0   &i2s1m0_sdo0>;
> +		#sound-dai-cells = <0>;
> +		status = "disabled";
> +	};

this looks like a core i2s controller and should
therefore be in rk356x.dtsi (as it most likely exists
in both rk3566 and rk3568) - and be a separate patch.


>  	leds {
>  		compatible = "gpio-leds";
>  
> @@ -53,6 +75,22 @@ led-user {
>  		};
>  	};
>  
> +	rk809-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,name = "STATION-M2-FRONT";
> +		simple-audio-card,mclk-fs = <256>;
> +		status = "okay";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1_8ch>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&rk809>;
> +		};
> +	};
> +
>  	sdio_pwrseq: sdio-pwrseq {
>  		status = "okay";
>  		compatible = "mmc-pwrseq-simple";
> @@ -82,6 +120,18 @@ vcc5v0_sys: vcc5v0-sys-regulator {
>  		vin-supply = <&usb_5v>;
>  	};
>  
> +	vcc3v3_pcie: vcc3v3-pcie-regulator {
> +		compatible = "regulator-fixed";
> +		enable-active-high;
> +		gpio = <&gpio0 RK_PC4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie_enable_h>;
> +		regulator-name = "vcc3v3_pcie";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc5v0_sys>;
> +	};
> +
>  	vcc3v3_sys: vcc3v3-sys-regulator {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc3v3_sys";
> @@ -122,6 +172,10 @@ &combphy1 {
>  	status = "okay";
>  };
>  
> +&combphy2 {
> +	status = "okay";
> +};
> +
>  &cpu0 {
>  	cpu-supply = <&vdd_cpu>;
>  };
> @@ -142,7 +196,7 @@ &gmac1 {
>  	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>;
>  	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>, <&gmac1_clkin>;
>  	clock_in_out = "input";
> -	phy-mode = "rgmii-id";
> +	phy-mode = "rgmii";

what is this doing here?
Definitly separate and with a lot of explanation
why it is necessary.


>  	phy-supply = <&vcc_3v3>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&gmac1m0_miim
> @@ -210,9 +264,13 @@ rk809: pmic@20 {
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
>  		clock-output-names = "rk808-clkout1", "rk808-clkout2";
> -
> +		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
> +		clock-names = "mclk";
> +		clocks = <&cru I2S1_MCLKOUT_TX>;
> +		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
> +		#sound-dai-cells = <0>;
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&pmic_int>;
>  		rockchip,system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <1>;
> @@ -419,6 +477,10 @@ vcc3v3_sd: SWITCH_REG2 {
>  				regulator-boot-on;
>  			};
>  		};
> +
> +		codec {
> +			mic-in-differential;
> +		};
>  	};
>  };
>  
> @@ -432,11 +494,20 @@ &i2c2 {
>  
>  &i2c3 {
>  	pinctrl-names = "default";
> -	pinctrl-0 = <&i2c3m1_xfer>;
> +	pinctrl-0 = <&i2c3m0_xfer>;

Also separate with a paragraph on why.


>  	status = "okay";
>  };
>  
>  &i2c5 {
> +	status = "disabled";

definitly also separate


> +};
> +
> +&i2s0_8ch {
> +	status = "okay";
> +};

where is this i2s0 connected to?


> +
> +&i2s1_8ch {
> +	rockchip,trcm-sync-tx-only;
>  	status = "okay";
>  };
>  
> @@ -447,6 +518,14 @@ rgmii_phy1: ethernet-phy@0 {
>  	};
>  };
>  
> +&pcie2x1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie_reset_h>;
> +	reset-gpios = <&gpio1 RK_PB2 GPIO_ACTIVE_HIGH>;
> +	vpcie3v3-supply = <&vcc3v3_pcie>;
> +	status = "okay";
> +};
> +
>  &pinctrl {
>  	bt {
>  		bt_enable_h: bt-enable-h {
> @@ -468,6 +547,16 @@ user_led_enable_h: user-led-enable-h {
>  		};
>  	};
>  
> +	pcie {
> +		pcie_enable_h: pcie-enable-h {
> +			rockchip,pins = <0 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie_reset_h: pcie-reset-h {
> +			rockchip,pins = <1 RK_PB2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	pmic {
>  		pmic_int: pmic_int {
>  			rockchip,pins =
> 


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
