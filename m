Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74340C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 09:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZTI7w5j3OlTtqMLBVbb0Iy2Ugsk+8sK4yhrmBMBjXh0=; b=a0XdWVHCcP7jfp
	nbo4BGyq7kfictA5W45aRED0RWKKOGNNRsxkLWidUjXhb2CcFnb9+FgcNexsMXzLPLql0G8zWvOs7
	gAhSCSdsklBpGRxBKuvGl0DTJXE1Absq0mQVVbINBjXusKtbbB9P6RhrkoApWAA78E/rA/KonnNeQ
	EVIRvgTPUYmO9itNg2Pv7s0i1YveIJ6Cz5/diY2eOTl26PoajHwpDpZdS8Nuz1xyjTJ6FDjKRlb6e
	qa8Db514YeQE8E1nQHm+uZlnnHb5TpsVh5mDbsM26uDfAP0vUl67adHKO2VeVTlPlv+c8znoTGcx2
	CbLFi4pLDSs164RRoexQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDXm-0094ce-09;
	Wed, 17 May 2023 09:34:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDXj-0094bw-1V
	for linux-rockchip@lists.infradead.org;
	Wed, 17 May 2023 09:34:00 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzDXZ-0000f7-0f; Wed, 17 May 2023 11:33:49 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzDXX-0003G5-3n; Wed, 17 May 2023 11:33:47 +0200
Date: Wed, 17 May 2023 11:33:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 07/21] PM / devfreq: rockchip-dfi: introduce channel
 mask
Message-ID: <20230517093347.GV29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-8-s.hauer@pengutronix.de>
 <20230516165009.00007f3e@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516165009.00007f3e@Huawei.com>
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
X-CRM114-CacheID: sfid-20230517_023359_525497_A9B323CD 
X-CRM114-Status: GOOD (  24.34  )
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

On Tue, May 16, 2023 at 04:50:09PM +0100, Jonathan Cameron wrote:
> On Fri,  5 May 2023 13:38:42 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Different Rockchip SoC variants have a different number of channels.
> > Introduce a channel mask to make the number of channels configurable
> > from SoC initialization code.
> 
> If it's just numbers, why not a count rather than a mask?

It's a mask in the downstream driver. I guess it's not necessarily the
first channels that are enabled when not all channels are enabled. It
could also be channels 0 and 2 that are enabled.

I don't have any example board for this case though, so I can only
guess.

> > -	for (i = 0; i < RK3399_DMC_NUM_CH; i++) {
> > -		u32 a = count.c[i].access - last->c[i].access;
> > -		u32 t = count.c[i].total - last->c[i].total;
> > +	for (i = 0; i < DMC_MAX_CHANNELS; i++) {
> > +		u32 a, t;
> > +
> > +		if (!(dfi->channel_mask & BIT(i)))
> > +			continue;
> > +
> > +		a = count.c[i].access - last->c[i].access;
> > +		t = count.c[i].total - last->c[i].total;
> >  
> >  		if (a > access) {
> >  			access = a;
> > @@ -186,6 +194,8 @@ static int rk3399_dfi_init(struct rockchip_dfi *dfi)
> >  	dfi->ddr_type = (val >> RK3399_PMUGRF_DDRTYPE_SHIFT) &
> >  			RK3399_PMUGRF_DDRTYPE_MASK;
> >  
> > +	dfi->channel_mask = 3;
> 
> GENMASK(1, 0)

OK.

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
