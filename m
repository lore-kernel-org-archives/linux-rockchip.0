Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F149C678D4
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Mar 2023 13:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Au61iivWnhZYAJkl1LkvUj8E1/2oJLCFJvT9C1StxUQ=; b=MPujcqFDMKBLCN
	d1fv08pXTmKjcmQlZCJT84JfwDEOBl3c3O6olphux3pspa3ryTFdnhwPVk3td2eDFi5lGi4xIeJdG
	xA9RaxeCOgOQPVqmfNwvWzutsoBpHXbjLt7mp4xJKABlXzcbXu5+S6LkB5H6U7L6WRqXwf7+lNOtY
	h5cjcC9vXqjHW1bgS4bQkmV67Wqp6YAkZ4fFCVPeejBhjpJ7BtaJo+mVhhzUSces/qy9Ppb/hfrit
	7avQzV0a4Y8ouSLno4m5jidGw1zpZlbUAzj4U4kFVrSnqwjnvYxFbUZ7gJKYJfcmVAqToulw3tYRG
	we01N4Pv6QYL4+8A0aNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZAw5-00Ctpt-QW; Mon, 06 Mar 2023 13:31:30 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZAw2-00CtoU-D5
	for linux-rockchip@lists.infradead.org; Mon, 06 Mar 2023 13:31:27 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pZAvy-0006n4-Oq; Mon, 06 Mar 2023 14:31:22 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pZAvv-0002M7-LA; Mon, 06 Mar 2023 14:31:19 +0100
Date: Mon, 6 Mar 2023 14:31:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
	Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de, Robin Murphy <robin.murphy@arm.com>,
	Dan Johansen <strit@manjaro.org>, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v6 0/4] drm/rockchip: dw_hdmi: Add 4k@30 support
Message-ID: <20230306133119.GP23347@pengutronix.de>
References: <20230216102447.582905-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230216102447.582905-1-s.hauer@pengutronix.de>
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
X-CRM114-CacheID: sfid-20230306_053126_463933_8CE38B2F 
X-CRM114-Status: GOOD (  22.80  )
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

Hi,

No negative feedback anymore, so I think this series should be merged
now.

Heiko, can you take these patches? I just noticed that I didn't Cc you
on this series, I just added you for this mail. Please let me know if
I should resend.

Sascha

On Thu, Feb 16, 2023 at 11:24:43AM +0100, Sascha Hauer wrote:
> One small fix compared to the last version, when checking for valid
> resolutions I accidently compared the current mode width with the
> maximum allowed height which resulted in wrong resolutions being
> discarded.
> 
> Changes since v5:
> - Fix wrong check width vs. height
> 
> Changes since v4:
> - Use struct vop_reg to store resolutions
> - Only check for valid clock rates when clock != NULL
> 
> Changes since v3:
> - Add patch to limit VOP resolutions to hardware capabilities
> 
> Changes since v2:
> - Use correct register values for mpll_cfg
> - Add patch to discard modes we cannot achieve
> 
> Changes since v1:
> - Allow non standard clock rates only on Synopsys phy as suggested by
>   Robin Murphy
> 
> Sascha Hauer (4):
>   drm/rockchip: vop: limit maximium resolution to hardware capabilities
>   drm/rockchip: dw_hdmi: relax mode_valid hook
>   drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
>   drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks
> 
>  drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c  | 41 ++++++++++++++++----
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c  | 15 +++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h  |  6 +++
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  5 ---
>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c  | 18 +++++++++
>  5 files changed, 73 insertions(+), 12 deletions(-)
> 
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
