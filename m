Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64ACC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 13:25:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 409BC61458
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 13:25:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 409BC61458
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=lunn.ch
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9hY6AvhK1lnVxvkXVZ6BFSDZGiw0Q908/apgSNfjrFo=; b=mRdTYHJcKzT1nFN9NveWpuuH4
	2RcF2sJ4rO50wh2k8s74hCJgJxmgrKRK1lOCg3IUgkF1qIAYxPBaVG1UcTAR2GRhzaLPAc363Nk53
	+S/85S+QsbFBrKOlWO9MKel5wqwWcBh4M5C2RFT+xFJ714HyFzImJTrcZx80YPEJRjYiJcHyAltmR
	plPBAeDRZAH+hVQ1JHhxHbNIc7DeaDxAuLec3dorL0nqg4xW+2WLsIO82RiTxGy6C8Cjqy4siAHWZ
	gq5xJ40e9f489nOMDyMY2hozZ0rCL8WOngR0hWY5JCFi39hQJpKThJdfMWwgERX4EWyNVNYYX/v+q
	dS0jV+06Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhXoP-00885R-He; Fri, 14 May 2021 13:25:07 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhXoO-00885D-AR
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 13:25:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bKrIdux+WQDhbsuj/L6O78Gu9Fpi7TdC9aFvwWVLPns=; b=yvhQFwfVabj+zG1B4UkhFgnjou
 AbldqF82IiYXWfpgpmo75mPbv48wBCwZz+Goa9LAA7d/ARfU5gJMPERV7EN89ZdHhKVpapOLC9Zi4
 lo819LWuLkraAqtQXM7N3rgQaKZ0UsElie3YiSHJoRh4vEnrzBmsMRmPvEhQ1T3DkwJ8v1XSGGBy9
 Y6YFqSOhAIRuAf3HLXLOaB7jheaHcUumFapAY68M4iVtY4EROGCklHMffDV8l3NyZ7ocvBAIRcImH
 FEB2jn5TvKnLKuE9KKjxOa/dtZMTDLMQszVwNbvwRapHmm/87ZB5OE86xMuySyQ8906yx4cyq5Mtz
 G7mhurVA==;
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhXoL-00C08j-SK
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 13:25:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bKrIdux+WQDhbsuj/L6O78Gu9Fpi7TdC9aFvwWVLPns=; b=Uu7s+m0wpC6i6cokaQjN2ujZPy
 46SprCmSQxX+gHsLgzdWIUPaC9JeDRtKNZh9U+08/n3Uf2SG6hGMEmCcbC5UHLqBXrzd48DFJ2NaX
 XzWrdLAk3WP9OOzcX1jfQqypi2sbqw70RFOrOweG/bdCxUOUElNSDsOjni+IxUiSisNM=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1lhXo3-004BmE-AI; Fri, 14 May 2021 15:24:43 +0200
Date: Fri, 14 May 2021 15:24:43 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3] net: phy: add driver for Motorcomm yt8511 phy
Message-ID: <YJ56G23e930pg4Iv@lunn.ch>
References: <20210514115826.3025223-1-pgwipeout@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210514115826.3025223-1-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_062501_942785_110CB020 
X-CRM114-Status: GOOD (  15.58  )
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

On Fri, May 14, 2021 at 07:58:26AM -0400, Peter Geis wrote:
> Add a driver for the Motorcomm yt8511 phy that will be used in the
> production Pine64 rk3566-quartz64 development board.
> It supports gigabit transfer speeds, rgmii, and 125mhz clk output.

Thanks for adding RGMII support.

> +#define PHY_ID_YT8511		0x0000010a

No OUI in the PHY ID?

Humm, the datasheet says it defaults to zero. That is not very
good. This could be a source of problems in the future, if some other
manufacture also does not use an OUI.

> +/* RX Delay enabled = 1.8ns 1000T, 8ns 10/100T */
> +#define YT8511_DELAY_RX		BIT(0)
> +
> +/* TX Delay is bits 7:4, default 0x5
> + * Delay = 150ps * N - 250ps, Default = 500ps
> + */
> +#define YT8511_DELAY_TX		(0x5 << 4)

> +
> +	switch (phydev->interface) {
> +	case PHY_INTERFACE_MODE_RGMII:
> +		val &= ~(YT8511_DELAY_RX | YT8511_DELAY_TX);
> +		break;

This is not correct. YT8511_DELAY_TX will only mask the 2 bits in 0x5,
not all the bits in 7:4. And since the formula is

Delay = 150ps * N - 250ps

setting N to 0 is not what you want. You probably want N=2, so you end up with 50ps

> +	case PHY_INTERFACE_MODE_RGMII_ID:
> +		val |= YT8511_DELAY_RX | YT8511_DELAY_TX;
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_RXID:
> +		val &= ~(YT8511_DELAY_TX);
> +		val |= YT8511_DELAY_RX;

The delay should be around 2ns. For RX you only have 1.8ns, which is
probably good enough. But for TX you have more flexibility. You are
setting it to the default of 500ps which is too small. I would suggest
1.85ns, N=14, so it is the same as RX.

I also wonder about bits 15:12 of PHY EXT ODH: Delay and driver
strength CFG register.

	 Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
