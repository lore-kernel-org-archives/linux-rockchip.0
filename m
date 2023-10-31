Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8324FC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Oct 2023 18:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zgPrazDHm3pdcFwy0it9lZ/2bVq0lKZnIa/839o2yn4=; b=zeVFpHRFOuzuoy
	Hes85JwYX+p0cOFlsVIxMD8PxcLYgwfAnFIOF48D/vJ34oUDmKreNxi2wtDJoelVHtASbw6t2py3/
	w1tGFcpjw4b30D80Y+koW52O8C3qKfVKIFAVDZJVDek7sNQx85yUlKUAGYrqk8+Dkn/QiJEIX5FsN
	4XuwIz1qBHazSg973WJnhe0GcPVWJfRos6FG5NYoecVr1ij4JUgXDjLmGPIBjDe5iH7ftMAIvqNo2
	PLGwEjB4942W2VjsNOOdSKAYz0TCCYY8B+mCAlGgmuQGZ9f7n+RgOe9PY1KApKKAyNHuV90QSd4F1
	pOJUPK1lgcPnZLd/KRIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxt2R-005uSP-2U;
	Tue, 31 Oct 2023 18:00:27 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxrvE-005jKj-0D;
	Tue, 31 Oct 2023 16:48:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 5E70660FA7;
	Tue, 31 Oct 2023 16:48:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AD124C433C8;
	Tue, 31 Oct 2023 16:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698770935;
	bh=QJmVeePAcx7pV7co2N1PaJoFmnt45FQ/oBA2SPqfG3E=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=TTnDbqzhaIZg6xykK+YYO26NzZCUZMkdG8Br5D4Lk8NxtADtnJ9Uowhm3PfXBkU4C
	 gbujt0UanSQidnvTFs24pqjQeBdELmyKqURFDxpgxOanSkXLr718VZ4+lM4z2xOMgy
	 hVEz5fLz+x0UXuz7Ps4NJft92xCXXySTm/6F/mLkf5+AKy3TWvdOTySraxI2TAgvxp
	 gS6RxGBC/nS07mop/Vq4Gj5lJldO4V0JdqL0fR3p0F1CMZ1NCfrj0y7WNj3lkquY2S
	 ZsjIadQaCvXu5eZvgN5jX8AS2qde8oGY7fZFFD4pSoFIOm8Yun52QuDN1YumZAZU6Y
	 ROcC4tn5XgRzw==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 31 Oct 2023 17:48:20 +0100
Subject: [PATCH RFC v3 07/37] drm/connector: hdmi: Add HDMI compute clock
 helper
MIME-Version: 1.0
Message-Id: <20231031-kms-hdmi-connector-state-v3-7-328b0fae43a7@kernel.org>
References: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
In-Reply-To: <20231031-kms-hdmi-connector-state-v3-0-328b0fae43a7@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2823; i=mripard@kernel.org;
 h=from:subject:message-id; bh=QJmVeePAcx7pV7co2N1PaJoFmnt45FQ/oBA2SPqfG3E=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmO+vcq10fZy/qFds8/VsejM0/550uf07ZtzVzNh9pui
 Z4sDnvRUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgImUazIy/N5akXL99KLSiWw3
 zwowKq6+9b/6i4igwd1FgRdyDY7k5TP800zRq7p5/dS7rXXHd345tm76HctLIjxTtDTYp5/5smS
 1ByMA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_094856_203795_3466EC25 
X-CRM114-Status: GOOD (  11.40  )
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

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_connector.c | 34 ++++++++++++++++++++++++++++++++++
 include/drm/drm_connector.h     |  5 +++++
 2 files changed, 39 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index 9037e1b1b383..a96c9b54c554 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -2955,6 +2955,40 @@ void drm_connector_update_privacy_screen(const struct drm_connector_state *conne
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
+ * The TMDS Character Rate, in Hertz
+ */
+unsigned long long
+drm_connector_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
+				      unsigned int bpc,
+				      enum hdmi_colorspace fmt)
+{
+	unsigned long long clock = mode->clock * 1000ULL;
+
+	if (fmt == HDMI_COLORSPACE_YUV420)
+		clock = clock / 2;
+
+	if (mode->flags & DRM_MODE_FLAG_DBLCLK)
+		clock = clock * 2;
+
+	if (fmt == HDMI_COLORSPACE_YUV422)
+		bpc = 8;
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
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 32f0b3b7383e..781a5726a26a 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -38,6 +38,7 @@ struct drm_connector_helper_funcs;
 struct drm_modeset_acquire_ctx;
 struct drm_device;
 struct drm_crtc;
+struct drm_display_mode;
 struct drm_encoder;
 struct drm_panel;
 struct drm_property;
@@ -2118,6 +2119,10 @@ void drm_connector_attach_privacy_screen_properties(struct drm_connector *conn);
 void drm_connector_attach_privacy_screen_provider(
 	struct drm_connector *connector, struct drm_privacy_screen *priv);
 void drm_connector_update_privacy_screen(const struct drm_connector_state *connector_state);
+unsigned long long
+drm_connector_hdmi_compute_mode_clock(const struct drm_display_mode *mode,
+				      unsigned int bpc,
+				      enum hdmi_colorspace fmt);
 
 /**
  * struct drm_tile_group - Tile group metadata

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
