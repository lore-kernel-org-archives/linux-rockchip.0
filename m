Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09E57C3DA45
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jul 2024 13:45:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wwnfEds+OUpCRIWAmfII34jgoDuZDsZf/Lo/Z5L37Ow=; b=c5v9A/Qhvyr3Z2mHKJn/5zBCmU
	/BAV3NOz7aJZVkJZ0K8AJwyt3bYHR8LZ7uwT1DZTt2xMOIvqLUQPAfTkqPj6nhvyrf5CGuy2Ke1P4
	zKN67eN1uqFnlS4v+x3kPcn5i1bMf0YB7PPF33GMgK3NVMre4J8gBndRZbbivt4nbYPBlsLYtRUsg
	9kDaePp8cDD8wxF4lpBNUpTclJW+NSjA2bwSXDkz/LaCqJDvC6Sz83BogEWbiTfJ2rUciOhJFZlIo
	Lg2tSGy3arKp4jwRrjPFlJOpevtUq2iBbSSyGizb3ROde16z/M2e8JW161OrdhRBmktIA5dN0ftco
	Wt5URPIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSd49-00000002czb-3hoM;
	Sat, 13 Jul 2024 13:45:33 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSd3q-00000002cvX-1PII;
	Sat, 13 Jul 2024 13:45:15 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1720878312;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zBlJCTyiZARSLO/el6PG9PRmgYzh8nmB0faef8GxGsQ=;
	b=kL6YdSiiOUK8/Fs6887upub56bEbhnnMWZV/yxGjSE7y6QOZNDdYHysKbyXBgnm2yK23pb
	REFRZMwWc0QpSLCbriwQwgpMJsUeHGh+boiw57Em2kgTKpz0mpRu7UDtY7nw7LUH4DquBL
	Ndf2wQn3sq5WrURmf1VVc4TvMjS/avBfv/fJJYejXLNmsLhyBDL0mD/VeRxqQrtFPKoFvs
	bmkjErXXLA4PBpe7shnfxfunmPgUXEMC2+F+r22C9aFJG7LzYukpME18XJZULUrVJC5vFT
	SyXgg/wqlnG9PRBklOUupGSOUhqa/qWkwkQsFlVjFwitboLYZZxt6vpEvVzgqg==
Date: Sat, 13 Jul 2024 15:45:12 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Johan
 Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH v3 1/2] arm64: dts: rockchip: Add sdmmc_ext for RK3328
In-Reply-To: <20240710132830.14710-3-didi.debian@cknow.org>
References: <20240710132830.14710-1-didi.debian@cknow.org>
 <20240710132830.14710-3-didi.debian@cknow.org>
Message-ID: <72718d8d02c25993c138567c96340792@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240713_064514_569496_9FE753E4 
X-CRM114-Status: GOOD (  12.90  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Diederik,

On 2024-07-10 15:28, Diederik de Haas wrote:
> From: Alex Bee <knaerzche@gmail.com>
> 
> RK3328 SoC has a fourth mmc controller called SDMMC_EXT. Some
> boards have sdio wifi connected to it. In order to use it
> one would have to add the pinctrls from sdmmc0ext group which
> is done on board level.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>

Looking good to me, cross-referencing the RK3328 TRM and the downstream
RK3328 SoC dtsi checks out.  Though, it will remain inert in our 
codebase,
because no supported boards use it, but that's fine, we're still 
improving
the correctness of the RK3328 SoC dtsi.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> index b01efd6d042c..95c3f1303544 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> @@ -1036,6 +1036,20 @@ usb_host0_ohci: usb@ff5d0000 {
>  		status = "disabled";
>  	};
> 
> +	sdmmc_ext: mmc@ff5f0000 {
> +		compatible = "rockchip,rk3328-dw-mshc", "rockchip,rk3288-dw-mshc";
> +		reg = <0x0 0xff5f0000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 4 IRQ_TYPE_LEVEL_HIGH>;
> +		clocks = <&cru HCLK_SDMMC_EXT>, <&cru SCLK_SDMMC_EXT>,
> +			 <&cru SCLK_SDMMC_EXT_DRV>, <&cru SCLK_SDMMC_EXT_SAMPLE>;
> +		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> +		fifo-depth = <0x100>;
> +		max-frequency = <150000000>;
> +		resets = <&cru SRST_SDMMCEXT>;
> +		reset-names = "reset";
> +		status = "disabled";
> +	};
> +
>  	usbdrd3: usb@ff600000 {
>  		compatible = "rockchip,rk3328-dwc3", "snps,dwc3";
>  		reg = <0x0 0xff600000 0x0 0x100000>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
