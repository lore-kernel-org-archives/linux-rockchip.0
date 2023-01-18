Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34289C32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 23:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8OIwczlNUGAECPUPgAZmCHseJS8l262aYcvxfJC3GuE=; b=dlA+cUrA1jnVGP
	BPZJHIHp9Mt3gfMXuRWtI1Ajs6hm4pr9ygDXRtdEuMhIkhnLkEK7smHo5C5tohrGtnwA2YCM+BH9w
	yAQnPQV/NqINxNnet/CjK+FWTehFvrWS6f9mLdb+AX+35zVP18E1Q2JdZtzVcqxD4W9K+jShVtoxB
	q56c6XVnO9tfn14+kxYvFPbzFObvBYTep6wNTpA2HtqdXOkxppiSeqlDywnPHDkopFYWyQ1BVb2op
	0Z/l4w9m77ZxLXcbF8rtAGMBcVS0W9rUt3C8MQ5tqmVaRwRkxJbVmbI6OgI9veIJxsU/CEIwxYA2d
	xgoxb0dlC3WDuadRWMrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIHuI-002xWi-Pu; Wed, 18 Jan 2023 23:31:50 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIHuF-002xUk-6e
	for linux-rockchip@lists.infradead.org; Wed, 18 Jan 2023 23:31:48 +0000
Received: by mail-oi1-x229.google.com with SMTP id i5so338777oih.11
        for <linux-rockchip@lists.infradead.org>; Wed, 18 Jan 2023 15:31:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KGfMBl5GE9RGTrpmBtD/eMSnjaklBe1tQxMzM5Zv8cA=;
        b=HSk34DXM4HMlNtZ4cKEFnLONgd6o1tnbvpeWpngc+WKvXXHULcssTDyH4mBJ5wJ2yk
         BaunsCO5zhjmM/VXL4VtUcgFdsR7FeUI8e42HjzEiIzmaZN+oUfOs96KcrZCEUk+GI9Y
         7TMV9wZxLhsmba43NMR2pQxOeedC8fH6S+lO0LCIOV6VUyYks04UtwIscMY0wdtK87gG
         +WgWsx9Bjp6in5dWsHcj8T4niuhd4ciyHgpJ+pW2EBhWP2w+pE1yJriEa+wJFcv2d9E5
         FOCXM9o6wZ2l+8gZ9gvyDOCdrUTO99auXBd/tUkv7Ai5jj8ihtt8pRpd25GZZaLypRja
         ie+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KGfMBl5GE9RGTrpmBtD/eMSnjaklBe1tQxMzM5Zv8cA=;
        b=azDHHEweogW3zlxscshzCXwJd5G8Le0EE1IMxR1ePPNj+GsMUaDbZJDIj4jJaZbaL3
         ICEYIqdE6/rPGJPHXu685yYV3iAJVJtPp8CZeV+XX4C+zTbBjqzaEROMcdgEYi2H7PVQ
         KLs1b8uJarZ4Q6+EvgTS0cVmz4psE386GIQxZZycdAyrjEcoUqxNQxi3L6ev4aziPWc8
         NlY6Otz6xZ//eADDnhZsQuRSaEx+rqEmK/av43mP0ucHkb5Zl77nkEEFJPm4VLMeQ040
         cgJtnnHjTcxjiuop2BHYwWFAvJTy2Kegy5uzGOE5U3QsleVZSGOyVsmD28Zu+/i+AcD1
         uQQQ==
X-Gm-Message-State: AFqh2kqTQ4DnzOkuAJPPycj7ftLefQPlUbxfRTgzxrmhQdJIKpNEtKKj
	MzwOO7dCSGlsLdlcR2z6J4U=
X-Google-Smtp-Source: AMrXdXuf+ZKJEN7IqAh9Nyrm4t+Fq5/ButzdfVgQGQv3cQdSZmzUA9FC1v82rMQXw0Qtq6/mpmSspg==
X-Received: by 2002:a54:4789:0:b0:364:5ea0:c3f6 with SMTP id o9-20020a544789000000b003645ea0c3f6mr4123271oic.20.1674084705022;
        Wed, 18 Jan 2023 15:31:45 -0800 (PST)
Received: from localhost.localdomain ([76.244.6.13])
        by smtp.gmail.com with ESMTPSA id q10-20020acad90a000000b00354932bae03sm16966933oig.10.2023.01.18.15.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 15:31:44 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
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
	Chris Morgan <macromorgan@hotmail.com>,
	Maya Matuszczyk <maccraft123mc@gmail.com>
Subject: [PATCH V11 1/4] drm: of: Add drm_of_get_dsi_bus helper function
Date: Wed, 18 Jan 2023 17:31:32 -0600
Message-Id: <20230118233135.1174859-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230118233135.1174859-1-macroalpha82@gmail.com>
References: <20230118233135.1174859-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_153147_266652_33F9BA73 
X-CRM114-Status: GOOD (  15.32  )
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
 drivers/gpu/drm/drm_of.c | 51 ++++++++++++++++++++++++++++++++++++++++
 include/drm/drm_of.h     | 12 ++++++++++
 2 files changed, 63 insertions(+)

diff --git a/drivers/gpu/drm/drm_of.c b/drivers/gpu/drm/drm_of.c
index 7bbcb999bb75..177b600895d3 100644
--- a/drivers/gpu/drm/drm_of.c
+++ b/drivers/gpu/drm/drm_of.c
@@ -10,6 +10,7 @@
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
 #include <drm/drm_encoder.h>
+#include <drm/drm_mipi_dsi.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
 
@@ -493,3 +494,53 @@ int drm_of_get_data_lanes_count_ep(const struct device_node *port,
 	return ret;
 }
 EXPORT_SYMBOL_GPL(drm_of_get_data_lanes_count_ep);
+
+#if IS_ENABLED(CONFIG_DRM_MIPI_DSI)
+
+/**
+ * drm_of_get_dsi_bus - find the DSI bus for a given device
+ * @dev: parent device of display (SPI, I2C)
+ *
+ * Gets parent DSI bus for a DSI device controlled through a bus other
+ * than MIPI-DCS (SPI, I2C, etc.) using the Device Tree.
+ *
+ * Returns pointer to mipi_dsi_host if successful, -EINVAL if the
+ * request is unsupported, -EPROBE_DEFER if the DSI host is found but
+ * not available, or -ENODEV otherwise.
+ */
+struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev)
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
+	 * Follow the first endpoint to get the DSI host node and then
+	 * release the endpoint since we no longer need it.
+	 */
+	dsi_host_node = of_graph_get_remote_port_parent(endpoint);
+	of_node_put(endpoint);
+	if (!dsi_host_node)
+		return ERR_PTR(-ENODEV);
+
+	/*
+	 * Get the DSI host from the DSI host node. If we get an error
+	 * or the return is null assume we're not ready to probe just
+	 * yet. Release the DSI host node since we're done with it.
+	 */
+	dsi_host = of_find_mipi_dsi_host_by_node(dsi_host_node);
+	of_node_put(dsi_host_node);
+	if (IS_ERR_OR_NULL(dsi_host))
+		return ERR_PTR(-EPROBE_DEFER);
+
+	return dsi_host;
+}
+EXPORT_SYMBOL_GPL(drm_of_get_dsi_bus);
+
+#endif /* CONFIG_DRM_MIPI_DSI */
diff --git a/include/drm/drm_of.h b/include/drm/drm_of.h
index 10ab58c40746..082a6e980d01 100644
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
@@ -129,6 +131,16 @@ drm_of_get_data_lanes_count_ep(const struct device_node *port,
 }
 #endif
 
+#if IS_ENABLED(CONFIG_OF) && IS_ENABLED(CONFIG_DRM_MIPI_DSI)
+struct mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev);
+#else
+static inline struct
+mipi_dsi_host *drm_of_get_dsi_bus(struct device *dev)
+{
+	return ERR_PTR(-EINVAL);
+}
+#endif /* CONFIG_OF && CONFIG_DRM_MIPI_DSI */
+
 /*
  * drm_of_panel_bridge_remove - remove panel bridge
  * @np: device tree node containing panel bridge output ports
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
