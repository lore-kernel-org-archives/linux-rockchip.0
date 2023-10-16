Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A74FCDB482
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Oct 2023 12:04:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mGEuDKMgtD6Q02roonLbuFKreuyewyBcWpQiUsQsgYY=; b=CJnFyAKJOTapm9
	1paHYN2rBgA5MGbtMHaf+NP/vB5HksEatQtIX2mGVgjmkFUR2yoWnjrThpjGmCq/EQHR620pQxqpI
	1n/SpMjD50zmLTFcGS+KZMpIN2aiLy4/jVnQMqCScsP8E9kpBkN9cHGvvrFttLuewimNgjhxFhNhy
	Sp11PJmzvo3/N5O80I9622G0yVFdJKtVsdKW4ysYa5+f+dnoyHXs+ZK90FrmevVq7xvnggHCghcXH
	Maz8z7GRG77ibXWnCTKbRhfkMb+VPhoEdpChHDjqN7PvRQz08DqPQgtopMBoiV/Na5SY1hsU3nIWU
	uUzpRd9lSWO/hNVe7mzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qsMKD-009YH4-35;
	Mon, 16 Oct 2023 12:03:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qsMKB-009YFe-04
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Oct 2023 12:03:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qsMK9-0004KA-HN; Mon, 16 Oct 2023 14:03:53 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qsMK7-0024Zf-Fz; Mon, 16 Oct 2023 14:03:51 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qsMK7-00EjhX-D1; Mon, 16 Oct 2023 14:03:51 +0200
Date: Mon, 16 Oct 2023 14:03:51 +0200
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
Subject: Re: [PATCH v7 09/26] PM / devfreq: rockchip-dfi: Clean up DDR type
 register defines
Message-ID: <20231016120351.GA3359458@pengutronix.de>
References: <20230704093242.583575-1-s.hauer@pengutronix.de>
 <20230704093242.583575-10-s.hauer@pengutronix.de>
 <1eaa8d5b-af6b-71bb-df7a-d438b483f5bb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1eaa8d5b-af6b-71bb-df7a-d438b483f5bb@kernel.org>
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
X-CRM114-CacheID: sfid-20231016_050355_060420_3755DC9A 
X-CRM114-Status: GOOD (  33.79  )
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

On Sat, Oct 07, 2023 at 04:11:22AM +0900, Chanwoo Choi wrote:
> On 23. 7. 4. 18:32, Sascha Hauer wrote:
> > Use the HIWORD_UPDATE() define known from other rockchip drivers to
> > make the defines look less odd to the readers who've seen other
> > rockchip drivers.
> > 
> > The HIWORD registers have their functional bits in the lower 16 bits
> > whereas the upper 16 bits contain a mask. Only the functional bits that
> > have the corresponding mask bit set are modified during a write. Although
> > the register writes look different, the end result should be the same,
> > at least there's no functional change intended with this patch.
> > 
> > Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  drivers/devfreq/event/rockchip-dfi.c | 33 ++++++++++++++++++----------
> >  1 file changed, 21 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> > index 6bccb6fbcfc0c..6b3ef97b3be09 100644
> > --- a/drivers/devfreq/event/rockchip-dfi.c
> > +++ b/drivers/devfreq/event/rockchip-dfi.c
> > @@ -26,15 +26,19 @@
> >  
> >  #define DMC_MAX_CHANNELS	2
> >  
> > +#define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
> > +
> >  /* DDRMON_CTRL */
> >  #define DDRMON_CTRL	0x04
> > -#define CLR_DDRMON_CTRL	(0x1f0000 << 0)
> > -#define LPDDR4_EN	(0x10001 << 4)
> > -#define HARDWARE_EN	(0x10001 << 3)
> > -#define LPDDR3_EN	(0x10001 << 2)
> > -#define SOFTWARE_EN	(0x10001 << 1)
> > -#define SOFTWARE_DIS	(0x10000 << 1)
> > -#define TIME_CNT_EN	(0x10001 << 0)
> > +#define DDRMON_CTRL_DDR4		BIT(5)
> > +#define DDRMON_CTRL_LPDDR4		BIT(4)
> > +#define DDRMON_CTRL_HARDWARE_EN		BIT(3)
> > +#define DDRMON_CTRL_LPDDR23		BIT(2)
> > +#define DDRMON_CTRL_SOFTWARE_EN		BIT(1)
> > +#define DDRMON_CTRL_TIMER_CNT_EN	BIT(0)
> > +#define DDRMON_CTRL_DDR_TYPE_MASK	(DDRMON_CTRL_DDR4 | \
> > +					 DDRMON_CTRL_LPDDR4 | \
> > +					 DDRMON_CTRL_LPDDR23)
> >  
> >  #define DDRMON_CH0_COUNT_NUM		0x28
> >  #define DDRMON_CH0_DFI_ACCESS_NUM	0x2c
> > @@ -73,16 +77,20 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
> >  	void __iomem *dfi_regs = dfi->regs;
> >  
> >  	/* clear DDRMON_CTRL setting */
> > -	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
> > +	writel_relaxed(HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN |
> > +		       DDRMON_CTRL_HARDWARE_EN), dfi_regs + DDRMON_CTRL);
> 
> You mentioned that there are no behavior changes even if the different value is written.
> But, it looks strange. Could you please explain more detailed about it?

Many registers on Rockchip SoCs are effectively only 16 bits wide. The
lower 16 bits are the functional bits. The upper 16 bits contain a mask
value. The lower 16 bits are only modified when the coresponding bit in
the upper 16bits is set.

For example writing 0x0001dead has the same effect as writing
0x00010001: The lower bit is set, the remaining are unchanged due to the
mask value being 0.

> 
> 
> CLR_DDRMON_CTRL is 0x1f0000

This clears the lower 5 bits.

> vs.
> HIWORD_UPDATE(0, DDRMON_CTRL_TIMER_CNT_EN | DDRMON_CTRL_SOFTWARE_EN | DDRMON_CTRL_HARDWARE_EN) = (0 | (BIT(0)|BIT(1)|BIT(3))<<16) = 0xb0000

This clears BIT(0), BIT(1) and BIT(3), so it clears:

DDRMON_CTRL_TIMER_CNT_EN, DDRMON_CTRL_SOFTWARE_EN and DDRMON_CTRL_HARDWARE_EN.

In fact it doesn't clear DDRMON_CTRL_LPDDR23 and DDRMON_CTRL_LPDDR4 like
the operation with CLR_DDRMON_CTRL does, but the LPDDR type bits are
handled below:

> 			
> >  
> >  	/* set ddr type to dfi */
> >  	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
> > -		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
> > +		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
> > +			       dfi_regs + DDRMON_CTRL);
> 
> LPDDR3_EN	(0x10001 << 2) = 0x40004

This sets BIT(2) aka DDRMON_CTRL_LPDDR23

> vs.
> HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK) = (BIT(2) | (BIT(5)|BIT(4)|BIT(2))<<16) = 0x340004

This sets BIT(2) and *clears* BIT(4) (DDRMON_CTRL_LPDDR4) and BIT(5)
(DDRMON_CTRL_DDR4). So effectively we no longer clear BIT(4) in the
first register access as we do with CLR_DDRMON_CTRL, but in the second
register access instead.

This also clears BIT(5) which was untouched previously, but this bit had
never been set by the driver, so should be 0 anyway.

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
