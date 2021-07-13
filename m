Return-Path: <SRS0=z+fE=MF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC89EC07E95
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jul 2021 08:50:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2392561351
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jul 2021 08:50:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2392561351
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wYV/WH2IvBqp7BTW2lSZKrweXTi3caPOaIIgsHd1PM=; b=r5ETRk+lvWhQBt
	v9y8/j8UUd3bqmf29KOpcS2X145EOcIEr1zf6sxK+Uun/8fgATqk/wr0767nqLqgL/jZEgyfBEQjA
	y0eNJeWrtwKbsL+wX6KsIfsgTaQ4wFUx0X7Hx5C27PoARQUH+omd+1wnh9qBbCq9Uxzt5x+dwoMm0
	reTrCmxviNiMtLS9xE+nGoIbpDXUtIqV/OQSiPhcXxbklkeq1W+xDEhQYkrEsNJ7ax4HUr3REitxi
	oesOxDOViVgAwjoA2w2I1BzZG6OGsmmX31JPN7dT1WSJZvKJW7P9U3bGNMdefe2C7D8Mk+4wE0jXB
	wdr0A6jjQ7E+7X5pUZ8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m3E78-009VXT-3s; Tue, 13 Jul 2021 08:50:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m3E6t-009VSR-8y; Tue, 13 Jul 2021 08:49:48 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m3E6k-00086V-2I; Tue, 13 Jul 2021 10:49:38 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, hjc@rock-chips.com,
 airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
 algea.cao@rock-chips.com, andy.yan@rock-chips.com,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
Subject: Re: [PATCH v2 1/2] dt-bindings: display: rockchip: Add compatible for
 rk3568 HDMI
Date: Tue, 13 Jul 2021 10:49:37 +0200
Message-ID: <3865833.Ac65pObt5d@diego>
In-Reply-To: <1bd64284-0a20-12e3-e2e7-19cdfdbf1a25@wolfvision.net>
References: <20210707120323.401785-1-benjamin.gaignard@collabora.com>
 <20210707120323.401785-2-benjamin.gaignard@collabora.com>
 <1bd64284-0a20-12e3-e2e7-19cdfdbf1a25@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210713_014947_395915_8C891A94 
X-CRM114-Status: GOOD (  32.96  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi Michael,

Am Dienstag, 13. Juli 2021, 10:44:00 CEST schrieb Michael Riesch:
> The HDMI TX block in the RK3568 requires two power supplies, which have
> to be enabled in some cases (at least on the RK3568 EVB1 the voltages
> VDDA0V9_IMAGE and VCCA1V8_IMAGE are disabled by default). It would be
> great if this was considered by the driver and the device tree binding.
> I am not sure, though, whether this is a RK3568 specific or
> rockchip_dw_hdmi specific thing. Maybe it can even enter the Synopsis DW
> HDMI driver.

I do remember that this discussion happened many years back already.
And yes the supplies are needed for all but back then there was opposition
as these are supposedly phy-related supplies, not for the dw-hdmi itself.
[There are variants with an external phy, like on the rk3328]

See discussion on [0]

[0] https://dri-devel.freedesktop.narkive.com/pen2zWo1/patch-v3-1-2-drm-bridge-dw-hdmi-support-optional-supply-regulators



> On 7/7/21 2:03 PM, Benjamin Gaignard wrote:
> > Define a new compatible for rk3568 HDMI.
> > This version of HDMI hardware block needs two new clocks hclk_vio and hclk
> > to provide phy reference clocks.
> > 
> > Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> > ---
> > version 2:
> > - Add the clocks needed for the phy.
> > 
> >  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml         | 6 +++++-
> >  1 file changed, 5 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> > index 75cd9c686e985..cb8643b3a8b84 100644
> > --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> > +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> > @@ -23,6 +23,7 @@ properties:
> >        - rockchip,rk3288-dw-hdmi
> >        - rockchip,rk3328-dw-hdmi
> >        - rockchip,rk3399-dw-hdmi
> > +      - rockchip,rk3568-dw-hdmi
> >  
> >    reg-io-width:
> >      const: 4
> > @@ -51,8 +52,11 @@ properties:
> >            - vpll
> >        - enum:
> >            - grf
> > +          - hclk_vio
> > +          - vpll
> > +      - enum:
> > +          - hclk
> >            - vpll
> > -      - const: vpll
> 
> The description and documentation of the clocks are somewhat misleading
> IMHO. This is not caused by your patches, of course. But maybe this is a
> chance to clean them up a bit.
> 
> It seems that the CEC clock is an optional clock of the dw-hdmi driver.
> Shouldn't it be documented in the synopsys,dw-hdmi.yaml?
> 
> Also, it would be nice if the clocks hclk_vio and hclk featured a
> description in the binding.
> 
> BTW, I am not too familiar with the syntax here, but shouldn't items in
> clocks and items in clock-names be aligned (currently, there is a plain
> list vs. an enum structure)?
> 
> Best regards,
> Michael
> 
> >  
> >    ddc-i2c-bus:
> >      $ref: /schemas/types.yaml#/definitions/phandle
> > 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
