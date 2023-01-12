Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B67BC61DB3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Jan 2023 17:54:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9klDfTCA2E9cy4PDblPKbnixIexhof96Law8ZJNQnMA=; b=4UiF4JtGpujbTo
	OOwtRuV168Zw2Wp+5ADzcft25e7EBPBtOI/dTyiw2g5jB7mlpdZ17mKmDuiQaM6w0N8xgjzbatAbg
	GjsYIyWrhFr5g1DXbQpbLmw/TSYBKfN6b/nFODLxFeVlcdJz47RPZW2Nolw9fMO09rlFykuCdY4WP
	pHJhCiyr1YxFExGQJlQvZCCyTxTKUuF1l10B6wXmBXY9I5wmp6HBOaFho6sZC+vgXl3y6V/R7bP1y
	MlOkcEbFHVxwg1tgfS12mgK2EiOBmrkkCT6LYPOvs2iZqaLRTqtVMKO83JA9iOnYN9bvo/tW6ugmX
	rM6W8z33jfGc6KvKobLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1mN-00G8Cj-JS; Thu, 12 Jan 2023 17:54:20 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pG1mA-00G841-04
	for linux-rockchip@lists.infradead.org; Thu, 12 Jan 2023 17:54:09 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-14fb7fdb977so19658029fac.12
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Jan 2023 09:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tbQtC6VR/FF2nTlwiIZ/sGihRVBeIvN5iTfkeWtgBLM=;
        b=qPTD6c3rS1AIGdJd/IqwreRStSbgDKPzxdzC184rjfwMWhuSAyM+9w6ZlOnS18n5Ac
         Ur5lWfjTQpEn6+CjmmWae26MLrYu/Mm1MC5GHtyb2l8Lwji+JZzBG6JXDbL3BFisoZuO
         xUanSW2hmFOJ1mYsDeQ5wElTceOuKCkqGF03Ny/zR9PtsZhuLPXrODXy82BwbFL8gs1+
         qK/MPEa8VfwCRl9hMLlz4dE/0wo/LraqHGrjFFJg7Rqo3Nw4oyalzSpyVm7wiMI0Za5U
         mSsfdgEgjLMhZBN8OwcXOwpSJAY648bSybKLME8kZ/zA+94/bwebwd6LzXu8PDvVcyDv
         K3UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tbQtC6VR/FF2nTlwiIZ/sGihRVBeIvN5iTfkeWtgBLM=;
        b=igXdDdCR3JCjcUo5nGIVgxhefxK3I+kLH0SKLZHIhyJCUqSOF140TtszcmZkEoa4wP
         1BLkU3+JfiZSIsbZ6rWdGU9EHZh9ygjdsagW5wGeS+pyfDu+PVLW/M41nL0MWr6cK4H/
         xq+A7HDokpFkYWOvxKqYXzsTgiGdNBTW+fI//wzXh5VGU29C7J863HqVZjvvJTPdf8fN
         L0IW0Cl72K1YBUWQIOWZRZdLoLDSz2A0takMBU3vEWX5P3Moo5+6WHfGqEbIaICsgjmo
         1oiLVFLRfLpA/Jt0N8e7dkgC2Le2LnG8xSCP2pQZJV4vExvGKoe0GqDdvHsiFb5F6zi5
         GQeg==
X-Gm-Message-State: AFqh2krPhIHsySH9qI0aqttUqiNpWv/7V9/YmT6dkz1VMsBekTSq4n3S
	UiH/fo/G8YU20S8R+OG/Qt0=
X-Google-Smtp-Source: AMrXdXuatgeeWB+YNvfU20Yql1rz5X827vbxrDwe2VY8Li5QrKB8iTXVl6QQLGb8ofIMG+3MqP+4vg==
X-Received: by 2002:a05:6870:9f0d:b0:15e:ae80:4733 with SMTP id xl13-20020a0568709f0d00b0015eae804733mr2519457oab.6.1673546044553;
        Thu, 12 Jan 2023 09:54:04 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v17-20020a05687105d100b0014866eb34cesm9317049oan.48.2023.01.12.09.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Jan 2023 09:54:04 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linus.walleij@linaro.org,
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V10 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Date: Thu, 12 Jan 2023 11:53:55 -0600
Message-Id: <20230112175358.421975-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230112175358.421975-1-macroalpha82@gmail.com>
References: <20230112175358.421975-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_095406_179042_DDEA8EC6 
X-CRM114-Status: GOOD (  18.86  )
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
index 7bbcb999bb75..6c2c97a716fe 100644
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
+#if IS_ENABLED(CONFIG_DRM_MIPI_DSI)
+
+/**
+ * drm_of_get_dsi_bus - find the DSI bus for a given device
+ * @dev: parent device of display (SPI, I2C)
+ * @info: DSI device info to be updated with DSI node. This is optional
+ * and if not needed can be NULL.
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
+	 * since this is optional, check if the info is NULL first.
+	 */
+	if (info) {
+		info->node = of_graph_get_remote_port(endpoint);
+		if (IS_ERR_OR_NULL(info->node))
+			goto error;
+	}
+
+	of_node_put(endpoint);
+	return dsi_host;
+
+error:
+	of_node_put(endpoint);
+	return ERR_PTR(-ENODEV);
+}
+EXPORT_SYMBOL_GPL(drm_of_get_dsi_bus);
+
+#endif /* CONFIG_DRM_MIPI_DSI */
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
