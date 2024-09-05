Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B00DCD4F4D
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 07:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VB/zN5I9lm045TTYod4sPBeY9MQ5O6pc+4L++xcTkO8=; b=qtHsZUvJmDc7rV
	wG6/YqHahiFMeNKDu0/nuoPpSfqXtKi+xHEt/QIDJRSxes8FNeHhZSk7h1KSMBrZI6ajZWXqfBfpZ
	4aIrqBw/0MIllPsedg0Hsx4Xz+54UfaY9V6gyvWQHYZhdCWhTEwlZ/eUwEWVPBLZQUKqji10LRLLL
	KtLUPIHBtpFCvTOiY8+iN0hoCzWiPtjDzPjYPmp4tpaROkKDALQEQ9u/8ymIGEnO2gS0KrndjpbaP
	lceDVtUj1pX7RCA1Q7cUQPVvJZAAlbgYI23Z5XSUmqXQq+SbgjZmNIeqPJPFpIEKivLwR6m2qPbUB
	wiB7/DHCL/nztdnfcLUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm6eJ-00000007Jz6-3ngx;
	Thu, 05 Sep 2024 07:11:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm6eG-00000007Jxa-3lcJ
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Sep 2024 07:11:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sm6dw-0002sW-V8; Thu, 05 Sep 2024 09:11:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sm6dt-005e23-37; Thu, 05 Sep 2024 09:10:57 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sm6ds-0085D2-38;
	Thu, 05 Sep 2024 09:10:56 +0200
Date: Thu, 5 Sep 2024 09:10:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Subject: Re: [PATCH v2 05/11] drm/rockchip: vop2: Introduce vop hardware
 version
Message-ID: <ZtlZgKcDQFF_WnCn@pengutronix.de>
References: <20240904120238.3856782-1-andyshrk@163.com>
 <20240904120238.3856782-6-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240904120238.3856782-6-andyshrk@163.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_001120_945601_A3150337 
X-CRM114-Status: GOOD (  28.92  )
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
Cc: detlev.casanova@collabora.com, heiko@sntech.de, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, mripard@kernel.org, sebastian.reichel@collabora.com, linux-rockchip@lists.infradead.org, sjoerd@collabora.com, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, robh@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Andy,

On Wed, Sep 04, 2024 at 08:02:32PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> There is a version number hardcoded in the VOP VERSION_INFO
> register, and the version number increments sequentially based
> on the production order of the SOC.
> 
> So using this version number to distinguish different VOP features
> will simplify the code.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
> Changes in v2:
> - Introduce vop hardware version
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c |  7 ++++---
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h | 11 +++++++++++
>  drivers/gpu/drm/rockchip/rockchip_vop2_reg.c |  3 +++
>  3 files changed, 18 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> index 9b269f6e576e..871d9bcd1d80 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
> @@ -13,6 +13,15 @@
>  #include "rockchip_drm_drv.h"
>  #include "rockchip_drm_vop.h"
>  
> +#define VOP2_VERSION(major, minor, build)	((major) << 24 | (minor) << 16 | (build))
> +
> +/* The new SOC VOP version is bigger than the old */
> +#define VOP_VERSION_RK3568	VOP2_VERSION(0x40, 0x15, 0x8023)
> +#define VOP_VERSION_RK3588	VOP2_VERSION(0x40, 0x17, 0x6786)
> +#define VOP_VERSION_RK3528	VOP2_VERSION(0x50, 0x17, 0x1263)
> +#define VOP_VERSION_RK3562	VOP2_VERSION(0x50, 0x17, 0x4350)
> +#define VOP_VERSION_RK3576	VOP2_VERSION(0x50, 0x19, 0x9765)

What about the RK3566? Does it have the same version code as the RK3568?

This new version field replaces the soc_id mechanism we had before to
99%. You keep the soc_id around just for distinguishing between RK3566
and RK3568. It would be nice to fully replace it.

I see that the VOP_VERSION_RK* numbers are the same as found in the
VOP2_SYS_VERSION_INF registers. On the other hand you never read the
value from the register which make the VOP_VERSION_RK* just arbitrary
numbers. Wouldn't it be possible to make something up for RK3566, like
VOP2_VERSION(0x40, 0x15, 0x8022) to get rid of the soc_id thingy?

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
