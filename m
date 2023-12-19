Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B590BC41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 22:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8Pmui3H2/oGJvUQLzgW1JPi2UE8xNtsFx5scAyoIzQ=; b=0LJeccuAAQICr8
	bm2281sawDtxAAnVCiCU0bJ1eM7B4ldff2wgATJ0+SZegdpsH2RJOq/NJTuy3nB0r39IsfvAiUr1p
	CqWReiVF/nBvlQat8D0weVvNRBrMZTvp0rmWLlhAG62ZYEpNJJ5+6WkKk5gkJxYnwehO/iVTcnK6D
	M61lDH4YSmxMQsZw2VNuXvCH88IKekxFcuq9038CarDMzEIzm5cZDnm7aWFaJR1auw3ecGOlUyjF+
	BjyhH9bW/2697waTI8ABfDpuC6JxOkM75PUVfy0XNPHwcQPpiYlk7eGO8ud8X/IY0WqLQX0BRU50n
	IoqMLtPR0Rh7T115jiaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFixt-00FdfA-2T;
	Tue, 19 Dec 2023 22:53:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFixq-00Fdei-1y;
	Tue, 19 Dec 2023 22:53:28 +0000
Received: from i53875b78.versanet.de ([83.135.91.120] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rFixj-0002E6-VR; Tue, 19 Dec 2023 23:53:20 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Wolfram Sang <wsa@kernel.org>, Tim Lunn <tim@feathertop.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 Jagan Teki <jagan@edgeble.ai>, Conor Dooley <conor+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Andi Shyti <andi.shyti@kernel.org>, linux-i2c@vger.kernel.org
Subject: Re: [PATCH v3 3/8] i2c: rk3x: Adjust mask/value offset for i2c2 on rv1126
Date: Tue, 19 Dec 2023 23:53:18 +0100
Message-ID: <3368267.VdNmn5OnKV@diego>
In-Reply-To: <ZYHNkgxAauYp6ivX@shikoro>
References: <20231203124004.2676174-1-tim@feathertop.org>
 <20231203124004.2676174-4-tim@feathertop.org> <ZYHNkgxAauYp6ivX@shikoro>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_145326_673835_8CBAA1AB 
X-CRM114-Status: GOOD (  23.27  )
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

Hi Wolfram,

Am Dienstag, 19. Dezember 2023, 18:06:26 CET schrieb Wolfram Sang:
> On Sun, Dec 03, 2023 at 11:39:59PM +1100, Tim Lunn wrote:
> > Rockchip RV1126 is using old style i2c controller, the i2c2
> > bus uses a non-sequential offset in the grf register for the
> > mask/value bits for this bus.
> > 
> > This patch fixes i2c2 bus on rv1126 SoCs.
> > 
> > Signed-off-by: Tim Lunn <tim@feathertop.org>
> > Acked-by: Heiko Stuebner <heiko@sntech.de>
> > 
> 
> Applied to for-next, thanks!
> 
> But, phew, the fact that this driver _needs_ i2c-aliases in DT should be
> fixed somewhen. I totally overlooked this so far :/

Yeah, relying on aliases for this is probably not the most elegant thing
to do ;-)

Though right now I don't see the perfect way to change that.
Options I can think of, could be:

(1) As this really is "just" a thing for older socs that offer both a very
legacy i2c and the more modern one we use, I guess one possibility
would be to move this completely out of the i2c driver and into the
"grf-cleanup" driver [0].

We never actually implemented the "old"-style i2c driver for rk29xx
and earlier - and that thing is more than 10 years old now, so noone ever
will. So we always want to switch to the new one anyway in the kernel.


(2) The other option would be to try to identify the busses by their
address. We do this in some places, like the dsi driver [1]
with the entry matched against the reg property.


I guess from a "being done with it" perspective, the first option
would be nicer ;-) .

Thoughts?
Heiko


[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/soc/rockchip/grf.c
That code does a number of settings the in the "General Register Files"
that we simply expect, so also doing the i2c controller switch there
for all i2c busses in one go would make sense.

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c#n1586



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
