Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3EFBC7EE23
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 09:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIhLr7cH2YObSoAPLEqGAUkDRgjTeMUlawOD2yzUEYY=; b=QlasJJUPh9BhW6
	slE6LSavmY6A/PioLRU1xhDQzwkqklaFpPcarPQnt8FYz1nf7rT5712yEbcWECMEgI5UP4aFlvZ1p
	unb1a+i9Doc2KC98Vic5/G4lTUuBXQad8tO+1eS8CetNN8CpgEwcdiwWEZwpjMNjouF6FwCN6Q3On
	3GbYzccwxFd4c9Glm2yRa0Ceskt24YWulBbaZKKcI576UjpHhV/J0nmuLEFTUqpSd7mFp7Owh5bTR
	DpxblOCZfcFnSpFR4QNajFZj67vMVhH/57pJWZlNe8FpqCkgQQkJiUTg8pccCg+Ier82dToqO/NkT
	QcUKHzqQ6OOsp4h1cr/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDL8-00929Q-2Y;
	Wed, 17 May 2023 09:20:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDL5-00927v-0i
	for linux-rockchip@lists.infradead.org;
	Wed, 17 May 2023 09:20:56 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzDKu-0007Uv-63; Wed, 17 May 2023 11:20:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzDKq-0002v6-Kl; Wed, 17 May 2023 11:20:40 +0200
Date: Wed, 17 May 2023 11:20:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 04/21] PM / devfreq: rockchip-dfi: Add SoC specific
 init function
Message-ID: <20230517092040.GT29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-5-s.hauer@pengutronix.de>
 <20230516164017.00002774@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516164017.00002774@Huawei.com>
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
X-CRM114-CacheID: sfid-20230517_022055_281259_FD1DF5F0 
X-CRM114-Status: GOOD (  40.77  )
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

On Tue, May 16, 2023 at 04:40:17PM +0100, Jonathan Cameron wrote:
> On Fri,  5 May 2023 13:38:39 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Move the RK3399 specifics to a SoC specific init function to make
> > the way free for supporting other SoCs later.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Hi Sascha,
> 
> A few things inline,
> 
> Jonathan
> 
> > ---
> >  drivers/devfreq/event/rockchip-dfi.c | 59 +++++++++++++++++++++-------
> >  1 file changed, 44 insertions(+), 15 deletions(-)
> > 
> > diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> > index 47cc9e48dafab..f317d3d063e9c 100644
> > --- a/drivers/devfreq/event/rockchip-dfi.c
> > +++ b/drivers/devfreq/event/rockchip-dfi.c
> > @@ -17,6 +17,7 @@
> >  #include <linux/slab.h>
> >  #include <linux/list.h>
> >  #include <linux/of.h>
> > +#include <linux/of_device.h>
> >  
> >  #include <soc/rockchip/rk3399_grf.h>
> >  
> > @@ -55,27 +56,21 @@ struct rockchip_dfi {
> >  	void __iomem *regs;
> >  	struct regmap *regmap_pmu;
> >  	struct clk *clk;
> > +	u32 ddr_type;
> >  };
> >  
> >  static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
> >  {
> >  	struct rockchip_dfi *dfi = devfreq_event_get_drvdata(edev);
> >  	void __iomem *dfi_regs = dfi->regs;
> > -	u32 val;
> > -	u32 ddr_type;
> > -
> > -	/* get ddr type */
> > -	regmap_read(dfi->regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> > -	ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> > -		    RK3399_PMUGRF_DDRTYPE_MASK;
> >  
> >  	/* clear DDRMON_CTRL setting */
> >  	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
> >  
> >  	/* set ddr type to dfi */
> > -	if (ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
> > +	if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR3)
> >  		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
> > -	else if (ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
> > +	else if (dfi->ddr_type == RK3399_PMUGRF_DDRTYPE_LPDDR4)
> >  		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
> >  
> >  	/* enable count, use software mode */
> > @@ -167,8 +162,34 @@ static const struct devfreq_event_ops rockchip_dfi_ops = {
> >  	.set_event = rockchip_dfi_set_event,
> >  };
> >  
> > +static int rk3399_dfi_init(struct rockchip_dfi *dfi)
> > +{
> > +	struct regmap *regmap_pmu = dfi->regmap_pmu;
> > +	u32 val;
> > +
> > +	dfi->clk = devm_clk_get(dfi->dev, "pclk_ddr_mon");
> > +	if (IS_ERR(dfi->clk))
> > +		return dev_err_probe(dfi->dev, PTR_ERR(dfi->clk),
> > +				     "Cannot get the clk pclk_ddr_mon\n");
> > +
> > +	/* get ddr type */
> > +	regmap_read(regmap_pmu, RK3399_PMUGRF_OS_REG2, &val);
> > +	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> > +			RK3399_PMUGRF_DDRTYPE_MASK;
> 
> I don't suppose you fancy converting whole driver to
> FIELD_GET / FIELD_PREP and masks that include the shift? :)
> Guess probably not or maybe you do it later in this set.

That's done later for the cases that make sense, but you already noticed
that ;)

> 
> > +
> > +	return 0;
> > +};
> > +
> > +struct rockchip_dfi_devtype_data {
> > +	int (*init)(struct rockchip_dfi *dfi);
> > +};
> > +
> > +static struct rockchip_dfi_devtype_data rk3399_devtype_data = {
> > +	.init = rk3399_dfi_init,
> 
> I guess the 'why' will become apparent later in the set, but at this
> stage a callback to get the ddr type would have made more sense and
> kept the data local to where it was needed.

struct rockchip_dfi_devtype_data will still have a single member by the
end of this series. The reason I still prefer a struct type is that I've
seen enough drivers that passed a single ad-hoc value in devtype data
that I had to convert to pass a struct type because I had to add another
value.

Well, I just realized that I have configured several values that I could
have put in that struct in the SoC specific init function instead, so
there's no real point in using a struct type.

> 
> > +};
> > +
> >  static const struct of_device_id rockchip_dfi_id_match[] = {
> > -	{ .compatible = "rockchip,rk3399-dfi" },
> > +	{ .compatible = "rockchip,rk3399-dfi", .data = &rk3399_devtype_data },
> >  	{ },
> >  };
> >  MODULE_DEVICE_TABLE(of, rockchip_dfi_id_match);
> > @@ -179,6 +200,15 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
> >  	struct rockchip_dfi *dfi;
> >  	struct devfreq_event_desc *desc;
> >  	struct device_node *np = pdev->dev.of_node, *node;
> > +	const struct of_device_id *of_id;
> > +	const struct rockchip_dfi_devtype_data *devtype;
> > +	int ret;
> > +
> > +	of_id = of_match_device(rockchip_dfi_id_match, &pdev->dev);
> > +	if (!of_id)
> > +		return -ENODEV;
> > +
> > +	devtype = of_id->data;
> 
> device_get_match_data()
> 
> or I guess if you really want stick to the of specific form.
> 
> of_device_get_match_data()

Yes, will change.

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
