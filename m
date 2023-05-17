Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE009C77B75
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 12:00:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eDrGbs7tBhg/DxFKQpqakydnv5agFrbipDLxit1uC54=; b=CNsv2Wi9G8rEcE
	H3l1hSL7i/tbMOmZ826mItQ8J8yDccR6mmWr7RC6tY9nMDYJt0/sEJ+I+J8TYwDt2bs7K3sGAyvKN
	Z4RYA8jcLkxZxIp/wrObVwgQ9ekXfKYKQE/+fjSnmZ2h2XG22jhfRXk09TRXrnTMHqYKZa3kVanBa
	YFwn9NdKndyg+MpfZtQZg6eWxLMJlWjSegyI4/SVu3cEAyF0v+juSW+kc3iTi001kdcev9QtV6BFE
	tDl3NfAOe+9k9JzOEb2OalzSPJPGwxdETyyJrVdIekYGtHzvxJo0grZHZaFAZytCQAeq0ou5iofga
	DEQRiyRXSzAezwYQhyEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzFpa-009iah-09;
	Wed, 17 May 2023 12:00:34 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzElM-009UN8-0J
	for linux-rockchip@lists.infradead.org;
	Wed, 17 May 2023 10:52:09 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzElJ-0005hA-8b; Wed, 17 May 2023 12:52:05 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzElD-0006lv-W9; Wed, 17 May 2023 12:52:00 +0200
Date: Wed, 17 May 2023 12:51:59 +0200
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
Subject: Re: [PATCH v4 08/21] PM / devfreq: rk3399_dmc,dfi: generalize
 DDRTYPE defines
Message-ID: <20230517105159.GW29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-9-s.hauer@pengutronix.de>
 <20230516165455.00002f5b@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516165455.00002f5b@Huawei.com>
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
X-CRM114-CacheID: sfid-20230517_035208_130191_DE994DF4 
X-CRM114-Status: GOOD (  35.76  )
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

On Tue, May 16, 2023 at 04:54:55PM +0100, Jonathan Cameron wrote:
> On Fri,  5 May 2023 13:38:43 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > The DDRTYPE defines are named to be RK3399 specific, but they can be
> > used for other Rockchip SoCs as well, so replace the RK3399_PMUGRF_
> > prefix with ROCKCHIP_. They are defined in a SoC specific header
> > file, so when generalizing the prefix also move the new defines to
> > a SoC agnostic header file. While at it use GENMASK to define the
> > DDRTYPE bitfield and give it a name including the full register name.
> 
> Great - you covered this one a few patches later.
> 
> A few suggestions inline but this looks basically fine to me.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/devfreq/event/rockchip-dfi.c | 10 ++++++----
> >  drivers/devfreq/rk3399_dmc.c         | 10 +++++-----
> >  include/soc/rockchip/rk3399_grf.h    |  7 +------
> >  include/soc/rockchip/rockchip_grf.h  | 15 +++++++++++++++
> >  4 files changed, 27 insertions(+), 15 deletions(-)
> >  create mode 100644 include/soc/rockchip/rockchip_grf.h
> > 
> > diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> > index 18d578730fd0c..7896cd8beb143 100644
> > --- a/drivers/devfreq/event/rockchip-dfi.c
> > +++ b/drivers/devfreq/event/rockchip-dfi.c
> > @@ -18,7 +18,10 @@
> >  #include <linux/list.h>
> >  #include <linux/of.h>
> >  #include <linux/of_device.h>
> > +#include <linux/bitfield.h>
> > +#include <linux/bits.h>
> 
> Why bits.h?

For GENMASK.

It's included indirectly anyway, but being explicit shouldn't hurt.

> 
> >  
> > +#include <soc/rockchip/rockchip_grf.h>
> >  #include <soc/rockchip/rk3399_grf.h>
> >  
> >  #define DMC_MAX_CHANNELS	2
> > @@ -74,9 +77,9 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
> >  	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
> >  
> >  	/* set ddr type to dfi */
> > -	if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
> > +	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
> >  		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
> > -	else if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
> > +	else if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR4)
> >  		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
> 
> Maybe a switch statement here as well?  In particular I'm interested
> that there is no sign of DDR3 or LPDDR2 here and I think it would be good to
> make that explicit given it's defined.

That's done later in this series, but you already noticed that.

> > diff --git a/include/soc/rockchip/rockchip_grf.h b/include/soc/rockchip/rockchip_grf.h
> > new file mode 100644
> > index 0000000000000..dc77bb762a05a
> > --- /dev/null
> > +++ b/include/soc/rockchip/rockchip_grf.h
> > @@ -0,0 +1,15 @@
> > +/* SPDX-License-Identifier: GPL-2.0+ */
> > +/*
> > + * Rockchip General Register Files definitions
> > + */
> > +
> > +#ifndef __SOC_ROCKCHIP_GRF_H
> > +#define __SOC_ROCKCHIP_GRF_H
> > +
> > +/* Rockchip DDRTYPE defines */
> > +#define ROCKCHIP_DDRTYPE_DDR3	3
> > +#define ROCKCHIP_DDRTYPE_LPDDR2	5
> > +#define ROCKCHIP_DDRTYPE_LPDDR3	6
> > +#define ROCKCHIP_DDRTYPE_LPDDR4	7
> 
> Maybe worth an enum so you can give ddr_type a named type and
> the compiler can see if you've handled all the cases for
> the switch statements?

Ok, will do.

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
