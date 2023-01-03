Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF164C4708D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jan 2023 19:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8E2FSbJ/eMIHCNFvta3HZB/Pl8HGNVhtGRi0vPz7nWo=; b=DOr2amy1rFVusR
	lb1Lh13EA8L3an73JSLmEd+kHwwl+0SUXxKReAa0nlJeCLgY0ugzvy76YLsceTAqB3I2UlPS7hf5T
	sDGqShjYZlDDbbK//PhXAK8xEMKHe1r2WiRo1n7yuTuv/tnG58juryrfHJOBd3gcqLFPHmaSzRGPb
	b4RZrc4SYU959gokUXVGQSqD6AMW6tvHxuS0C5MGEhyjdn/7O7FP5qVptZvAAehpcbYvYLal7BPfQ
	0mroFDJ6+Uok8l2oIkkjqcIIxy5w5SiVq9yKwyv7UxOAp7kF6rFFg1BHT9Q5KlwX5WXXOStAqOPc5
	a+llXn6ob7M5Ch9+eBZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmtE-004Mqu-2i; Tue, 03 Jan 2023 19:24:00 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCmd1-004DeZ-IY
	for linux-rockchip@lists.infradead.org; Tue, 03 Jan 2023 19:07:19 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-15027746720so22806078fac.13
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Jan 2023 11:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e9FxC5u9raEA62gzOJDTTKSpPWLmB1RuNw13AoTsjYs=;
        b=BaX2cjvuLHWA357xx30duyZwG+ju4OdXVQ3+B7csHL8Dx4Kb1lkU3hVgOUUMa9n88n
         dBfTkp0mPgRJMqvKp3FcIns11EbjFafZFvrp9cmqVHUYGJBe/mkGQVb7W0gytdEm9G7M
         LPrQP9mHDRvSJ6vciFkHHSUgssNV9I3C0pR9ygEiCCG7ODzHKLgZIq22JnpJNzfbUiiy
         RZrgPoO6AUQ5JB8V+CfjVlHWKyC59X/YOXuTe4moyGld64EP5lORjXdHAzU2B5Iyd96S
         uxwZC4S+aaJt93gwi0Bq8ZUqg1sioX62p0fDb4tlHKlzIuOZttY7UoJPdBomm56sV/KX
         uFCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e9FxC5u9raEA62gzOJDTTKSpPWLmB1RuNw13AoTsjYs=;
        b=CUHtoA6Vyqc8RTMbcMb2Hqwx7L489axuzf6QbecQOp3LUwtRhMpENw+AgNIZEBg+Fl
         zGAxwGsIBy9/Jdq8xlCq9fL+OI2N1IaygtYYt45oMAsg3rNg6mfPbQPhu9FGs+btb78k
         tdOX8caVs6evQ4PLVYd1ee9sWQPQKqsVBkLVJbkUnEH4+Yx+5IX9Ed7p2a8FMQisvme2
         J6GFy1fxa1Ir0X3Mqz5n3/9zkMRODA1i71npen67Vs9bNV1dZXrLzXj6Grw3WnZMQGQz
         SA//EJiQz0HaXX6tj4wK06+i49mkKOuZPXUhHdsriijAlD+R5/Axei5wxVuxMZFWxHiO
         z5dw==
X-Gm-Message-State: AFqh2ko/Zf45jdAJb1SGp2SjiRmywEwWs0MBK+SA2tqei9QVE5k7somo
	T+kqqolh1ykjd7K6fe+szVw=
X-Google-Smtp-Source: AMrXdXvOHS4LTp18Y1bsii95tobv24huefOurEgedYORrVi88OlhQoRYHmz7podkKPmWnG7yFUIkHA==
X-Received: by 2002:a05:6870:c989:b0:150:8834:f644 with SMTP id hi9-20020a056870c98900b001508834f644mr6744260oab.57.1672772832791;
        Tue, 03 Jan 2023 11:07:12 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id s24-20020a056870ea9800b0014c7958c55bsm14752207oap.42.2023.01.03.11.07.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jan 2023 11:07:12 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
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
Subject: [PATCH V7 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Date: Tue,  3 Jan 2023 13:07:04 -0600
Message-Id: <20230103190707.104595-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230103190707.104595-1-macroalpha82@gmail.com>
References: <20230103190707.104595-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230103_110716_050916_35AE0470 
X-CRM114-Status: GOOD (  18.55  )
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
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/drm_of.c | 62 ++++++++++++++++++++++++++++++++++++++++
 include/drm/drm_of.h     | 11 +++++++
 2 files changed, 73 insertions(+)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 7bbcb999bb75..7d89ac164069 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -10,6 +10,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
 #include <drm/drm_encoder.h>
+#include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 
@@ -493,3 +494,64 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
 	return ret;
 }
 EXPORT_SYMBOL_GPL(drm_of_get_data_lanes_count_ep);
+
+/**
+ * drm_of_get_dsi_bus - find the DSI bus for a given device
+ * @dev: parent device of display (SPI, I2C)
+ * @dsi_host: DSI host to be populated
+ * @info: DSI device info to be updated with correct DSI node
+ *
+ * Given a panel device parented to a non-DSI device, follow the
+ * devicetree to find the correct DSI host node and populate the
+ * dsi_host with the correct host and info with the correct node.
+ * Returns zero if successful, -EPROBE_DEFER if the DSI host is
+ * found but not available, or -ENODEV otherwise.
+ */
+int drm_of_get_dsi_bus(struct device *dev,
+			      struct mipi_dsi_host **dsi_host,
+			      struct mipi_dsi_device_info *info)
+{
+	struct device_node *endpoint, *dsi_host_node;
+
+	/*
+	 * Get first endpoint child from device.
+	 */
+	endpoint = of_graph_get_next_endpoint(dev->of_node, NULL);
+	if (!endpoint)
+		return -ENODEV;
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
+	*dsi_host = of_find_mipi_dsi_host_by_node(dsi_host_node);
+	of_node_put(dsi_host_node);
+	if (IS_ERR_OR_NULL(*dsi_host)) {
+		of_node_put(endpoint);
+		return -EPROBE_DEFER;
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
+	return 0;
+
+error:
+	of_node_put(endpoint);
+	return -ENODEV;
+}
+EXPORT_SYMBOL_GPL(drm_of_get_dsi_bus);
diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
index 10ab58c40746..e27061b02315 100644
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
@@ -56,6 +58,9 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
 				   int port_reg, int reg,
 				   const unsigned int min,
 				   const unsigned int max);
+int drm_of_get_dsi_bus(struct device *dev,
+		       struct mipi_dsi_host **dsi_host,
+		       struct mipi_dsi_device_info *info);
 #else
 static inline uint32_t drm_of_crtc_port_mask(struct drm_device *dev,
 					  struct device_node *port)
@@ -127,6 +132,12 @@ drm_of_get_data_lanes_count_ep(const struct device_node *port,
 {
 	return -EINVAL;
 }
+static int drm_of_get_dsi_bus(struct device *dev,
+			      struct mipi_dsi_host **dsi_host,
+			      struct mipi_dsi_device_info *info)
+{
+	return -EINVAL;
+}
 #endif
 
 /*
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
