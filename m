Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A1525C61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Feb 2023 12:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QUTmNk+N1cTidWFtcCnjb79Xew0zY0o4VENxZrn/zPg=; b=CHHaaiVU1nILJ4
	oChD270JH9+/1fS91Fmo6Qou4Ynzja+G7B3Ql5+36qhxeEINTEPfjXcfr8xGeIilkxSCr1VhngvHz
	n7KAx5LDcxSLVjRaP9skuZvYU1xdyNmK4LbA7MflzG1f7+/fe4pAVcFqbxsYuwGgb4hWu9AhR3+gX
	dippRKcLBcpCEJhJSNqfV+9SAVqpifzcMxTU+raw+Jl/YwdETVnw8vsoBLGZ24XjdF2CduyniY/bC
	yg+bSBYRre7xwh5/HywhyUceG8P08GtFY/KsksuXtl95rE11gcUO7F8/ItET/vPbokX4W/E9apiBC
	2LgFG5nPeSmezWt4oJDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUnsv-00CHBh-Ut; Wed, 22 Feb 2023 12:06:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUnsl-00CH9D-8X
	for linux-rockchip@lists.infradead.org; Wed, 22 Feb 2023 12:06:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUnsh-0007JK-Dq; Wed, 22 Feb 2023 13:05:55 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pUnse-0006aE-Ov; Wed, 22 Feb 2023 13:05:52 +0100
Date: Wed, 22 Feb 2023 13:05:52 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: Quentin Schulz <foss+kernel@0leil.net>, linus.walleij@linaro.org,
	heiko@sntech.de, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [RFC PATCH 1/1] pinctrl: rockchip: add support for per-pinmux
 io-domain dependency
Message-ID: <20230222120552.GL10447@pengutronix.de>
References: <20220802095252.2486591-1-foss+kernel@0leil.net>
 <20220802095252.2486591-2-foss+kernel@0leil.net>
 <20230215102328.GB13829@pengutronix.de>
 <85e042b3-1b59-5ef0-8510-50372cefa197@theobroma-systems.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85e042b3-1b59-5ef0-8510-50372cefa197@theobroma-systems.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230222_040559_486477_AD5D1FF9 
X-CRM114-Status: GOOD (  71.37  )
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

On Tue, Feb 21, 2023 at 01:14:28PM +0100, Quentin Schulz wrote:
> Hi Sascha,
> 
> On 2/15/23 11:23, Sascha Hauer wrote:
> > 
> > Hi Quentin,
> > 
> > On Tue, Aug 02, 2022 at 11:52:52AM +0200, Quentin Schulz wrote:
> > > From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
> > > 
> > > On some Rockchip SoCs, some SoC pins are split in what are called IO
> > > domains.
> > > 
> > > An IO domain is supplied power externally, by regulators from a PMIC for
> > > example. This external power supply is then used by the IO domain as
> > > "supply" for the IO pins if they are outputs.
> > > 
> > > Each IO domain can configure which voltage the IO pins will be operating
> > > on (1.8V or 3.3V).
> > > 
> > > There already exists an IO domain driver for Rockchip SoCs[1]. This
> > > driver allows to explicit the relationship between the external power
> > > supplies and IO domains[2]. This makes sure the regulators are enabled
> > > by the Linux kernel so the IO domains are supplied with power and
> > > correctly configured as per the supplied voltage.
> > > This driver is a regulator consumer and does not offer any other
> > > interface for device dependency.
> > > 
> > > However, IO pins belonging to an IO domain need to have this IO domain
> > > correctly configured before they are being used otherwise they do not
> > > operate correctly (in our case, a pin configured as output clock was
> > > oscillating between 0 and 150mV instead of the expected 1V8).
> > > 
> > > In order to make this dependency transparent to the consumer of those
> > > pins and not add Rockchip-specific code to third party drivers (a camera
> > > driver in our case), it is hooked into the pinctrl driver which is
> > > Rockchip-specific obviously.
> > 
> > I don't know the status of this patch, but I haven't found anything
> > newer, so please point me to newer patches if the discussion has
> > continued somewhere else. Anyway, here are some thoughts about this
> > patch
> 
> No new version, a bit drowning in work but we are dependent on this patchset
> for an adapter board we want to upstream so I'll have to get back to it in
> the next few weeks/months.
> 
> > 
> > I think the general approach is fine but could be improved. Right now we
> > have one io-domain device with several supplies. That means once one
> > consumer needs an io-domain, the supplies for all domains need to be
> > probed beforehand.  We could relax this requirement by adding a subnode
> > for each domain, so instead of doing this:
> > 
> > pmu_io_domains: io-domains {
> > 	compatible = "rockchip,rk3568-pmu-io-voltage-domain";
> > 	pmuio1-supply = <&vcc3v3_pmu>;
> > 	pmuio2-supply = <&vcc3v3_pmu>;
> > 	vccio1-supply = <&vccio_acodec>;
> > 	vccio2-supply = <&vcc_1v8>;
> > 	vccio3-supply = <&vccio_sd>;
> > 	vccio4-supply = <&vcc_1v8>;
> > 	vccio5-supply = <&vcc_3v3>;
> > 	vccio6-supply = <&vcc_1v8>;
> > 	vccio7-supply = <&vcc_3v3>;
> > };
> > 
> > We could do this:
> > 
> > pmu_io_domains: io-domains {
> > 	compatible = "rockchip,rk3568-pmu-io-voltage-domain";
> > 
> > 	io_domain_pmuio1: io-domain@ {
> > 		reg = <0>;
> > 		supply = <&vcc3v3_pmu>;
> > 	};
> > 
> > 	io_domain_pmuio2: io-domain@1 {
> > 		reg = <1>;
> > 		supply = <&vcc3v3_pmu>;
> > 	};
> > 
> > 	...
> > };
> > 
> > This way we could put a driver on each io-domain. When another device
> > needs an io-domain we no longer have to wait for all regulators to
> > appear, but only for the regulator that actually supplies that domain.
> > 
> 
> Mmm, that's something I indeed hadn't thought about. We'd need to handle
> pmu_io_domains probing (and making available) **some** io-domains devices
> and not unregister them if other io-domains devices aren't able to probe
> (e.g. EPROBE_DEFER or invalid configuration for some reason; missing supply
> in board DTSI). Nothing impossible, haven't developed such a thing yet (I
> guess it's just kind of a bus mechanism then).
> 
> The other issue I'm thinking about ATM is whether we should support upward
> compatibility (i.e. old io-domain driver with newer dts) and backward
> compatibility (i.e. new io-domain driver with older dts). This may make
> things a lot more complex. This is a maintainer choice though.

New io-domain driver with older dts is easy enough to handle as the new
io-domain driver could fall back to old behaviour when the io-domains
node doesn't have subnodes.
Old io-domain driver with new dts doesn't work though, but I think is
also less important.

> 
> > With that we could specify the io-domain dependencies at dtsi or core
> > level. A board would only have to make sure that the io-domain that is
> > needed to access the PMIC does not itself need a supply from the very
> > same PMIC to not get into circular dependencies. The supplies for the
> > io-domains are specified at board level anyway, so all that a board
> > would have to do is to skip (or replace with a fixed-regulator) the
> > supply for the io-domain that provides access to the I2C port the PMIC
> > is on. That is not too bad I guess as the regulator that supplies the
> > io-domain to access the PMIC needs to be always-on anyway. In the end if
> > we would turn that regulator off, we would no longer be able to turn it
> > on again.
> > 
> 
> Correct.
> 
> > One thing about putting the "rockchip,io-domains" property into the
> > pingroups. We would have to put this property into each and every
> > existing pingroup in all dts[i] files and new files would have to be
> > reviewed in this regard as well. The pinctrl driver already has
> > knowledge about all pins, so I think that would be the natural place to
> > also add the knowledge about which io-domain a pin is in. With that in
> > place we would get the knowledge if a io-domain is in use and could
> > disable unused io-domains. I am afraid that the "rockchip,io-domains"
> > property would only be added in places where it actually hurts someone.
> > 
> 
> The Device Tree is here to explicit the dependencies between HW blocks,
> which is what io-domains and pinctrl devices are and rockchip,io-domains the
> relations between the both of them.
> 
> While we know which pin is assigned to which io-domain because it's fixed in
> the silicon, this information is linking two different HW blocks and linux
> drivers (and linux devices actually). I'm wondering how exactly you think we
> should get this link in code without reading the Device Tree? Because we'll
> have to traverse the list of io-domains devices and find a way to identify
> them. This very much seems like something DT wanted to avoid? Can you tell
> me what I'm missing from the big picture?

We could add a rockchip,io-domains property to the rockchip,rk3xxx-pinctrl
node pointing to the io-domain driver (the toplevel driver, not the
subnodes), like:

	pinctrl: pinctrl {
		compatible = "rockchip,rk3568-pinctrl";
		rockchip,io-domains = <&pmu_io_domains>;
		...
	};

With that the pinctrl driver could call into the io-domain driver with
something like:

	rockchip_iodomain_get(struct device_node *io_domain_toplevel_node, int num);

'num' would map to the subnode providing the domain. Alternatively this
could be a const char *name instead. rockchip_iodomain_get() would then
either return some cookie or -EPROBE_DEFER when the regulator is not yet
available.

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
