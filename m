Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A20F3CDB482
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 11:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YqczALHeDGJdjjbroLZivT1lH9Ny66UD00ivNb270vk=; b=rGqS/rqpYvCWic
	CLRotmjOBSaJTxpC2NnkuUMRGEQz9cwnc0LUWBVOArOLOorScZv24fFAdKa4Dg2N7Jam+nWIm7sZ1
	MNk7Nm/yfA67jOYmtCeC1m8PNCD/UrD3Xl163bte5vsDA28aqYU6PTRhaa9txAbnxNf64kisiyQio
	PJrgfCIfAx0i0u46y5+xZJxcKXs8V2tjsyMdB41M22ilNGPChi+O0KNUVF54Q/vVrHfOTpviKL4k6
	Q3kq0SGxvBYXvU9D0RujT4h9Pc+Hpq5zRGehzzi8Yoxvx91c2gic9b90QtD3pmdwta1RDi8F482IM
	/cxMQjSXK8R6dTMi8tUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsLs1-009Ul0-07;
	Mon, 16 Oct 2023 11:34:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsLrx-009UkF-0h
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Oct 2023 11:34:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qsLrv-0006gp-Oq; Mon, 16 Oct 2023 13:34:43 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qsLru-0024VF-Ap; Mon, 16 Oct 2023 13:34:42 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qsLru-00EjWY-7l; Mon, 16 Oct 2023 13:34:42 +0200
Date: Mon, 16 Oct 2023 13:34:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Chanwoo Choi <chanwoo@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH v7 10/26] PM / devfreq: rockchip-dfi: Add RK3568 support
Message-ID: <20231016113442.GZ3359458@pengutronix.de>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-11-s.hauer@pengutronix.de>
 <ac224dfe-ff7d-57c7-89ad-f10939975b4d@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac224dfe-ff7d-57c7-89ad-f10939975b4d@kernel.org>
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
X-CRM114-CacheID: sfid-20231016_043445_280507_437530CB 
X-CRM114-Status: GOOD (  28.05  )
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

On Sat, Oct 07, 2023 at 03:17:14AM +0900, Chanwoo Choi wrote:
> On 23. 7. 4. 18:32, Sascha Hauer wrote:
> > This adds RK3568 support to the DFI driver.  Only iniitialization
> > differs from the currently supported RK3399.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/devfreq/event/rockchip-dfi.c | 21 +++++++++++++++++++++
> >  include/soc/rockchip/rk3568_grf.h    | 12 ++++++++++++
> >  2 files changed, 33 insertions(+)
> >  create mode 100644 include/soc/rockchip/rk3568_grf.h
> > 
> > diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> > index 6b3ef97b3be09..261d112580c9e 100644
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
> > @@ -209,10 +210,30 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
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

The ddr_type is 5 bits wide. The lower three bits are here.

> > +
> > +	if (FIELD_GET(RK3568_PMUGRF_OS_REG3_SYSREG_VERSION, reg3) >= 0x3)
> > +		dfi->ddr_type |= FIELD_GET(RK3568_PMUGRF_OS_REG3_DRAMTYPE_INFO_V3, reg3) << 3;

The upper two bits are here, hence we need to shift the value above the
lower three bits.

> 
> There are no reason of why shifting the '3'.
> Could you add the comment about '3' or add the constant definition '3'?

I don't think adding a constant makes sense. I'll add a comment making
it more clear what happens.

> 
> > +
> > +	dfi->channel_mask = 1;
> 
> nitpick.
> On other rkXXXX_dfi_init, use GENMASK() to initialize 'dfi->channel_mask'.
> In order to keep the consistency, it is better to use BIT() macro as following:
> 	dfi->channel_mask = BIT(0);

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
