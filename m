Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBADDC47DAF
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 16:26:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6g2xY7Ku74pQetZuW6mv9Z654bJoV3SbLaxszW5JeA=; b=a6uV+ejqfdmjpB
	HXVyw/oxXatyVzSyfacaGE+qJWRG1VqTm8E2OshEwoC9rsNqQFB+w98JHZBitpAH8AaVvDVTs9/hH
	h9pBv5AtwvXvJUf7kLe6p+PB+0zjkjvXJ5PUY3dCGv9s7PDv59+fapDN9iFS190TSRSghRo6riwRT
	zw/Xw9okh1A1U9ev5RUiKnUa7GBgKTHT0ckHr1Txy2CNDem6C5m0A/jihmzCbqK1JdVnXVZkYXveY
	JhNOpn2AH6udgmjsNJ5GXHURfQPFaDUkfcFGTkkhcHhx9dyiupzuguY/cfDlmDDAOarWS0gzzOc2t
	fZyEML/SovRdm6uObl+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRx8H-00CxNV-0U;
	Mon, 22 Jan 2024 16:26:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRx8E-00CxK5-0o;
	Mon, 22 Jan 2024 16:26:43 +0000
Received: from i53875b8c.versanet.de ([83.135.91.140] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rRx88-0006my-LB; Mon, 22 Jan 2024 17:26:36 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>
Cc: quentin.schulz@theobroma-systems.com,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH] arm64: dts: rockchip: set num-cs property for spi on px30
Date: Mon, 22 Jan 2024 17:26:35 +0100
Message-ID: <5499059.e8TTKsaY2g@diego>
In-Reply-To: <3617742e-9468-4b58-bdb9-94c880eccb42@gmail.com>
References: <20240119101656.965744-1-heiko@sntech.de>
 <3617742e-9468-4b58-bdb9-94c880eccb42@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_082642_287020_2D7D64CB 
X-CRM114-Status: GOOD (  25.55  )
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

Hi Johan,

Am Montag, 22. Januar 2024, 17:05:11 CET schrieb Johan Jonker:
> Hi,
> 
> On 1/19/24 11:16, Heiko Stuebner wrote:
> > From: Heiko Stuebner <heiko.stuebner@cherry.de>
> >
> > The px30 has two spi controllers with two chip-selects each.
> > The num-cs property is specified as the total number of chip
> > selects a controllers has and is used since 2020 to find uses
> > of chipselects outside that range in the Rockchip spi driver.
> 
> > Without the property set, the default is 1, so spi devices
> > using the second chipselect will not be created.
> 
> 
> num-cs is defined as 32 bit:
> 
>   num-cs:
>     $ref: /schemas/types.yaml#/definitions/uint32
>     description:
> 
>       Total number of chip selects.
> 
> ===
> 
> num-cs is parsed as 16 bit in spi-rockchip.c:
> 
> #define ROCKCHIP_SPI_MAX_CS_NUM <https://elixir.bootlin.com/linux/latest/C/ident/ROCKCHIP_SPI_MAX_CS_NUM>	4+ ctlr->max_native_cs = ROCKCHIP_SPI_MAX_CS_NUM; + /* + * rk spi0 has two native cs, spi1..5 one cs only + * if num-cs is missing in the dts, default to 1 + */ + if (of_property_read_u16(np, "num-cs", &ctlr->num_chipselect)) u32 + ctlr->num_chipselect = 1; + ctlr->use_gpio_descriptors = true; === num-cs: minimum: 1 maximum: 4
> default: 1
> Both the driver as the binding need a little update. Johan

hmm, this confuses me.
Looking at a commit from 2022 [0] that was already fixed in the driver?

So bith the binding and the driver expect u32 values it seems.

[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=9382df0a98aad5bbcd4d634790305a1d786ad224


Heiko

> > Fixes: eb1262e3cc8b ("spi: spi-rockchip: use num-cs property and ctlr->enable_gpiods")
> > Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> > ---
> >  arch/arm64/boot/dts/rockchip/px30.dtsi | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
> > index 42ce78beb413..20955556b624 100644
> > --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
> > @@ -632,6 +632,7 @@ spi0: spi@ff1d0000 {
> >  		clock-names = "spiclk", "apb_pclk";
> >  		dmas = <&dmac 12>, <&dmac 13>;
> >  		dma-names = "tx", "rx";
> > +		num-cs = <2>;
> >  		pinctrl-names = "default";
> >  		pinctrl-0 = <&spi0_clk &spi0_csn &spi0_miso &spi0_mosi>;
> >  		#address-cells = <1>;
> > @@ -647,6 +648,7 @@ spi1: spi@ff1d8000 {
> >  		clock-names = "spiclk", "apb_pclk";
> >  		dmas = <&dmac 14>, <&dmac 15>;
> >  		dma-names = "tx", "rx";
> > +		num-cs = <2>;
> >  		pinctrl-names = "default";
> >  		pinctrl-0 = <&spi1_clk &spi1_csn0 &spi1_csn1 &spi1_miso &spi1_mosi>;
> >  		#address-cells = <1>;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
