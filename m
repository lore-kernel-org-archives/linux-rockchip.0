Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7840C636D4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Feb 2023 10:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QhmZtgxZQYTZCfdd0vltCgcam7vvqDvo474rj4E+afo=; b=ZSOR+TsFqrjHP3a6RHisP1syRE
	tVBJ8ZU7+tB5PwDAk8wS+eSlqIp17OvlxOu1ytwFEjoBm/HbyTgnLyYHsh1+A7emwWUkW2qwbK/5I
	pX10vdWaHt2Y7qi8Vpk+sikI4JR641avXXyPdRzZYP6rnjmcx75g7gdh/Y/YyD2X+IEfG4eYCkFvD
	XIdXElI+/kYBBXxXIZ61Zn07pbe18s4A1RRaT4e3+CMZU9Me8/tbEUg7z4b4kg6Zlu64MFb7iLrrO
	0++0obZ+rH/nI1bFSZlLORgi+lD5A6XNhHxk1Pp5D33zgo0DSovg4FWMEnm6VUL6i+uJdYgPtXai1
	bQsyF3Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSEwt-005RTm-Dl; Wed, 15 Feb 2023 10:23:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pSEwo-005RSV-TZ
	for linux-rockchip@lists.infradead.org; Wed, 15 Feb 2023 10:23:37 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSEwk-0001Fl-8Y; Wed, 15 Feb 2023 11:23:30 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pSEwi-0008M5-Dp; Wed, 15 Feb 2023 11:23:28 +0100
Date: Wed, 15 Feb 2023 11:23:28 +0100
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [RFC PATCH 1/1] pinctrl: rockchip: add support for per-pinmux
 io-domain dependency
Message-ID: <20230215102328.GB13829@pengutronix.de>
References: <20220802095252.2486591-1-foss+kernel@0leil.net>
 <20220802095252.2486591-2-foss+kernel@0leil.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220802095252.2486591-2-foss+kernel@0leil.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230215_022335_018719_1DB82A50 
X-CRM114-Status: GOOD (  36.86  )
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


Hi Quentin,

On Tue, Aug 02, 2022 at 11:52:52AM +0200, Quentin Schulz wrote:
> From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> 
> On some Rockchip SoCs, some SoC pins are split in what are called IO
> domains.
> 
> An IO domain is supplied power externally, by regulators from a PMIC for
> example. This external power supply is then used by the IO domain as
> "supply" for the IO pins if they are outputs.
> 
> Each IO domain can configure which voltage the IO pins will be operating
> on (1.8V or 3.3V).
> 
> There already exists an IO domain driver for Rockchip SoCs[1]. This
> driver allows to explicit the relationship between the external power
> supplies and IO domains[2]. This makes sure the regulators are enabled
> by the Linux kernel so the IO domains are supplied with power and
> correctly configured as per the supplied voltage.
> This driver is a regulator consumer and does not offer any other
> interface for device dependency.
> 
> However, IO pins belonging to an IO domain need to have this IO domain
> correctly configured before they are being used otherwise they do not
> operate correctly (in our case, a pin configured as output clock was
> oscillating between 0 and 150mV instead of the expected 1V8).
> 
> In order to make this dependency transparent to the consumer of those
> pins and not add Rockchip-specific code to third party drivers (a camera
> driver in our case), it is hooked into the pinctrl driver which is
> Rockchip-specific obviously.

I don't know the status of this patch, but I haven't found anything
newer, so please point me to newer patches if the discussion has
continued somewhere else. Anyway, here are some thoughts about this
patch

I think the general approach is fine but could be improved. Right now we
have one io-domain device with several supplies. That means once one
consumer needs an io-domain, the supplies for all domains need to be
probed beforehand.  We could relax this requirement by adding a subnode
for each domain, so instead of doing this:

pmu_io_domains: io-domains {
	compatible = "rockchip,rk3568-pmu-io-voltage-domain";
	pmuio1-supply = <&vcc3v3_pmu>;
	pmuio2-supply = <&vcc3v3_pmu>;
	vccio1-supply = <&vccio_acodec>;
	vccio2-supply = <&vcc_1v8>;
	vccio3-supply = <&vccio_sd>;
	vccio4-supply = <&vcc_1v8>;
	vccio5-supply = <&vcc_3v3>;
	vccio6-supply = <&vcc_1v8>;
	vccio7-supply = <&vcc_3v3>;
};

We could do this:

pmu_io_domains: io-domains {
	compatible = "rockchip,rk3568-pmu-io-voltage-domain";

	io_domain_pmuio1: io-domain@ {
		reg = <0>;
		supply = <&vcc3v3_pmu>;
	};

	io_domain_pmuio2: io-domain@1 {
		reg = <1>;
		supply = <&vcc3v3_pmu>;
	};

	...
};

This way we could put a driver on each io-domain. When another device
needs an io-domain we no longer have to wait for all regulators to
appear, but only for the regulator that actually supplies that domain.

With that we could specify the io-domain dependencies at dtsi or core
level. A board would only have to make sure that the io-domain that is
needed to access the PMIC does not itself need a supply from the very
same PMIC to not get into circular dependencies. The supplies for the
io-domains are specified at board level anyway, so all that a board
would have to do is to skip (or replace with a fixed-regulator) the
supply for the io-domain that provides access to the I2C port the PMIC
is on. That is not too bad I guess as the regulator that supplies the
io-domain to access the PMIC needs to be always-on anyway. In the end if
we would turn that regulator off, we would no longer be able to turn it
on again.

One thing about putting the "rockchip,io-domains" property into the
pingroups. We would have to put this property into each and every
existing pingroup in all dts[i] files and new files would have to be
reviewed in this regard as well. The pinctrl driver already has
knowledge about all pins, so I think that would be the natural place to
also add the knowledge about which io-domain a pin is in. With that in
place we would get the knowledge if a io-domain is in use and could
disable unused io-domains. I am afraid that the "rockchip,io-domains"
property would only be added in places where it actually hurts someone.

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
