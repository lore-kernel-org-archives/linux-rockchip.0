Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5993BE77188
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 03:07:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnMGqtAanbp/spzUxclubZajyvYMe5zBotiz9dAupFI=; b=qF15r9YNIUbY1+
	cmcaRreIjMaj4F15qQQUSeFclu27ZX0jnmz5xKH8yi1oGaLLcm21ibCW34iMAMkviNXiI3Dn+6vZi
	JmI/xzSveKUTxG45/LM3qEWMBy8sCHIxsPKJafrozCyyuvF1loZF7o5pIYwsKGo+lO3tvsQU0tJ87
	wxYI5qoV5gSfDRcj3kNLo8QMMJj6u41fsNHc+epG2JPQ2235iOGUUWhWe91Kf4LgdbZOS6YLLbS+W
	Xaprlgo631fgClVrDZ0wH4qMYzRq2Vo645hNFWMT7+wzr65Bv+zIaLKPFn6nnoPagFct87Dnoow41
	p1j1qQA/Y0GLBQwz/hbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPYnC-00000009EBL-1GiY;
	Mon, 23 Dec 2024 03:07:38 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPYf6-00000009Buo-0YFM
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Dec 2024 02:59:18 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-54026562221so3964617e87.1
        for <linux-rockchip@lists.infradead.org>; Sun, 22 Dec 2024 18:59:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734922754; x=1735527554; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7p88hGbKo1uih9Z+JpGgwcv2sHMDRbjp3gmcwjLlOTk=;
        b=h/Rw+0s6FvB61FNAzRLK6byfluddPk8zbVRUAxjRK/CW5Th5oGyvs+8od8iu/qTVzZ
         elj8QQ0hON3Ou+tqr2bOwtMYEsBtVHE8DquRmUcoYfN22nNyKD4yHPx3yNnAbdLU5wa6
         rSMVRn35YccliiVnWzBy4QOTXmgk4t5WjjGixk5O2KKgL8xflOPlpbW+It19jGFkHbb7
         ikbqYySYjAzSgk0WAxrMRQbJXZLtirp7PZb53SbYnVOxMpiQgDsF9SlmdbZBNdxi25mn
         EWa4affK58VxXzcY9Hi0DbKJIhQrLnAFlmhWinoI3oRAjBOGDH4RLgF/yTOSBQuD8/5B
         88zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734922754; x=1735527554;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7p88hGbKo1uih9Z+JpGgwcv2sHMDRbjp3gmcwjLlOTk=;
        b=A5b8mWLwV1WcZDLjEm0Po27THYkGsK+dlSKWaBXibMKHuxn7ixdO2EfF4HsOMw/D+e
         G5yDJo/bMd/hWk+yuh8un7lvRwzguqnrX7r6RgqdWHJ+zdPkcTZOJz3QkfyniTTb4/3A
         r+Mys5++aqaEi+tqO2QQuYcD0lyjXkEnbym1wubpUMDwaW2tvNzgVvRvHqNPrxPX12z5
         keeLwGNSkiGQfvs8ZIRlWYse0X7ovwdeWZ59hXoRifT05IfpMx7DhlN2nnrrM0+PbuJI
         XsBrUfENdglXysukFbRVpUaHURfrui8cLgUC45EO/hA5XgR3D+tSAFBwEqsKD5olPvPN
         fRdQ==
X-Forwarded-Encrypted: i=1; AJvYcCXS3PJiNgmi/Dtwqpw5w+yk+vEctB+JF30c908pxbOUGaQ/FiMy3yktzlV1x4cfbY/oh0AnMODelK29tMLeZQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyqyFbWPKAv8NHxLiqHTvYC63UxUHD+rRHvDZejJUWYQCUbx1BQ
	dT9amut3b1bK7xgx1qjOGPBoqOPvXLwIM5aYEqpR0ffOy6mFt1MjZazXznkpQvA=
X-Gm-Gg: ASbGncsWS5aOkHruhBIxRM08qCIq1vBNgMGGJIYzjcXZaIW5jOla7b+hDJHGSeX7vrd
	9O2z+24gN4hoiHfNKdy8mKd7cum0FFlJjC4a505DRcjeXCmYf2Tkm3CDGICoTbBAwvykwsPh8Ky
	YF9MO4e4FBm1j92hpwNadSx94SAhf7W7TdzdHD/8hMjkq5nKxmTh0CDPLddhVNfhw4klaCjHfdC
	eXPnRMMCpc7MG7wnNnGAqswLcMMPdTKF9qD0br42rJh9BXgw+8ZVROxgdzzZggm
X-Google-Smtp-Source: AGHT+IElKH4AKPUYEYwbRiJbo0TOgI8/1Bub9raYIL6A6gVp2y+xa77oR6tX2ceL196VX8lXaSaG7w==
X-Received: by 2002:a05:6512:12c9:b0:53e:389d:8ce4 with SMTP id 2adb3069b0e04-54229549444mr2872252e87.34.1734922754488;
        Sun, 22 Dec 2024 18:59:14 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235f658csm1124639e87.44.2024.12.22.18.59.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 18:59:13 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 23 Dec 2024 04:58:57 +0200
Subject: [PATCH v9 06/10] drm/display/hdmi: implement hotplug functions
MIME-Version: 1.0
Message-Id: <20241223-drm-bridge-hdmi-connector-v9-6-6ce16bcedb8b@linaro.org>
References: <20241223-drm-bridge-hdmi-connector-v9-0-6ce16bcedb8b@linaro.org>
In-Reply-To: <20241223-drm-bridge-hdmi-connector-v9-0-6ce16bcedb8b@linaro.org>
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Phong LE <ple@baylibre.com>, Inki Dae <inki.dae@samsung.com>, 
 Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Russell King <linux@armlinux.org.uk>, 
 Chun-Kuang Hu <chunkuang.hu@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=6334;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=8xjDZrREhEUluDXr5YjpzwQecn9uFR1J/BTqu2XC7qY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaNHxgulOkyvS3PYhadszFeaFieSG8X644nZnu
 CWX+02hF7yJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2jR8QAKCRCLPIo+Aiko
 1QwuCACGZvQYsz8/sLbdD0s10ZUattTKxi/7AUUbQTKEj6EQ+TxiRZzfVdSHi85mEUbfGJUBAEV
 uydF9Xt3g9HkdjXCuRitamdw+qya9RquK8AcM1VDsoOokR4Vvcx7Gfj5osj/MsRA7Aj/dgKR1wu
 zI0QgvO2bxCoAr6R0C60yyeKtXOvlzVIOut/+i2vXyvz//CtVTUxcypHhiHQ85td15mo+i5rTx+
 0RBVpVdLMQAftM98QEK5cobNjDi2y3l6jvyg+25Z4HhW8doBp991mxbvwR9OJi8JktoXFwrTYUs
 86Ozq4Ok193yS0LxJa2x0+jWLImFw8ggzgWiFWnI/hESo4f1
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241222_185916_318967_207925E1 
X-CRM114-Status: GOOD (  17.85  )
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

The HDMI Connectors need to perform a variety of tasks when the HDMI
connector state changes. Such tasks include setting or invalidating CEC
address, notifying HDMI codec driver, updating scrambler data, etc.

Implementing such tasks in a driver-specific callbacks is error prone.
Start implementing the generic helper function (currently handling only
the HDMI Codec framework) to be used by drivers utilizing HDMI Connector
framework.

Reviewed-by: Maxime Ripard <mripard@kernel.org>
Tested-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/display/Kconfig                 |  1 +
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 56 +++++++++++++++++++++++++
 include/drm/display/drm_hdmi_state_helper.h     |  5 +++
 include/drm/drm_connector.h                     | 16 +++++++
 4 files changed, 78 insertions(+)

diff --git a/drivers/gpu/drm/display/Kconfig b/drivers/gpu/drm/display/Kconfig
index 2619fa2476eb149e1befc3135131ed5aaeb5bb4c..8d22b7627d41f7bc015decf24ae02a05bc00f055 100644
--- a/drivers/gpu/drm/display/Kconfig
+++ b/drivers/gpu/drm/display/Kconfig
@@ -89,6 +89,7 @@ config DRM_DISPLAY_HDMI_HELPER
 
 config DRM_DISPLAY_HDMI_STATE_HELPER
 	bool
+	select DRM_DISPLAY_HDMI_AUDIO_HELPER
 	select DRM_DISPLAY_HDMI_HELPER
 	help
 	  DRM KMS state helpers for HDMI.
diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index d678c635a6935050ca9c1ccafbb0865f21df5d4e..f4935b3e630cd89ec6373eb67b06e6a3a3b3a55a 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -777,3 +777,59 @@ drm_atomic_helper_connector_hdmi_clear_audio_infoframe(struct drm_connector *con
 	return ret;
 }
 EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_clear_audio_infoframe);
+
+static void
+drm_atomic_helper_connector_hdmi_update(struct drm_connector *connector,
+					enum drm_connector_status status)
+{
+	const struct drm_edid *drm_edid;
+
+	if (status == connector_status_disconnected) {
+		// TODO: also handle CEC and scramber, HDMI sink disconnected.
+		drm_connector_hdmi_audio_plugged_notify(connector, false);
+	}
+
+	if (connector->hdmi.funcs->read_edid)
+		drm_edid = connector->hdmi.funcs->read_edid(connector);
+	else
+		drm_edid = drm_edid_read(connector);
+
+	drm_edid_connector_update(connector, drm_edid);
+
+	drm_edid_free(drm_edid);
+
+	if (status == connector_status_connected) {
+		// TODO: also handle CEC and scramber, HDMI sink is now connected.
+		drm_connector_hdmi_audio_plugged_notify(connector, true);
+	}
+}
+
+/**
+ * drm_atomic_helper_connector_hdmi_hotplug - Handle the hotplug event for the HDMI connector
+ * @connector: A pointer to the HDMI connector
+ * @status: Connection status
+ *
+ * This function should be called as a part of the .detect() / .detect_ctx()
+ * callbacks, updating the HDMI-specific connector's data.
+ */
+void drm_atomic_helper_connector_hdmi_hotplug(struct drm_connector *connector,
+					      enum drm_connector_status status)
+{
+	drm_atomic_helper_connector_hdmi_update(connector, status);
+}
+EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_hotplug);
+
+/**
+ * drm_atomic_helper_connector_hdmi_force - HDMI Connector implementation of the force callback
+ * @connector: A pointer to the HDMI connector
+ *
+ * This function implements the .force() callback for the HDMI connectors. It
+ * can either be used directly as the callback or should be called from within
+ * the .force() callback implementation to maintain the HDMI-specific
+ * connector's data.
+ */
+void drm_atomic_helper_connector_hdmi_force(struct drm_connector *connector)
+{
+	drm_atomic_helper_connector_hdmi_update(connector, connector->status);
+}
+EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_force);
diff --git a/include/drm/display/drm_hdmi_state_helper.h b/include/drm/display/drm_hdmi_state_helper.h
index d6d65da6d8f9ee46de33114cce2d6fbe6098a862..9ae19f3caf727f9a0fe06e6afe5fc46db924444f 100644
--- a/include/drm/display/drm_hdmi_state_helper.h
+++ b/include/drm/display/drm_hdmi_state_helper.h
@@ -8,6 +8,8 @@ struct drm_connector;
 struct drm_connector_state;
 struct hdmi_audio_infoframe;
 
+enum drm_connector_status;
+
 void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
 					      struct drm_connector_state *new_conn_state);
 
@@ -19,6 +21,9 @@ int drm_atomic_helper_connector_hdmi_update_audio_infoframe(struct drm_connector
 int drm_atomic_helper_connector_hdmi_clear_audio_infoframe(struct drm_connector *connector);
 int drm_atomic_helper_connector_hdmi_update_infoframes(struct drm_connector *connector,
 						       struct drm_atomic_state *state);
+void drm_atomic_helper_connector_hdmi_hotplug(struct drm_connector *connector,
+					      enum drm_connector_status status);
+void drm_atomic_helper_connector_hdmi_force(struct drm_connector *connector);
 
 enum drm_mode_status
 drm_hdmi_connector_mode_valid(struct drm_connector *connector,
diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
index 19e4256296657b0f1d203266d152cbba42f9726a..dac8048c82f913b9cfaf785cafe85080a9b2655c 100644
--- a/include/drm/drm_connector.h
+++ b/include/drm/drm_connector.h
@@ -45,6 +45,7 @@ struct drm_property;
 struct drm_property_blob;
 struct drm_printer;
 struct drm_privacy_screen;
+struct drm_edid;
 struct edid;
 struct hdmi_codec_daifmt;
 struct hdmi_codec_params;
@@ -1247,6 +1248,21 @@ struct drm_connector_hdmi_funcs {
 	int (*write_infoframe)(struct drm_connector *connector,
 			       enum hdmi_infoframe_type type,
 			       const u8 *buffer, size_t len);
+
+	/**
+	 * @read_edid:
+	 *
+	 * This callback is used by the framework as a replacement for reading
+	 * the EDID from connector->ddc. It is still recommended to provide
+	 * connector->ddc instead of implementing this callback. Returned EDID
+	 * should be freed via the drm_edid_free().
+	 *
+	 * The @read_edid callback is optional.
+	 *
+	 * Returns:
+	 * Valid EDID on success, NULL in case of failure.
+	 */
+	const struct drm_edid *(*read_edid)(struct drm_connector *connector);
 };
 
 /**

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
