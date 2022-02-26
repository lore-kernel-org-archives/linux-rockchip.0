Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02CF7C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:09:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nLqlh923dDWFHirQRPpb4cb8oaFjUkVN0zC5XP07u3M=; b=eugtaQ8py/oRSv
	VIQmRRsPaLnBY8eiOvV/tQTF01yWEZ3M2qXXY6OszpLFibI551/aYWglJr98YmHNX0AdW3165T8Ai
	T+91VjlqczMNFIfsloQClc5tJqEC6UmRWa1iZXumWoXQg4nlXDp6S2gS06g6D9C5A5hc3gSpsT7Uv
	z4oTADOFzOLOIzfHUfaFjX4XCmCtXIJJi+v2zr7j93RYSd9pMsTFGpRlIjkFUA6CdKnifJzSpG138
	EjMea1fi6TMV0/GmqXN5PaI6LVBGqyOc3uNe98XmfVxNb5UkPs+3AZiNV/c02i4wSxovAt2pEXR3r
	gQM0+kiZzcipdeAz8sQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO1VH-008KoE-2i; Sat, 26 Feb 2022 18:09:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO1VC-008Kmp-FV; Sat, 26 Feb 2022 18:09:09 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nO1Ux-0008U9-7Z; Sat, 26 Feb 2022 19:08:51 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Frank Wunderlich <linux@fw-web.de>
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: rockchip: Add sata2 node to rk356x
Date: Sat, 26 Feb 2022 19:08:50 +0100
Message-ID: <2815432.3mA4caTK8C@diego>
In-Reply-To: <20220226135724.61516-1-linux@fw-web.de>
References: <20220226135724.61516-1-linux@fw-web.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_100906_553832_B196DD43 
X-CRM114-Status: GOOD (  19.47  )
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

Hi Frank,

Am Samstag, 26. Februar 2022, 14:57:24 CET schrieb Frank Wunderlich:
> From: Frank Wunderlich <frank-w@public-files.de>
> 
> RK356x supports up to 3 sata controllers which were compatible with the
> existing snps,dwc-ahci binding.
> 
> My board has only sata2 connected to combphy2 so only add this one.

how far does the added node diverge from the vendor kernel?

If it's pretty much similar between both, we can assume the other nodes
should work pretty well as well and therefore should all of them at once
and hope for the best?

Thanks
Heiko

> Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 7cdef800cb3c..7b6c8a0c8b84 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -230,6 +230,21 @@ scmi_shmem: sram@0 {
>  		};
>  	};
>  
> +	sata2: sata@fc800000 {
> +		compatible = "snps,dwc-ahci";
> +		reg = <0 0xfc800000 0 0x1000>;
> +		clocks = <&cru ACLK_SATA2>, <&cru CLK_SATA2_PMALIVE>,
> +			 <&cru CLK_SATA2_RXOOB>;
> +		clock-names = "sata", "pmalive", "rxoob";
> +		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
> +		interrupt-names = "hostc";
> +		phys = <&combphy2 PHY_TYPE_SATA>;
> +		phy-names = "sata-phy";
> +		ports-implemented = <0x1>;
> +		power-domains = <&power RK3568_PD_PIPE>;
> +		status = "disabled";
> +	};
> +
>  	gic: interrupt-controller@fd400000 {
>  		compatible = "arm,gic-v3";
>  		reg = <0x0 0xfd400000 0 0x10000>, /* GICD */
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
