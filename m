Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09862C27C4F
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Jun 2024 14:29:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jEKFUMeDL9OGQGkf8YyuZ4Uezeh8L3Isyq//ClHWxv4=; b=1dKX/TaVIThjMB
	HcMGQqq2IimO01vqOMhauja1C0N8BMl4go/krb8cZ2SbOg1OTKmHzdq77SEIZmhHt31l34GIyfAd0
	7BYshvldCBL6BDvTSZL0rbJE5hkYDw+SGBIM5IGU+cMqs1GmTr8aLZ82WY4i5OSRZNAgohvnqmL+k
	gPA0IgPaF08BzwS/NI3f9ErMFCfBjl4xAABcu7hdX0uIjZGXfyqYJihzdz1qYMirIy2qQziTIkBDO
	eWk+UZEhUNtON+TDntWHA0EL/ct9ZE2skiZvag6g8SGd52tmZKKSwXQlPdtu+8StbhnMaHnVHME98
	bl3Jv5E7NC75OjjWESWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMTdu-00000007AaI-1DYC;
	Wed, 26 Jun 2024 14:29:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sMTdr-00000007AYB-0qvr;
	Wed, 26 Jun 2024 14:29:00 +0000
Received: from i53875b6a.versanet.de ([83.135.91.106] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sMTdl-0004SS-Rs; Wed, 26 Jun 2024 16:28:53 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Alex Bee <knaerzche@gmail.com>, "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Sugar Zhang <sugar.zhang@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, inux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2 0/4] Add LBA3368 board
Date: Wed, 26 Jun 2024 16:28:52 +0200
Message-ID: <1865378.ucjEoNaZvj@diego>
In-Reply-To: <171940790685.2950756.7239158796460093682.robh@kernel.org>
References: <20240623090116.670607-1-knaerzche@gmail.com>
 <171940790685.2950756.7239158796460093682.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240626_072859_282408_405D2262 
X-CRM114-Status: GOOD (  26.13  )
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

Am Mittwoch, 26. Juni 2024, 15:25:12 CEST schrieb Rob Herring (Arm):
> 
> On Sun, 23 Jun 2024 11:01:12 +0200, Alex Bee wrote:
> > This series aims to add support for RK3368 based LBA3368 industrial board
> > form Neardi. The device tree currently only contains entries for which both
> > bindings and linux driver exists and is expected to be exended in future.
> > 
> > NB: checkpatch throws me a warning that no venddor-prefix for "usb5e3"
> > exists - which is true - but "usb5e3,610" has a valid binding.
> > 
> > Changes in v2:
> >  - board DT property re-ordering / fixes
> > 
> > Link to v1:
> >  https://lore.kernel.org/all/20240621134030.243646-1-knaerzche@gmail.com/
> > 
> > Alex Bee (4):
> >   dt-bindings: vendor-prefixes: Add Neardi Technology
> >   dt-bindings: arm: rockchip: Add Neardi LBA3368
> >   arm64: dts: rockchip: Add sound-dai-cells for RK3368
> >   arm64: dts: rockchip: Add Neardi LBA3368 board
> > 
> >  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
> >  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3368-lba3368.dts      | 661 ++++++++++++++++++
> >  arch/arm64/boot/dts/rockchip/rk3368.dtsi      |   3 +
> >  5 files changed, 672 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3368-lba3368.dts
> > 
> > --
> > 2.45.2
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
> New warnings running 'make CHECK_DTBS=y rockchip/rk3368-lba3368.dtb' for 20240623090116.670607-1-knaerzche@gmail.com:
> 
> arch/arm64/boot/dts/rockchip/rk3368-lba3368.dtb: /i2c@ff660000/codec@1c: failed to match any schema with compatible: ['realtek,rt5640']
> arch/arm64/boot/dts/rockchip/rk3368-lba3368.dtb: /mbox@ff6b0000: failed to match any schema with compatible: ['rockchip,rk3368-mailbox']

both of those are still in their .txt format, so not yet converted
to yaml.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
