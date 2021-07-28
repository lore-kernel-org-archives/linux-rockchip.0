Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11BA4C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:21:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9ACB160F02
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:21:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9ACB160F02
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KoVgYUMsz450tnhSsFJkBrYJmnq6+JIzWNBE1dlFw5o=; b=q65JOeQcwYc7Lz
	3Z7CCpr413ss4Mzt9Lk6Qthtv5HjA59yajOG3OVnfNDWmN4vt6iBrkFHSz+FCMYSbn06Hk5Z5Ishj
	CgtyoK/BUGexOw69J7vQfhgMAO7VrYXGE1SezOa63nKsjiBx4jntg4q6zs/Ze0/bGf6yquT1e494V
	fJy6cOpBEN40i/DUQqeq4IDkux20b48MwZFQarIFmvTNLqvvZh3KdnU7+H2EYSQVrgfP0lWX0r0zJ
	YGvLNGoWVSi5MjpMwn9ry1zUglyU0NiD6d7JQiohuY0iRzhGXK4GYO2kSxTgql/BIdmlyqdh0/i0c
	6lXiH9pk9FGUOtJI2rRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kRK-0013eP-Ar; Wed, 28 Jul 2021 14:21:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8kQv-0013Up-SE; Wed, 28 Jul 2021 14:21:19 +0000
Received: from [95.90.166.74] (helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m8kQu-00062f-4X; Wed, 28 Jul 2021 16:21:16 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Peter Geis <pgwipeout@gmail.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 4/9] arm64: dts: rockchip: add rk356x gmac1 node
Date: Wed, 28 Jul 2021 16:21:15 +0200
Message-ID: <21568327.EfDdHjke4D@diego>
In-Reply-To: <20210728135534.703028-5-pgwipeout@gmail.com>
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-5-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_072117_989192_385F9A5A 
X-CRM114-Status: GOOD (  18.83  )
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

Hi Peter,

Am Mittwoch, 28. Juli 2021, 15:55:29 CEST schrieb Peter Geis:
> Add the gmac1 controller to the rk356x device tree.
> This is the controller common to both the rk3568 and rk3566.
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 48 ++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index c2aa7aeec58d..77c679304916 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -18,6 +18,7 @@ / {
>  	#size-cells = <2>;
>  
>  	aliases {
> +		ethernet1 = &gmac1;
>  		gpio0 = &gpio0;
>  		gpio1 = &gpio1;
>  		gpio2 = &gpio2;

Looking back at the discussion about mmc aliases in board-dts vs. soc-dtsi
I get the feeling the ethernet alias would be same case, as not all boards
will expose ethernet.

In the very least the ethernet alias should be part of the rk3566/rk3568 dtsi
files, doing ethernet0 = &gmac1 for rk3566 and ethernet1 = &gmac1 for rk3568.

But I do think the board-dts would be the more appropriate place.


Heiko

> @@ -344,6 +345,53 @@ sdmmc2: mmc@fe000000 {
>  		status = "disabled";
>  	};
>  
> +	gmac1: ethernet@fe010000 {
> +		compatible = "rockchip,rk3568-gmac", "snps,dwmac-4.20a";
> +		reg = <0x0 0xfe010000 0x0 0x10000>;
> +		interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "macirq", "eth_wake_irq";
> +		clocks = <&cru SCLK_GMAC1>, <&cru SCLK_GMAC1_RX_TX>,
> +			 <&cru SCLK_GMAC1_RX_TX>, <&cru CLK_MAC1_REFOUT>,
> +			 <&cru ACLK_GMAC1>, <&cru PCLK_GMAC1>,
> +			 <&cru SCLK_GMAC1_RX_TX>, <&cru CLK_GMAC1_PTP_REF>;
> +		clock-names = "stmmaceth", "mac_clk_rx",
> +			      "mac_clk_tx", "clk_mac_refout",
> +			      "aclk_mac", "pclk_mac",
> +			      "clk_mac_speed", "ptp_ref";
> +		resets = <&cru SRST_A_GMAC1>;
> +		reset-names = "stmmaceth";
> +		rockchip,grf = <&grf>;
> +		snps,mixed-burst;
> +		snps,tso;
> +		snps,axi-config = <&gmac1_stmmac_axi_setup>;
> +		snps,mtl-rx-config = <&gmac1_mtl_rx_setup>;
> +		snps,mtl-tx-config = <&gmac1_mtl_tx_setup>;
> +		status = "disabled";
> +
> +		mdio1: mdio {
> +			compatible = "snps,dwmac-mdio";
> +			#address-cells = <0x1>;
> +			#size-cells = <0x0>;
> +		};
> +
> +		gmac1_stmmac_axi_setup: stmmac-axi-config {
> +			snps,wr_osr_lmt = <4>;
> +			snps,rd_osr_lmt = <8>;
> +			snps,blen = <0 0 0 0 16 8 4>;
> +		};
> +
> +		gmac1_mtl_rx_setup: rx-queues-config {
> +			snps,rx-queues-to-use = <1>;
> +			queue0 {};
> +		};
> +
> +		gmac1_mtl_tx_setup: tx-queues-config {
> +			snps,tx-queues-to-use = <1>;
> +			queue0 {};
> +		};
> +	};
> +
>  	qos_gpu: qos@fe128000 {
>  		compatible = "rockchip,rk3568-qos", "syscon";
>  		reg = <0x0 0xfe128000 0x0 0x20>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
