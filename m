Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3890C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 18:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiVFG0fegBt0M7mlT/49a6lOLsLWe7spAg5yc7f9+KE=; b=V01dXB/h8Db/Tp
	0FBv0jJVT6rmWaRu1geh0Q3BKdrmO24saKPznzP3p57Gus8kWuHDvfN7dV7INvBeS/PuaKaLnoaAU
	R3jLuSRIFkaUF4H1tPlJsZQa9UoiqW/1Ppb3ybBDO9CujobKhstQZ+HVNSHbl4OJO0+DIHq/yOy/M
	C+Fqpmes5UvsvBZ4Gz3YPFFQu/o3hsHkW5oZHx0XiydMhx32zwptBvJyzxnb43z97Eui6cBWVEuhq
	KYuFYAvb0zDnaIdBuVT7996zE5+CR6hcZ+aRyISe+tHSymoXSy2dYZrw9UXaOpfQ80pUHJu63+MBn
	989kbDcY6vpVg/6xMwNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryyXU-0000000Ecm8-1Go0;
	Mon, 22 Apr 2024 18:37:16 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ryyXR-0000000EclG-07ox
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Apr 2024 18:37:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1713811022;
 bh=FlBAbNs+0ZH1BEM+UXV8F2ZO+BzWQaxaQLhAsfyYQ2s=;
 b=UYDUZi4+43sDpRW6TR7UCehqWPxGlX9DAJBHkt7cqdFgLD/fUCJI96s7zBirb1Vj/b+SbDFVV
 dIK54EyoAoVCtl/WPG6lTqwCiEdWsiOaFNlm9aD23pjE009MwCJJmgadz6uvDJw67eq0Il5QNY4
 qkeYfLirENnDWoDc5qdUBGtdmVWut6gS2eTKvGlxWBDI+dlLFPUxOE8Ozwlp9KpwU2oHKYUCoUd
 VUeK/G225cB8kwNSWAAFbZOsjfFTFAmiF9gGDV0M6Im8aQ0wIJR70d0G/f7H2CxllQDfH7AF+hq
 7i8oeMEcYWC3JuM0ZPb+omXUPPQvbpG9rTMJ5K8o/fCw==
Message-ID: <f33c0c0b-979b-4f50-89f7-976832968494@kwiboo.se>
Date: Mon, 22 Apr 2024 20:36:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: rockchip: add PCIe3 support on
 rk3588-jaguar
To: Heiko Stuebner <heiko@sntech.de>, Heiko Stuebner
 <heiko.stuebner@cherry.de>
Cc: quentin.schulz@theobroma-systems.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240422133502.2592975-1-heiko@sntech.de>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20240422133502.2592975-1-heiko@sntech.de>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 6626ae4c936d77d66ebdc27d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_113713_825538_344E6643 
X-CRM114-Status: GOOD (  17.85  )
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

Hi Heiko,

On 2024-04-22 15:35, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The Jaguar SBC provides an M.2 slot connected to the pcie3 controller.
> In contrast to a number of other boards the pcie-refclk is gpio-controlled,
> so the necessary clock and is added to the list of pcie3 clocks.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> ---
> changes in v3:
> - drop unnecessary pinctrl comment (Quentin)
> - add Quentin's review
> 
> changes in v2:
> - "an" M.2 slot (Dragan)
> - pinctrl for refclk-en and reset pin (Quentin)
> - don't repurpose the pcie30x4_pins pinctrl entry for only wake (Quentin)
> 
>  .../arm64/boot/dts/rockchip/rk3588-jaguar.dts | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
> index 4076c92668ba..0ad53d7768a3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
> @@ -72,6 +72,27 @@ led-1 {
>  		};
>  	};
>  
> +	/*
> +	 * 100MHz reference clock for PCIe peripherals from PI6C557-05BLE
> +	 * clock generator.
> +	 * The clock output is gated via the OE pin on the clock generator.
> +	 * This is modeled as a fixed-clock plus a gpio-gate-clock.
> +	 */
> +	pcie_refclk_gen: pcie-refclk-gen-clock {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <1000000000>;

This should probably be 100000000 (100 MHz) and not 1 GHz?

Regards,
Jonas

> +	};
> +
> +	pcie_refclk: pcie-refclk-clock {
> +		compatible = "gpio-gate-clock";
> +		clocks = <&pcie_refclk_gen>;
> +		#clock-cells = <0>;
> +		enable-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>; /* PCIE30X4_CLKREQN_M0 */
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie30x4_clkreqn_m0>;
> +	};
> +
>  	pps {
>  		compatible = "pps-gpio";
>  		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
> @@ -358,6 +379,30 @@ &pcie2x1l0 {
>  	status = "okay";
>  };
>  
> +&pcie30phy {
> +	status = "okay";
> +};
> +
> +&pcie3x4 {
> +	/*
> +	 * The board has a gpio-controlled "pcie_refclk" generator,
> +	 * so add it to the list of clocks.
> +	 */
> +	clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
> +		 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
> +		 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>,
> +		 <&pcie_refclk>;
> +	clock-names = "aclk_mst", "aclk_slv",
> +		      "aclk_dbi", "pclk",
> +		      "aux", "pipe",
> +		      "ref";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie30x4_waken_m0 &pcie30x4_perstn_m0>;
> +	reset-gpios = <&gpio0 RK_PD0 GPIO_ACTIVE_HIGH>; /* PCIE30X4_PERSTN_M0 */
> +	vpcie3v3-supply = <&vcc3v3_mdot2>;
> +	status = "okay";
> +};
> +
>  &pinctrl {
>  	emmc {
>  		emmc_reset: emmc-reset {
> @@ -376,6 +421,20 @@ led1_pin: led1-pin {
>  			rockchip,pins = <1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>  		};
>  	};
> +
> +	pcie30x4 {
> +		pcie30x4_clkreqn_m0: pcie30x4-clkreqn-m0 {
> +			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie30x4_perstn_m0: pcie30x4-perstn-m0 {
> +			rockchip,pins = <0 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie30x4_waken_m0: pcie30x4-waken-m0 {
> +			rockchip,pins = <0 RK_PC7 12 &pcfg_pull_none>;
> +		};
> +	};
>  };
>  
>  &saradc {


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
