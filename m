Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBF88C5478C
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 14:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QN1c7e7pbsaKr0jiYioaDHCW+q/TyUkAUQ1+tb+AvE=; b=oUo2rptPHc8xz2
	i0NDlYV67BrChfEIjs9fBrWnwEnZ/ORQIaw1Zxvp5DyTjW7kC0k99sqjFJO6zkvZkLNliRZkbTnid
	i2Xbz4gok+ze7+z2ToaZi0XGLT6NOvq+/1s0j5vaOKQAjbxob6xqRDTQ2JmYlelfDZ2skKLY1I2bv
	rBstUH/5x4JWk9h3poyalITUVd3DVDlTNS5PRqqfabFvTlfzr/i6o8Tm1HxmWMoXNgeyxyN1qRzj0
	Ixx4OApZiicnt/JMRLJCA06cEMTi4XMgtVPOHOFVIksthTkSqelN5XdQZay+RRo4M22T+opib8sH0
	3i73xxKlPyrxMQniHZ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfKUs-00000009asT-3ECL;
	Wed, 28 Feb 2024 14:01:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfKUp-00000009aqw-2aF0;
	Wed, 28 Feb 2024 14:01:21 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rfKUm-0002j4-9z; Wed, 28 Feb 2024 15:01:16 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>
Cc: conor+dt@kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, quentin.schulz@theobroma-systems.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] Add support for Theobroma-Systems Tiger SoM
Date: Wed, 28 Feb 2024 15:01:15 +0100
Message-ID: <7842578.gsGJI6kyIV@diego>
In-Reply-To: <170912782011.3288301.9840425544379703699.robh@kernel.org>
References: <20240227164659.705271-1-heiko@sntech.de>
 <170912782011.3288301.9840425544379703699.robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_060119_706731_053C5A38 
X-CRM114-Status: GOOD (  25.98  )
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

Am Mittwoch, 28. Februar 2024, 14:46:16 CET schrieb Rob Herring:
> 
> On Tue, 27 Feb 2024 17:46:55 +0100, Heiko Stuebner wrote:
> > This adds support for the rk3588-based Tiger system-on-module from
> > Theobroma Systems and includes support for the combination with
> > the Haikou-baseboard.
> > 
> > Included is also a fix for the rk3588's i2s nodes to remove a
> > yet-unsupported devicetree property that slipped in.
> > 
> > 
> > Heiko Stuebner (4):
> >   arm64: dts: rockchip: drop rockchip,trcm-sync-tx-only from rk3588 i2s
> >   dt-bindings: arm: rockchip: Add Theobroma-Systems RK3588 Q7 with
> >     baseboard
> >   arm64: dts: rockchip: add RK3588-Q7 (Tiger) SoM
> >   arm64: dts: rockchip: add Haikou baseboard with RK3588-Q7 SoM
> > 
> >  .../devicetree/bindings/arm/rockchip.yaml     |   6 +
> >  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
> >  .../boot/dts/rockchip/rk3588-tiger-haikou.dts | 266 +++++++
> >  .../arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 691 ++++++++++++++++++
> >  arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |   2 -
> >  5 files changed, 964 insertions(+), 2 deletions(-)
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dts
> >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
> > 
> > --
> > 2.39.2
> > 
> > 
> > 
> 
> 
> My bot found new DT warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y rockchip/rk3588-tiger-haikou.dtb' for 20240227164659.705271-1-heiko@sntech.de:
> 
> arch/arm64/boot/dts/rockchip/rk3588-tiger-haikou.dtb: syscon@fd5a8000: 'clocks' is a required property
> 	from schema $id: http://devicetree.org/schemas/soc/rockchip/grf.yaml#
> 


for the record, this is fixed by
https://lore.kernel.org/linux-rockchip/20240227210521.724754-1-heiko@sntech.de

which I applied earlier today.


Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
