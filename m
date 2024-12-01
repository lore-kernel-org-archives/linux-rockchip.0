Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36861D73619
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Dec 2024 00:50:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hzsD/7pgvPLZ8/zi3MV4hnRzy4HZGFJcqH6nA8lXyo=; b=4ll237FvJQpEEA
	Ti9AMcRmsU8pKb3FOMF5P+Zj1rF6cu+U5TdCgGy8522gg/PvqN1yriOvomDs0WRNZEHS0mE+auTrN
	NGcxh5KrKgHQLSo1snzsJ9q2zK2YCYPqJYIbrq1N8hzN4s83OA2G8dq7Ia7VvbUXMm96kmIblQisg
	vUSYNAGL6KWzz+EYt4lXtmSfFTFJImJCfLBM79PdeXc2syShNiJcMjmSkefPTbhi+CFkg0P1R/pd2
	NHjt/6JgMrBxr8WOOvnCZe8NVqCPhAV199+WgqpVWzlV5b7x3KfuN+IWKv3cM79iCLAuxHR4Oq0ad
	nIFFF3t+weXeidTTIZXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHYAH-00000002psc-0kHI;
	Sun, 01 Dec 2024 00:50:21 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHY4f-00000002obL-3btz
	for linux-rockchip@lists.infradead.org;
	Sun, 01 Dec 2024 00:44:35 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-aa52a5641f8so428100166b.3
        for <linux-rockchip@lists.infradead.org>; Sat, 30 Nov 2024 16:44:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733013872; x=1733618672; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AekznUw/DJYmSVBNFKXzyv34fWwrWZN8k5LwtkQDlbE=;
        b=iQ89gu7NHth0s15p4RfbFXzDbWnjRkXwjY1WabUi+wtpaILwC3jQm2iEwytOPMPsUR
         Gw7IdixWZiO+zyKz0xeNgL+6u1Tj3JXZ0809Bcl+nV7kyCA7xtZMYUuzv75KfWmfGhlr
         ieDgeNWmnODsVQs2v3knE0OiT/VW6UFnCkLXKcr+xCvEYIvHQOZ1hWdoboqyyqO5HWBd
         7aMJTGaZIVtiAgX6h3s+EAUvHt2j/pf/C8jYE0ixru+N1C1qPM91vszm4AfNxVZrWOwS
         EXZhYRabBUWdRxVt1xGJMDTsW5m6OQZsu4m1Ao/9uUC74d4joGG6/EZDVShhkshasszn
         HtUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733013872; x=1733618672;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AekznUw/DJYmSVBNFKXzyv34fWwrWZN8k5LwtkQDlbE=;
        b=LLxFJuwKSaY5U153K5di0Cn/2lBtSQDn/hbuI+n5rtLg4MyAWaU8K3A4X+licS58Pv
         q5x+LGMLnKfsVki5O33Vgec22yjGosCFx5xkRaOuEPG2ZAzTsbef1/ztoKC8bZUwP4pL
         ktDTnvz2q2pV6QuaR49tn6dfU/9rPwlehaioMheWy8Kdro2sL6tExIkfMqTZBY7Gtb41
         dI3Gl82xZRKCvr3uugD+rXoCnj5NwS/kO4xvrHCeaSZE1N9mygN2Qd7ZnqXN15R0gpcV
         ZUNU423P/SuiQkhnQu0VQP/qEmlpHPbXV5DskvPlo+oHPQc4WIlIHyjHC/I0Dm7wxYJd
         +94A==
X-Forwarded-Encrypted: i=1; AJvYcCVBx3YH+o+/g2ygt/NuWCcT3zYuDaTB2KkcE+eRQ0FKezz2M0AzLRprpenFAAJZUGKn/8vxOZDYT2zfX/Qjng==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9zV3e6fNOEyRttX5dCEWgRCRNg5Zv4sKk6cONsRUatwL45Y/T
	fWfIWEohNJAtE6FFmZ/iFExYjmVgI5VC76BiHvcMFZz/uhFOU7P7B+VG7KEwzOE=
X-Gm-Gg: ASbGncs5YjfuAgVFN+87WFIjI5LHOA0TlSnzOiUkd6cZPU+fjgKrbLQQFu6Z/UHbdnm
	wAiT1EVbOe2d0Y8SOpk9QWUV3fKG4WrHuNo0yU8p7icSNJGhI//Nl9wJJuNss41lhL9tE8zU/Rj
	23KKrZKDEZnJPN9+yDj3MD5+eWafXcfsYssGu/XTYSM6pShP+5wFrduu0XCNaPXHa8KHJ0TLiBf
	Tia+RJr72xlykD8uoPB3qqRFOj+T2269tnQeJs+YVIhS6J5Ujv3S7MJjg==
X-Google-Smtp-Source: AGHT+IF0K77MkwwvldGVr80BjUwOmELL9E07KeKBaGPCRtOUdN8bdaAj3EzrCh/1BXcCeTTEMCnHgA==
X-Received: by 2002:a17:906:23ea:b0:a9e:b281:a212 with SMTP id a640c23a62f3a-aa581073993mr1476511666b.51.1733013872041;
        Sat, 30 Nov 2024 16:44:32 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d097e8d817sm3400359a12.63.2024.11.30.16.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 16:44:30 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 01 Dec 2024 02:44:10 +0200
Subject: [PATCH v5 6/9] drm/display/hdmi: implement connector update
 functions
MIME-Version: 1.0
Message-Id: <20241201-drm-bridge-hdmi-connector-v5-6-b5316e82f61a@linaro.org>
References: <20241201-drm-bridge-hdmi-connector-v5-0-b5316e82f61a@linaro.org>
In-Reply-To: <20241201-drm-bridge-hdmi-connector-v5-0-b5316e82f61a@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=4091;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=h4SDlLdLeTf2M3phGYhMa3icgLWVQxFU2Yi+KA0yVFA=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ7r3xggGN//LkX2OGwV+txgy3vuXMVki+fujBVtzTye9y
 q9pS1zVyWjMwsDIxSArpsjiU9AyNWZTctiHHVPrYQaxMoFN4eIUgBt9joOh27iqbFpIUtNcDtZZ
 E+VVG5nEZcsFbRfqPXNbWnZNvPuYgbuBgYfj2QflllV+25J428zve53mfPtNiu2apdg+hYVyKu3
 tDnuf/9SNNzN6aPNWhd3pxJxr2pmXj5/bpHLHW6lDU/vHgkkTfUu8+FxbDGf9emDpc7VG9oRJgO
 ocyb/JNx6LTnOwza+17atl/3Ph/LIwkwVyoQ5RUTO0I5ru/ubcv44l812kxC82CeP93+oLlmT4/
 VST2sex6/TfE8yXfjw7+idpwjOV2Rd1nDpmLZNKjVnwvGrat0L7O7m3whMOPIrufzLpqaN3167E
 gKWqSpybPTTdG+zz2zYmPj2q82lhYu9bwzXv6g2WsQAA
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241130_164433_925873_773346A0 
X-CRM114-Status: GOOD (  14.98  )
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
