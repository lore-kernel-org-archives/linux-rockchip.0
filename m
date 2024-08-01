Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA211C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Aug 2024 15:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hoaNCps6lUJVD6IbepjbBhuzchr+tpzEwJNNMsZcTxI=; b=WHVgiagfWbJzRBSQ3oN3+D3FT5
	UPba5hnvzMIFvLLGjneCc8O6wYSUdXLjiJ+g04CH1iRgqcBJQGWkmjGJ/WysxyO0GYZHihJY7cJUG
	AjSPhwEpNiRaet832E5uQMBn/K03QG5hrmi8i45YBIn4s8gnYMyp0iQLfIsPzO2V9tyP91P2G5awh
	kYUnlQoWjFRADuELCvTfLG3dyCpWr43AouiK2wLMpretpvOAC7Uj7ioZkLZfqMPcgfKp82Y6oiwNk
	qBhC+qrfwRYvzgM0SCroKFZZkwUWc4/Ca0SsUX9HA2RQFx+3ft5SsTy/N/5XzyeraQUiqccr9tSjT
	OOyeErVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZXkK-00000005rrr-1BAU;
	Thu, 01 Aug 2024 15:29:40 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZXkG-00000005rq4-2ik3
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Aug 2024 15:29:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E0568628F2;
	Thu,  1 Aug 2024 15:29:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C47FC4AF0B;
	Thu,  1 Aug 2024 15:29:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722526175;
	bh=BW7ZNDy5QYXY7OJiOHBcxJiKlr74P4b1h92GfRrZfi8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=LsM2XWkTWOzpk+pyTMWAlT+eRywkpe5RgCxpZSnnqiPbpVr7oqxYb1LDk0toTY+VU
	 jNcw/OwORiFz3uvzWO1ggRF7EFmsuVLT5hde2N9k6Lo9T4nCDs/OvXk4+uNSsxuXML
	 IgNOmSTJQp9S10ufA+YAp5A89p2PQTBx0fA4Zc0UpxGp6b8mPWVQhMLQu1b1jzhOdR
	 YR+IXEvje6MgPo9VbNkF4CsxGiVN3FDR+cErfNev8qpl9dRzWO9Zk1O+kWF81sQmss
	 y7sAQ7L+ZtbPdEvu5LI5Pm7kImCExfzO3B5efqLzLLLQZ0jk4U+/nZq2yTBHp/rCYm
	 tjxOB338NTzcw==
Date: Thu, 01 Aug 2024 09:29:34 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Sergey Bostandzhyan <jin@mediatomb.cc>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de
In-Reply-To: <20240731204126.8689-1-jin@mediatomb.cc>
References: <20240731204126.8689-1-jin@mediatomb.cc>
Message-Id: <172252600695.120633.9494787751930557182.robh@kernel.org>
Subject: Re: [PATCH 0/2] Add DTS for NanoPi R2S Plus
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240801_082936_842144_9D7E7794 
X-CRM114-Status: GOOD (  19.24  )
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


On Wed, 31 Jul 2024 20:41:24 +0000, Sergey Bostandzhyan wrote:
> Hi,
> 
> I noticed, that a DTS for the R2S Plus is not yet available, while the
> R2S is already there. The only difference is, that the Plus version has an
> eMMC, so we can reuse the R2S definitions and only add an eMMC block, which
> I copied from the DTS in the friendlyarm/uboot-rockchip repo.
> 
> I applied the same DTS changes to u-boot and tested u-boot 2024.04 with
> kernel 6.6.35 on an R2S Plus which I have here and the eMMC became visible
> and usable.
> 
> Kind regards,
> Sergey
> 
> 
> Sergey Bostandzhyan (2):
>   arm64: dts: rockchip: Add DTS for FriendlyARM NanoPi R2S Plus
>   dt-bindings: arm: rockchip: Add NanoPi R2S Plus
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |  1 +
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../dts/rockchip/rk3328-nanopi-r2s-plus.dts   | 31 +++++++++++++++++++
>  3 files changed, 33 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> 
> --
> 2.20.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3328-nanopi-r2s-plus.dtb' for 20240731204126.8689-1-jin@mediatomb.cc:

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
