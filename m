Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6619C3DA61
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jul 2024 18:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CfGBR/rCfrCvheDQlxKmtiT8L//7lMv/NxaaRG4aWjQ=; b=u0Bo+OgWikTCzi32cWI2oHTZ6N
	f+lxWhV62Y8ucPW3AKbwkl/gG7mPwpvvsBxiXti8v43G2AS8NfWaXatuKCZu25z2nEXjFHlt70Z1r
	RKqjBNIX/xiYabNbvr3MWltZk1S9k55E1OMPy7iwJscKPDQmAwQCupfTloc935sDT/og2P3fDJr2S
	+hn1tUK/XrXpsTeX/1he2CtDSvhy/otYWU3mrf/UpDjSPE+EwWNEdSsIbGzT6aw0ayJCEQXK+tYao
	z4uaSH2twryhOcvulfhGSTRZDUob3fQfvc2wAuP6eI2yO7dHPMmjbplEh3qIxT0wL/xQT5w8xzKYG
	dnlccttw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYVUr-0000000COo0-3X4d;
	Mon, 29 Jul 2024 18:53:25 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYVUP-0000000COhE-1iSy
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Jul 2024 18:52:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1D059CE0BD3;
	Mon, 29 Jul 2024 18:52:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E48B7C32786;
	Mon, 29 Jul 2024 18:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722279172;
	bh=yt/TEqkUG7PE55ZFi3CWgk1De/758QNjYZB7+sdWAF8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=fe5oeRdjCPJrzt8taKEaRFv5iTxsmq835QgyWaogwQnJzLezor+5acCS6DwJlaqa7
	 oFzvObtInXfwJAg4k9Zp96ccDMJfbRK6lUcWwWtx/fkueElPKyssu4eT6QITGFwy8g
	 4rXIu0+Ql2MPfVV63K0M5N8mgR47nkBdsdirvuKaIebO43VaNIo9+RgDN9dxSojLWN
	 eXoQOwoQDWsHYOD6kkLTYD8vQxwBk1Nw1kSnyi2GY5xoIt3DlLClKkFFEKdBROx/Hn
	 z1qdNFHbeNTaIfFembiNqffMcJDC3Z3+s7uNICG+M3K5BfYUfByk6MuCcG/8PqYE8P
	 ULC2bUIvIWtTQ==
Date: Mon, 29 Jul 2024 12:52:50 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: sre@kernel.org, linux-pm@vger.kernel.org, jagan@edgeble.ai, 
 jonas@kwiboo.se, heiko@sntech.de, Chris Morgan <macromorgan@hotmail.com>, 
 krzk+dt@kernel.org, andyshrk@163.com, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 t.schramm@manjaro.org
In-Reply-To: <20240726194948.109326-1-macroalpha82@gmail.com>
References: <20240726194948.109326-1-macroalpha82@gmail.com>
Message-Id: <172227904756.1346368.2529190213661296274.robh@kernel.org>
Subject: Re: [PATCH 0/5] Add GameForce Ace
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_115257_647968_AB21A03B 
X-CRM114-Status: GOOD (  14.22  )
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


On Fri, 26 Jul 2024 14:49:43 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the GameForce Ace. The GameForce Ace is an RK3588s
> based gaming device with a 1080p display, touchscreen, hall effect
> joysticks and triggers, 128GB of eMMC, 8GB or 12GB of RAM, WiFi 5,
> and support for a 2242 NVME.
> 
> Chris Morgan (5):
>   dt-bindings: power: supply: add dual-cell for cw2015
>   power: supply: cw2015: Add support for dual-cell configurations
>   arm64: dts: rockchip: Pull up sdio pins on RK3588
>   dt-bindings: arm: rockchip: Add GameForce Ace
>   arm64: dts: rockchip: Add GameForce Ace
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |    5 +
>  .../bindings/power/supply/cw2015_battery.yaml |    6 +
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  .../dts/rockchip/rk3588-base-pinctrl.dtsi     |   10 +-
>  .../dts/rockchip/rk3588s-gameforce-ace.dts    | 1315 +++++++++++++++++
>  drivers/power/supply/cw2015_battery.c         |    7 +
>  6 files changed, 1339 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
> 
> --
> 2.34.1
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-gameforce-ace.dtb' for 20240726194948.109326-1-macroalpha82@gmail.com:

arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: typec-portc@22: 'vbus-supply' is a required property
	from schema $id: http://devicetree.org/schemas/usb/fcs,fusb302.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
