Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF78CC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 18:29:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zA64wjujzgnJ4xq1jJj9IUaGOS/F/XvV9KKCyIB7FiI=; b=MZF/MkL7QCNBOzm+YBepcEXsNg
	L6/cFLtFHDQXFvrGuZBaRradAZ80UT+AJy3CPjWdGe+9zyoiIhme8WOskZuCf0yPlwIWMegmq2js5
	pFzMUxAmGzv06LpGOXTkYyhw0Jz0FNRj4tllJaV8fKTsuwlQwqhVt7RuK646UJBoD/P2mEmjOYH9W
	Qr4zNlDnMWtSagHDB3G9JIz4ZIXl2rRDfkxebCDlals+sJH/xQy+jvbU7s2eRGppzMxQZQ8Cm03ao
	tpSBl0mpVV+CCJ7ja2SmCw+cQNL4FdOTdIPF8Y78WLciosza9e6s22tWl6jN9sshM3uyTd63BL6fb
	pUrmLzGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sefDY-0000000AleW-0efa;
	Thu, 15 Aug 2024 18:29:00 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sefCt-0000000AlRP-2ctA;
	Thu, 15 Aug 2024 18:28:21 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 644D661F88;
	Thu, 15 Aug 2024 18:28:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 41C7DC4AF13;
	Thu, 15 Aug 2024 18:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723746497;
	bh=nx7Geze/QeN/AJlEWfyn5sYOct2xeknjjYtJtTUJmes=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=BQecz//pzX3SIPA5QCxbHqcyEpmzafawkl9YJTH5f6CIGl7y1ypiablCYJckFPC24
	 SbOO1xIkRdZGClYkDakFHAhg7opbrpI91iQ4r3qU6n5AFvT8fd8hguOAcqvCOr9POZ
	 pk9oOhu2OrdRGC1hlheQm03JsZak+n5LW6OUBLKla87m+iYXgYJPP07NLU80RPehN5
	 aIMR3rE+Tit057qZ9CaEkgT5tT4I5YPXhIbndJcOg7rHlxbarZMAQ1g4gnhf4lZcnH
	 9WeG5zs+6Xp+cMpDGH100KB1GKNDWGzWoZPWi1Dga+8zdhT5cAZD6hg7KpZucXVXka
	 uKku4bu9imUfQ==
Date: Thu, 15 Aug 2024 12:28:16 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sergey Bostandzhyan <jin@mediatomb.cc>
Cc: krzk+dt@kernel.org, linux-kernel@vger.kernel.org, heiko@sntech.de, 
 devicetree@vger.kernel.org, conor+dt@kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
In-Reply-To: <20240814170048.23816-1-jin@mediatomb.cc>
References: <20240814170048.23816-1-jin@mediatomb.cc>
Message-Id: <172374583245.2826928.3280023192030812974.robh@kernel.org>
Subject: Re: [PATCH v3 0/3] Add DTS for NanoPi R2S Plus
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_112819_728207_6ED78C5B 
X-CRM114-Status: GOOD (  14.30  )
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


On Wed, 14 Aug 2024 17:00:45 +0000, Sergey Bostandzhyan wrote:
> Hi,
> 
> here is version 3 of the NanoPi R2S Plus patchset.
> 
> * a commit which adds mmc-hs200-1_8v in order to improve eMMC performance has
>   been included
> * the licence header has been updated to the newer version, anw now includes
>   optional MIT licensing
> 
> 
> Sergey Bostandzhyan (3):
>   arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus
>   dt-bindings: arm: rockchip: Add NanoPi R2S Plus
>   arm64: dts: rockchip: improve eMMC speed on NanoPi R2S Plus
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |  1 +
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../dts/rockchip/rk3328-nanopi-r2s-plus.dts   | 32 +++++++++++++++++++
>  3 files changed, 34 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> 
> --
> 2.20.1
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-nanopi-r2s-plus.dtb' for 20240814170048.23816-1-jin@mediatomb.cc:

arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dtb: mmc@ff520000: Unevaluated properties are not allowed ('num-slots', 'supports-emmc' were unexpected)
	from schema $id: http://devicetree.org/schemas/mmc/rockchip-dw-mshc.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
