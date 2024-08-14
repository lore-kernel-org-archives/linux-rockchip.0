Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7EB3DC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 04:26:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jq0UgaaaxQBJfE/nWvzPrhTEHzAksDJoElJ+lMixDoc=; b=jKo8NqSv31OmZk
	ln96s3vKloIlAzp6QcDUkxk8cAodh/LweDMW9IAVTKRa6+eBSh84LidRb5yV8Zg1ENmF+vLfOt4/2
	jVu61fTH4nrvNXcAinN3oXARiUr7ZNCDkjMaL1W5MkH7OuEmz8TbEhPq5Q9Axsr3G4xwuf73k/yj/
	Sg0f9EouYVO7NtjnD7a543tLGLRYynddJH1jwz7OuY1ca42Jo/TOv50tGFBZmiq3+VFIE/RCjjnQ3
	+OZAN6ISwzKqwMzX3fRVWBVQKUodSyWznYB4TgCTwWh1iY6UkBxN2bo2gZKmSjhVJgb+uFtMv2L+p
	5Ih5c8xyuzluobDGjyxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se5aD-00000005gso-0t08;
	Wed, 14 Aug 2024 04:26:01 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1se5a9-00000005gqX-06Oq
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 04:25:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id CDC93CE1850;
	Wed, 14 Aug 2024 04:25:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61D0DC4AF09;
	Wed, 14 Aug 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1723609554;
	bh=Q8y1qhZoFQGUnbjLxGB7HQsVFkIBvrIGi1L0qwc8O5s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CnOibUQsoFCKZkHYLGZFiWPZC4llhehvfV+64pxd9OkGQM67d4VuuCK4sc8lCybk5
	 XL0kGEpqSk0hp8gh6YN26WizuAIQtqpjsKOhUHGi1zioFZx7mvQAaQnE6cgTwuLxqj
	 rW9wu/eT87rvOznMjmTBrPIBQMwX5UBFi/5tAJtI=
Date: Wed, 14 Aug 2024 06:25:51 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Mark Brown <broonie@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>, kernel@collabora.com,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RFC] regmap: maple: Switch to use irq-safe locking
Message-ID: <2024081459-paralyses-antarctic-2499@gregkh>
References: <20240814-regcache-maple-irq-safe-v1-1-1b454c5767de@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240814-regcache-maple-irq-safe-v1-1-1b454c5767de@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_212557_736713_668CB3B4 
X-CRM114-Status: GOOD (  23.50  )
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

On Wed, Aug 14, 2024 at 01:20:21AM +0300, Cristian Ciocaltea wrote:
> Commit 3d59c22bbb8d ("drm/rockchip: vop2: Convert to use maple tree
> register cache") enabled the use of maple tree register cache in
> Rockchip VOP2 driver.  However, building the kernel with lockdep support
> indicates locking rules violation when trying to unload the rockchipdrm
> module:
> 
> [ 48.360258] ========================================================
> [ 48.360829] WARNING: possible irq lock inversion dependency detected
> [ 48.361400] 6.11.0-rc1 #40 Not tainted
> [ 48.361743] --------------------------------------------------------
> [ 48.362311] modprobe/685 just changed the state of lock:
> [ 48.362790] ffff0000087fa798 (&mt->ma_lock){+...}-{2:2}, at: regcache_maple_exit+0x6c/0xe0
> [ 48.363554] but this lock was taken by another, HARDIRQ-safe lock in the past:
> [ 48.364212]  (rockchip_drm_vop2:3114:(&vop2_regmap_config)->lock){-.-.}-{2:2}
> [ 48.364226]
> 
>              and interrupts could create inverse lock ordering between them.
> 
> [ 48.365874]
>              other info that might help us debug this:
> [ 48.366460]  Possible interrupt unsafe locking scenario:
> 
> [ 48.367069]        CPU0                    CPU1
> [ 48.367478]        ----                    ----
> [ 48.367889]   lock(&mt->ma_lock);
> [ 48.368197]                                local_irq_disable();
> [ 48.368729]                                lock(rockchip_drm_vop2:3114:(&vop2_regmap_config)->lock);
> [ 48.369551]                                lock(&mt->ma_lock);
> [ 48.370081]   <Interrupt>
> [ 48.370336]     lock(rockchip_drm_vop2:3114:(&vop2_regmap_config)->lock);
> [ 48.370957]
>                 *** DEADLOCK ***
> 
> [ 48.371489] 2 locks held by modprobe/685:
> [ 48.371854]  #0: ffff0000018898f8 (&dev->mutex){....}-{3:3}, at: device_release_driver_internal+0x54/0x210
> [ 48.372739]  #1: ffff800081c6ca80 (component_mutex){+.+.}-{3:3}, at: component_del+0x38/0x158
> [ 48.373522]
>                the shortest dependencies between 2nd lock and 1st lock:
> [ 48.374235]  -> (rockchip_drm_vop2:3114:(&vop2_regmap_config)->lock){-.-.}-{2:2} {
> [ 48.374941]     IN-HARDIRQ-W at:
> [ 48.375239]                       lock_acquire+0x1d4/0x320
> [ 48.375739]                       _raw_spin_lock_irqsave+0x6c/0x98
> [ 48.376300]                       regmap_lock_spinlock+0x20/0x40
> [ 48.376845]                       regmap_read+0x44/0x88
> [ 48.377321]                       vop2_isr+0x90/0x290 [rockchipdrm]
> [ 48.377919]                       __handle_irq_event_percpu+0x114/0x2b0
> [ 48.378519]                       handle_irq_event+0x54/0xb8
> [ 48.379032]                       handle_fasteoi_irq+0x158/0x228
> [ 48.379577]                       generic_handle_domain_irq+0x34/0x58
> [ 48.380160]                       gic_handle_irq+0xa4/0x114
> 
> [...]
> 
> [ 48.466666] -> (&mt->ma_lock){+...}-{2:2} {
> [ 48.467066]    HARDIRQ-ON-W at:
> [ 48.467360]                     lock_acquire+0x1d4/0x320
> [ 48.467849]                     _raw_spin_lock+0x50/0x70
> [ 48.468337]                     regcache_maple_exit+0x6c/0xe0
> [ 48.468864]                     regcache_exit+0x8c/0xa8
> [ 48.469344]                     regmap_exit+0x24/0x160
> [ 48.469815]                     devm_regmap_release+0x1c/0x28
> [ 48.470339]                     release_nodes+0x68/0xa8
> [ 48.470818]                     devres_release_group+0x120/0x180
> [ 48.471364]                     component_unbind+0x54/0x70
> [ 48.471867]                     component_unbind_all+0xb0/0xe8
> [ 48.472400]                     rockchip_drm_unbind+0x44/0x80 [rockchipdrm]
> [ 48.473059]                     component_del+0xc8/0x158
> [ 48.473545]                     dw_hdmi_rockchip_remove+0x28/0x40 [rockchipdrm]
> 
> The problem is that the regmap lock could be taken by an IRQ context,
> interrupting the irq-unsafe maple tree lock, which may result in a lock
> inversion deadlock scenario.
> 
> Switch to use irq-safe locking in the maple tree register cache.
> 
> Fixes: f033c26de5a5 ("regmap: Add maple tree based register cache")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/base/regmap/regcache-maple.c | 29 ++++++++++++++++++-----------
>  1 file changed, 18 insertions(+), 11 deletions(-)
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- You have marked a patch with a "Fixes:" tag for a commit that is in an
  older released kernel, yet you do not have a cc: stable line in the
  signed-off-by area at all, which means that the patch will not be
  applied to any older kernel releases.  To properly fix this, please
  follow the documented rules in the
  Documentation/process/stable-kernel-rules.rst file for how to resolve
  this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
