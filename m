Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C488F34C63
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Apr 2026 16:08:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:From:To:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkmD1FtPd1uUEcAKuSGOMsilvpLqqnC1Uh9+f5eMaGY=; b=r+vYgeLayo45yx
	xIJK3i7zrV+UHG0TQMfwpIZcB/9x2LXm4Icc4KZit1gY2WI9drlCI2Lhdg2VtoHmgrjeo0LrJpeCG
	tacsVUscts0xIWr04wR0jP/aYPNIx+m0ZLQc88/r3IeLsUt2AquNt9HGBUhpXuStONlNnVo5OoAFl
	6qkz4LgdP+GRQWj56nS8E7YDS+hJRWVB45Pz29KY8VaBHupdpmnZ1RiJbcfhPHT2cr9IS0VNWMqzV
	gTb3TwPl3xVfw+GbqVFKciX1wjOAAEtfEzrn48xFcXmeuSll9Hb1GrwUZkLlILJBDPS8lLTsBsKDC
	R3TRj/I8kDe1oa6wi57w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCJpQ-0000000G1it-32Gq;
	Mon, 13 Apr 2026 16:08:00 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCJpO-0000000G1ha-03Bb
	for linux-rockchip@lists.infradead.org;
	Mon, 13 Apr 2026 16:07:59 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 6AB904E42978;
	Mon, 13 Apr 2026 16:07:56 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 353CB5FFB9;
	Mon, 13 Apr 2026 16:07:56 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 962D010450093;
	Mon, 13 Apr 2026 18:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1776096474; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=asF0HsGt6RiO9yJ1UjElEHlRXE65Jp9uDD1NhjSotBQ=;
	b=xEz+sPue9JfPASrlINjN6Vr2FuCOoJ4drkDjQUVkWM4UGLZJ4t04mMr1FqI4DQJpLQ7V2K
	w2H3nJx11sTROYwbl0RIHa3yS/nSXAtdbqCDyJ+Qc/wXHY8LC5HvUPgHlFXcq1mggXBfYh
	NWbNQ2Q8vCyNf3lsUs/FMDj+DazLtD83hLkoQgvXaAlRSZ3CpvjfoBQSqIgVCk7GQFsJnx
	d4PJzRN1joJyAyOkBvNJB9vrX49Uh3v9cFGnvsEwAhI8lxYdbaPvpN0PvVCHt90ZeGBEpn
	tTGhli/qd0TFjPFx5kO23T5kFP1jJ8yiWTk+z/P5757N8IyE+jGudyoZ1p+rWg==
Mime-Version: 1.0
Date: Mon, 13 Apr 2026 18:07:46 +0200
Message-Id: <DHS5NGSKY3ZE.2NWYPEL21N27Z@bootlin.com>
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <alim.akhtar@samsung.com>,
 <dmitry.baryshkov@oss.qualcomm.com>, <nicolas.frattaroli@collabora.com>,
 <dianders@chromium.org>, <m.szyprowski@samsung.com>,
 <linux-kernel@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <linux-arm-kernel@lists.infradead.org>,
 <linux-samsung-soc@vger.kernel.org>, <linux-rockchip@lists.infradead.org>
To: "Damon Ding" <damon.ding@rock-chips.com>, <andrzej.hajda@intel.com>,
 <neil.armstrong@linaro.org>, <rfoss@kernel.org>,
 <maarten.lankhorst@linux.intel.com>, <mripard@kernel.org>,
 <tzimmermann@suse.de>, <airlied@gmail.com>, <simona@ffwll.ch>,
 <inki.dae@samsung.com>, <sw0312.kim@samsung.com>,
 <kyungmin.park@samsung.com>, <krzk@kernel.org>, <jingoohan1@gmail.com>,
 <hjc@rock-chips.com>, <heiko@sntech.de>, <andy.yan@rock-chips.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v14 3/8] drm/bridge: analogix_dp: Add new API
 analogix_dp_finish_probe()
X-Mailer: aerc 0.20.1
References: <20260413132551.1049307-1-damon.ding@rock-chips.com>
 <20260413132551.1049307-4-damon.ding@rock-chips.com>
In-Reply-To: <20260413132551.1049307-4-damon.ding@rock-chips.com>
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_090758_181205_6887C62D 
X-CRM114-Status: GOOD (  16.78  )
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

Hello Damon,

On Mon Apr 13, 2026 at 3:25 PM CEST, Damon Ding wrote:
> Since the panel/bridge should logically be positioned behind the
> Analogix bridge in the display pipeline, it makes sense to handle
> the panel/bridge parsing on the Analogix side. Therefore, we add
> a new API analogix_dp_finish_probe(), which combines the panel/bridge
> parsing with component addition, to do it.
>
> In order to process component binding right after the probe completes,
> the &analogix_dp_plat_data.ops is newly added to pass &component_ops,
> for which the &dp_aux_ep_device_with_data.done_probing() of DP AUX bus
> only supports passing &drm_dp_aux.
>
> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de> # rk3588
>
> ---
>
> Changes in v4:
> - Rename the &analogix_dp_plat_data.bridge to
>   &analogix_dp_plat_data.next_bridge.
> - Remame API analogix_dp_find_panel_or_bridge() to
>   analogix_dp_finish_probe().
>
> Changes in v5:
> - Select DRM_DISPLAY_DP_AUX_BUS for DRM_ANALOGIX_DP.
>
> Changes in v9:
> - Add Tested-by tag.
>
> Changes in v10:
> - Fix to use dev_err_probe() in analogix_dp_finish_probe().
> - Expand the commit message.
>
> Changes in v13:
> - Modify '(on rk3588)' to '# rk3588' for Tested-by tag.
> ---
>  drivers/gpu/drm/bridge/analogix/Kconfig       |  1 +
>  .../drm/bridge/analogix/analogix_dp_core.c    | 46 +++++++++++++++++++
>  include/drm/bridge/analogix_dp.h              |  2 +
>  3 files changed, 49 insertions(+)
>
> diff --git a/drivers/gpu/drm/bridge/analogix/Kconfig b/drivers/gpu/drm/bridge/analogix/Kconfig
> index 03dc7ffe824a..8a6136cd675f 100644
> --- a/drivers/gpu/drm/bridge/analogix/Kconfig
> +++ b/drivers/gpu/drm/bridge/analogix/Kconfig
> @@ -29,6 +29,7 @@ config DRM_ANALOGIX_ANX78XX
>  config DRM_ANALOGIX_DP
>  	tristate
>  	depends on DRM
> +	select DRM_DISPLAY_DP_AUX_BUS

While applying, sparse noticed an issue here: DRM_DISPLAY_DP_AUX_BUS
depends on OF, so you need to propagate the 'depends on OF' to
DRM_ANALOGIX_DP and its reverse dependencies.

I fixed it while applying the patch.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
