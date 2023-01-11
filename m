Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 055DEC46467
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:11:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMdOKlELqPtrUvIRcr5YYhIJ3AMUOV8dh6VQxeJUBls=; b=ksUxk4/Mw00o1n
	alXEvaTZ5/Z5u6gH2K3Belc5XBuQbcOAqW79BMFjf5Mk0d8K8FVxweQr1Wvq3tGKZ1ly3D6G/NsCn
	2MUG8y9MxCeMkY/VuTZXE1m0Z/2IsN97J9n7RCppOZAxvnbK7P1YHI5PzcdzBEXKlTk1Yo2aYo6Cd
	ycwW2zcC7dWvKMI5H3fGfDKLy+PouedQjs1YFMdO5FKdrXiBiTA5mLzGxGWWqu7KOQ0WsatkLg2rO
	FPbPtFB6JCLO7bdU+MEFv+1thWJCjPjTaa0hipiwU12TLXU73nc56VIzPbHSHws4ulDh9xHmSmNfJ
	lJWhWvRb4AI+6+rnQruQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFY5C-00Ai72-Hj; Wed, 11 Jan 2023 10:11:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFY4z-00Ai03-4p; Wed, 11 Jan 2023 10:11:34 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFY4r-0004GV-N7; Wed, 11 Jan 2023 11:11:25 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Richard Cochran <richardcochran@gmail.com>, Anand Moon <anand@edgeble.ai>
Cc: Johan Jonker <jbx6244@gmail.com>, Anand Moon <anand@edgeble.ai>, Jagan Teki <jagan@edgeble.ai>, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCHv4 linux-next 3/4] Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
Date: Wed, 11 Jan 2023 11:11:24 +0100
Message-ID: <7148963.18pcnM708K@diego>
In-Reply-To: <20230111064842.5322-3-anand@edgeble.ai>
References: <20230111064842.5322-1-anand@edgeble.ai> <20230111064842.5322-3-anand@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_021133_209579_90D1DD0C 
X-CRM114-Status: GOOD (  18.42  )
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

Am Mittwoch, 11. Januar 2023, 07:48:38 CET schrieb Anand Moon:
> Add Ethernet GMAC node for RV1126 SoC.
> 
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>

patches 2-4 have this Signed-off-by from Jagan again where he is not
not the author but also not the sender.

Also this patch here, needs a fixed subject with the correct prefixes.


Heiko

> ---
> v4: sort the node as reg adds. update the commit message.
> v3: drop the gmac_clkin_m0 & gmac_clkin_m1 fix clock node which are not
>     used, Add SoB of Jagan Teki.
> v2: drop SoB of Jagan Teki.
> ---
>  arch/arm/boot/dts/rv1126.dtsi | 49 +++++++++++++++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> index 1cb43147e90b..1f07d0a4fa73 100644
> --- a/arch/arm/boot/dts/rv1126.dtsi
> +++ b/arch/arm/boot/dts/rv1126.dtsi
> @@ -332,6 +332,55 @@ timer0: timer@ff660000 {
>  		clock-names = "pclk", "timer";
>  	};
>  
> +	gmac: ethernet@ffc40000 {
> +		compatible = "rockchip,rv1126-gmac", "snps,dwmac-4.20a";
> +		reg = <0xffc40000 0x4000>;
> +		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "macirq", "eth_wake_irq";
> +		rockchip,grf = <&grf>;
> +		clocks = <&cru CLK_GMAC_SRC>, <&cru CLK_GMAC_TX_RX>,
> +			 <&cru CLK_GMAC_TX_RX>, <&cru CLK_GMAC_REF>,
> +			 <&cru ACLK_GMAC>, <&cru PCLK_GMAC>,
> +			 <&cru CLK_GMAC_TX_RX>, <&cru CLK_GMAC_PTPREF>;
> +		clock-names = "stmmaceth", "mac_clk_rx",
> +			      "mac_clk_tx", "clk_mac_ref",
> +			      "aclk_mac", "pclk_mac",
> +			      "clk_mac_speed", "ptp_ref";
> +		resets = <&cru SRST_GMAC_A>;
> +		reset-names = "stmmaceth";
> +
> +		snps,mixed-burst;
> +		snps,tso;
> +
> +		snps,axi-config = <&stmmac_axi_setup>;
> +		snps,mtl-rx-config = <&mtl_rx_setup>;
> +		snps,mtl-tx-config = <&mtl_tx_setup>;
> +		status = "disabled";
> +
> +		mdio: mdio {
> +			compatible = "snps,dwmac-mdio";
> +			#address-cells = <0x1>;
> +			#size-cells = <0x0>;
> +		};
> +
> +		stmmac_axi_setup: stmmac-axi-config {
> +			snps,wr_osr_lmt = <4>;
> +			snps,rd_osr_lmt = <8>;
> +			snps,blen = <0 0 0 0 16 8 4>;
> +		};
> +
> +		mtl_rx_setup: rx-queues-config {
> +			snps,rx-queues-to-use = <1>;
> +			queue0 {};
> +		};
> +
> +		mtl_tx_setup: tx-queues-config {
> +			snps,tx-queues-to-use = <1>;
> +			queue0 {};
> +		};
> +	};
> +
>  	emmc: mmc@ffc50000 {
>  		compatible = "rockchip,rv1126-dw-mshc", "rockchip,rk3288-dw-mshc";
>  		reg = <0xffc50000 0x4000>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
