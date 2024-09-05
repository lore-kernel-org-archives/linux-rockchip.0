Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD4C1CD4F5F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 09:15:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CgKZwm0K99+1nBGM/HKKRWw/pdmutd/V1aqeeospZ6s=; b=OP5+77JWzdVBhb
	0kKUzUbdxvnQBcUYfeqPXZgRkKJyvCDyP0sVI3AT6gU2zbzrap9/hNcHbnv4isXBkFB8Y1G1PGGCk
	99x4CUJ/YlgDgHxAZfZ6NUGFbjrSRwFy+z8s4DaaFCNiE4Hm8jITiFTFAg6iyc6/T43sPnkUBAmW7
	/5FVzMMn0R9pAaJKNEDmNOd0giYqsjWrs0+XD7mRwHM1QBsRmH8DskYG2CrZpvX7NHl8AtiK+/gaM
	ACzmS9gE3GtLATCkZDZNndg5R/+wo4r6VBi68gVnHtYFGeJDxhEE4rZfWeis6G5rGe+N6P3LZn09e
	kxM7l8/lQsZBGYz0UvIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm8ah-00000007iaJ-2Lq8;
	Thu, 05 Sep 2024 09:15:47 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm8ZP-00000007iIj-1nT0;
	Thu, 05 Sep 2024 09:14:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=426bdfUS0yLzDDEMRETm4lejCxOLDPe8UCSeDV1MoL0=; b=1vIOUHBjgZCq8hx63cc2Udhyy+
	McKNgrN3AQWLiLTMtL529ntG8aDRIPk+dYEZ9wtaezfhCOTArigkBDks9dhD7oHzvJVD7JZDBWtsr
	/NvPIxMNcC/E+zdHcfAHFwyytt0lfXsJjcdhjuHAOwSnIO8CtTQ32vWFwc5kwixtLpn/+DeyQhul5
	LGp+2Ui1h9p/+koB7j/2cjOyHm3UsWeYAMaAff2R6ht+1/7kqeLz+e1ocXHUl/cwIcWASGaQj5VSP
	12JmoLs1EvhLz3chIZpyn1drpkkeWHq90SZF61vnENNqiW/LDNnHFXhakifqcyVpSth24GZwK4RZJ
	KOjOkDMA==;
Received: from i5e860d0f.versanet.de ([94.134.13.15] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sm8ZE-0008Be-6j; Thu, 05 Sep 2024 11:14:16 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Dragan Simic <dsimic@manjaro.org>
Cc: vkoul@kernel.org, kishon@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/3] phy: phy-rockchip-inno-usb2: Use dev_err_probe() in the
 probe path
Date: Thu, 05 Sep 2024 11:16:08 +0200
Message-ID: <3681742.qqrk5fENW1@diego>
In-Reply-To: <d4ccd9fc278fb46ea868406bf77811ee507f0e4e.1725524803.git.dsimic@manjaro.org>
References: <cover.1725524802.git.dsimic@manjaro.org>
 <d4ccd9fc278fb46ea868406bf77811ee507f0e4e.1725524803.git.dsimic@manjaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_021427_520204_18316E45 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
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

Am Donnerstag, 5. September 2024, 10:28:24 CEST schrieb Dragan Simic:
> Improve error handling in the probe path by using function dev_err_probe()
> instead of function dev_err(), where appropriate.
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
