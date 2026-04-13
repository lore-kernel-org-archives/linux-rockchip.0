Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AD39EBFD36
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Apr 2026 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R4W0lXwCSvmnuG1JfYyskxhdJ1VUjtS6pcSczPuy86k=; b=XaE2ty6ra0XFmM
	kgspXXgUTUx84vLJePSB54y+y1ysa8ZUwB2k5pMJp3fDQ4HMaVSIo4IOOJz8jTrfAeV4ClkL6VuZj
	8KNAN/eSCn5839s0WxPjf2ZRQzgsA/XP6vqIAKVQG2xGhEr0CFh3/t8FztXl66Vq2NoIYcRRTqSbC
	MsMvlxcDvqDnA+onHIA7n80TJJHG6HhPahBYTHLJRvM1IYA4SJlGDpT/Ycpv66YMCb6sdFuaAJ32Y
	b53B2wqqvUhdU1yKpFoODTHVicXvweXNMgpHBBrwMz+aph+cEcMGYMcEwHAq+/cAwtjvRXjvmOb/m
	DrEFyUVNdyO0xuyH6k/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEFn-0000000FRbI-1DLz;
	Mon, 13 Apr 2026 10:10:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEFl-0000000FRZs-1lBC;
	Mon, 13 Apr 2026 10:10:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=FenlZU+Q9fcqz4rTVQF15NxhkdYoxpJFDd83oJEXDMg=; b=XbS3UckIjgNO9+mfwtX/5+U40Q
	IqhGlZ7fcgienmB3CVnQ07yNFPT9Ar2x5henz4QEucvgYBOcESUkD8zVqZWKbmOU+2ZE+EgBHz55e
	7omuabDyRs7Hiq0kQewAaSSpil25NpGfs/ZWJVhYBnx2jQ+F+cHGXCUyAQfpor72n8H9IMZ08lncc
	HUMtE44W9rdEp+4YPK7rYn3yPDSeStNlyvaP8xeIPJj8e25pZ9TJivi/6MLIBSDf5pyUPPyGANGLx
	9Lg7dNL7R/vmpVTb4A3RSSaUzMmCk1Ifp8aQp5sgaQ1Qc9i0QXvKLRNzpxqYyphK5NyqmuwdVKdO6
	cm8X0cyw==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCEFg-0000000GYsX-1nci;
	Mon, 13 Apr 2026 10:10:48 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1776075005; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=P9GvcOKIFZX7FdoX89m6qzR55nMCRxVkLHIw7XkcXf6HIQrTeytUYyBD+fadkezbWhbaqgHgkvm66ZFqAyfPe6SKq1X1DnEoHzGtEU76xXK9AqsnEkN/bYwApXR09nt0xlT6pAjMx4d2txbPsHILMUXV+JhamkhKUiK07ru5esg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1776075005; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=FenlZU+Q9fcqz4rTVQF15NxhkdYoxpJFDd83oJEXDMg=; 
	b=GW0zAzWS1K+F6mrgXTbOqcK7WQKYHHKU79wnuVRLvJRwJZ+ZfoFWD+Vx8fpDHwITFhSAJTEaApCwjt5LmJx5uMQGa609k9zk0mzhpchGfPK3aYaQ8aiDG/rpCNvvPquGNTLP/46ycCh88xL1TBoDeOKh96TaZjOKrwMsyXGv63A=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1776075005;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=FenlZU+Q9fcqz4rTVQF15NxhkdYoxpJFDd83oJEXDMg=;
	b=Wnmi+aZslN9Io2a8+1wqA3zSIhOTSlONtu9tUsqjfJIbTkpGQmxU/z3iB+6UYVDS
	sTTolTusKDDdhM7XP+Vbs63Wt0caUvZXnfvGJ88bQ7qGbmoBJV+V3ONP2jIVbXE3YHa
	1L8483pjzqM+kjVxWgUnd9TLakO7A428wMfVqQ/U=
Received: by mx.zohomail.com with SMTPS id 17760750032471019.2513522437699;
	Mon, 13 Apr 2026 03:10:03 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 13 Apr 2026 12:07:30 +0200
Subject: [PATCH v13 16/27] drm/rockchip: vop2: Recognise 10-bit YUV422 as
 YUV format
MIME-Version: 1.0
Message-Id: <20260413-color-format-v13-16-ab37d4dfba48@collabora.com>
References: <20260413-color-format-v13-0-ab37d4dfba48@collabora.com>
In-Reply-To: <20260413-color-format-v13-0-ab37d4dfba48@collabora.com>
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
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_111044_814567_7B2EE66A 
X-CRM114-Status: UNSURE (   9.75  )
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
Cc: linux-doc@vger.kernel.org, intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, linux-rockchip@lists.infradead.org, amd-gfx@lists.freedesktop.org, kernel@collabora.com, intel-xe@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
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
Reviewed-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index d3b76e7e785e..59d15bacf023 100644
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
