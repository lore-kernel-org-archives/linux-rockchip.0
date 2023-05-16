Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F13BAC77B7F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 May 2023 15:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDJQsUCmkORJ1DZhrJYvmMHwnEoBw3LOet7Z39fT9kQ=; b=eAA0g9ialuTrgT
	TMtNNjFCZo7JPMam2bveKzMwDCMQzGFgnR+BmQlpQkvRzG8nkAVy2mvnMzfmfZBYq4rWzeUbN9AgS
	Ldu6e47B98FL6pnTQvVe2GfS/MqUpCNaJJttBKx5bgW7kSkKdbNuBPrppHHqNP/w3p9ed0caQv9c+
	uq71hN876UY3JWuzqIeFgba3Pjl2s0BC02qdX/5FRp3RYgtzxk5R2YVNJhiWRMmuH0Uta2qrN1oyP
	4XszIvtX64aZWPGr6LWtDkj0wTHPXCQv5jJPEmoQ/i6FKZkBf7j5ZZfW+XUk0FyDWIEA/bZP2deUm
	wGOay31ZnJF4JFkqTn+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pywas-006FGu-0n;
	Tue, 16 May 2023 15:28:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pywaf-006FBg-0y
	for linux-rockchip@lists.infradead.org;
	Tue, 16 May 2023 15:27:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pywaY-0001PG-Ig; Tue, 16 May 2023 17:27:46 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pywaV-00038S-N4; Tue, 16 May 2023 17:27:43 +0200
Date: Tue, 16 May 2023 17:27:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin Murphy <robin.murphy@arm.com>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>
Subject: Re: [PATCH v4 15/21] PM / devfreq: rockchip-dfi: Add perf support
Message-ID: <20230516152743.GS15436@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
 <20230505113856.463650-16-s.hauer@pengutronix.de>
 <71827018-8e29-2966-380b-66ddfdcd3668@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <71827018-8e29-2966-380b-66ddfdcd3668@arm.com>
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
X-CRM114-CacheID: sfid-20230516_082753_341189_7909A7D7 
X-CRM114-Status: GOOD (  39.91  )
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

On Tue, May 09, 2023 at 09:04:58PM +0100, Robin Murphy wrote:
> On 2023-05-05 12:38, Sascha Hauer wrote:
> > diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
> > index eae010644935a..400b1b360e3c9 100644
> > --- a/drivers/devfreq/event/rockchip-dfi.c
> > +++ b/drivers/devfreq/event/rockchip-dfi.c
> > @@ -20,6 +20,7 @@
> >   #include <linux/of_device.h>
> >   #include <linux/bitfield.h>
> >   #include <linux/bits.h>
> > +#include <linux/perf_event.h>
> >   #include <soc/rockchip/rockchip_grf.h>
> >   #include <soc/rockchip/rk3399_grf.h>

[...]

> > +static int rockchip_ddr_perf_event_init(struct perf_event *event)
> > +{
> > +	struct rockchip_dfi *dfi = container_of(event->pmu, struct rockchip_dfi, pmu);
> > +
> > +	if (event->attr.type != event->pmu->type)
> > +		return -ENOENT;
> > +
> > +	if (event->attach_state & PERF_ATTACH_TASK)
> > +		return -EOPNOTSUPP;
> 
> IMO this should be -EINVAL - the event isn't something that the driver would
> consider valid in general but happens to not be supported by this particular
> PMU instance, it's something that's fundamentally meaningless because the
> memory controller has no notion of what a task or even a CPU is, much less
> the ability to ever attribute low-level DRAM accesses to one.
> 
> > +
> > +	if (event->cpu < 0) {
> > +		dev_warn(dfi->dev, "Can't provide per-task data!\n");
> > +		return -EOPNOTSUPP;
> 
> Ditto.
> 
> > +	}
> > +
> 
> If you can't snapshot multiple counters atomically (and don't want to
> start/stop the whole monitor to achieve the same effect - I guess it would
> be hard to do that without getting in the way of devfreq operation), then
> you should ideally also check for and reject event groups containing
> multiple hardware events.

Yes, starting/stopping the monitor for atomic snapshots is hard to do
without influencing devfreq operation, that's why I decided against it.

OTOH I consider it very useful being able to monitor read-bytes and
write-bytes at the same time (or to simultaneously monitor multiple
channels in the next version).

Indeed non atomically reading the snapshots introduces a small error,
but normally the time it takes to read out all channels should be rather
small compared to the time between the snapshots, so I think this error
is negligible.


> > +static int rockchip_ddr_perf_init(struct rockchip_dfi *dfi)
> > +{
> > +	struct pmu *pmu = &dfi->pmu;
> > +	int ret;
> > +
> > +	pmu->module = THIS_MODULE;
> > +	pmu->capabilities = PERF_PMU_CAP_NO_EXCLUDE;
> > +	pmu->task_ctx_nr = perf_invalid_context;
> > +	pmu->attr_groups = attr_groups;
> > +	pmu->event_init  = rockchip_ddr_perf_event_init;
> > +	pmu->add = rockchip_ddr_perf_event_add;
> > +	pmu->del = rockchip_ddr_perf_event_del;
> > +	pmu->start = rockchip_ddr_perf_event_start;
> > +	pmu->stop = rockchip_ddr_perf_event_stop;
> > +	pmu->read = rockchip_ddr_perf_event_update;
> > +
> > +	dfi->cpu = raw_smp_processor_id();
> > +
> > +	ret = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
> > +				      "rockchip_ddr_perf_pmu",
> > +				      NULL,
> > +				      ddr_perf_offline_cpu);
> 
> So, each instance gets its own distinct multi-instance state to only support
> a single instance each, except there can clearly only ever be a single
> instance globally anyway, since the PMU is registered with a fixed name... I
> can only guess that maybe such a contrivance is born of the notion of
> "global variables are bad", but honestly, this is worse :/

So you are suggesting that struct pmu should be statically initialized
rather than dynamically allocated, right?
Are you referring to struct pmu only or also to struct rockchip_dfi?

I am not sure I would like this. Yes, the fixed name makes the driver
inherently single instance only, nevertheless I think the driver code is
easier to follow when it's written the usual way, with lifetime of the
dynamic data between probe() and remove().

As a compromise I could allocate the name dynamically as well, but I
have no idea how to make up a good id. Some other drivers use the base
address of the device, but that would mean the 'perf stat' calls would
differ between different SoCs without any real gain.

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
