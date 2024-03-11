Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E50A7C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Mar 2024 14:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kH8lz1MihmKcdV+52lZTGPeFY/7YjYfstIjZWDZ3mdI=; b=SrPVt+lbsnL0vJ
	VNXqmeNBu4+1YftVpMwj+FdaY6Gkj0umGHlIZJp7OkEAsLJKDj1b0ZyrhWjTz40aWMDI9aMk0+v9e
	IRm8vRIeVvedGDT27MTtRgIeJOZ5Y3BTGXGYR1A29J5gUIafE9KwV/Zy8Fmp9GBz5TXofC+KpiwAw
	BMjxOhIbVK5m/uIFvfeihUiWT29EJy0iu2C5v8xrIph9qxePoMEWTRKa5lvcsPicR5s+MIZrUu2FN
	6yfTglNqjP2nOFcbFly2M8shpONneOL/7CskAr7ec4NviRHdPjZ07p4Ve/qlL/hlx9JKar4VqfPIp
	l3O8RMEW2HoHZlh+gr1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjh02-00000001tDX-26ZH;
	Mon, 11 Mar 2024 14:51:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjgyy-00000001sLk-1q9o;
	Mon, 11 Mar 2024 14:50:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=D/v+p3iAVXQSJO9deztTpEmkPSTu0pH3C4kbA9jHy6o=; b=g4myi88GS5NXOL7JXEJ+ymB6ct
	jB2C8dT2quNQY3kTC0c/LaQ24bYt1j3i+C0zZykxbE7WKlcvzPt5mN+x4J6Pz9QbNjtyYMVfMVOQ8
	ZecB4/nSxZy71RwazSllXlIHqnnTzDJD5jVBtPXfFNcTk8MW+G5zN15op3KNRvwym8hA5ShHqIxaS
	p+kYv64hiqTqda7D87stK1HpkYnqHhjSx4oIdeg8ICW2LqXUV6/M7DEhu0xu0vAIr89JKMIhwMpyr
	hgVBskIqlIuGAprYIJG1nmEaCfTNrfz6p7iBON7gT7btFVapuzkVNq8mSawUzKg2lxdxD62kQ68Rp
	w1ZFbOqg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjgyv-000000090aR-0E2u;
	Mon, 11 Mar 2024 14:50:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id AF1CD60EB9;
	Mon, 11 Mar 2024 14:50:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 11348C433C7;
	Mon, 11 Mar 2024 14:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710168624;
	bh=knNLcwVqg8jv1l/rgrHhTRsj59b8/zn3xoeOIeIyJfk=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=u6o8XtWKsw+awRKIEGn4RU6qA/u4W7Qtp9DPdd4EZuGIpVzmSBgOPComxSwR2ujt7
	 pypiavm6b26rRrWiRXGW9gKKVtpAhDRaFPuTsvikjzxjVbKERmv13AgOG8iVF0DX9V
	 Ewc/CpxkoXX4C8o/mA9GMfXBqXhDvbr+12iopqGfyRKRGlKQwyc3YOHK9SpQ65hjX8
	 nUElpAbXgl8ijL8QdPxVgC/cq0epUCtvmDbEo9nVBxHRtXFssiX0+qmzHPb1qLRCPV
	 DDrOaEgjHN4272xEEukvQw9baYvcUP/jEcd9+Jtwf9KnXC8LNpI1g7c+T+e+deHlRS
	 zLSm3bTcSr/Sw==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 11 Mar 2024 15:49:36 +0100
Subject: [PATCH v9 08/27] drm/connector: hdmi: Add HDMI compute clock
 helper
MIME-Version: 1.0
Message-Id: <20240311-kms-hdmi-connector-state-v9-8-d45890323344@kernel.org>
References: <20240311-kms-hdmi-connector-state-v9-0-d45890323344@kernel.org>
In-Reply-To: <20240311-kms-hdmi-connector-state-v9-0-d45890323344@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, 
 Sebastian Wick <sebastian.wick@redhat.com>, 
 =?utf-8?q?Ville_Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, Maxime Ripard <mripard@kernel.org>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=4451; i=mripard@kernel.org;
 h=from:subject:message-id; bh=knNLcwVqg8jv1l/rgrHhTRsj59b8/zn3xoeOIeIyJfk=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKnvpTgZSz80LG8xWlZ2Yu9yF33WgL1LiheocXbmc03I2
 ye/spOxo5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABNJO8DI0HKEN1tujYrPE9HD
 3ewSz3fvt70z8+q2tIDF6yK8PSLXmTH8Fd5X6n6SKW2zfUjGhVCOmNJTzw9wdbFcfzr/d5/pli+
 fOQE=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_145025_584608_B4E0F096 
X-CRM114-Status: GOOD (  15.20  )
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

A lot of HDMI drivers have some variation of the formula to calculate
the TMDS character rate from a mode, but few of them actually take all
parameters into account.

Let's create a helper to provide that rate taking all parameters into
account.

Reviewed-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_connector.c | 71 +++++++++++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h     |  5 +++
 2 files changed, 76 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index b629c8e990f4..8cc1332f11c2 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -2895,10 +2895,81 @@ void drm_connector_update_privacy_screen(const struct drm_connector_state *conne
 	/* The hw_state property value may have changed, update it. */
 	drm_connector_update_privacy_screen_properties(connector, false);
 }
 EXPORT_SYMBOL(drm_connector_update_privacy_screen);
 
+/**
+ * drm_connector_hdmi_compute_mode_clock() - Computes the TMDS Character Rate
+ * @mode: Display mode to compute the clock for
+ * @bpc: Bits per character
+ * @fmt: Output Pixel Format used
+ *
+ * Returns the TMDS Character Rate for a given mode, bpc count and output format.
+ *
+ * RETURNS:
+ * The TMDS Character Rate, in Hertz, or 0 on error.
+ */
+unsigned long long
+drm_connector_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
+				      unsigned int bpc,
+				      enum hdmi_colorspace fmt)
+{
+	unsigned long long clock = mode->clock * 1000ULL;
+	unsigned int vic = drm_match_cea_mode(mode);
+
+	/*
+	 * CTA-861-G Spec, section 5.4 - Color Coding and Quantization
+	 * mandates that VIC 1 always uses 8 bpc.
+	 */
+	if (vic == 1 && bpc != 8)
+		return 0;
+
+	/*
+	 * HDMI 2.0 Spec, section 7.1 - YCbCr 4:2:0 Pixel Encoding
+	 * specifies that YUV420 encoding is only available for those
+	 * VICs.
+	 */
+	if (fmt == HDMI_COLORSPACE_YUV420 &&
+	    !(vic == 96 || vic == 97 || vic == 101 ||
+	      vic == 102 || vic == 106 || vic == 107))
+		return 0;
+
+	if (fmt == HDMI_COLORSPACE_YUV422) {
+		/*
+		 * HDMI 1.4b Spec, section 6.2.3 - Pixel Encoding Requirements
+		 * specifies that YUV422 is 36-bit only.
+		 */
+		if (bpc != 12)
+			return 0;
+
+		/*
+		 * HDMI 1.0 Spec, section 6.5 - Pixel Encoding
+		 * specifies that YUV422 requires two 12-bits components per
+		 * pixel clock, which is equivalent in our calculation to three
+		 * 8-bits components
+		 */
+		bpc = 8;
+	}
+
+	/*
+	 * HDMI 2.0 Spec, Section 7.1 - YCbCr 4:2:0 Pixel Encoding
+	 * specifies that YUV420 encoding is carried at a TMDS Character Rate
+	 * equal to half the pixel clock rate.
+	 */
+	if (fmt == HDMI_COLORSPACE_YUV420)
+		clock = clock / 2;
+
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
+		clock = clock * 2;
+
+	clock = clock * bpc;
+	do_div(clock, 8);
+
+	return clock;
+}
+EXPORT_SYMBOL(drm_connector_hdmi_compute_mode_clock);
+
 int drm_connector_set_obj_prop(struct drm_mode_object *obj,
 				    struct drm_property *property,
 				    uint64_t value)
 {
 	int ret = -EINVAL;
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 29883e6f8e50..a859ad7ee04b 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -36,10 +36,11 @@
 
 struct drm_connector_helper_funcs;
 struct drm_modeset_acquire_ctx;
 struct drm_device;
 struct drm_crtc;
+struct drm_display_mode;
 struct drm_encoder;
 struct drm_panel;
 struct drm_property;
 struct drm_property_blob;
 struct drm_printer;
@@ -2092,10 +2093,14 @@ int drm_connector_attach_max_bpc_property(struct drm_connector *connector,
 void drm_connector_create_privacy_screen_properties(struct drm_connector *conn);
 void drm_connector_attach_privacy_screen_properties(struct drm_connector *conn);
 void drm_connector_attach_privacy_screen_provider(
 	struct drm_connector *connector, struct drm_privacy_screen *priv);
 void drm_connector_update_privacy_screen(const struct drm_connector_state *connector_state);
+unsigned long long
+drm_connector_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
+				      unsigned int bpc,
+				      enum hdmi_colorspace fmt);
 
 /**
  * struct drm_tile_group - Tile group metadata
  * @refcount: reference count
  * @dev: DRM device

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
