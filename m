Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F75CE7718F
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jan 2025 10:27:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sy1vgkPnK2ln0h530onmJGdZu7zhJvgNGh9ltapv3Xo=; b=i1LQLC1IU9DuLC
	fk1VDz+4Ocs3L2gjq8NDA/fV+cC30P39etlwySPCqRrKbfNI0Kk+amlKnKYATxw7jCyhFULqC7HaH
	WrfU+5uN/Ib/67Wx16MO4ObO0aW2cPfEaHKklhuS5TzOyekBjOAfXK8FMSQ6AHwO4to9unKWJwciE
	V17PQosnxzyeqpAI3eUrmohaXs3Qb2an86gXoylXCdkaDj6REVSI9BjtYaUnsd3S17/cyWe+as9Jg
	yemoX5Qq/tpai6eLPmbPTt1myTM7O4qS4uL6fppTluHuohTeRYXFgQj5nwmLB2DCDLSpMCc3ek7UG
	PgG9FdzYdOy15F94RVNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tTetz-0000000Cj4r-0STa;
	Fri, 03 Jan 2025 10:27:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tTesl-0000000CixJ-0uCx;
	Fri, 03 Jan 2025 10:26:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=qydpwgXPz9Wixx3t9KzK1lAYRqTDBTbteo+7OTMSSa8=; b=hzi0Mp/5MraSm51723Uoi4XXGt
	LFeYt4p8WgnT+UX7sMDnDgvrW3xnzmJ/Vn3StkGRanW58a20sPd14dGjYKjULnbuOxNM56ByphzeB
	9CoxaVNc4ttuisdqKm8t0wUkUtm7z26OrreHvCkQUI8CKCVAoWb7eeHcVwRjCu3Xl7fg4GET9rKdh
	snxAF4nHDBW0bgKcrQDI3oYvcgTjTCW9zN/bcB3C0Oq3+OBQHnIsaV3rEj80PusglNU41R4RF2bFV
	vTnW7eJuHh/BD3uo5PvuBlm4dJ55n/oC3k2RuBnX0fqbX+iN58KqZki2ZY5GgBpi1dXNTkpHgoNuw
	KOUw1m/Q==;
Received: from i53875aad.versanet.de ([83.135.90.173] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tTesc-0005uk-LE; Fri, 03 Jan 2025 11:26:10 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: jonas@kwiboo.se, Chukun Pan <amadeus@jmu.edu.cn>
Cc: amadeus@jmu.edu.cn, conor+dt@kernel.org, devicetree@vger.kernel.org,
 kishon@kernel.org, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 liujianfeng1994@gmail.com, p.zabel@pengutronix.de, robh@kernel.org,
 vkoul@kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: rk3568: add reset-names for combphy
Date: Fri, 03 Jan 2025 11:26:09 +0100
Message-ID: <4647350.cEBGB3zze1@diego>
In-Reply-To: <20250103033016.79544-1-amadeus@jmu.edu.cn>
References: <688c8fb6-68f7-45f1-98fc-8b3252b3ecbf@kwiboo.se>
 <20250103033016.79544-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250103_022619_279952_4C95E658 
X-CRM114-Status: GOOD (  18.18  )
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

Am Freitag, 3. Januar 2025, 04:30:16 CET schrieb Chukun Pan:
> > The other patch in this series:
> > arm64: dts: rockchip: rk3568: add reset-names for combphy
> > is missing in v6.13-rc5, which will break pcie2 of rk3568
> > because the phy driver has changed.
> 
> I don't know why the dts patch hasn't been merged into the mainline yet.

because it was christmas ;-) .

> Maybe the merge window is different. Can you test the following patch?

But in any case, the driver _must_ stay compatible with old devicetrees.
I.e. requiring a DT update is a general no-go.


> ```
> --- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> +++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
> @@ -325,6 +325,10 @@ static int rockchip_combphy_parse_dt(struct device *dev, struct rockchip_combphy
>  	priv->ext_refclk = device_property_present(dev, "rockchip,ext-refclk");
>  
>  	priv->phy_rst = devm_reset_control_get(dev, "phy");
> +	/* fallback to old behaviour */
> +	if (IS_ERR_OR_NULL(priv->phy_rst))
> +		priv->phy_rst = devm_reset_control_array_get_exclusive(dev);
> +

This looks like a reasonable fallback

>  	if (IS_ERR(priv->phy_rst))
>  		return dev_err_probe(dev, PTR_ERR(priv->phy_rst), "failed to get phy reset\n");


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
