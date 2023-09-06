Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F0DEEB8FB6
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Sep 2023 10:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5MvhmUmkuKz40BcZDWyHJTsF3gH7oozddG/wMwE3t0=; b=faPEWiYIqONpNl
	qslqIpaX+mb2laB7kK1NilJTwsb/hhPnELwf4ZWlO3qjY81cfn35se0ilgulU9ZdUu/+cwetINTFS
	m47vjDiiqSIH+I2TDSdxdB4vwhHyq8ZJNjRIkMrXm9wDjoUO927JUNGdUjKNxCmwtnTSVcZOeVrGS
	OiEzcz5XKzdWILdDBWH857UelRGAeXDTfg+nsQ9pUQE3bt2vrJvasaOqOq1h4phu1sEcK9ywBa20E
	8U7mQLEWMjuE4telB0SyTmGPj5o/lUPNmdQLzWlD8N700cT0RDlzxgVilFzEiMGunccGkwEtwGPuI
	84m7NE6e3pO1XZLIy61A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdpd3-0087AS-1q;
	Wed, 06 Sep 2023 10:19:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdpd0-00878T-03
	for linux-rockchip@lists.infradead.org;
	Wed, 06 Sep 2023 10:19:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdpcu-0004oz-GH; Wed, 06 Sep 2023 12:19:12 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qdpcs-004P41-A9; Wed, 06 Sep 2023 12:19:10 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdpcr-0029pN-QY; Wed, 06 Sep 2023 12:19:09 +0200
Date: Wed, 6 Sep 2023 12:19:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 2/3] dt-bindings: pinctrl: rockchip: Add io domain
 properties
Message-ID: <20230906101909.GB492117@pengutronix.de>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-3-s.hauer@pengutronix.de>
 <b4017947-9e16-7d97-a7b1-3e6964a1f7a9@arm.com>
 <5166ca75-5454-8f64-4f61-fcc0f7a4c235@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5166ca75-5454-8f64-4f61-fcc0f7a4c235@theobroma-systems.com>
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
X-CRM114-CacheID: sfid-20230906_031918_064262_FCF53649 
X-CRM114-Status: GOOD (  30.44  )
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Sep 06, 2023 at 10:20:26AM +0200, Quentin Schulz wrote:
> Sascha, Robin,
> =

> On 9/5/23 11:03, Robin Murphy wrote:
> > [You don't often get email from robin.murphy@arm.com. Learn why this is
> > important at https://aka.ms/LearnAboutSenderIdentification ]
> > =

> > > +=A0=A0=A0=A0=A0=A0=A0 type: boolean
> > > +=A0=A0=A0=A0=A0=A0=A0 description:
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0 If true assume that the io domain needed=
 for this pin
> > > group has been
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0 configured correctly by the bootloader. =
This is needed to
> > > break cyclic
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0 dependencies introduced when a io domain=
 needs a
> > > regulator that can be
> > > +=A0=A0=A0=A0=A0=A0=A0=A0=A0 accessed through pins configured here.
> > =

> > This is describing a Linux implementation detail, not the binding
> > itself. There's no technical reason a DT consumer couldn't already
> > figure this much out from the existing topology (by observing that the
> > pinctrl consumer is a grandparent of the I/O domain's supply).
> > =

> =

> I am guessing you're suggesting to have some complex handling in the driv=
er
> to detect those cyclic dependencies and ignore the IO domain dependency f=
or
> the pinctrl pins where this happens?

I haven't read this as a suggestion, but only as an argument to make it
clear that I should describe the binding rather than anticipating
how it should be used.

I may have misunderstood it though.

> One of the issues we're having here too is that we lose granularity. There
> are multiple domains inside an IO domain device and here we make the whole
> pinctrl device depend on all domains from one IO domain device (there can=
 be
> multiple ones) while it is factually (on the HW level) only dependent on =
one
> domain. Considering (if I remember correctly) Heiko highly suggested we
> think about adding child nodes to the IO domain devices to have a DT node
> per domain in the IO domain device, how would this work with the suggested
> DT binding?

I started implementing that. I have moved the IO domains into subnodes
of the IO domain controller and started adding phandles from the pin
groups in rk3568-pinctrl.dtsi to the corresponding IO domains. After a
couple of hours I had phandles for around a quarter of the existing
groups of only one SoC, so doing this for all SoCs would really be a
cumbersome job.

In the end I realized this doesn't solve any problem. Also adding the
properties I suggested doesn't prevent us from adding the more specific
dependencies from the pins to their actual IO domains later.

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
