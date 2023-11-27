Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CD3BC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 14:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wjw2qTvhRCBAHV5hl2epcXn/WF28oiCtQRZYHS4sk+g=; b=J0FR3g2x1tUjcJ
	OUxu+3X45olwZW5vGeiDpQCRcpLx5qu+xzyDJnwQ5NuxAzzaknVruHWpQYhed0ifLHD7fa8kH0MWJ
	yxy0EHKO5nM+UBtQh2Pv+B7vXj3VVovodY13zby4oeDiJPBfBC7ITmM3MhyKODo6WqmOwfri7Hxrn
	xL9FCoZ2knpPCt2ia1udjfPvD/sMqaVOY1mEklv10mjZeQNu2j8VssWYcUNfIow5FYG6pDciE+TX0
	RNboB4w1q/oBXa7cp2bfuWwK0qGph9Qrmp+2O/H4hh2Ii5Os5Eqs2YZHP2qLE6NDTpQApCfP9AF/s
	0UpaX+T4tO2QTeMKyUrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cEA-002eQM-2H;
	Mon, 27 Nov 2023 14:04:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7cE6-002eOo-2F
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Nov 2023 14:04:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cE3-0006eI-SP; Mon, 27 Nov 2023 15:04:39 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cE3-00BxQe-Ei; Mon, 27 Nov 2023 15:04:39 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r7cE3-0046xO-Bx; Mon, 27 Nov 2023 15:04:39 +0100
Date: Mon, 27 Nov 2023 15:04:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com, chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v2 04/12] drm/rockchip: vop2: clear afbc en and transform
 bit for cluster window at linear mode
Message-ID: <20231127140439.GE977968@pengutronix.de>
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125425.3454549-1-andyshrk@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231122125425.3454549-1-andyshrk@163.com>
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
X-CRM114-CacheID: sfid-20231127_060442_734335_E4B0CD4D 
X-CRM114-Status: GOOD (  22.07  )
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

On Wed, Nov 22, 2023 at 08:54:25PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The enable bit and transform offset of cluster windows should be
> cleared when it work at linear mode, or we may have a iommu fault
> issue.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
> 
> (no changes since v1)
> 
>  drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> index 639dfebc6bd1..a019cc9bbd54 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1312,6 +1312,11 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
>  		vop2_win_write(win, VOP2_WIN_AFBC_ROTATE_270, rotate_270);
>  		vop2_win_write(win, VOP2_WIN_AFBC_ROTATE_90, rotate_90);
>  	} else {
> +		if (vop2_cluster_window(win)) {
> +			vop2_win_write(win, VOP2_WIN_AFBC_ENABLE, 0);
> +			vop2_win_write(win, VOP2_WIN_AFBC_TRANSFORM_OFFSET, 0);
> +		}
> +
>  		vop2_win_write(win, VOP2_WIN_YRGB_VIR, DIV_ROUND_UP(fb->pitches[0], 4));
>  	}
>  
> -- 
> 2.34.1
> 
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
