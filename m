Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AB83CD5BD0
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 May 2026 12:08:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8K6eFZmX5vCzNpEI4+XPvII/J1o0d6cL3GRoEBnNbuU=; b=jXeafKjGHzkrWe
	jbFDRYHVwzSyYQicGiBtmEz1G6SdaEj4DaU1YaDBSzUjmYEi8kjrX9ojds+QpENGRkBQyxq0BTJH0
	pFAi3WYFxPDy273ufv2xFKgQ5Y+F5zpIcNzolDKDglpYRB5GODqsYT2005dCkHrkEuJ0nSFgHwWKn
	VHlwarev4K+Uc4O79Zy/lcJQ/cFSMclyCWecr9lK/j0KzyPUzbG30A2ODttJqqJCgtd8LnwF3Gb7q
	nKLrnrLRJ7HuBU8NdNo3vIXpzIiwgiCP+JdqGx/ptVIZo/tspdd/6Ra3HAUSnSXAK72vINuOP24xw
	I+4dyYYTR18NlnUtdoxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRqa5-00000001sia-2ipU;
	Tue, 26 May 2026 12:08:21 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRqa2-00000001shC-2xpP
	for linux-rockchip@lists.infradead.org;
	Tue, 26 May 2026 12:08:21 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id B6FFE1A36D2;
	Tue, 26 May 2026 12:08:13 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 866A56011D;
	Tue, 26 May 2026 12:08:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7181C10888356;
	Tue, 26 May 2026 14:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1779797292; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=DK8eA9/GN7NzLuxBx/GTovhK/apGoGFfUGeCC5d5iyI=;
	b=RNU5++s0L9bfnoxU24iB+xsMHm5P0Ae9cOJvZKPHxeM97AF368q8RuNWiwcQLO12P9CZ6o
	moU9/AUpCKd8iyFRV54iR+l+nhFxSXVFwjQn4i9RbIvM26ms7QueBOCrGZ0MMKChE14P7P
	HZ4an8aN8PC+KrEOHJu3tLBY7Zi/DIs7l3U2GzxAYnRfA3DEp2mUT0jZPfnbEJn4DAORa7
	xVj58D97QdBzzHxdheW2w2kq4sIQtzS+j2fdh6rSwYZIdd5EZ0oVBR7inInOpoANc0OCpg
	LhcQsFUfMpAh+toIhmX2aljXCS2HNweQL5NuMs0i3q0TuPvtlh6+YQ76VYqetA==
MIME-Version: 1.0
Subject: Re: [PATCH v3 2/2] drm/bridge: analogix_dp: Add support for
 optional data-lanes mapping
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260525094731.121380-3-damon.ding@rock-chips.com>
References: <20260525094731.121380-1-damon.ding@rock-chips.com>
 <20260525094731.121380-3-damon.ding@rock-chips.com>
Date: Tue, 26 May 2026 14:07:50 +0200
Message-Id: <177979727057.297330.10691183273720133245.b4-review@b4>
X-Mailer: b4 0.15.2
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_050818_885620_9633F083 
X-CRM114-Status: GOOD (  10.55  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 25 May 2026 17:47:31 +0800, Damon Ding <damon.ding@rock-chips.com> wrote:

Hello Damon,

>
> diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> index 8cf6b73bceac..d53ab25bc57b 100644
> --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> @@ -1234,6 +1234,59 @@ static const struct drm_bridge_funcs analogix_dp_bridge_funcs = {
> [ ... skip 11 lines ... ]
> +	int ret, i;
> +
> +	memcpy(video_info->lane_map, map, sizeof(map));
> +
> +	num_lanes = drm_of_get_data_lanes_count_ep(dp->dev->of_node, 1, 0, 1,
> +						   video_info->max_lane_count);

Should num_lanes be > 4, the buffers could overflow. I realize it should
not happen, but analogix_dp_dt_parse_pdata() can set max_lane_count from
the device tree, so a bogus dtb could cause such overflow.

Perhaps you should just (in a separate patch) error out in
analogix_dp_dt_parse_pdata() to prevent this. And maybe even adding an
BUG_ON(lane_count > 4) here.

Otherwise LGTM.

-- 
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
