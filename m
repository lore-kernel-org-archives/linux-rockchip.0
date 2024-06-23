Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 46E64C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 10:43:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bWYIMxWu5ERCRqHGb8XZsB8d2QeljTscgWv3/5j2wOA=; b=p1+VkTYAovaJs2
	JQ3OXKEuZL5XnbSMhoqXcr9lfKvHieMMlQRfSpeYTVe1xysYz1qIr2Qgr8IC26eai8YmnNTEAjAHr
	Du5LcWexgvdBr/W1VNDQG+mAi6mnfywiJBKRFnTC+Aq5s+ifyDvfnv6IGO4mPfvBxVP9abQIy4Xeq
	ex3oswH20NcnVDbvC3B0yAmwJhgXOYDAGUNsPzPjBKWIt9Y/yuKhh/uq+C9rXfdC3evitHA91LFHN
	rLsbVQyfDgKCd8yUOgjnxPL5zzw9SsbhK5B69jAFxkGBat9XQ6ahI1l+gPTr5tagdxAh1MJpPQxUx
	xl+U/X0bZTQ4Gvx0eHOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLKgo-0000000DnRr-1ifX;
	Sun, 23 Jun 2024 10:43:18 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLKgl-0000000DnRO-0jWg
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 10:43:17 +0000
Received: from i53875a87.versanet.de ([83.135.90.135] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sLKgY-0007zH-6m; Sun, 23 Jun 2024 12:43:02 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: add dts for Radxa ROCK Pi E v3.0
Date: Sun, 23 Jun 2024 12:43:00 +0200
Message-ID: <2659620.bgRvk7e4E5@diego>
In-Reply-To: <9941941CA3B1175A+26e42825-e100-44b7-a565-f1a86ca3fff8@radxa.com>
References: <20240623075318.80492-1-naoki@radxa.com>
 <8da8e56a-e24f-4b56-9861-df55369c984f@kernel.org>
 <9941941CA3B1175A+26e42825-e100-44b7-a565-f1a86ca3fff8@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_034315_248869_B5658A89 
X-CRM114-Status: GOOD (  18.42  )
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

Am Sonntag, 23. Juni 2024, 10:18:58 CEST schrieb FUKAUMI Naoki:
> On 6/23/24 17:07, Krzysztof Kozlowski wrote:
> > On 23/06/2024 09:53, FUKAUMI Naoki wrote:
> >> Radxa ROCK Pi E v3.0 has DDR4 SDRAM instead of DDR3 SDRAM.
> >>
> >> for Linux, this change doesn't make any difference from a device tree
> >> POV. but, for bootloader (U-Boot TPL), it makes a difference.
> > 
> > What difference?
> 
> U-Boot TPL initialize DDR SDRAM.
> 
> https://github.com/RadxaNaoki/u-boot/commit/16d823eb95fe311c82a8ebb31570b59b1c59c43b#diff-03ce6c241f5db74ae87d4d8654bfef5eeb5bc42a9f1ff3cc828b70b3b2ac51d2R4
> https://github.com/RadxaNaoki/u-boot/commit/16d823eb95fe311c82a8ebb31570b59b1c59c43b#diff-31b80303774e7c10b527fb2dbc704b82e6c5ccdc6d53dd4f65861309ce0e7413R4
> 
> there is 1 letter difference, ddr"3" and ddr"4".
> 
> >> bootloader needs a separeted dts for v3, so I add new dts for it.
> >> dtb can be shared between v3 and prior, so I don't touch Makefile.
> > 
> > I don't understand. If you have the same DTB then you do not need second
> > DTS.
> 
> 2nd dts is for bootloader. it's not needed for Linux.

but _what_ is this different dt needed for. If it is unchanged from the
first one, why can't you reference that one in u-boot?

Similar to Krzysztof, I don't see _why_ you need a separate devicetree
at all.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
