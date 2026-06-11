Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76CE7CD98DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 16:31:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/346D60RE896Gyp4Wfs1O1hH6RV/YA0AQj0MaXMJ5xM=; b=YqO/N3aXG1UlAM
	D84czDD8x8T3vIv8wmFkBLh416XhD1TrU/lozwAJp4QiisNDVdemEcKW2lUlY0s0PWmAvvV3ITxFF
	RPNu94+XAIjh32JZyEjHozMkz55IrjqLg+/3RgGacDwt5rMRsBxqLFXrqin7kRLgye61g1pb6S1dK
	xWITdBQUDXzB/rijpj90AoooxY3HjoTkGF5wBrp2p0ZxRBfFTJWmAbv8Q5TSpafsVZujviYL4vfmU
	bbkjiiXgCfX+uzkZKPGGR1dTVkNAfE0vUGsvCNsNDHLMjfSvTVaCrVUL/mBsVSsHtrummwknVvJ8s
	9MbI5x0XYL8uFt3UZRUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXiJd-00000009lOp-2rk3;
	Thu, 11 Jun 2026 16:31:37 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXiJd-00000009lOL-0EQ9;
	Thu, 11 Jun 2026 16:31:37 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id A6B5F435F9;
	Thu, 11 Jun 2026 16:31:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60A8C1F00893;
	Thu, 11 Jun 2026 16:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781195496;
	bh=pKDVwyUq0CfLwiBc7EZM23dtINCGheBjdXmyBg9xwrI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=M0uumjh+p4nAPbpKbVRwo/kjRcGl6JijzEhlgl6Mwhp3IiRN66lcTt3GBOXTOrsVF
	 hcRKTVsUGRL30UM52xA9Qg3vCHlG9esMsVmLx+gisSsnAPsjFXCvT36gwcEJNdNggp
	 fDBzqELKVi/CZHRuNSkuC9hkspueepE7bg+zenJ49qg9Mp4ReazlAjSd9Ct/JykU1R
	 RCeI8lJVoi0ipH6dhfPj+3Qxtd07P/mUo4vst/GqlPeoXdj67aH2Y4oC7P7te3g1D1
	 GXHgVRZFkeamw7Glci8gEdJ6s7ifGatjWqb/dGKg02V/s64VfmCPA4rCVT0FNwIid0
	 pI9gPR8JR+xLg==
Date: Thu, 11 Jun 2026 11:31:35 -0500
From: Rob Herring <robh@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jacky Huang <ychuang3@nuvoton.com>,
	Shan-Chun Hung <schung@nuvoton.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Aaro Koskinen <aaro.koskinen@iki.fi>,
	Andreas Kemnade <andreas@kemnade.info>,
	Kevin Hilman <khilman@baylibre.com>,
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: mfd: syscon: Drop custom select for
 older dtschema
Message-ID: <20260611163135.GA2913196-robh@kernel.org>
References: <20260608-n-dt-bindings-simple-bus-syscon-v3-0-4eba9ec1212a@oss.qualcomm.com>
 <20260608-n-dt-bindings-simple-bus-syscon-v3-2-4eba9ec1212a@oss.qualcomm.com>
 <20260609-vertical-antarctic-e18a7ec91685@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260609-vertical-antarctic-e18a7ec91685@spud>
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

On Tue, Jun 09, 2026 at 05:28:21PM +0100, Conor Dooley wrote:
> On Mon, Jun 08, 2026 at 10:44:25PM +0200, Krzysztof Kozlowski wrote:
> > Older dtschema <2024.02 required custom select to avoid applying this
> > binding to anything having "syscon" compatible.  That's not the case
> > anymore and this additional select has two headaches:
> > 
> > 1. Duplicates all the compatibles listed in the schema.
> > 
> > 2. Is error-prone, because it requires contributor to add the compatible
> >    in two places, otherwise the schema will be silently ignored.
> >    The select list already misses mentioning compatibles:
> >    mediatek,mt8365-infracfg-nao and renesas,r9a08g046-lvds-cmn (with the
> >    latter being reverted for different reasons).
> > 
> > This requires bumping minimum dtschema requirement to v2024.04, which
> > feels old enough to be a safe requirement.
> 
> I agree, seems reasonable enough given it's a jump from 2023.09 and not
> some large jump.
> The diff is nice too!
> I assume Rob will be taking it, but just in case..
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

I expect Lee to take this. I suspect syscon.yaml has other conflicting 
changes.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
