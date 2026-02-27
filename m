Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81F5CFEFB7F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Feb 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IwHSMC66LYaSGM8J/BzK0qkjfE/R6sARE7trUgbh0a8=; b=JWvw1kSvEhLD2H
	wony219/DfPmnBpNIFZuzyR2Ut+5xnYwAMzbW0O4ylmYOZU38de+J8d84SuNm088jnCPjsQisI39O
	NpE3G4vYLKIxE5Qkx74KcfhtDjilNXNEpwWzWr+j6WQzzfffmS/1pft1FdZz/xZAwj0ZjQA3ULqDQ
	3opxziXqp3mAuzCuzG54qCo6cSi0+vnk5hFD4oOaJ+KGXG/TiuNpQ7TTcOEAIhnZHW1/gHi+YyPaP
	5mmIMGOhiF/COJCmGUctHQMS4gwRebz8lvj24Co0riUd+KPTIeV5VzJnyR4XeWIrplquUZ3HYwcjg
	BiSdNne7NQiaa+xdIzgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw3RC-00000008yz1-34it;
	Fri, 27 Feb 2026 19:23:46 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vw3R3-00000008yog-1Jrc;
	Fri, 27 Feb 2026 19:23:44 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1772220111; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bsHrprkm55T8boFqsNoJqacOSEMII6d5JmV7CQd16eSDk5z66oAt2K3FjiMh4EamtvnfA3fImKXG8rEeQVz3JY7+PzPYVlrQoKsSRzJcckbDc98cLnQiqpzdP91UC4t4KjqLAgiSYPETjpXsTs99DE56ArIUpvSmSU7Kkq0pfuY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1772220111; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=IDxTyd4/XBpqSKcrq+B2Z7kB7UuQuSq9lTwP/+9WOEE=; 
	b=QTd9SJrsGwcTy5aXDJ4SDFy+2HsU4J8w+S1fW6WQXw0ynP4VQ+YL0Y4mfFtZ/plFSIQq8THLii2zJZtr7o39X6vvYs4dt9jhUN0CVXF4hpRdvNvEMbIN5WSUe8xAl5O2aldcQ5hH/Vroe4Wd/HDpHiPSzR5CB8WiiViGRHYOg08=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1772220111;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=IDxTyd4/XBpqSKcrq+B2Z7kB7UuQuSq9lTwP/+9WOEE=;
	b=OAT0rU3nYG5qYMoQIwN3C6ntBvdtWzoyLXfiDhN7D9HRMvirjBSqzgid8YsPRh55
	XiX5coDfSdCm9/xYlNVN/XEgOhgEpaOVg0xnEZSXfKPKd3MxFGutI8A0F+kMRTUZs5A
	c25sp9ka5oZyZuIhURcUJnf+2ZnxbK2HfODYyJKI=
Received: by mx.zohomail.com with SMTPS id 1772220110660858.4104769861244;
	Fri, 27 Feb 2026 11:21:50 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Fri, 27 Feb 2026 20:20:15 +0100
Subject: [PATCH v9 10/19] drm/rockchip: vop2: Recognise 10-bit YUV422 as
 YUV format
MIME-Version: 1.0
Message-Id: <20260227-color-format-v9-10-658c3b9db7ef@collabora.com>
References: <20260227-color-format-v9-0-658c3b9db7ef@collabora.com>
In-Reply-To: <20260227-color-format-v9-0-658c3b9db7ef@collabora.com>
To: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <siqueira@igalia.com>, 
 Alex Deucher <alexander.deucher@amd.com>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Dmitry Baryshkov <lumag@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring <robh@kernel.org>, 
 Jonathan Corbet <corbet@lwn.net>, Shuah Khan <skhan@linuxfoundation.org>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260227_112337_468288_4528E5F6 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
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

The Rockchip VOP2 video output driver has a "is_yuv_output" function,
which returns true when a given bus format is a YUV format, and false
otherwise.

This switch statement is lacking the bus format used for YUV422 10-bit.

Add the two component orderings of the YUV422 10-bit bus formats to the
switch statement.

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 39c64296174f..46d49bc98ddb 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -352,6 +352,8 @@ static bool is_yuv_output(u32 bus_format)
 	switch (bus_format) {
 	case MEDIA_BUS_FMT_YUV8_1X24:
 	case MEDIA_BUS_FMT_YUV10_1X30:
+	case MEDIA_BUS_FMT_YUYV10_1X20:
+	case MEDIA_BUS_FMT_UYVY10_1X20:
 	case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
 	case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
 	case MEDIA_BUS_FMT_YUYV8_2X8:

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
