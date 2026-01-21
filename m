Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57989C4453F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 13:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Csl7CTN94NDd+K9WvRZCznNpTI2bhmyGM4BJTnQLyC8=; b=OFUDx88hLqFHN/
	fp4KkEJA+bZk4OmEVVGSMB0FwWweZWc3BY8vvUNBaaoKumpTRNkzGPJ73MMT4ICEHs07W3uE/C0HV
	nnyukVj+UOlSCyVbg1EHAA2N5CuaIMt09OHUzdsVve4ZxJJUJ0LFe57cYeCztlLl0K3RsSeVvTl0k
	gBLJ4ibZeUpAxMZxweZMhORvVh1nBD96kwYErK2d6e1igbUhPb9aPnB2HnQpsbTA18K5lje5H7YTj
	iUTWlNr8zr2aa7NG1tQMVANE8k9+7BOGU6uEsFSywSSIhxzzzdDrUOmbwYvxWpmj/0a7+4GChl6t0
	tImyAw4UyeegFRri48sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYYx-00000005WI9-0iWw;
	Wed, 21 Jan 2026 13:47:59 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYYm-00000005WAd-3DWM;
	Wed, 21 Jan 2026 13:47:56 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769003235; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Lu+AsKfKZmyqT55OzrnNWflVtx+7xCzE531r6mi7jdNIinTNPK/7gCE6RU8V2+KyG1cXA/Ywp4VMfY0oW02u+VjDBtunFHQ+KkgH83udhRuw0HwLpzneFAh6Ph6RqgiTUvHkCDqJQRsC07wqkziysYoaDC9QJrq7lsIh0zZIbmY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769003235; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=wtYUwdUZsrNFIDbbFkRufRXGPspOM1ME+M4e+AuGxio=; 
	b=jLvSuIWInc1qA+4cTnjv3mH6SHrfOPuKhGcYrG557K8LkN3TJPAADug9nzedsCUbJn1d6XEBKp8A+BMsb00PWrdn088pvhiQKsgOEIeWOoHbv48Z9qyKlxxCNaqlPlR7FCCMZVprL/6G6PrWrhhngnD+nNiFYLIvIWmMSonmFMc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769003235;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=wtYUwdUZsrNFIDbbFkRufRXGPspOM1ME+M4e+AuGxio=;
	b=X7Jayk+79NcxtlyliGBJKVpgIl3Z4Nbam64ppzQXFFIeH32uSriJfdiceqiYCrPq
	Jut5sF6Wx+SptURMWTQ4qNWb6tXVLEmdGPBHUkhdog6Fw28jRD9JhPp9vZYKYX9ikG7
	au4cBlAjqmWd8WHxtyLeD3Lc8zvckbFIgyqXWw7s=
Received: by mx.zohomail.com with SMTPS id 1769003234291138.5859017446502;
	Wed, 21 Jan 2026 05:47:14 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Wed, 21 Jan 2026 14:45:36 +0100
Subject: [PATCH v6 10/21] drm/rockchip: vop2: Fix YUV444 output
MIME-Version: 1.0
Message-Id: <20260121-color-format-v6-10-7b81a771cd0b@collabora.com>
References: <20260121-color-format-v6-0-7b81a771cd0b@collabora.com>
In-Reply-To: <20260121-color-format-v6-0-7b81a771cd0b@collabora.com>
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
 Jonathan Corbet <corbet@lwn.net>
Cc: kernel@collabora.com, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 linux-doc@vger.kernel.org, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_054749_038726_8DA196F2 
X-CRM114-Status: GOOD (  11.81  )
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

YUV444 (aka YCbCr444) output isn't working quite right on RK3588. The
resulting image on the display, while identifying itself as YUV444, has
some components swapped, even after adding the necessary DRM formats to
the conversion functions.

Judging by downstream, this is because YUV444 also needs an rb swap
performed in the AFBC case.

Add the DRM formats to the appropriate switch statements, and add a
function for checking whether an rb swap needs to be performed in the
AFBC case.

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index ec3b4fde10db..469c63dd97d5 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -176,6 +176,7 @@ static enum vop2_data_format vop2_convert_format(u32 format)
 	case DRM_FORMAT_ARGB2101010:
 	case DRM_FORMAT_XBGR2101010:
 	case DRM_FORMAT_ABGR2101010:
+	case DRM_FORMAT_VUY101010:
 		return VOP2_FMT_XRGB101010;
 	case DRM_FORMAT_XRGB8888:
 	case DRM_FORMAT_ARGB8888:
@@ -184,6 +185,7 @@ static enum vop2_data_format vop2_convert_format(u32 format)
 		return VOP2_FMT_ARGB8888;
 	case DRM_FORMAT_RGB888:
 	case DRM_FORMAT_BGR888:
+	case DRM_FORMAT_VUY888:
 		return VOP2_FMT_RGB888;
 	case DRM_FORMAT_RGB565:
 	case DRM_FORMAT_BGR565:
@@ -225,6 +227,7 @@ static enum vop2_afbc_format vop2_convert_afbc_format(u32 format)
 	case DRM_FORMAT_ARGB2101010:
 	case DRM_FORMAT_XBGR2101010:
 	case DRM_FORMAT_ABGR2101010:
+	case DRM_FORMAT_VUY101010:
 		return VOP2_AFBC_FMT_ARGB2101010;
 	case DRM_FORMAT_XRGB8888:
 	case DRM_FORMAT_ARGB8888:
@@ -233,6 +236,7 @@ static enum vop2_afbc_format vop2_convert_afbc_format(u32 format)
 		return VOP2_AFBC_FMT_ARGB8888;
 	case DRM_FORMAT_RGB888:
 	case DRM_FORMAT_BGR888:
+	case DRM_FORMAT_VUY888:
 		return VOP2_AFBC_FMT_RGB888;
 	case DRM_FORMAT_RGB565:
 	case DRM_FORMAT_BGR565:
@@ -270,6 +274,19 @@ static bool vop2_win_rb_swap(u32 format)
 	}
 }
 
+static bool vop2_afbc_rb_swap(u32 format)
+{
+	switch (format) {
+	case DRM_FORMAT_NV24:
+	case DRM_FORMAT_NV30:
+	case DRM_FORMAT_VUY888:
+	case DRM_FORMAT_VUY101010:
+		return true;
+	default:
+		return false;
+	}
+}
+
 static bool vop2_afbc_uv_swap(u32 format)
 {
 	switch (format) {
@@ -1291,6 +1308,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		 /* It's for head stride, each head size is 16 byte */
 		stride = ALIGN(stride, block_w) / block_w * 16;
 
+		rb_swap = vop2_afbc_rb_swap(fb->format->format);
 		uv_swap = vop2_afbc_uv_swap(fb->format->format);
 		/*
 		 * This is a workaround for crazy IC design, Cluster
@@ -1308,6 +1326,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 			vop2_win_write(win, VOP2_WIN_AFBC_ENABLE, 1);
 		vop2_win_write(win, VOP2_WIN_AFBC_FORMAT, afbc_format);
 		vop2_win_write(win, VOP2_WIN_AFBC_UV_SWAP, uv_swap);
+		vop2_win_write(win, VOP2_WIN_AFBC_RB_SWAP, rb_swap);
 		/*
 		 * On rk3566/8, this bit is auto gating enable,
 		 * but this function is not work well so we need

-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
