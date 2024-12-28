Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 021F0E77188
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Dec 2024 18:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HrlLNXfiYaC7oGlIkr6/tYlXPEG9DpUeIqGDj3iywV0=; b=m6oxP2OIZzzqqs
	Z7gdEA3iC3bjGA0KojgPlaV/ZmSFt4OcKzpp9LelJbAU10ozdpNhNqBnigMTvoTnXYUbvYkR66OB7
	xRdw6dTai9WudsBhZy5IS/VeCX4tP1nAKb/xjg+J88ifYvSgEpKQ0Hl67bCSaPbSwoV5kkXOltkGk
	C8FaEhxv/ISNBQDulA4RkbitFky6NWIGWV7oC4YUmh+0ggq0I3IIdC74fKbI+wocjqeLmWbMot2wz
	DVu6WyyO9OeE72jeqyCNkMuRCque3SnlZbqxHs0csWNk6OUBOePAXZWidw/edEVLAv+0XowkZjaFt
	lJyhPTw8CF4lHutv/CCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRbhT-00000002FWG-2DhY;
	Sat, 28 Dec 2024 18:38:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRbgB-00000002FPm-3bzJ;
	Sat, 28 Dec 2024 18:36:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=nBlPYUAfJE99prwgl1RwOc9LFZC3mnK2dVfyXf1Y5l4=; b=knDEfBmAo4iqovMBoT4w5yHZbU
	Ky08vorJm64O2z1rIvDky0lTMU+8TyVZfWsV2wO2ilqE8D/hOB7GWHxVRYuwNGhN2AGV3/79qXDko
	sFicTp/rDSp99YzjmdLtfe/T7k7/7HHgdAZ6JOGqxNYSpnkrlItRJE9oaXb8Ii0fcHoNAhqPkWLji
	g/fynF3ShxX2b3S0pbJn7W33TnqqN6yqVDCqrDvZEgIDyKliPFCmF10c+pxgkhSSF6oUs3bTO4ZP1
	Qns3DUv7+tyhT2EUuLQGA0v2JTSh00BqXkineWPlBfncxZIQ3g0NMOZZlVhzNdyOB5rVqz3GUikyn
	oOfuSUtQ==;
Received: from i53875a54.versanet.de ([83.135.90.84] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tRbfx-000866-Po; Sat, 28 Dec 2024 19:36:37 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: krzk+dt@kernel.org, joro@8bytes.org, Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v2 0/8] Add display subsystem dt node on rk3576
Date: Sat, 28 Dec 2024 19:36:36 +0100
Message-ID: <4950097.GXAFRqVoOG@diego>
In-Reply-To: <20241228122155.646957-1-andyshrk@163.com>
References: <20241228122155.646957-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241228_103651_933275_5CDD0D33 
X-CRM114-Status: GOOD (  17.87  )
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
Cc: robh@kernel.org, iommu@lists.linux.dev, detlev.casanova@collabora.com, devicetree@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, vkoul@kernel.org, linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, linux-rockchip@lists.infradead.org, cl@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Andy,

Am Samstag, 28. Dezember 2024, 13:21:43 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> As the VOP[0] and HDMI[1] driver have already been submitted for review.
> This series send all display related device tree part together.
> [0] https://lore.kernel.org/linux-rockchip/20241219073931.3997788-1-andyshrk@163.com/T/#t
> [1] https://lore.kernel.org/linux-rockchip/20241225103741.364597-1-andyshrk@163.com/T/#t

not to confuse you too much, I mainly meant that we were missing the
"arm64: dts: rockchip:" patches from this series.

The dt-binding patches are (already) part of the driver changes and
should stay part of those series, to prevent confusion of what part goes
where :-) .


Heiko


> Changes in v2:
> - Wrap commit message according to Linux coding style
> - Make "rockchip,rk3588-hdptx-phy" const for "rockchip,rk3576-hdptx-phy"
> - Make declare phy/ropll/lcpll reset line are not exit on rk3576
> - describe constraint SOC by SOC for vop2 binding, as interrupts of rk3576
>   is very different from others
> - Drop Krzysztof's Reviewed-by for vopp2 bindings, as this version changed a lot.
> 
> Changes in v1:
> - ordered by soc name
> - Add description for newly added interrupt
> 
> Andy Yan (8):
>   dt-bindings: soc: rockchip: add rk3576 hdptxphy grf syscon
>   dt-bindings: phy: Add rk3576 hdptx phy
>   dt-bindings: display: rockchip: Add rk3576 hdmi controller
>   dt-bindings: iommu: rockchip: Add Rockchip RK3576
>   dt-bindings: display: vop2: Add rk3576 support
>   arm64: dts: rockchip: Add vop for rk3576
>   arm64: dts: rockchip: Add hdmi for rk3576
>   arm64: dts: rockchip: Enable hdmi display on sige5
> 
>  .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   1 +
>  .../display/rockchip/rockchip-vop2.yaml       |  70 ++++++++--
>  .../bindings/iommu/rockchip,iommu.yaml        |   1 +
>  .../phy/rockchip,rk3588-hdptx-phy.yaml        |  62 ++++++---
>  .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
>  .../boot/dts/rockchip/rk3576-armsom-sige5.dts |  47 +++++++
>  arch/arm64/boot/dts/rockchip/rk3576.dtsi      | 126 ++++++++++++++++++
>  7 files changed, 276 insertions(+), 32 deletions(-)
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
