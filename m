Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9501C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 08:40:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G086kqw5FAr8nLgbVkKEkGttmSkBsFRDvOpgO7b54b8=; b=NsDmhxoMXeo2mo
	zLOdYOu+cGYqYdJZVzOmk1gxf1sETSjvpP8D8OjVXNcBBaD+pzD07rWndtj/thP3tH1w+6OLL4ygs
	Z2XZdL8bwtkGpTXZj5/1B6OAXIiKDpe73zn1uhAtAPMBk7RhQINJ40liILwLGdKN6yAOUwkh4Sgkk
	IHi71ZL2r4uqT0L6pfBjWsqkGA/BeriMQ7vB+1u4hHQHJyNyJJqJ/ceHIIf+TVO0rel9HoIBd0h9H
	GYAlKc5c0cohkeBWDJc5FhAjMzp5f6jM6sJjaC7CnsAWmNI5GX7esGi6mDbHtVLGL47y8EeQ6oNcl
	e1eFxysrebc8yqQBrUvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggtj-000000087Fi-0Vp0;
	Wed, 21 Aug 2024 08:40:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggsU-0000000870K-3ERh;
	Wed, 21 Aug 2024 08:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=TNlrqR9qfwPAJLvJisUTd40ki99DSrsE8LQudixVXCo=; b=RzFPWaY0ITb98LjfRNdrnfXojD
	UiFpDSbSpC+4Xf1YVqDDeoX50XVWf5eGM5nnvURzqNC7wzzzTzWVrXcCnXnB+bhBmzdW/W6WKvuvW
	boFjTw1gCJpv445Abl+jCLzWA3Ww+uBFHwvBtQLyrjfDDaZ+H6697crz/96q0KTwWHNVtGoSTPk4T
	ovkjji4rU8WzVBb0DUMSHNBJsflqa9Ald49DslM/2uRFI4YaOje18pMS8mGTT8gWnpFzu7J1fdJad
	r8gXH7vQITWhXL2k8LYzT+wVECHvFOW52V/IIxzBW/5Bp2bYK1iAe1XorKaE/NMq/wHPItJ9Pb1v5
	qwoRAupA==;
Received: from i53875aca.versanet.de ([83.135.90.202] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sggsL-0004xm-FZ; Wed, 21 Aug 2024 10:39:29 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Dragan Simic <dsimic@manjaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] phy: phy-rockchip-inno-usb2: Perform trivial code cleanups
Date: Wed, 21 Aug 2024 10:39:54 +0200
Message-ID: <5307900.6fTUFtlzNn@diego>
In-Reply-To: <14167d6b025e18d2a06ee429feea6551ef6f9c44.1724225528.git.dsimic@manjaro.org>
References: <cover.1724225528.git.dsimic@manjaro.org>
 <14167d6b025e18d2a06ee429feea6551ef6f9c44.1724225528.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_013938_864341_4A9FE973 
X-CRM114-Status: GOOD (  12.98  )
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

Am Mittwoch, 21. August 2024, 09:37:53 CEST schrieb Dragan Simic:
> Perform a few trivial code cleanups, e.g. to obey the reverse Christmas tree
> rule, to avoid use of "{ ... }" code blocks where they aren't really needed,
> or to avoid line wrapping by using the 100-column width better.
> 
> No intended functional changes are introduced by these code cleanups.
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>

> @@ -445,7 +445,6 @@ static int rockchip_usb2phy_extcon_register(struct rockchip_usb2phy *rphy)
>  	}
>  
>  	rphy->edev = edev;
> -
>  	return 0;
>  }

depending on how nitpicky we want to be, I'm not very fond of this change.
Assigning the extcon-dev and returning "0" are two different actions, and
I think most drivers do actually use a blank line between those.

But that really is just a style preference for me, so anyway

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
