Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63E53CA100C
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Aug 2024 18:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q3OlkQhcxfN18cZe0q2FnuXe5qdHoUBTTnFQjnjex6s=; b=TMuSWwA8AQ17Ll
	8SyBbUs3x/Ymx5p2/vZEGIEkQ61tgffWw7Wwg4TXZFQmL2hUQhFtpa/TyGBbgplReaMG71bu0TR0T
	Esjg06kR4HSftouR8fneVsc7yT81TYmet0YSYhK2IQrZFfBz4twTpaQn4Vit3tvuLsmglJ/w1ss+Z
	DLOmf+6R2TtMVFRtVnxPCMu30rN9otl9aEvwR4kgYQpS/R+SbnU1VcVeZMi808ESWt0/nSKt356hn
	2IfvJWkk/iCzulELUxZ9ufEd+5dFYOxC/LOnZMskREYBrunRfStVshT9R3HcAQ6YGeMxYrg5X3gc+
	TiaZH15n3Us88kWISr1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk6g0-00000007NPX-2EhR;
	Fri, 30 Aug 2024 18:48:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sk6fx-00000007NOv-0gz0
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Aug 2024 18:48:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=+spee87MBqrIxvSjUtbiDAQhzt54H1xuEhae6jiT1wM=; b=YKAXFqgZNvF6CDMP8VU0jZHpF3
	UeINTvYDUMKyg8XtcBLs/KttVpRlYeGKdbc5IclbwUjXVu3ZaPvK2o+b0Vt2GXFHHKYuN2Z33QTTy
	0E+oWmRtzIKBpafnYPAqWaTtgETA3MWHG6O6f4BO0srbimJJ5vEOjw8ypIisE+L5oH78T+lV/sKYl
	I8eu40x0DMU8K/sZTZvKLsFGFwLIc3Ez9VNMxVtQEu0Pgg/YaCXdVHi1zVLIxoiYIhLh3DhR0Zvge
	EQnRXv+rp5VBjJ8M14E3Pg42LXXMFh6dp7QU9AH8k4d9htb5hOfHuM2v6X0CxeqyAtW5+7ZMNaViD
	7yvTHQ0A==;
Received: from i5e861921.versanet.de ([94.134.25.33] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sk6fk-0005x9-JB; Fri, 30 Aug 2024 20:48:36 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: zzc@rock-chips.com, andyshrk@163.com, jonas@kwiboo.se,
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>,
 jagan@edgeble.ai, krzk+dt@kernel.org, devicetree@vger.kernel.org,
 conor+dt@kernel.org
Subject: Re: [PATCH V2 0/3] Add GameForce Ace
Date: Fri, 30 Aug 2024 20:49:59 +0200
Message-ID: <2314970.8uLHfb51uz@diego>
In-Reply-To: <172503553992.420479.9699991919956159507.robh@kernel.org>
References: <20240829204517.398669-1-macroalpha82@gmail.com>
 <172503553992.420479.9699991919956159507.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_114849_265093_752C13B4 
X-CRM114-Status: GOOD (  26.20  )
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

Am Freitag, 30. August 2024, 18:33:50 CEST schrieb Rob Herring (Arm):
> 
> On Thu, 29 Aug 2024 15:45:14 -0500, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > Add support for the GameForce Ace. The GameForce Ace is an RK3588s
> > based gaming device with a 1080p display, touchscreen, hall effect
> > joysticks and triggers, 128GB of eMMC, 8GB or 12GB of RAM, WiFi 5,
> > and support for a 2242 NVME.
> > 
> > Changes since V1:
> >  - Update eMMC changes to note proper authorship.
> >  - Removed cw2015 changes for dual cell configuration. For the moment
> >    it's just cosmetic (aside from voltage_now reading incorrectly, no
> >    other issues were observed).
> >  - Removed USB bindings because vbus regulator isn't ready yet.
> > 
> > Alex Zhao (1):
> >   arm64: dts: rockchip: rk3588s fix sdio pins to pull up
> > 
> > Chris Morgan (2):
> >   dt-bindings: arm: rockchip: Add GameForce Ace
> >   arm64: dts: rockchip: Add GameForce Ace
> > 
> >  .../devicetree/bindings/arm/rockchip.yaml     |    5 +
> >  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
> >  .../dts/rockchip/rk3588-base-pinctrl.dtsi     |   10 +-
> >  .../dts/rockchip/rk3588s-gameforce-ace.dts    | 1237 +++++++++++++++++
> >  4 files changed, 1248 insertions(+), 5 deletions(-)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
> > 
> > --
> > 2.34.1
> > 
> > 
> > 
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-gameforce-ace.dtb' for 20240829204517.398669-1-macroalpha82@gmail.com:
> 
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: video-codec@fdb50000: compatible: 'oneOf' conditional failed, one must be fixed:
> 	['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu'] is too long
> 	'rockchip,rk3588-vpu121' is not one of ['rockchip,rk3036-vpu', 'rockchip,rk3066-vpu', 'rockchip,rk3288-vpu', 'rockchip,rk3328-vpu', 'rockchip,rk3399-vpu', 'rockchip,px30-vpu', 'rockchip,rk3568-vpu', 'rockchip,rk3588-av1-vpu']
> 	'rockchip,rk3188-vpu' was expected
> 	'rockchip,rk3228-vpu' was expected
> 	'rockchip,rk3066-vpu' was expected
> 	'rockchip,rk3399-vpu' was expected
> 	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdb50000: failed to match any schema with compatible: ['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu']
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba0000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba4000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba8000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
> arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdbac000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']

That is not Chris' fault ;-) .
The relevant vpu binding patches have made it to the media-tree [0], but
not linux-next yet it seems.

So this should sort itself shortly I hope.

[0]
https://git.linuxtv.org/media_stage.git/commit/?id=1e490a1ea64396b98db8c233360093e264b0c10b
for ['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu']

https://git.linuxtv.org/media_stage.git/commit/?id=b92346d2dba0048bfce7114225250bef73f83ad2
for ['rockchip,rk3588-vepu121']




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
