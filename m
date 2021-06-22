Return-Path: <SRS0=+Xhu=LQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AF92C48BDF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:37:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A06C6613B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Jun 2021 10:37:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A06C6613B2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xrqcr86iCNGceY58Q6UK/O4nWbk8PGcI74MC276O+88=; b=fu1Owa5VE7Hiij
	ZHVBLgk6SHAoutOAuBBCWZr0xRUwoCrSYiwt4xmGV/RY//2FMWpYGQ0KHSYGs9P9SVdUku3zh261f
	cHr9J5YibwCGDaDbWEoflzqSpN910p/2uCY/ZIWVhRajkE/46OgPKsIk48IzfL9SmWr/JIBsM0uWR
	oFuRK15s09SYmvD9pGto1zDUTKxHY2IehlS7NWPAybTvU/UYdwit3wi5K/PNHxFncj3OXV1X9CdO+
	SLZjk07WyHVu9hn6E20M5/9B4PMXP3XmAPPUuraYNFa7m6iZGy7WvCtfUWCbg+QN2hCpTQNLuqjhA
	D5RK99OHLAOh4jlmN/gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lvdmP-006i2v-Kr; Tue, 22 Jun 2021 10:37:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lvdm8-006har-Pw; Tue, 22 Jun 2021 10:37:02 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lvdm7-00034a-L9; Tue, 22 Jun 2021 12:36:59 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: cl@rock-chips.com
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com
Subject: Re: [PATCH 09/10] arm64: dts: rockchip: add pwm nodes for rk3568
Date: Tue, 22 Jun 2021 12:36:59 +0200
Message-ID: <4401172.xlVK0Xs8nM@diego>
In-Reply-To: <20210622102907.99242-1-heiko@sntech.de>
References: <20210622102907.99242-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210622_033700_897345_0811BDBF 
X-CRM114-Status: GOOD (  15.99  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Am Dienstag, 22. Juni 2021, 12:29:06 CEST schrieb Heiko Stuebner:
> From: Liang Chen <cl@rock-chips.com>
> 
> Add the pwm controller nodes to the core rk3568 dtsi.
> 
> Signed-off-by: Liang Chen <cl@rock-chips.com>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

please ignore the numbering, as they should be
09/10 -> 1/2
10/10 -> 2/2

> ---
>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 176 +++++++++++++++++++++++
>  1 file changed, 176 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> index d225e6a45d5c..33db226b46cb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
> @@ -257,6 +257,50 @@ uart0: serial@fdd50000 {
>  		status = "disabled";
>  	};
>  
> +	pwm0: pwm@fdd70000 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfdd70000 0x0 0x10>;
> +		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm0m0_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm1: pwm@fdd70010 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfdd70010 0x0 0x10>;
> +		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm1m0_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm2: pwm@fdd70020 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfdd70020 0x0 0x10>;
> +		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm2m0_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm3: pwm@fdd70030 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfdd70030 0x0 0x10>;
> +		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm3_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
>  	sdmmc2: mmc@fe000000 {
>  		compatible = "rockchip,rk3568-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0x0 0xfe000000 0x0 0x4000>;
> @@ -525,6 +569,138 @@ uart9: serial@fe6d0000 {
>  		status = "disabled";
>  	};
>  
> +	pwm4: pwm@fe6e0000 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe6e0000 0x0 0x10>;
> +		clocks = <&cru CLK_PWM1>, <&cru PCLK_PWM1>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm4_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm5: pwm@fe6e0010 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe6e0010 0x0 0x10>;
> +		clocks = <&cru CLK_PWM1>, <&cru PCLK_PWM1>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm5_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm6: pwm@fe6e0020 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe6e0020 0x0 0x10>;
> +		clocks = <&cru CLK_PWM1>, <&cru PCLK_PWM1>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm6_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm7: pwm@fe6e0030 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe6e0030 0x0 0x10>;
> +		clocks = <&cru CLK_PWM1>, <&cru PCLK_PWM1>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm7_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm8: pwm@fe6f0000 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe6f0000 0x0 0x10>;
> +		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm8m0_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm9: pwm@fe6f0010 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe6f0010 0x0 0x10>;
> +		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm9m0_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm10: pwm@fe6f0020 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe6f0020 0x0 0x10>;
> +		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm10m0_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm11: pwm@fe6f0030 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe6f0030 0x0 0x10>;
> +		clocks = <&cru CLK_PWM2>, <&cru PCLK_PWM2>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm11m0_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm12: pwm@fe700000 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe700000 0x0 0x10>;
> +		clocks = <&cru CLK_PWM3>, <&cru PCLK_PWM3>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm12m0_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm13: pwm@fe700010 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe700010 0x0 0x10>;
> +		clocks = <&cru CLK_PWM3>, <&cru PCLK_PWM3>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm13m0_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm14: pwm@fe700020 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe700020 0x0 0x10>;
> +		clocks = <&cru CLK_PWM3>, <&cru PCLK_PWM3>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm14m0_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
> +	pwm15: pwm@fe700030 {
> +		compatible = "rockchip,rk3568-pwm", "rockchip,rk3328-pwm";
> +		reg = <0x0 0xfe700030 0x0 0x10>;
> +		clocks = <&cru CLK_PWM3>, <&cru PCLK_PWM3>;
> +		clock-names = "pwm", "pclk";
> +		pinctrl-0 = <&pwm15m0_pins>;
> +		pinctrl-names = "active";
> +		#pwm-cells = <3>;
> +		status = "disabled";
> +	};
> +
>  	pinctrl: pinctrl {
>  		compatible = "rockchip,rk3568-pinctrl";
>  		rockchip,grf = <&grf>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
