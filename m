Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82831C83F03
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Jul 2025 15:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HufoHEvkyn+CKJkbqok0YwBmSjpLSuMNtYXTSoHD/dQ=; b=YxoawOqYz6nLuQ
	a8R2H+GpQm1uzYcE6LMJcoHFYbPxt8IgFtxbP2MXxTzAS6NMS9IzD8Oz2oj5T36PTFvlhf2sr0ACd
	DOwRb/r9BmvJHbAeRA3n27H9oyLJIHxIRaZiIfiC2PGQYJmq2LvYcc/zIvPaoallEa6WUtDzmf3HQ
	oWBigVFw1tgqhJZwBPN7JWV6wXh4by5FlD3d1BuFzLKcsNPBrUgdM4Jg3hhYq4BPInwNiHBX3rdOE
	WZ71ec0/B++Lg8jDEMrPkar+/SL2cgSH9y9x974Z/pqrzjlFgSMw+4sHCJYgFjUTW3E/Iilixs4Z4
	BZQyHmZFtz8gw8pFyaBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXiOB-0000000EpQc-0167;
	Fri, 04 Jul 2025 15:31:47 +0000
Received: from gofer.mess.org ([88.97.38.141])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uXi9g-0000000EnW0-2Ust;
	Fri, 04 Jul 2025 15:16:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mess.org; s=2020;
	t=1751642202; bh=fw+3kHpH71x1Y/Yo4BaIBNzC5KdPfbmT9z0yHAtrnEg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OZN6bha/FAxDe4H3fOtXJMB05O6PSsOIO8iLAT0AKWh6sAQ6HB3DJiCrUOfFJq89K
	 JlEVcbJXJWChT72to/oZT3GU/laMbw/fzI0RLjd8Hy4W+YhrBNIcS7FBMyf1Br408n
	 D+vIYlKlKvQaBNxdLEYY206FNUOmF3WpRVHBHZ1vmtW+7G5wC/1YrvfLV23GVAUdqp
	 B/az+zmd5IfyH8fsuSPeJ7Tso4Nt+VLxtIvSJqcA5OjODsIW08BHHuUVTWKUjj/mSP
	 J09uIe2u1xXvKRqvzYMMRCl9G9OAJjjyA8Iaelz6sx05RL8u10fivwd9m8ceR6d7VY
	 +wjycNZVop6Vg==
Received: by gofer.mess.org (Postfix, from userid 1000)
	id 34B531003B9; Fri,  4 Jul 2025 16:16:42 +0100 (BST)
Date: Fri, 4 Jul 2025 16:16:42 +0100
From: Sean Young <sean@mess.org>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Tommaso Merciai <tomm.merciai@gmail.com>,
	Martin Hecht <mhecht73@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Alain Volmat <alain.volmat@foss.st.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Umang Jain <umang.jain@ideasonboard.com>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mikhail Rudenko <mike.rudenko@gmail.com>,
	Steve Longerbeam <slongerbeam@gmail.com>,
	Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
	Nicholas Roth <nicholas@rothemail.net>,
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>,
	Sylvain Petinot <sylvain.petinot@foss.st.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	Matt Ranostay <matt@ranostay.sg>,
	Nas Chung <nas.chung@chipsnmedia.com>,
	Jackson Lee <jackson.lee@chipsnmedia.com>,
	Dmitry Osipenko <digetx@gmail.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Vikash Garodia <quic_vgarodia@quicinc.com>,
	Dikshita Agarwal <quic_dikshita@quicinc.com>,
	Abhinav Kumar <abhinav.kumar@linux.dev>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Matthias Fend <matthias.fend@emfend.at>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
	Ricardo Ribalda <ribalda@chromium.org>, linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-tegra@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 41/80] media: Remove redundant
 pm_runtime_mark_last_busy() calls
Message-ID: <aGfwWkZg48T1tooH@gofer.mess.org>
References: <20250704075225.3212486-1-sakari.ailus@linux.intel.com>
 <20250704075431.3220262-1-sakari.ailus@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250704075431.3220262-1-sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250704_081649_100116_D9CF6EA2 
X-CRM114-Status: GOOD (  13.79  )
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

On Fri, Jul 04, 2025 at 10:54:31AM +0300, Sakari Ailus wrote:
> pm_runtime_put_autosuspend(), pm_runtime_put_sync_autosuspend(),
> pm_runtime_autosuspend() and pm_request_autosuspend() now include a call
> to pm_runtime_mark_last_busy(). Remove the now-reduntant explicit call to
> pm_runtime_mark_last_busy().
> 
> Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> ---
 
...

>  diff --git a/drivers/media/rc/gpio-ir-recv.c b/drivers/media/rc/gpio-ir-recv.c
> index bf6d8fa983bf..161f8919022c 100644
> --- a/drivers/media/rc/gpio-ir-recv.c
> +++ b/drivers/media/rc/gpio-ir-recv.c
> @@ -49,7 +49,6 @@ static irqreturn_t gpio_ir_recv_irq(int irq, void *dev_id)
>  		ir_raw_event_store_edge(gpio_dev->rcdev, val == 1);
>  
>  	if (pmdev) {
> -		pm_runtime_mark_last_busy(pmdev);
>  		pm_runtime_put_autosuspend(pmdev);
>  	}

No need for braces any more - as Laurent already pointed out.

Reviewed-by: Sean Young <sean@mess.org>


Sean

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
