Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BACDEC67871
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 16:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y/LGP+euAupbWtYCeb1w3KDU7D11umdhFTM5+WYIlUs=; b=lwWT2YSbt6efjR
	UWoNKQOlaKgUQzasQpiY94lv6YvqQSlgVcqMt7lIOLAye0sVScpNyZy0hvdYDtHinZMPjxNqfZP+m
	B+/jy2ES3YTHU2Ky5ulp0a39K1jbG/Iv7emDlN8kizhgOsT1H+JSm+ehkRD2B3VUmWiX831skj5ss
	nTc5XFEKMx5wn8MMRPNrR/unljZFZVe3pD2X7YGmcAq2jBEyG/1Vki6JtAIm23cAJbL1ocfHgvNvl
	L6hwqwi0EVjDNhZyyIl7PqMNmOkLxVi9wLa61OlGK/UAtUAf4N1JlMqc38x5oh02PhnrcrzafAIZb
	Rpgoap6qFx5eWyWL1Szg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFdzk-00CAii-46; Wed, 11 Jan 2023 16:30:32 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFdzd-00CAeB-Pe
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 16:30:28 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-150debe2b7cso16157077fac.0
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jan 2023 08:30:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VwwjqZEQqL89o5Qipfs68ekF4SEARAAb31h873uGu3I=;
        b=hxuqHlBEX31XNEWNJ+lm4PxdAIlQCZFI7ze5ekEKhFo2PWDiLXr74ofVv85JSx131G
         x5pZUFKj/hW0Jya0xSeCxx/KAPhdMeO+uB/eiDrmkbVLXyueDWI9bNRMRnftLC+QGz64
         7AagSqFyIYhSINUL0g1XDTDHZVna4bfcPEI3ryF+3k2dwWIk+q3kLURd8IRlq0ZmjlyU
         3U/HYiRwLe2I6mP3FCGs5xxxOpZ1YhKlxoNUdjWcakNRad6kue/dGEmTv0IAmiCD7veT
         PJXraOkFFuRfFmnPoP3USo1RLWovdYucTk0E5J+pq0CRzekoRSV35S2TSChkqf5+YAQ0
         6/Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VwwjqZEQqL89o5Qipfs68ekF4SEARAAb31h873uGu3I=;
        b=rW7Du8c8/tVxZ/5t0MVS/OEIfQVBB1bue4pexuHmzUTPMoFYrifjpLdvqZWXycpK1z
         p8xNg2qH+tgd17Q9RdAJOe9lyXgoxLaNj44U8Uo+uCcPWasYUCSh8WTCb0XerhGm1uGM
         E1FLyL90m5Rjb6OZAy80oe6+XO49x+CCzRUlceuDoK8DA9bCkkvVruN0CCQNClZTb6Sl
         Jv9EIimLBybebLNARFn2A+X5OtsP01AqnDspu0aM8y4t3iXnvQca2S3MVdQEseQEvNBZ
         7VYhhZXVQwK5nGHrTR3vMHJfvzGydqBre/8RraiLF7s35UP6KtguYQUjh1yJSZGzWG1/
         E7mg==
X-Gm-Message-State: AFqh2koWqAMWQBpnhIV9IcJLmLGbSuJsfNmMJTsPOQEl9CC/MJSD4e1B
	XIOs5VbffH5p9Se9xRCA7gFcOD8yKWI=
X-Google-Smtp-Source: AMrXdXvqNvSS3oc3c4CMTnNdq7QvBogO9tkNBknq7QRo9gqFPE2Dni9QdPYtZ5sETlMRWwtu1ZqpJw==
X-Received: by 2002:a05:6871:152:b0:155:37ac:d907 with SMTP id z18-20020a056871015200b0015537acd907mr1876320oab.18.1673454622331;
        Wed, 11 Jan 2023 08:30:22 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z13-20020a056870738d00b0013ae39d0575sm7629003oam.15.2023.01.11.08.30.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jan 2023 08:30:22 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	maccraft123mc@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	thierry.reding@gmail.com,
	linus.walleij@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v9 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Date: Wed, 11 Jan 2023 10:30:09 -0600
Message-Id: <20230111163012.310945-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230111163012.310945-1-macroalpha82@gmail.com>
References: <20230111163012.310945-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_083025_883329_F8917049 
X-CRM114-Status: GOOD (  19.11  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add helper function to find DSI host for devices where DSI panel is not
a minor of a DSI bus (such as the Samsung AMS495QA01 panel or the
official Raspberry Pi touchscreen display).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 drivers/gpu/drm/drm_of.c | 70 ++++++++++++++++++++++++++++++++++++++++
 include/drm/drm_of.h     | 10 ++++++
 2 files changed, 80 insertions(+)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 7bbcb999bb75..4ebb5bc4b595 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -10,6 +10,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
 #include <drm/drm_encoder.h>
+#include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 
@@ -493,3 +494,72 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
 	return ret;
 }
 EXPORT_SYMBOL_GPL(drm_of_get_data_lanes_count_ep);
+
+/**
+ * drm_of_get_dsi_bus - find the DSI bus for a given device
+ * @dev: parent device of display (SPI, I2C)
+ * @info: DSI device info to be updated with correct DSI node
+ *
+ * Gets parent DSI bus for a DSI device controlled through a bus other
+ * than MIPI-DCS (SPI, I2C, etc.) using the Device Tree.
+ *
+ * Returns pointer to mipi_dsi_host if successful, -EINVAL if the
+ * request is unsupported, -EPROBE_DEFER if the DSI host is found but
+ * not available, or -ENODEV otherwise.
+ */
+struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
+					 struct mipi_dsi_device_info *info)
+{
+	struct mipi_dsi_host *dsi_host;
+	struct device_node *endpoint, *dsi_host_node;
+
+	/*
+	 * Exit immediately if we attempt to call this function when
+	 * DRM_MIPI_DSI is not enabled, in the event CONFIG_OF is
+	 * enabled.
+	 */
+	if (!IS_ENABLED(CONFIG_DRM_MIPI_DSI))
+		return ERR_PTR(-EINVAL);
+
+	/*
+	 * Get first endpoint child from device.
+	 */
+	endpoint = of_graph_get_next_endpoint(dev->of_node, NULL);
+	if (!endpoint)
+		return ERR_PTR(-ENODEV);
+
+	/*
+	 * Follow the first endpoint to get the DSI host node.
+	 */
+	dsi_host_node = of_graph_get_remote_port_parent(endpoint);
+	if (!dsi_host_node)
+		goto error;
+
+	/*
+	 * Get the DSI host from the DSI host node. If we get an error
+	 * or the return is null assume we're not ready to probe just
+	 * yet. Release the DSI host node since we're done with it.
+	 */
+	dsi_host = of_find_mipi_dsi_host_by_node(dsi_host_node);
+	of_node_put(dsi_host_node);
+	if (IS_ERR_OR_NULL(dsi_host)) {
+		of_node_put(endpoint);
+		return ERR_PTR(-EPROBE_DEFER);
+	}
+
+	/*
+	 * Set the node of the mipi_dsi_device_info to the correct node
+	 * and then release the endpoint node since we're done with it.
+	 */
+	info->node = of_graph_get_remote_port(endpoint);
+	if (IS_ERR_OR_NULL(info->node))
+		goto error;
+
+	of_node_put(endpoint);
+	return dsi_host;
+
+error:
+	of_node_put(endpoint);
+	return ERR_PTR(-ENODEV);
+}
+EXPORT_SYMBOL_GPL(drm_of_get_dsi_bus);
diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
index 10ab58c40746..705ea2caa494 100644
--- a/include/drm/drm_of.h
+++ b/include/drm/drm_of.h
@@ -15,6 +15,8 @@ struct drm_encoder;
 struct drm_panel;
 struct drm_bridge;
 struct device_node;
+struct mipi_dsi_device_info;
+struct mipi_dsi_host;
 
 /**
  * enum drm_lvds_dual_link_pixels - Pixel order of an LVDS dual-link connection
@@ -56,6 +58,8 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
 				   int port_reg, int reg,
 				   const unsigned int min,
 				   const unsigned int max);
+struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
+					 struct mipi_dsi_device_info *info);
 #else
 static inline uint32_t drm_of_crtc_port_mask(struct drm_device *dev,
 					  struct device_node *port)
@@ -127,6 +131,12 @@ drm_of_get_data_lanes_count_ep(const struct device_node *port,
 {
 	return -EINVAL;
 }
+static inline struct
+mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev,
+					 struct mipi_dsi_device_info *info)
+{
+	return ERR_PTR(-EINVAL);
+}
 #endif
 
 /*
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
