Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75AE2C43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 11:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jRixn8ppbl7PHKka+EFkx6KXnaRorXc/BgM3aMTGMbk=; b=1dFqBNNhFGT1aU
	n/3IrgV2gBq1sAu4MHmoGxVy71PAHeTUodEOYYy9E7+f+jxbrZP7FfciLqQfhl9axuvV9JzGUY/Vm
	5htaoZ2G8P0T65PlWmjAfd3OpW1VWLun01ppD1mgtCUZ7F3IiLD4pO4BeV7tpldtvdJhZ4x7Jt6ad
	v6NffhiovaO4KXw7URGPAFz+wx4cJuvF5eh/hMyRK2KW0rru9dO05cOUlz51OjrRyAa/kjY4tY8hk
	F9BOuOat+j9McXM3ymN+iH9G7w6i9wpjrplMnmEeqq6AJORhy7ephllQqcPeUZGt2urynV9OMZieL
	U18XgxS3QcRT6OuFrsXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfcA3-00000006ody-0VrP;
	Fri, 03 Jul 2026 11:34:23 +0000
Received: from out-178.mta0.migadu.com ([91.218.175.178])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfc9z-00000006ocq-3Xns
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 11:34:21 +0000
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1783078457;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=v2RhWiRaq5KKyZREhRzsjIz2JBdJD+UIY43UbXOpiYU=;
	b=kThcjrJ3WwXZnD8HRzSOzOZBH6RUdXCDi3/TyHik03H6pompo8fzfDkse2x5Aswb48ArUK
	Ak6P2WdQqqK8gb6Vvu8BOa5jNcY/e6U4OL47r87llRCAwfFEJoO3KzV8B9+2Wh+LqmUoD7
	OApbtqFNRBsjncxDmc+4ewLrNWvQZD/TOuKFicS3ZxVoN/rqX1eG6fRx9rQDZESOLaBeVV
	H4kOvYwn4UnX51JIzt/OxyoLXLYd3fXBBR6EW7fYzE00uQzGwLjyaP6UVYV4+ztjk5wX0u
	qZEpLYlXM8RPvPt/vKXl/dGKONQkpHxpz1eEeSXzkTmv77YTvRdtr3iMa9zBIw==
Date: Fri, 03 Jul 2026 13:34:12 +0200
Message-Id: <DJOWK4QYYMI1.F1TOWMR4BM22@cknow-tech.com>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 12/12] arm64: dts: rockchip: add support for NanoPi M6
 board
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: <joachim.eastwood@gmail.com>, "Rob Herring" <robh@kernel.org>,
 "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley"
 <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20260703-nanopi-m6-v1-0-8344a1559519@gmail.com>
 <20260703-nanopi-m6-v1-12-8344a1559519@gmail.com>
In-Reply-To: <20260703-nanopi-m6-v1-12-8344a1559519@gmail.com>
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_043420_209382_E706329D 
X-CRM114-Status: GOOD (  13.50  )
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

Hi,

On Fri Jul 3, 2026 at 12:07 AM CEST, Joachim Eastwood via B4 Relay wrote:
> From: Joachim Eastwood <joachim.eastwood@gmail.com>
>
> The NanoPi M6 board shares most of the features of the R6 boards.
>
> Main differences:
> * M.2 M-key slot with PCIe (Also present on R6C)
> * M.2 E-key slot with PCIe and USB (from hub)
> * 1 additional USB 2.0 port from an on-board USB hub
> * RT5616 audio CODEC
>
> Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dts | 200 +++++++++++++++++++++
>  2 files changed, 201 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 761d82b4f4f2..2867830eddf8 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -218,6 +218,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-evb1-v10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-gameforce-ace.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-indiedroid-nova.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-khadas-edge2.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-m6.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-odroid-m2.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dts b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dts
> new file mode 100644
> index 000000000000..64448bf55cf7
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi-m6.dts
> @@ -0,0 +1,200 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3588s-nanopi.dtsi"
> +
> +/ {
> +	model = "FriendlyElec NanoPi M6";
> +	compatible = "friendlyarm,nanopi-m6", "rockchip,rk3588s";
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&hp_det>;
> +
> +		simple-audio-card,name = "realtek,rt5616-codec";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,mclk-fs = <256>;
> +
> +		simple-audio-card,hp-det-gpios = <&gpio1 RK_PC4 GPIO_ACTIVE_LOW>;
> +
> +		simple-audio-card,widgets =
> +			"Headphone", "Headphones",
> +			"Microphone", "Microphone Jack";
> +		simple-audio-card,routing =
> +			"Headphones", "HPOL",
> +			"Headphones", "HPOR",
> +			"MIC1", "Microphone Jack",
> +			"Microphone Jack", "micbias1";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s0_8ch>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&rt5616>;
> +		};
> +	};
> +

[...]

> +&i2c7 {
> +	clock-frequency = <200000>;
> +	status = "okay";
> +
> +	rt5616: codec@1b {
> +		compatible = "realtek,rt5616";
> +		reg = <0x1b>;
> +		clocks = <&cru I2S0_8CH_MCLKOUT>;
> +		clock-names = "mclk";
> +		#sound-dai-cells = <0>;
> +		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;

s/I2S0_8CH_MCLKOUT/I2S0_8CH_MCLKOUT_TO_IO/ ?

See these links for details:
https://lore.kernel.org/linux-rockchip/DJGDSS875DDO.22TYPVYK5X8KZ@cknow-tech.com/
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v7.2-clk/fixes&id=946352b2f88fd2378f0341312e47dff1e8dc2fac

Cheers,
  Diederik

> +		assigned-clock-rates = <12288000>;
> +
> +		port {
> +			rt5616_p0_0: endpoint {
> +				remote-endpoint = <&i2s0_8ch_p0_0>;
> +			};
> +		};
> +	};
> +};
> +
> +&i2s0_8ch {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2s0_lrck
> +		     &i2s0_mclk
> +		     &i2s0_sclk
> +		     &i2s0_sdi0
> +		     &i2s0_sdo0>;
> +	status = "okay";
> +
> +	i2s0_8ch_p0: port {
> +		i2s0_8ch_p0_0: endpoint {
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +			remote-endpoint = <&rt5616_p0_0>;
> +		};
> +	};
> +};
> +
> +&pcie2x1l1 { /* M.2 E-key 2230 */
> +	vpcie3v3-supply = <&vdd_mpcie_3v3>;
> +};
> +
> +&pcie2x1l2 { /* M.2 M-key 2280 */
> +	pinctrl-0 = <&pcie2_2_rst>, <&pcie20x1m0_clkreqn>, <&pcie20x1m0_waken>;
> +	vpcie3v3-supply = <&vcc_3v3_pcie>;
> +};
> +
> +&pinctrl {
> +	gpio-leds {
> +		sys_led_pin: sys-led-pin {
> +			rockchip,pins = <1 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		user_led_pin: user-led-pin {
> +			rockchip,pins = <1 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	headphone {
> +		hp_det: hp-det {
> +			rockchip,pins = <1 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pcie {
> +		pcie2_2_pwren: pcie2-2-pwren {
> +			rockchip,pins = <3 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb {
> +		typec5v_pwren: typec5v-pwren {
> +			rockchip,pins = <3 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +};
> +
> +&u2phy3 {
> +	status = "okay";
> +};
> +
> +&u2phy3_host {
> +	phy-supply = <&vcc5v0_host_20>;
> +	status = "okay";
> +};
> +
> +&usb_host1_ehci {
> +	status = "okay";
> +};
> +
> +&usb_host1_ohci {
> +	status = "okay";
> +};


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
