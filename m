Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 560D4C77B7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 11:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ccYD8Ba8oL7aemx4s96MSRV7JB74w39+Vi9CEqwP7JE=; b=vxUW1oHi8nUXb/
	grhF1xUZw78ONgv4MlhdhXWAInekrr4kGEOgixOdEtwsLA8aFWqVGCrtkpuIP7eaVZcJ/la+KDAPr
	c5wAlggkn9QasQYhvcMg9Y6DJrAu8QoJYcDoqxFERDeFyqK+ZK8pqlX1TsTEDbB+TXiiiBB4IAd/c
	SJAQBZYtqNBlw/JRaIzmPhbUaEsrhoy1xmmSTh7jaASqja9GrOt0SeVY2mo7v6bFYVquk8xUUXgnQ
	cOCbIYgBOoSGyJSmSr2E2XDGaN9wf+XH92c28sU5U2XyMiLXHZBCZ2yZyqVi4BWd4zwuM7bv1IL1T
	y5ynJvDCymvjro1rx6QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzFUL-009dM7-0L;
	Wed, 17 May 2023 11:38:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzFUI-009dKH-1g
	for linux-rockchip@lists.infradead.org;
	Wed, 17 May 2023 11:38:35 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzFUE-0004Em-Nv; Wed, 17 May 2023 13:38:30 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzFUC-0000pG-9y; Wed, 17 May 2023 13:38:28 +0200
Date: Wed, 17 May 2023 13:38:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 10/21] PM / devfreq: rockchip-dfi: Add RK3568 support
Message-ID: <20230517113828.GY29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-11-s.hauer@pengutronix.de>
 <20230516170435.000040f5@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516170435.000040f5@Huawei.com>
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
X-CRM114-CacheID: sfid-20230517_043834_553674_E8B93072 
X-CRM114-Status: GOOD (  32.42  )
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

On Tue, May 16, 2023 at 05:04:35PM +0100, Jonathan Cameron wrote:
> On Fri,  5 May 2023 13:38:45 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > This adds RK3568 support to the DFI driver. The driver itself doesn't
> > need a change, only initialization differs from the currently supported
> > RK3399.
> I'm not sure on distinction between driver and init (which is part of driver)
> so that description might want to just say
> 
> Only initialization differs from currently supported RK3399.
> 
> and leave it at that!
> 
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/devfreq/event/rockchip-dfi.c | 24 ++++++++++++++++++++++++
> >  include/soc/rockchip/rk3568_grf.h    | 12 ++++++++++++
> >  2 files changed, 36 insertions(+)
> >  create mode 100644 include/soc/rockchip/rk3568_grf.h
> > 
> > diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> > index 035984d3c7b01..78cb594bd2a81 100644
> > --- a/drivers/devfreq/event/rockchip-dfi.c
> > +++ b/drivers/devfreq/event/rockchip-dfi.c
> > @@ -23,6 +23,7 @@
> >  
> >  #include <soc/rockchip/rockchip_grf.h>
> >  #include <soc/rockchip/rk3399_grf.h>
> > +#include <soc/rockchip/rk3568_grf.h>
> >  
> >  #define DMC_MAX_CHANNELS	2
> >  
> > @@ -209,6 +210,24 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
> >  	return 0;
> >  };
> >  
> > +static int rk3568_dfi_init(struct rockchip_dfi *dfi)
> > +{
> > +	struct regmap *regmap_pmu = dfi->regmap_pmu;
> > +	u32 reg2, reg3;
> > +
> > +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG2, &reg2);
> > +	regmap_read(regmap_pmu, RK3568_PMUGRF_OS_REG3, &reg3);
> > +
> > +	dfi->ddr_type = FIELD_GET(RK3568_PMUGRF_OS_REG2_DRAMTYPE_INFO, reg2);
> > +
> > +	if (FIELD_GET(RK3568_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
> > +		dfi->ddr_type |= FIELD_GET(RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;
> 
> This is unusual enough that I'd suggest some comments to say how
> the bits are distributed across the two registers.

I'd say in version 3 of the register structure they realized that they
need two bits more for the ddr_type and have put them in BIT(12) and
BIT(13) of RK3568_PMUGRF_OS_REG3. I think the code makes that
sufficiently clear and apart from this code taken from the downstream
kernel I don't have any documentation of these registers.

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
