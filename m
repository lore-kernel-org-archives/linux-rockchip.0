Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80462FC5913
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Feb 2026 09:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwRS/Kh/zkipqZQJZu3sBXPkttVRkIL2WaFqiGvhCKg=; b=pCFFV8G3C9bub4
	Hcg1/cvIye/tiyqmsIaJkOOJtC16sQNHR8NXC5j9HvDvH5CeKNHT8A52xqLRN6i9goRLXcB6nV9Ro
	C+mReScAmgk0bP16HrqJIrfdaaBDe1+CVYpd4/LC2I+4AnW+ZN7zZX+sRJliVcqZXLi4JZCvgWsva
	+HvO1AgeQb3ea7pLSZ9kljFAYSvmZmYdp44xCdrSvscYzbmkAFGvlV1hqBO5LZrTrDQ1Xdkxpu7uL
	HanMX0sOotlLae7SvccCBX6WJ96pb9Vo5VxWeu514oxhTql334XzdbKtcd2kNEEcURdGELOD6uzQc
	SRZJGt2aK9kr8rGSZOMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvXDL-00000005jmd-0dMD;
	Thu, 26 Feb 2026 08:59:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvXDI-00000005jiw-0gR2
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Feb 2026 08:59:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vvXCY-0006mh-AZ; Thu, 26 Feb 2026 09:58:30 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vvXCR-002hWl-1x;
	Thu, 26 Feb 2026 09:58:24 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vvXCS-000000004Cy-3TL6;
	Thu, 26 Feb 2026 09:58:24 +0100
Message-ID: <f6807ac0f40dbcb87278f6339c4f2b5f715eb359.camel@pengutronix.de>
Subject: Re: [PATCH 11/14] drm/mediatek: dp: Convert to
 drm_output_color_format
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Maxime Ripard <mripard@kernel.org>, Nicolas Frattaroli	
 <nicolas.frattaroli@collabora.com>, Jani Nikula
 <jani.nikula@linux.intel.com>,  Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann
 <tzimmermann@suse.de>, David Airlie	 <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, Harry Wentland	 <harry.wentland@amd.com>, Leo Li
 <sunpeng.li@amd.com>, Rodrigo Siqueira	 <siqueira@igalia.com>, Alex Deucher
 <alexander.deucher@amd.com>, Christian =?ISO-8859-1?Q?K=F6nig?=	
 <christian.koenig@amd.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil
 Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart	 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, Andy Yan
 <andy.yan@rock-chips.com>, Liviu Dudau	 <liviu.dudau@arm.com>, Chun-Kuang
 Hu <chunkuang.hu@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno	 <angelogioacchino.delregno@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,  Heiko =?ISO-8859-1?Q?St=FCbner?=	
 <heiko@sntech.de>, Liu Ying <victor.liu@nxp.com>, Chen-Yu Tsai
 <wens@kernel.org>,  Samuel Holland <samuel@sholland.org>, Dave Stevenson
 <dave.stevenson@raspberrypi.com>,  =?ISO-8859-1?Q?Ma=EDra?= Canal	
 <mcanal@igalia.com>, Raspberry Pi Kernel Maintenance	
 <kernel-list@raspberrypi.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	amd-gfx@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-sunxi@lists.linux.dev
Date: Thu, 26 Feb 2026 09:58:24 +0100
In-Reply-To: <20260224-drm-rework-color-formats-v1-11-bebc76604ada@kernel.org>
References: <20260224-drm-rework-color-formats-v1-0-bebc76604ada@kernel.org>
	 <20260224-drm-rework-color-formats-v1-11-bebc76604ada@kernel.org>
User-Agent: Evolution 3.56.2-0+deb13u1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_005916_203667_48CD84E4 
X-CRM114-Status: GOOD (  12.13  )
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

On Di, 2026-02-24 at 11:58 +0100, Maxime Ripard wrote:
> Now that we introduced a new drm_output_color_format enum to represent
> what DRM_COLOR_FORMAT_* bits were representing, we can switch to the new
> enum.
> 
> The main different is that while DRM_COLOR_FORMAT_ was a bitmask,

s/different/difference/

> drm_output_color_format is a proper enum. However, the enum was done is
> such a way than DRM_COLOR_FORMAT_X = BIT(DRM_OUTPUT_COLOR_FORMAT_X) so
> the transitition is easier.
> 
> The only thing we need to consider is if the original code meant to use
> that value as a bitmask, in which case we do need to keep the bit shift,
> or as a discriminant in which case we don't.
> 
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
