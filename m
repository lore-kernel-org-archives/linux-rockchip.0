Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F481C04E69
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Aug 2023 12:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BmYlzgJQjzSn/ph/V/PBtUZ/AAKVxqQaEimXIF4A478=; b=IZllOC0M7sAuJs
	XMCFs8Yy7Efqz3cuQsRG2Yu758agrUmm3h9qGhtA5rr6kqEZRw0XEbbKczjD8+yT0JjLnPbRopPY3
	6EqZP7CIjz+glfoJCwDsRLTdP7xAyJN4YYPfnSRuoN62X4D8ZCaPTMA63AdjPktuA3X6BHAVLORW6
	p0L4oGDjnbx9iGtrK6ysfMo1i6xceWEeqBWrwi+fXCAkGQa1y9EctL/CbFhE7QZ8cLX/Y+R2mQEyg
	ZOrSAoerLTVSdwc3vZ0Y42D5vgM6xNlw42eL5WJtNdrmA/J/5dMk+HcoxXmIUAsLxYzuRgHzrGiEk
	rH25K9znHh4oXfwP/Z2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUndP-00DOJ2-02;
	Sat, 12 Aug 2023 12:22:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUndM-00DOID-0P;
	Sat, 12 Aug 2023 12:22:21 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qUndI-0000MO-DZ; Sat, 12 Aug 2023 14:22:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Stefan Nagy <stefan.nagy@ixypsilon.net>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Enable internal SPI flash for ROCK Pi 4A/B/C
Date: Sat, 12 Aug 2023 14:22:14 +0200
Message-Id: <169184288415.3581838.14510219011425272419.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230811201118.15066-1-stefan.nagy@ixypsilon.net>
References: <20230811201118.15066-1-stefan.nagy@ixypsilon.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_052220_161726_C1F08969 
X-CRM114-Status: GOOD (  11.48  )
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

On Fri, 11 Aug 2023 22:11:18 +0200, Stefan Nagy wrote:
> The ROCK Pi 4A, ROCK Pi 4B and ROCK Pi 4C boards contain a nor-flash chip
> connected to spi1. Enable spi1 and add the device node.
> 
> This patch has been tested on ROCK Pi 4A.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rockchip: Enable internal SPI flash for ROCK Pi 4A/B/C
      commit: eddf7302977023980b717a468e12c40738cd12f3

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
