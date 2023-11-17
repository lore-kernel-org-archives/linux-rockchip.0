Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8C00C072A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 20:26:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yajW2ZNjRA+JOBFqPojPGp5hELf/HjvnU6TcvcHI4go=; b=CiuDp4hEVS7xyu
	qnCqViD+D2bsyoQGsBjL9nEKC4CekCHnF/ynAWl+Jork97CkouWI6iUlAQCZMvfKFQNRPC42/7tJ+
	lX6lAdnOmMjsG/f59OF4t/qGLyMN4HD40UQkzUFa2NmZoufB2kB/NOaWKBg/DFyRpjuN1k5czeQDW
	GcN8rPcdKNsGgSBgvHzB4/ZSeDQsV+ZlCgBxYcR/PwBCYXLSk7NOEjf/7dw+w3NyZg+jDRASqXiUV
	zWyoQrWUiW+SufX4nYvsXFFdCkzOVY/zEmmxdLKj5ZDB40ENgrAZu/8+Hq9n2By4VqK5YQw5/9k8o
	YEqyPBJZeZPRCQvvfJGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PT-007EmG-0p;
	Fri, 17 Nov 2023 20:25:51 +0000
Received: from mail-oa1-x29.google.com ([2001:4860:4864:20::29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PN-007Eip-2S
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 20:25:48 +0000
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-1f0f94943d9so1115979fac.2
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Nov 2023 12:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252743; x=1700857543; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sJ6tnoZIYc0esGkHYxps8BxQcHrsvuUBO5cAlPjqZoY=;
        b=U0Y4/spbRhn46l7to1vwUjGxcqKPYnkhgLpcdScatEQkm2LxMHpaWBzGqrWzg9XWFD
         YhgYPxijEpwWCNGIRtGE+ekg5TXYJS2sQOBMRci1GFx9p8nCbntZfi9TgbGh/1RxnTK7
         tcC37X+6CznLGajIBraXSen52gpT36y8WkXOvW7Gne79WDTTlKTShpiRtMBz/IQv4cpG
         YTktM37akEqRnp2B7aFM32NifrLvK6NJ9ZYCh7bPDP41Klym5wFZU6LqB14WbWsvQriB
         aYml3sgqQ10A+xtqQNjOQe2OFsWMzqDnmjl6bXu5lTp4/fKkAddMLjbKXD+KDYnoXrfo
         OhCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252743; x=1700857543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sJ6tnoZIYc0esGkHYxps8BxQcHrsvuUBO5cAlPjqZoY=;
        b=Sq9EZYdgW6VtJioK+8Qd2Krla20DTuc95aWdFTHZQBzjKHU5JIRHUqQJCvGHTHOAVz
         6s1AO/qDivfi1sIH+eMVcpANwktFc8w1rtNpmUUsHH565HKqDGhJoobn7OGB8mUXYQl8
         So027y4KAz3KicpOxj8TE2/XOcvymj42qxd+GXBfClyQqSAN0jWVV8XgOq47J6UE87eh
         Zu/LOZYlsMlNFj4/jEBHayrM0JXYruw0C0gWsiV72crvNDW4X+lAscC3yVjudWo7aRy/
         Rm9ZMThMwNGGT86L6572mtAWgGKV1Z3mdiWecmbOBDYa54wsYyXE/tviIQaJe8De4PYs
         906A==
X-Gm-Message-State: AOJu0Yy89BRXp9aVNHQvIser9u9mqHeLDNal0XxOcb6FUWC95rAHRZi+
	I7JiP4NWFUfPI8HN4DvMQrIgZZumJyw=
X-Google-Smtp-Source: AGHT+IFk4J2OmTVMjuI5VIiXd9uWVsgzhem4+m7eZf+wTjane5QwTMB59UT2ne03GAxke7tc202Oew==
X-Received: by 2002:a05:6871:5ce:b0:1e9:de37:a75d with SMTP id v14-20020a05687105ce00b001e9de37a75dmr347182oan.17.1700252742953;
        Fri, 17 Nov 2023 12:25:42 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:42 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>
Subject: [PATCH V4 3/6] drm/panel: nv3051d: Add Powkiddy RK2023 Panel Support
Date: Fri, 17 Nov 2023 14:25:33 -0600
Message-Id: <20231117202536.1387815-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_122545_797791_61CCD1D4 
X-CRM114-Status: GOOD (  15.90  )
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

Refactor the driver to add support for the powkiddy,rk2023-panel
panel. This panel is extremely similar to the rg353p-panel but
requires a smaller vertical back porch and isn't as tolerant of
higher speeds. Note that while all of these panels are identical in
size (70x57) it is possible future panels may not be.

Tested on my RG351V, RG353P, RG353V, and RK2023.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>
---
 .../gpu/drm/panel/panel-newvision-nv3051d.c   | 55 +++++++++++++++----
 1 file changed, 44 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
index c44c6945662f..94d89ffd596b 100644
--- a/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
+++ b/drivers/gpu/drm/panel/panel-newvision-nv3051d.c
@@ -28,6 +28,7 @@ struct nv3051d_panel_info {
 	unsigned int num_modes;
 	u16 width_mm, height_mm;
 	u32 bus_flags;
+	u32 mode_flags;
 };
 
 struct panel_nv3051d {
@@ -387,15 +388,7 @@ static int panel_nv3051d_probe(struct mipi_dsi_device *dsi)
 
 	dsi->lanes = 4;
 	dsi->format = MIPI_DSI_FMT_RGB888;
-	dsi->mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
-			  MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET;
-
-	/*
-	 * The panel in the RG351V is identical to the 353P, except it
-	 * requires MIPI_DSI_CLOCK_NON_CONTINUOUS to operate correctly.
-	 */
-	if (of_device_is_compatible(dev->of_node, "anbernic,rg351v-panel"))
-		dsi->mode_flags |= MIPI_DSI_CLOCK_NON_CONTINUOUS;
+	dsi->mode_flags = ctx->panel_info->mode_flags;
 
 	drm_panel_init(&ctx->panel, &dsi->dev, &panel_nv3051d_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
@@ -483,16 +476,56 @@ static const struct drm_display_mode nv3051d_rgxx3_modes[] = {
 	},
 };
 
-static const struct nv3051d_panel_info nv3051d_rgxx3_info = {
+static const struct drm_display_mode nv3051d_rk2023_modes[] = {
+	{
+		.hdisplay       = 640,
+		.hsync_start    = 640 + 40,
+		.hsync_end      = 640 + 40 + 2,
+		.htotal         = 640 + 40 + 2 + 80,
+		.vdisplay       = 480,
+		.vsync_start    = 480 + 18,
+		.vsync_end      = 480 + 18 + 2,
+		.vtotal         = 480 + 18 + 2 + 4,
+		.clock          = 24150,
+		.flags          = DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	},
+};
+
+static const struct nv3051d_panel_info nv3051d_rg351v_info = {
 	.display_modes = nv3051d_rgxx3_modes,
 	.num_modes = ARRAY_SIZE(nv3051d_rgxx3_modes),
 	.width_mm = 70,
 	.height_mm = 57,
 	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET |
+		      MIPI_DSI_CLOCK_NON_CONTINUOUS,
+};
+
+static const struct nv3051d_panel_info nv3051d_rg353p_info = {
+	.display_modes = nv3051d_rgxx3_modes,
+	.num_modes = ARRAY_SIZE(nv3051d_rgxx3_modes),
+	.width_mm = 70,
+	.height_mm = 57,
+	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET,
+};
+
+static const struct nv3051d_panel_info nv3051d_rk2023_info = {
+	.display_modes = nv3051d_rk2023_modes,
+	.num_modes = ARRAY_SIZE(nv3051d_rk2023_modes),
+	.width_mm = 70,
+	.height_mm = 57,
+	.bus_flags = DRM_BUS_FLAG_DE_LOW | DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_LPM | MIPI_DSI_MODE_NO_EOT_PACKET,
 };
 
 static const struct of_device_id newvision_nv3051d_of_match[] = {
-	{ .compatible = "newvision,nv3051d", .data = &nv3051d_rgxx3_info },
+	{ .compatible = "anbernic,rg351v-panel", .data = &nv3051d_rg351v_info },
+	{ .compatible = "anbernic,rg353p-panel", .data = &nv3051d_rg353p_info },
+	{ .compatible = "powkiddy,rk2023-panel", .data = &nv3051d_rk2023_info },
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, newvision_nv3051d_of_match);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
