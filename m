Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80DE7C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 09:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mQ/AhMYqlMXxZ4Xb3cfZ0eW7auHy8v01Rg3ol3una24=; b=1Fyj1oYrKbSeD6
	EYWYV+cbNJJsJb/iAOFPOCoI0HyaeTlw3cr5At7HREUwpp8qFNg/S0Leate5hurBRf2B4VCYMwKu6
	rB+GgHm1rBltIog8fu+/LvHKzoWL/hZ3Bsx3uKcRhERSv2kUTyiqCJA5RE7/x8SVBzu3L2mmDlUjw
	V+CXj3zanbZwWm8pq8cNTensU+I5iWKqNLyUpsuFKVjhJNtxUZyyJrQxnyyvZQo+SdXg9sV1r5IGD
	vi6fnrSXi3RKaBR7Mavvl1IeTfY43gZu/xsNugiUBP/LV6b832NE8jXsS8cPF8hFiWaeNy8NxZfMw
	13jlgX91vTjL8RkJGv7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDU5-009405-0f;
	Wed, 17 May 2023 09:30:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzDU3-0093zR-0s
	for linux-rockchip@lists.infradead.org;
	Wed, 17 May 2023 09:30:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzDTr-000061-R0; Wed, 17 May 2023 11:29:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pzDTp-000359-UI; Wed, 17 May 2023 11:29:57 +0200
Date: Wed, 17 May 2023 11:29:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 06/21] PM / devfreq: rockchip-dfi: Use free running
 counter
Message-ID: <20230517092957.GU29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-7-s.hauer@pengutronix.de>
 <20230516164843.00000ca5@Huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230516164843.00000ca5@Huawei.com>
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
X-CRM114-CacheID: sfid-20230517_023011_331263_1EB2F2C4 
X-CRM114-Status: GOOD (  21.56  )
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

On Tue, May 16, 2023 at 04:48:43PM +0100, Jonathan Cameron wrote:
> On Fri,  5 May 2023 13:38:41 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > The DDR_MON counters are free running counters. These are resetted to 0
> > when starting them over like currently done when reading the current
> > counter values.
> > 
> > Resetting the counters becomes a problem with perf support we want to
> > add later, because perf needs a monotonicly increasing counter.
> 
> In general, perf doesn't, but it does need to know no one else is modifying it,
> so I guess this makes sense.

Makes sense. I'll rephrase that accordingly.

> > @@ -51,7 +55,8 @@ struct dmc_usage {
> >  struct rockchip_dfi {
> >  	struct devfreq_event_dev *edev;
> >  	struct devfreq_event_desc desc;
> > -	struct dmc_usage ch_usage[RK3399_DMC_NUM_CH];
> > +	struct dmc_count count;
> 
> Is count used?  Looking at the code I'd guess you changed to a local variable at
> some point and forgot to drop this.

Yes, exactly. Dropped.

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
