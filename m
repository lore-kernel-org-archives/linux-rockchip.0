Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63ED4D41C3C
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Nov 2024 12:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dOEBT65XsBz2dVV3BgFvyDf7f9jmUxjoOMWMDZJrFQE=; b=yjbZAaN1bppRzv
	69syXXcrGdCi8aGzgBfyoRSiu1ln/CY1RDBmrzRFe+CGCjrLqYj5/3TRrbkwH06lJcvkelMA3unDL
	VT41dJzjryuvonVe1oTadMH1XzhTaiQ3znhiU7/AVSN/hASJa3r6+n/tWOUXzjf1O17OquxDD8bfa
	jSQOM9RbMbzDRq3+QYUvoSHX8yj/ZIzbgOFBqcE20DNXjWg4v5S+O9o3ZJpkaeoNel7yOndjTs8Bk
	2XktBESdTHC7v8BM15v0DhpHjL+snawilvmK0Wc3QhnMiy3IBKgQyLGV/igs6IjALBVpBjdKo959N
	gLf2o6V0MNlSbjQKfZHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tBCgc-00000006nXm-2jTE;
	Wed, 13 Nov 2024 12:41:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tBCem-00000006n8m-3ND7;
	Wed, 13 Nov 2024 12:39:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=KmeKU28bQtzm8XNGcvF30DDJ+SoCDTx1YSZjcXEcLKI=; b=2SQyVf+hPTARrHZbuwXr/dxWZx
	0CnmRSDkpJ36NC9AriqR4Sw7jSgBsKxRehtKc7D6tTG9eW6NuhlCfkVO8QSRGg2BBgCI5puI6plCW
	iP5vv2vMXErkCefUx2KyVCSqU21B2pU0fheOT5n2UJdjzsNGf7mKHS2mgwu//nd7qnaQZzqpVo/fk
	zmclxzYC56fex2+pLaC1uPQOeYWOrLVdlsyRAot+2h1yD5tvfrIVxpj/XEV79UT1JRTYrDQJSBe9a
	+JCxMChIJBYz1efnoTr8MN1EfXh2pKJQIj5pcUx53Lz6PNYBEaoRBWJRST8R+MG+F0m7pnbFUUxyc
	9HcAMXpg==;
Received: from i53875a30.versanet.de ([83.135.90.48] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tBCeh-00033b-66; Wed, 13 Nov 2024 13:39:31 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v2 2/2] phy: rockchip: Add Samsung CSI/DSI Combo DCPHY driver
Date: Wed, 13 Nov 2024 13:39:30 +0100
Message-ID: <2564703.Sgy9Pd6rRy@diego>
In-Reply-To: <fynyo2amqillioxwfyydvztakba5ecwa2qrtdtuoaffyvwc62c@3vizyubfqvsf>
References: <20241104111121.99274-1-heiko@sntech.de>
 <20241104111121.99274-3-heiko@sntech.de>
 <fynyo2amqillioxwfyydvztakba5ecwa2qrtdtuoaffyvwc62c@3vizyubfqvsf>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241113_043936_896935_41B02597 
X-CRM114-Status: GOOD (  15.91  )
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

> > +static void samsung_mipi_dcphy_bias_block_enable(struct samsung_mipi_dcphy *samsung)
> > +{
> > +	u32 bias_con2 = 0x3223;
> > +
> > +	regmap_write(samsung->regmap, BIAS_CON0, 0x0010);
> > +	regmap_write(samsung->regmap, BIAS_CON1, 0x0110);
> > +	regmap_write(samsung->regmap, BIAS_CON2, bias_con2);
> > +
> > +	/* default output voltage select:
> > +	 * dphy: 400mv
> > +	 * cphy: 530mv
> > +	 */
> > +	regmap_update_bits(samsung->regmap, BIAS_CON4,
> > +			   I_MUX_SEL_MASK, I_MUX_SEL_400MV);
> > +}
> > +
> > +static void samsung_mipi_dcphy_bias_block_disable(struct samsung_mipi_dcphy *samsung)
> > +{
> > +}
> 
> uhm? :)

When there was still the CSI stuff in here, that function still had
content ;-) .

But yeah, if and when that comes back, we can re-add things.


> > +static int samsung_mipi_dcphy_set_mode(struct phy *phy, enum phy_mode mode,
> > +				       int submode)
> > +{
> > +	return 0;
> > +}
> 
> You can just remove this. phy_set_mode_ext() will return 0 byself if
> the callback is NULL.

But it will not set the mode then.

See the part of
	ret = phy->ops->set_mode(phy, mode, submode);
	if (!ret)
		phy->attrs.mode = mode;

Without the set_mode callback phy->attrs.mode will not be set.
And while we don't have anything to do for set_mode itself,
we do need the mipi_dphy mode to be set.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
