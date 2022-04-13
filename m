Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06532C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 22:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ua3r3tSlSlhPAO2IXIFh9fB64ptMiomz2K31K0xLsHw=; b=tZLTK/DkgnQPPW
	OGsLXkwAri6+EdbHaxzwoVNrDJDZK4E0JieDMy3DHm+LcBy7f0TYIi9ORcOh9QVTztjYOmE8JD/X3
	szb+lrT2uuHVzs2aVIHFkmQK9kchse0OVw2xaY2lBLbWq9C1vHpWwI4Llymrj0iCBFqoCr0WOcsl0
	jDndZsRqXt53EZY9b6aojpfKtPnbTeN4YnONO75OrPl+bVxKsLTJzBHua1Bv8sIImzV4AE3801MHB
	l6Khy40BPyF4NhRLxaN39JTKDQPL3o/Nu/rtDy1dORKBmLGy9SoL0H37mzCy89V4oEv6yW94XvMzC
	d8el1ZGLGV0bKJwUe5HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neljy-002zig-Vk; Wed, 13 Apr 2022 22:45:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neljn-002zfb-Mm; Wed, 13 Apr 2022 22:45:25 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1neljf-0006LW-0U; Thu, 14 Apr 2022 00:45:15 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Brian Norris <briannorris@chromium.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Chanwoo Choi <cwchoi00@gmail.com>
Cc: linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-pm@vger.kernel.org, Doug Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [RFC PATCH 2/2] PM / devfreq: rk3399_dmc: Block PMU during
 transitions
Date: Thu, 14 Apr 2022 00:45:14 +0200
Message-ID: <3484357.R56niFO833@diego>
In-Reply-To: <8824147c-5512-a7a5-9e89-60b510111500@gmail.com>
References: <20220406014842.2771799-1-briannorris@chromium.org>
 <20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid>
 <8824147c-5512-a7a5-9e89-60b510111500@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_154523_793940_0BF5F12A 
X-CRM114-Status: GOOD (  24.42  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Hi,

Am Donnerstag, 14. April 2022, 00:14:40 CEST schrieb Chanwoo Choi:
> On 22. 4. 6. 10:48, Brian Norris wrote:
> > See the previous patch ("soc: rockchip: power-domain: Manage resource
> > conflicts with firmware") for a thorough explanation of the conflicts.
> > While ARM Trusted Firmware may be modifying memory controller and
> > power-domain states, we need to block the kernel's power-domain driver.
> > 
> > If the power-domain driver is disabled, there is no resource conflict
> > and this becomes a no-op.
> > 
> > Signed-off-by: Brian Norris <briannorris@chromium.org>
> > ---
> > 
> >   drivers/devfreq/rk3399_dmc.c | 13 +++++++++++++
> >   1 file changed, 13 insertions(+)
> > 
> > diff --git a/drivers/devfreq/rk3399_dmc.c b/drivers/devfreq/rk3399_dmc.c
> > index e494d1497d60..daff40702615 100644
> > --- a/drivers/devfreq/rk3399_dmc.c
> > +++ b/drivers/devfreq/rk3399_dmc.c
> > @@ -21,6 +21,7 @@
> >   #include <linux/rwsem.h>
> >   #include <linux/suspend.h>
> >   
> > +#include <soc/rockchip/pm_domains.h>
> >   #include <soc/rockchip/rk3399_grf.h>
> >   #include <soc/rockchip/rockchip_sip.h>
> >   
> > @@ -93,6 +94,16 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
> >   
> >   	mutex_lock(&dmcfreq->lock);
> >   
> > +	/*
> > +	 * Ensure power-domain transitions don't interfere with ARM Trusted
> > +	 * Firmware power-domain idling.
> > +	 */
> > +	err = rockchip_pmu_block();
> > +	if (err) {
> > +		dev_err(dev, "Failed to block PMU: %d\n", err);
> > +		goto out_unlock;
> > +	}
> > +
> >   	/*
> >   	 * Some idle parameters may be based on the DDR controller clock, which
> >   	 * is half of the DDR frequency.
> > @@ -198,6 +209,8 @@ static int rk3399_dmcfreq_target(struct device *dev, unsigned long *freq,
> >   	dmcfreq->volt = target_volt;
> >   
> >   out:
> > +	rockchip_pmu_unblock();
> > +out_unlock:
> >   	mutex_unlock(&dmcfreq->lock);
> >   	return err;
> >   }
> 
> Acked-by: Chanwoo Choi <cw00.choi@samsung.com>

so I guess you're ok with me picking up both patches, right?
[Just making sure :-) ]

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
