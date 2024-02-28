Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E88FC47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 13:46:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=050XGGlBF+scuSPeAuKkd+mjhwtuidltInq08Owrm48=; b=axksjw2chjbo3ZwN0eWs2BjXf9
	7HQnqAy9KJ7RbEU2F4YsItJamBqw486u1f1y/XRz9VhsqUvf7TgGF7OqJH9mFeB+Girb3HecfqhZl
	FQ6A/I9L9wbX4Q8x4hbobrNantXUXS0cj5ArD4K8duqL/Kx80cFgxQjvmfn6VRULfXHwsf6EFZPXc
	9QQoXuKRg2L1Xo9wEY6SoBaub4wj5tW+Km5DnU36Wt8zqRjuNd7hOwsErjInH6OH/KqS676H+pwIk
	gvN8iG2gENL4IVxuBAsNbtDqZHmLHMP8mZ/62wF2rRuyE3cg0ICbDvbJdjLeWRK2giweZ18P0PFfY
	y4adMBhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfKGO-00000009XDX-2cxr;
	Wed, 28 Feb 2024 13:46:24 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfKGK-00000009XCl-1z1Y;
	Wed, 28 Feb 2024 13:46:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 1612BCE20E6;
	Wed, 28 Feb 2024 13:46:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28F2BC433C7;
	Wed, 28 Feb 2024 13:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709127977;
	bh=3Vcpm99aT373qBNpg2K7uKjx9Rk2wfgmFCPnKtQmc/U=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=eDU0VdTazddFdW5eVo1UVUNlFp9S1yKdFPotCSwJsSrtAl3vSr6a+zf79B0umnhtJ
	 lolZ2BacU1j3+v+Z3WW6Ujjrn9lib5sDzmJ5BQIpKmsSm+bZpkU5SgEVNMwg1ghd5Q
	 bJ/2z6BQn/BYPlEOb2FV4ZisN2JuaNORlB8jcV56g4jsOhowS0PiAQhyzUia9mS0v5
	 ld8lnt3YiOXdjX7GwEcJ+0FdcwdAWFvbhun2ehrlvsDxY7YYjkWzhEx8tkKkScSgiE
	 zAKwrzo+SRJMaYLiL9PwZchNcJ5UjQZ9HpFkzAkRfseU9nOF1AqnkKvySLko/REjRE
	 zm5Gkla3ZV54Q==
Date: Wed, 28 Feb 2024 07:46:16 -0600
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: conor+dt@kernel.org, linux-rockchip@lists.infradead.org, 
 robh+dt@kernel.org, linux-kernel@vger.kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, quentin.schulz@theobroma-systems.com, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
In-Reply-To: <20240227164659.705271-1-heiko@sntech.de>
References: <20240227164659.705271-1-heiko@sntech.de>
Message-Id: <170912782011.3288301.9840425544379703699.robh@kernel.org>
Subject: Re: [PATCH 0/4] Add support for Theobroma-Systems Tiger SoM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_054620_735364_A7549605 
X-CRM114-Status: GOOD (  15.56  )
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


On Tue, 27 Feb 2024 17:46:55 +0100, Heiko Stuebner wrote:
> This adds support for the rk3588-based Tiger system-on-module from
> Theobroma Systems and includes support for the combination with
> the Haikou-baseboard.
> 
> Included is also a fix for the rk3588's i2s nodes to remove a
> yet-unsupported devicetree property that slipped in.
> 
> 
> Heiko Stuebner (4):
>   arm64: dts: rockchip: drop rockchip,trcm-sync-tx-only from rk3588 i2s
>   dt-bindings: arm: rockchip: Add Theobroma-Systems RK3588 Q7 with
>     baseboard
>   arm64: dts: rockchip: add RK3588-Q7 (Tiger) SoM
>   arm64: dts: rockchip: add Haikou baseboard with RK3588-Q7 SoM
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   6 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588-tiger-haikou.dts | 266 +++++++
>  .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 691 ++++++++++++++++++
>  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |   2 -
>  5 files changed, 964 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
> 
> --
> 2.39.2
> 
> 
> 


My bot found new DT warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-tiger-haikou.dtb' for 20240227164659.705271-1-heiko@sntech.de:

arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: syscon@fd5a8000: 'clocks' is a required property
	from schema $id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
