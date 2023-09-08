Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EACD1EE57DC
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Sep 2023 07:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbaj4wuS+KwFbj+d5xSwDtN0t3Et6/EU59d5vPQj5kw=; b=eGQsKAYWdZ6VC2
	uorv2eEAPC0IOSkCZrnKh0nUQW1+7L7NS6oF5RZfmWWMjJPF+1HXgzPsOZ1TbcIkljtgLpYMl1uco
	iPuHWYm1E6lHC3ffv1kX2vFHH00CaOrQgtxL+8BwoZcBmMBceGdmApEVd0+7XzcCCtjY9kpO+597a
	yo/7wUS9v/weJTQ5TXZ39CerIL/7Cz/n0Y0HjWhB2k7oLFO2Lw/z2uPTyGqvsJ3YSH8NrMgCvJSoa
	xMLknva24ZzuujN6hLhIvcjqPxTch4U4rErz1LbCb4gRh1/N6STxV60rJnog+djZvXrFk/0XmU70i
	rp9KyuJtfHuo9VY9Bp3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeVnZ-00DEmX-21;
	Fri, 08 Sep 2023 07:21:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeVnX-00DElh-1m
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Sep 2023 07:21:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qeVnV-0007vb-OL; Fri, 08 Sep 2023 09:20:57 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qeVnU-004pP2-DM; Fri, 08 Sep 2023 09:20:56 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qeVnT-003Drf-GB; Fri, 08 Sep 2023 09:20:55 +0200
Date: Fri, 8 Sep 2023 09:20:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	kernel@pengutronix.de,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: rockchip: Add io domain
 properties
Message-ID: <20230908072055.GE637806@pengutronix.de>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-3-s.hauer@pengutronix.de>
 <b4017947-9e16-7d97-a7b1-3e6964a1f7a9@arm.com>
 <20230906072121.GA492117@pengutronix.de>
 <5165d26f-d5fe-13e9-7940-b73e27b2bea7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5165d26f-d5fe-13e9-7940-b73e27b2bea7@arm.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_002059_585913_5350C244 
X-CRM114-Status: GOOD (  35.81  )
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

On Thu, Sep 07, 2023 at 05:35:26PM +0100, Robin Murphy wrote:
> On 2023-09-06 08:21, Sascha Hauer wrote:
> > On Tue, Sep 05, 2023 at 10:03:20AM +0100, Robin Murphy wrote:
> > > On 2023-09-04 12:58, Sascha Hauer wrote:
> > > > Add rockchip,io-domains property to the Rockchip pinctrl driver. This
> > > > list of phandles points to the IO domain device(s) the pins of the
> > > > pinctrl driver are supplied from.
> > > > 
> > > > Also a rockchip,io-domain-boot-on property is added to pin groups
> > > > which can be used for pin groups which themselves are needed to access
> > > > the regulators an IO domain is driven from.
> > > > 
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > ---
> > > >    .../bindings/pinctrl/rockchip,pinctrl.yaml          | 13 ++++++++++++-
> > > >    1 file changed, 12 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> > > > index 10c335efe619e..92075419d29cf 100644
> > > > --- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> > > > +++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
> > > > @@ -62,6 +62,11 @@ properties:
> > > >          Required for at least rk3188 and rk3288. On the rk3368 this should
> > > >          point to the PMUGRF syscon.
> > > > +  rockchip,io-domains:
> > > > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > > > +    description:
> > > > +      Phandles to io domains
> > > > +
> > > >      "#address-cells":
> > > >        enum: [1, 2]
> > > > @@ -137,7 +142,13 @@ additionalProperties:
> > > >                - description:
> > > >                    The phandle of a node contains the generic pinconfig options
> > > >                    to use as described in pinctrl-bindings.txt.
> > > > -
> > > > +      rockchip,io-domain-boot-on:
> > > 
> > > I don't think "on" is a particularly descriptive or useful property name for
> > > something that has no "off" state.
> > 
> > In fact it has an "off" state. A IO Domain can be disabled in the SoC
> > registers
> 
> Oh, is that a thing on newer SoCs? At least in the RK3399 TRM the only
> I/O-domain-related control I can find is the 1.8V/3.0V logic level threshold
> in GRF_IO_VSEL (plus the one outlier in PMUGRF_SOC_CON0).

I didn't realize that it's new, the RK3568 is the first Rockchip SoC I
work on, but yes, on RK3568 we have three bits per domain. One bit is to
enable 1.8V, one to enable 2.5V and one for 3.3V. I would assume that
clearing all bits means disable, and whatever strange things may happen
when multiple bits are set...

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
