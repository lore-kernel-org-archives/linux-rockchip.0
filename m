Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EE41C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 10:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TpeTT9cP8pf+EW3I9i+DZhIMcazOFB0tzsQgIohihXw=; b=jyB2kh7OASArRz
	g374pxoCeVbQih0AziA/aBqGhuZXx+ClkTo0MqYM2YdhMFOQ/vIccnXaOT3Gagzbgm6CGofeQo7A7
	bRJneko/S2Xq0G717x+6uU1oKoY87uHH7mxGPAIwW0qp2HJKqtjls837bNC6Yz5DnNXZqQq7w5WAU
	7ekFJekUZWBgWCVEOITaDKqwBBbd+q9xEuQZTq+0e6DyaekaQSVbYbKhQnh0XB59pZcCSv7Inv3fP
	lSIV1FL9bA6A7+PwohUDKsT1JJosu6/jG4nvmGpY/A91AQY3mLWA+fxb9IONfyALlAOTZtev85d7H
	cPQvXKZoW7NnaV9UmyYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzz35-009zUJ-EI; Wed, 22 Dec 2021 10:40:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzz33-009zTS-0E
 for linux-rockchip@lists.infradead.org; Wed, 22 Dec 2021 10:40:42 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mzz2z-0006b6-5b; Wed, 22 Dec 2021 11:40:37 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mzz2y-0006ct-6q; Wed, 22 Dec 2021 11:40:36 +0100
Date: Wed, 22 Dec 2021 11:40:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Mark Brown <broonie@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Message-ID: <20211222104036.GY6003@pengutronix.de>
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de>
 <YcB85mzJHrirUEDA@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YcB85mzJHrirUEDA@sirena.org.uk>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:37:16 up 11 days, 19:22, 44 users,  load average: 1.02, 1.05, 1.06
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_024041_067874_CEDA66C9 
X-CRM114-Status: GOOD (  28.46  )
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

On Mon, Dec 20, 2021 at 12:53:58PM +0000, Mark Brown wrote:
> On Mon, Dec 20, 2021 at 10:44:35AM +0100, Sascha Hauer wrote:
> 
> > Well, all true and on one specific board the regulator is indeed not
> > optional. However, on all other power domains that don't need a
> > regulator and all other boards and all other SoCs this driver is used we
> > now get:
> 
> This seems unlikely to be board specific, if the chip requires power the
> chip requires power.  If there are power domains that don't take
> external supplies then they shouldn't be requesting any regulators and
> should be fixed.
> 
> > [    0.185588] rk-power-domain rk-power-domain.8: supply power not found, using dummy regulator
> 
> It seems vanishingly unlikely that the SoC takes a single supply called
> "power" shared by everything in the SoC but that is what the code
> appears to be requesting - the power domains should be requesting the
> supplies they actually use, and as ever the supplies should be named
> such that someone looking at the schematic can hook them up.  The
> general recommendation is to use the names used in the datasheet.

Ok. I'll change the patch in a way that only for the GPU power domain on
rk3568 a supply is requested. That's the one power domain I know that a
regulator is needed. I'm sure there are more, if not on rk3568 then
probably on other SoCs the driver handles. Once we notice that other
domains need a supply we'll have to add the supply name to driver data
for that domain.

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
