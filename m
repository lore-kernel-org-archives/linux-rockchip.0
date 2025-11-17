Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B72CECEACEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 19:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tNZGh7bRHQlOIO091oxjhQ5IKgv4WJhJin4flR5+20=; b=BjtYMk1r6QJC/F
	1tcLSFRwCZIYnkztInN7p/f5YSn+jcmwxLkYDtmOgGTuYm0uX7jl7lnOd85hBvKliysR7Pap5Q/UI
	XAydrmk63MIEkBBJxL3uKhe97EGWeX7dgi6yS1075y2weZIbK/V2kme8PzKMstM1tTUOs+9nqpGQn
	/110K0D0yAB+OpeF0ErRsgtXJKvmfUTFn22PU7rlGZj1/RPe14Mzz5rUEOchN/zqtqnlvgBxoZ65Z
	a0vu6teJ6vIQTID3mApZe8mWs93H7lTLgfZytnKlJdTIr/xBN40qr9sAmrXKxoZTCLy4v/3M4i0xs
	9afjV05guA1unMGyM9fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL4fJ-0000000GiF8-1SOL;
	Mon, 17 Nov 2025 19:13:29 +0000
Received: from sender3-pp-f112.zoho.com ([136.143.184.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL4f6-0000000Gi2z-2rmZ;
	Mon, 17 Nov 2025 19:13:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1763406768; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=cVM9978GDavgE50qYqu/y/GBTUKtg3eiRR5t6sf9f64Rf50DbbU3nqSJEAxVskfXsGARweifmsqym/Cfe4W74z0kcs97SVo4iKhD53tw7jAJSwUD2pdw0JkcMV81Jk5jIP6Nl3FBlgCevS9w1B4Qfbb7a19mSJT+t5EQR788cYo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1763406768; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=S6LcICyBa/1soH/3gHBQS+INlICwkZAcXtWkwxSMBkQ=; 
	b=MktG0vxhPEiJmpcbNWUw3bfyL3uMsrZbWiJwUUuYwQmsqZQEEWUek66E0nQ3Ini0sAYP2xXJ1Ox+qtSgyDmx/UnyOFUj8p07EOdAPbAq0VyvrmpFn9Fjupee44ZpRPdfDrwXh8OYp7HuLSijyCpGCzG2UvNFcFmlXtIHbfkz7jc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1763406768;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=S6LcICyBa/1soH/3gHBQS+INlICwkZAcXtWkwxSMBkQ=;
	b=h5mnxMVbJ75hfO3GUG5awBD3Be9327Rs80GR6qflKO84rDj1lwNlCXDaTAZ4ONob
	VW0NPofk659ym0BLJYpwmT8KgvT0AW4LVhJ0reojxBXIMAMQgXPF6E563Z5QKU2rI7a
	bQNdXDAKNtDYqCUbpOtjZwgOrrD801Qvu/8ztvQg=
Received: by mx.zohomail.com with SMTPS id 1763406765821183.3489410114414;
	Mon, 17 Nov 2025 11:12:45 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 17 Nov 2025 20:11:48 +0100
Subject: [PATCH v4 04/10] drm/bridge: Act on the DRM color format property
MIME-Version: 1.0
Message-Id: <20251117-color-format-v4-4-0ded72bd1b00@collabora.com>
References: <20251117-color-format-v4-0-0ded72bd1b00@collabora.com>
In-Reply-To: <20251117-color-format-v4-0-0ded72bd1b00@collabora.com>
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
 Tvrtko Ursulin <tursulin@ursulin.net>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_111316_789790_00DCAE82 
X-CRM114-Status: GOOD (  13.13  )
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

The new DRM color format property allows userspace to request a specific
color format on a connector. In turn, this fills the connector state's
color_format member to switch color formats.

Make drm_bridges consider the color_format set in the connector state
during the atomic bridge check. Specifically, reject any output bus
formats that do not correspond to the requested color format.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/drm_bridge.c | 57 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/drm_bridge.c b/drivers/gpu/drm/drm_bridge.c
index 8f355df883d8..b7df5cbad832 100644
--- a/drivers/gpu/drm/drm_bridge.c
+++ b/drivers/gpu/drm/drm_bridge.c
@@ -1052,6 +1052,59 @@ static int select_bus_fmt_recursive(struct drm_bridge *first_bridge,
 	return ret;
 }
 
+static bool __pure bus_format_is_color_fmt(u32 bus_fmt, enum drm_color_format fmt)
+{
+	if (bus_fmt == MEDIA_BUS_FMT_FIXED)
+		return true;
+
+	switch (fmt) {
+	case DRM_COLOR_FORMAT_NONE:
+	case DRM_COLOR_FORMAT_AUTO:
+		return true;
+	case DRM_COLOR_FORMAT_RGB444:
+		switch (bus_fmt) {
+		case MEDIA_BUS_FMT_RGB888_1X24:
+		case MEDIA_BUS_FMT_RGB101010_1X30:
+		case MEDIA_BUS_FMT_RGB121212_1X36:
+		case MEDIA_BUS_FMT_RGB161616_1X48:
+			return true;
+		default:
+			return false;
+		}
+	case DRM_COLOR_FORMAT_YCBCR444:
+		switch (bus_fmt) {
+		case MEDIA_BUS_FMT_YUV8_1X24:
+		case MEDIA_BUS_FMT_YUV10_1X30:
+		case MEDIA_BUS_FMT_YUV12_1X36:
+		case MEDIA_BUS_FMT_YUV16_1X48:
+			return true;
+		default:
+			return false;
+		}
+	case DRM_COLOR_FORMAT_YCBCR422:
+		switch (bus_fmt) {
+		case MEDIA_BUS_FMT_UYVY8_1X16:
+		case MEDIA_BUS_FMT_UYVY10_1X20:
+		case MEDIA_BUS_FMT_UYVY12_1X24:
+			return true;
+		default:
+			return false;
+		}
+	case DRM_COLOR_FORMAT_YCBCR420:
+		switch (bus_fmt) {
+		case MEDIA_BUS_FMT_UYYVYY8_0_5X24:
+		case MEDIA_BUS_FMT_UYYVYY10_0_5X30:
+		case MEDIA_BUS_FMT_UYYVYY12_0_5X36:
+		case MEDIA_BUS_FMT_UYYVYY16_0_5X48:
+			return true;
+		default:
+			return false;
+		}
+	}
+
+	return false;
+}
+
 /*
  * This function is called by &drm_atomic_bridge_chain_check() just before
  * calling &drm_bridge_funcs.atomic_check() on all elements of the chain.
@@ -1137,6 +1190,10 @@ drm_atomic_bridge_chain_select_bus_fmts(struct drm_bridge *bridge,
 	}
 
 	for (i = 0; i < num_out_bus_fmts; i++) {
+		if (!bus_format_is_color_fmt(out_bus_fmts[i], conn_state->color_format)) {
+			ret = -ENOTSUPP;
+			continue;
+		}
 		ret = select_bus_fmt_recursive(bridge, last_bridge, crtc_state,
 					       conn_state, out_bus_fmts[i]);
 		if (ret != -ENOTSUPP)

-- 
2.51.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
