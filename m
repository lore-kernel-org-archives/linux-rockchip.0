Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C1CCE65D0B
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Nov 2024 00:54:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hzsD/7pgvPLZ8/zi3MV4hnRzy4HZGFJcqH6nA8lXyo=; b=ywj3gkAw9o3gFp
	ezQUvwpUSUNCxVcrfb6d241rgdrL/MQFORKIUte/U3+9bMEQefXnMR4HCLovaU1BFxA/lLEv9bF5C
	a4989f8rt7/+M06sktjJz+R2BNrUk4ljn3PLkJGi7ef6X0GHC1DKgK2O3M+ELIKJUNtFBa14lhttu
	TfAyxyUGuoZnBGm+OGX+Ol4JxEJ+N4h5EF/B+foG1NbQLoOuxLb45HB5Pfdwdz77opCCGSxdZbAF6
	yf7Tc9CchAnuy16dcJ70LFFyic2VkJ20LY0DvvLGcEAuNWM2eMqGh6+eSgb7hMSaX2nTYJRkDnbi2
	q4DSCyhRG7W17tF0NEpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEHwR-00000001HIX-2DU8;
	Fri, 22 Nov 2024 00:54:35 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEHq1-00000001G69-2xft
	for linux-rockchip@lists.infradead.org;
	Fri, 22 Nov 2024 00:47:58 +0000
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2ff589728e4so29518211fa.1
        for <linux-rockchip@lists.infradead.org>; Thu, 21 Nov 2024 16:47:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732236476; x=1732841276; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AekznUw/DJYmSVBNFKXzyv34fWwrWZN8k5LwtkQDlbE=;
        b=SvI5qQQuph8IgYj+dy96JnRN/vjjTNH0wIYRV9NWKKFD4Q1hMTfbjxrdtSPz6FBV0X
         5eb3517IE53HEH3J5UMqv9Vp2R01tJHNlNnwI8mqSpSdciwTm/GWBfKdVRhYMS+fBWa2
         e+Wg3A9IgiYDOVLcvqCLHM3VM8Y5N3m+iIEAOcNFyoEwE8pVhYFjuQ13xeCD7Y8QdKPb
         a2PBJ9jA+vvDiDfPvks15avnaiFaFTzKEwQrRYj8XwVE5EKSwRJTF4ptiKueTjhe8ZS6
         O6oxQdJn+MqEwvJr0JKTR9k1nipeFzuADRTePuvVgdYnxCCtOWHXJaKnLo4GaGuqQ4NX
         VtOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732236476; x=1732841276;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AekznUw/DJYmSVBNFKXzyv34fWwrWZN8k5LwtkQDlbE=;
        b=EJ2sZQ3h8q5yPUIODca4v+QfeZnTSr29La3OpLbUkInXi9fehTk2lawy2gBQpZz5Od
         cDwrh9G2b8OVoWajf8rHyRvZPs9AfRMbqVoGPRtbgpAkS1/cENkJl3YHN76XnRCe8VpL
         49ctTaP+z9BehbivQCesxRO5BlrOKKziv8oKcuK0LnpHcpDNYc/GD/D+xNGXO5CvMrEP
         I28teeJSXq7wdT/RjO8PjCTE5AZGEC0CEIUY+HWIL0k065ad7JNs3Hd48EsZHFrmmSmo
         kdM8zNvT9svX5ZsSFqclm/1ICuJSx1vOj+usnqRu1aYvVcS32+f9EpNAgFWzzSmHk+Qm
         fgNw==
X-Forwarded-Encrypted: i=1; AJvYcCXTWYm+vfVdoGZHkj7ZarOmhDoCJAPs+CtiTFEwQ/sin1IthuzUHRaRF80DguXZNuOH51qvwxCwp0WEEGp9bQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyRK18e3idcEPDxzJ8MwlYOdC/Q+E9arnKWYmm5qeHizcf4COkq
	LyWf0nUXtB+6UDSqjRVdIJ0b+WPgXG1RQEdyHQnBe2bQX0J8Scyj6apzRmX1CvE=
X-Gm-Gg: ASbGnct0LOZhNe4dCH+q/a17d6yF0OMjzR0gzfFiwLK1AswDBd5uHWzELeAcOrYiMuc
	6sxwC89qu/ByRU89Bx11pRebjRir6QZojf7r03Vl0iXwamnaBmHdWqLCTPVZYiAR9GT3aVquvAi
	aixRlu9jV2AKTB4MXh/YBEHJ6xgAnqse82kntwwp3xwZhe2xzblaaAT9hqEDkiLsKDHngDHRQ3T
	H/XP8okPKfF0qDUJN1IUWP9vYBMEGxW9Q+Cq2JjMSYZ10HaBTWzjz6Q5g==
X-Google-Smtp-Source: AGHT+IHkN4nXkCVt6nZPpHcWzC2bWbGpwg4sMZCFQ0fvcq24XIw4gri2A5l4rqWLYlEyB/ESg+byOw==
X-Received: by 2002:a2e:a593:0:b0:2fa:d086:bca0 with SMTP id 38308e7fff4ca-2ff969a16ddmr15367841fa.10.1732236475685;
        Thu, 21 Nov 2024 16:47:55 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ffa5375caesm1083071fa.85.2024.11.21.16.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 16:47:54 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Nov 2024 02:47:36 +0200
Subject: [PATCH v4 6/7] drm/display/hdmi: implement connector update
 functions
MIME-Version: 1.0
Message-Id: <20241122-drm-bridge-hdmi-connector-v4-6-b4d69d6e3bd9@linaro.org>
References: <20241122-drm-bridge-hdmi-connector-v4-0-b4d69d6e3bd9@linaro.org>
In-Reply-To: <20241122-drm-bridge-hdmi-connector-v4-0-b4d69d6e3bd9@linaro.org>
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
 Raphael Gallais-Pou <rgallaispou@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-sound@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4091;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=h4SDlLdLeTf2M3phGYhMa3icgLWVQxFU2Yi+KA0yVFA=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnP9SoeZGpNl267MxKzahXC2JqO9fXLs+4r7B2b
 jseNQkh83WJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZz/UqAAKCRCLPIo+Aiko
 1RYrCACo07vR5CSktkmxVEZbETbBqQjxDEeirXgkPjqknr/6Ldh0teXQADgZkx9HHdy58CDSdc+
 ga4kgK0+ZJXjgpg7TnqA4pPgCDv7PJoOvu6y0R7OjtUAaSt01YNT2WdetJ/IKZIgYMz5us0+iaQ
 k0/tU7kVnXK5+fblJV+pE18lR12Yt+SV+MVUlmv/ftN7GvhZJEJ6Df6cHgmGNg/Sdy8rSrFHBFR
 w3uWFPjcHPScLXfZLrdBHstD1OaRB/6FKaVApC2rme2tOi4WXrmB2Itk78OwNOC/b64r9oLTmhO
 inwbgxXewxRuJicQQlp2xm2P+7/BdBVJMjpy58NyXHJAQ+3f
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241121_164757_758385_50D47973 
X-CRM114-Status: GOOD (  14.91  )
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
the HDMI Codec framework) to be used by driver utilizing HDMI Connector
framework.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/display/drm_hdmi_state_helper.c | 59 +++++++++++++++++++++++++
 include/drm/display/drm_hdmi_state_helper.h     |  5 +++
 2 files changed, 64 insertions(+)

diff --git a/drivers/gpu/drm/display/drm_hdmi_state_helper.c b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
index feb7a3a759811aed70c679be8704072093e2a79b..2230b7fc92cfee46a9cad2479edce71822d30934 100644
--- a/drivers/gpu/drm/display/drm_hdmi_state_helper.c
+++ b/drivers/gpu/drm/display/drm_hdmi_state_helper.c
@@ -748,3 +748,62 @@ drm_atomic_helper_connector_hdmi_clear_audio_infoframe(struct drm_connector *con
 	return ret;
 }
 EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_clear_audio_infoframe);
+
+/**
+ * drm_atomic_helper_connector_hdmi_update_edid - Update the HDMI Connector basing on passed EDID
+ * @connector: A pointer to the HDMI connector
+ * @drm_edid: EDID to process
+ *
+ * This function should be called as a part of the .detect() / .detect_ctx()
+ * and .force() callbacks, updating the HDMI-specific connector's data. Most of
+ * the drivers should be able to use @drm_atomic_helper_connector_hdmi_update()
+ * instead.
+ *
+ * Returns:
+ * Zero on success, error code on failure.
+ */
+int
+drm_atomic_helper_connector_hdmi_update_edid(struct drm_connector *connector,
+					     const struct drm_edid *drm_edid)
+{
+	drm_edid_connector_update(connector, drm_edid);
+
+	if (!drm_edid) {
+		drm_connector_hdmi_codec_plugged_notify(connector, false);
+
+		// TODO: also handle CEC and scramber, HDMI sink disconnected.
+
+		return 0;
+	}
+
+	drm_connector_hdmi_codec_plugged_notify(connector, true);
+
+	// TODO: also handle CEC and scramber, HDMI sink is now connected.
+
+	return 0;
+}
+EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_update_edid);
+
+/**
+ * drm_atomic_helper_connector_hdmi_update - Update the HDMI Connector after reading the EDID
+ * @connector: A pointer to the HDMI connector
+ *
+ * This function should be called as a part of the .detect() / .detect_ctx()
+ * and .force() callbacks, updating the HDMI-specific connector's data.
+ *
+ * Returns:
+ * Zero on success, error code on failure.
+ */
+int
+drm_atomic_helper_connector_hdmi_update(struct drm_connector *connector)
+{
+	const struct drm_edid *drm_edid;
+	int ret;
+
+	drm_edid = drm_edid_read(connector);
+	ret = drm_atomic_helper_connector_hdmi_update_edid(connector, drm_edid);
+	drm_edid_free(drm_edid);
+
+	return ret;
+}
+EXPORT_SYMBOL(drm_atomic_helper_connector_hdmi_update);
diff --git a/include/drm/display/drm_hdmi_state_helper.h b/include/drm/display/drm_hdmi_state_helper.h
index 2d45fcfa461985065a5e5ad67eddc0b1c556d526..61c43e744051886ba5f2024197fcc90688670ebe 100644
--- a/include/drm/display/drm_hdmi_state_helper.h
+++ b/include/drm/display/drm_hdmi_state_helper.h
@@ -6,6 +6,7 @@
 struct drm_atomic_state;
 struct drm_connector;
 struct drm_connector_state;
+struct drm_edid;
 struct hdmi_audio_infoframe;
 
 void __drm_atomic_helper_connector_hdmi_reset(struct drm_connector *connector,
@@ -20,4 +21,8 @@ int drm_atomic_helper_connector_hdmi_clear_audio_infoframe(struct drm_connector
 int drm_atomic_helper_connector_hdmi_update_infoframes(struct drm_connector *connector,
 						       struct drm_atomic_state *state);
 
+int drm_atomic_helper_connector_hdmi_update_edid(struct drm_connector *connector,
+						 const struct drm_edid *drm_edid);
+int drm_atomic_helper_connector_hdmi_update(struct drm_connector *connector);
+
 #endif // DRM_HDMI_STATE_HELPER_H_

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
