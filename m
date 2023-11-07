Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 533AEC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 16:00:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LSXm5++pMOYDzNb0Hc/5zXJAZTGXLCJBkhBy0BCBJL0=; b=P4Jjhe7flvCeu4
	vly34zrWADxmfgpY0sC8xutUNzLCyBZ0iz6MvxfsJPmo8NTZPJigfpfvs5Y5DEFGoxE8GN+QBXjRf
	9w11lgbLwbFX+n2zv0i8t64cVrFXOGEal4bEyOs1hzfqk0sJ6ZZNlcsLbVZc2egXl9iZxrbO+IZ+N
	TxlRYgmKi+bn2m/XjmkaqdS6kvJEBsNhpTxFfzoGoHGNFg5RqmjcPj3G+L3M5s6g+ZBSL3GHj+IBP
	C/I97/uVAZEs8NhXZpAWXuADodHOyh3usSSTv6bVnWUp5T+QsWt5yahAS9iciwPKGN+gLT5s55whz
	XnJZ2/BBXz+H1QGb1sZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OVA-001wpl-2V;
	Tue, 07 Nov 2023 16:00:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0OV0-001wiE-12;
	Tue, 07 Nov 2023 16:00:19 +0000
Received: from i53875a93.versanet.de ([83.135.90.147] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r0OUt-0005nU-7g; Tue, 07 Nov 2023 17:00:11 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: davem@davemloft.net, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
 p.zabel@pengutronix.de, robh+dt@kernel.org, sboyd@kernel.org,
 Corentin Labbe <clabbe@baylibre.com>
Cc: ricardo@pardini.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH 4/6] ARM64: dts: rk356x: add crypto node
Date: Tue, 07 Nov 2023 17:00:10 +0100
Message-ID: <4334358.iZASKD2KPV@diego>
In-Reply-To: <20231107155532.3747113-5-clabbe@baylibre.com>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-5-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_080018_362211_2E0471FF 
X-CRM114-Status: GOOD (  15.94  )
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

Am Dienstag, 7. November 2023, 16:55:30 CET schrieb Corentin Labbe:
> Both RK3566 and RK3568 have a crypto IP handled by the rk3588 crypto driver so adds a
> node for it.

please follow other commits in the subject line, i.e.:

"arm64: dts: rockchip: add rk356x crypto node"


Thanks
Heiko
> 
> Tested-by: Ricardo Pardini <ricardo@pardini.net>
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> index 0964761e3ce9..c94a1b535c32 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
> @@ -1070,6 +1070,18 @@ sdhci: mmc@fe310000 {
>  		status = "disabled";
>  	};
>  
> +	crypto: crypto@fe380000 {
> +		compatible = "rockchip,rk3568-crypto";
> +		reg = <0x0 0xfe380000 0x0 0x2000>;
> +		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru ACLK_CRYPTO_NS>, <&cru HCLK_CRYPTO_NS>,
> +			 <&cru CLK_CRYPTO_NS_CORE>;
> +		clock-names = "aclk", "hclk", "core";
> +		resets = <&cru SRST_CRYPTO_NS_CORE>;
> +		reset-names = "core";
> +		status = "okay";
> +	};
> +
>  	i2s0_8ch: i2s@fe400000 {
>  		compatible = "rockchip,rk3568-i2s-tdm";
>  		reg = <0x0 0xfe400000 0x0 0x1000>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
