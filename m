Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD71FCDB465
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 12:46:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyIN77CfMUsSHDgNe6NQbfpCFR0TJbrXhVHlrzg2QHg=; b=H/MphECD1OuOYQ
	VD6eBMxv0TFbrBZyNqjhLsiAh9RJdmseJOM3XE6TqPsJ9meJ+AEmGlzCuZ1vFKg1nWvmiWQkYQ35n
	MJsOcPnSCRKfpLWq96mwz2DZSmJ7WbP/tDEyj6DvS8gcycX4BXvROZVa85HuvCugQz7r0uxThGiqJ
	hgNTtigsG1ek3nJVBhUxWY/r15PtN4fKGhnYyX/izie15M3Vn3XOFaXXq1eR6QTb7QwCa7SpcGYnI
	htI9jFeQR+Em88+SBiXRIY7Puc41VgeiRjtK3QUizq2C9ZshuEpSkYxDjj3C0cDQiArJ2EW74fG7w
	q27qV5CSMmKE/3q9YYAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsMz1-009dL1-1p;
	Mon, 16 Oct 2023 12:46:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsMyy-009dJ1-1K
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Oct 2023 12:46:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qsMyu-0002vE-Om; Mon, 16 Oct 2023 14:46:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qsMys-0025WN-VP; Mon, 16 Oct 2023 14:45:58 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qsMys-00EkA2-SI; Mon, 16 Oct 2023 14:45:58 +0200
Date: Mon, 16 Oct 2023 14:45:58 +0200
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
Subject: Re: [PATCH v7 07/26] PM / devfreq: rockchip-dfi: introduce channel
 mask
Message-ID: <20231016124558.GL235829@pengutronix.de>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-8-s.hauer@pengutronix.de>
 <859b0091-e361-6060-2977-4aba13af418a@kernel.org>
 <20231016112216.GY3359458@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231016112216.GY3359458@pengutronix.de>
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
X-CRM114-CacheID: sfid-20231016_054604_450538_E78E688A 
X-CRM114-Status: GOOD (  33.67  )
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

On Mon, Oct 16, 2023 at 01:22:16PM +0200, Sascha Hauer wrote:
> On Sat, Oct 07, 2023 at 02:21:10AM +0900, Chanwoo Choi wrote:
> > Hi,
> > 
> > On 23. 7. 4. 18:32, Sascha Hauer wrote:
> > > Different Rockchip SoC variants have a different number of channels.
> > > Introduce a channel mask to make the number of channels configurable
> > > from SoC initialization code.
> > > 
> > > Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > ---
> > >  drivers/devfreq/event/rockchip-dfi.c | 23 +++++++++++++++++------
> > >  1 file changed, 17 insertions(+), 6 deletions(-)
> > > 
> > > diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> > > index 126bb744645b6..82de24a027579 100644
> > > --- a/drivers/devfreq/event/rockchip-dfi.c
> > > +++ b/drivers/devfreq/event/rockchip-dfi.c
> > > @@ -18,10 +18,11 @@
> > >  #include <linux/list.h>
> > >  #include <linux/of.h>
> > >  #include <linux/of_device.h>
> > > +#include <linux/bits.h>
> > >  
> > >  #include <soc/rockchip/rk3399_grf.h>
> > >  
> > > -#define RK3399_DMC_NUM_CH	2
> > > +#define DMC_MAX_CHANNELS	2
> > >  
> > >  /* DDRMON_CTRL */
> > >  #define DDRMON_CTRL	0x04
> > > @@ -44,7 +45,7 @@ struct dmc_count_channel {
> > >  };
> > >  
> > >  struct dmc_count {
> > > -	struct dmc_count_channel c[RK3399_DMC_NUM_CH];
> > > +	struct dmc_count_channel c[DMC_MAX_CHANNELS];
> > >  };
> > >  
> > >  /*
> > > @@ -61,6 +62,7 @@ struct rockchip_dfi {
> > >  	struct regmap *regmap_pmu;
> > >  	struct clk *clk;
> > >  	u32 ddr_type;
> > > +	unsigned int channel_mask;
> > >  };
> > >  
> > >  static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
> > > @@ -95,7 +97,9 @@ static void rockchip_dfi_read_counters(struct devfreq_event_dev *edev, struct dm
> > >  	u32 i;
> > >  	void __iomem *dfi_regs = dfi->regs;
> > >  
> > > -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> > > +	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
> > > +		if (!(dfi->channel_mask & BIT(i)))
> > > +			continue;
> > >  		count->c[i].access = readl_relaxed(dfi_regs +
> > >  				DDRMON_CH0_DFI_ACCESS_NUM + i * 20);
> > >  		count->c[i].total = readl_relaxed(dfi_regs +
> > > @@ -145,9 +149,14 @@ static int rockchip_dfi_get_event(struct devfreq_event_dev *edev,
> > >  	rockchip_dfi_read_counters(edev, &count);
> > >  
> > >  	/* We can only report one channel, so find the busiest one */
> > > -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> > > -		u32 a = count.c[i].access - last->c[i].access;
> > > -		u32 t = count.c[i].total - last->c[i].total;
> > > +	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
> > 
> > Instead of DMC_MAX_CHANNELS defintion,
> > you can initialize the max channel in each rkXXXX_dfi_init() like 'dfi->channel_count'.
> > It reduces the unnecessary loop by initializing the proper max channel.
> 
> That is not easily possible. Some SoCs, eg the RK3588 have four
> channels, but not all channels are necessarily enabled it also
> might not be the first channels that are enabled. On a RK3588
> the channel mask might for example be 0b0101.

Nah, forget this comment. Of course I can initialize a variable with a
maximum value of channels that could be available on this SoC and only
iterate over these. Will do.

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
