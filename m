Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6CE8C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 11:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p4uzNC14DrYSYiRB/gPO1NvHNi67KyNNxHkwBAD+pV8=; b=0xgLzX7CKKsYWp
	UksiaeNHc8i5MDLCpvN1HJF87aH2TTutjIP9Aw8E6hqkgIRGmYnHRZMDqs5lSD56EOZZb2zQyfCXr
	4fZr/KXOkvfjhblDH+6zgBGuRdWwEDuszxA0rWXvLtjzN2xZVVk2bf3nnAWdpS/3XbBQaMRYUyDrZ
	0FkAUYBmd7HjpGZp/9dCmSfnFb44eunle1yRv3ANEH2zNFzFCHbk0amoMwYZNMNBi8KfSmytH9nPE
	4SISXMxry6cY5PpSmE42v7TvlCqoFh4qMMvmDUZJorbQwfdOeYgcrcDnE3JltNF9AtYFFjpFili2L
	jg5ltpF2Bcw1sdjuYQjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzF4T-009YXB-0f;
	Wed, 17 May 2023 11:11:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzF4O-009YWD-1P
	for linux-rockchip@lists.infradead.org;
	Wed, 17 May 2023 11:11:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzF4M-0000Sv-Sc; Wed, 17 May 2023 13:11:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzF4K-0008Vh-J7; Wed, 17 May 2023 13:11:44 +0200
Date: Wed, 17 May 2023 13:11:44 +0200
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
Subject: Re: [PATCH v4 09/21] PM / devfreq: rockchip-dfi: Clean up DDR type
 register defines
Message-ID: <20230517111144.GX29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-10-s.hauer@pengutronix.de>
 <20230516170146.00000541@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516170146.00000541@Huawei.com>
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
X-CRM114-CacheID: sfid-20230517_041148_494656_A4B3ECE6 
X-CRM114-Status: GOOD (  29.81  )
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

On Tue, May 16, 2023 at 05:01:46PM +0100, Jonathan Cameron wrote:
> On Fri,  5 May 2023 13:38:44 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Use the HIWORD_UPDATE() define known from other rockchip drivers to
> > make the defines look less odd to the readers who've seen other
> > rockchip drivers.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Whilst this might be fine, it's not a noop change.  So more
> text needed to explain why it's fine to write the same 'mask' always
> when previously only single bits were set in the mask.
> 
> > ---
> >  drivers/devfreq/event/rockchip-dfi.c | 32 +++++++++++++++++-----------
> >  1 file changed, 20 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> > index 7896cd8beb143..035984d3c7b01 100644
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
> > @@ -74,16 +78,19 @@ static void rockchip_dfi_start_hardware_counter(struct devfreq_event_dev *edev)
> >  	void __iomem *dfi_regs = dfi->regs;
> >  
> >  	/* clear DDRMON_CTRL setting */
> > -	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
> > +	writel_relaxed(HIWORD_UPDATE(0, 0xffff), dfi_regs + DDRMON_CTRL);
> >  
> >  	/* set ddr type to dfi */
> >  	if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR3)
> > -		writel_relaxed(LPDDR3_EN, dfi_regs + DDRMON_CTRL);
> > +		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR23, DDRMON_CTRL_DDR_TYPE_MASK),
> > +			       dfi_regs + DDRMON_CTRL);
> >  	else if (dfi->ddr_type == ROCKCHIP_DDRTYPE_LPDDR4)
> > -		writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);
> Old value written is 0x10001 << 4 == 0x100010
> > +		writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK),
> > +			       dfi_regs + DDRMON_CTRL);
> New value is (BIT(5) | BIT(4) | BIT(2)) | (BIT(4) << 16) 
> 0x100034

Actually it's (BIT(5) | BIT(4) | BIT(2)) << 16 | BIT(4) = 0x340010

The hiword registers contain a mask in the upper 16 bits and functional
bits in the lower 16 bits. When writing to them only the functional bits that have the
corresponding mask bits set are modified, the others stay untouched.

Previously we had:

	writel_relaxed(CLR_DDRMON_CTRL, dfi_regs + DDRMON_CTRL);
	writel_relaxed(LPDDR4_EN, dfi_regs + DDRMON_CTRL);

The first access clears the lower 5 bits and the second sets BIT(4)

This now becomes:

	writel_relaxed(HIWORD_UPDATE(0, 0xffff), dfi_regs + DDRMON_CTRL);
	writel_relaxed(HIWORD_UPDATE(DDRMON_CTRL_LPDDR4, DDRMON_CTRL_DDR_TYPE_MASK), dfi_regs + DDRMON_CTRL);

The first access clears the lower 16 bits and the second sets BIT(4)

That's both identical except that my version clears the lower 16 bits
instead of lower 5 bits.

I'll see if I can make that a bit clearer in the commit message.

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
