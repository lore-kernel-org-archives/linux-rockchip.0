Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0880C61DA4
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 Jan 2023 14:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LWpV/n3V9BzSRz0bSYLazuMnh3qSViNOmLwZA9rU6Y0=; b=jEBdi6CepBZPsv
	iWInSKh03BPzdAhjYEBi/ppS7LgaOZGBto5sRKxudBAI+L35QNyMY/7Ht8BW4w9xxQUKcerNukERy
	AS5sCRPEfQhWR4f0xukSC0RSCcoTNFOHqkbWE0dRUdr6rrm07wKZGwzvD2SOBcIqeAjFy6MvbqP3l
	VzXkyGC5TBDFxGGA2ZznMOIWamhe5MAfC8ikKEtwGOagAC/p2YJZlxKjAAIE62rl2JbYi7DmbbJty
	V2j5EBq9pxUIhlGlNH+r3DqwqeKXvYjTiTMoShpYNlrBXrsPB4BmanO7jxPiIb/L7nBiuy3nDqZgL
	PRbAr1f6C+KeeXx3C29g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM8iw-001ZnH-Du; Sun, 29 Jan 2023 14:32:02 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pM8it-001Zl3-7x
	for linux-rockchip@lists.infradead.org; Sun, 29 Jan 2023 14:32:00 +0000
Received: by mail-ej1-x62b.google.com with SMTP id qw12so9332766ejc.2
        for <linux-rockchip@lists.infradead.org>; Sun, 29 Jan 2023 06:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h9M5VRC01DAZPfI0s5I19MARMALNHk/O6/g2Mh8se6M=;
        b=GKQChDCG1pQ4JmYgLSffeC1uoGL4U/xz8U52slDhuyBih17z6meCRttz97n5TaAPeV
         MBc2PIEEe3APf7vLjCjWZcnS6OZQFKUsLpv0h5DQjhbIha1jGH4QBPxbZqXbdH6AUWGR
         yrZlb/uhY1jcEKwm53imUfH0dvjLFJrEVhToRBzg4FDBcQI4LQsEutHfinSRUeCeNZ9E
         EpwxKQwIssyMZQIoxFhbGhX3SG7Qlue1DICVGuN7D9Jpb2buKQ1I9lqvXAMmxHNKmHch
         CBkNJP6OhG6dAANgj0tOzWWNReQ4P3EQ9gcwc3dBfoMfMqUjzopQuJWzQuASniTEGMnC
         oaoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h9M5VRC01DAZPfI0s5I19MARMALNHk/O6/g2Mh8se6M=;
        b=FSRuUnlKf+UFJtEVeyKf+e8feZi7cGL9U5tr1qJVcbHlyzGeJ+z5GtN2swxahId3dK
         XHoGU9P18fTwgPQ4rvz3STJBLKYkUxhPyVLIb5nD09LATQK3GTEd7LTvJD5xV2Y17ef/
         /ngqL8cp+XjA/mxCqxjneuDeiY23JrMDsoBL5aidIwczFpQzvLAueyv+uTIlcWGHQ3bi
         egzQAWI0BM6qaXqNLk0f00qRfJ8HB0cvCVJdfVR8KElfSb19pxLoEXw+2KvO8i8xadmQ
         5ibYFkyA8ltkdto3tP+xfusFL2Asj5VZBSxSubFA9Tg4YEc6qCR/sG/b21Yut2axmvP+
         IEbg==
X-Gm-Message-State: AFqh2kqXWbTVb0JyD9brpUNYUSqQFtcu/BnceprCthLqeogv1I1Q+lfS
	1PCXso+DvQ+Y0xlXOo4Vp50=
X-Google-Smtp-Source: AMrXdXtlyTNhPlfvt+/MGH/iawBnMLip4b4VU687JDFjn1/LEWjQzZm+Ija2I/myfa/DFDViWhiNxQ==
X-Received: by 2002:a17:906:57da:b0:872:5222:9024 with SMTP id u26-20020a17090657da00b0087252229024mr45172389ejr.67.1675002716932;
        Sun, 29 Jan 2023 06:31:56 -0800 (PST)
Received: from localhost.localdomain (83.6.123.74.ipv4.supernova.orange.pl. [83.6.123.74])
        by smtp.gmail.com with ESMTPSA id jr23-20020a170906515700b0086f4b8f9e42sm5410128ejc.65.2023.01.29.06.31.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jan 2023 06:31:56 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] drm: panel: Add Elida KD50T048A to Sitronix ST7701 driver
Date: Sun, 29 Jan 2023 15:31:40 +0100
Message-Id: <20230129143141.173413-3-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230129143141.173413-1-maccraft123mc@gmail.com>
References: <20230129143141.173413-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230129_063159_306120_48251213 
X-CRM114-Status: GOOD (  13.22  )
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

Add KD50T048A MIPI-DSI panel, which is based on ST7701 chip.
Not sure what else to add to this commit message.

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7701.c | 125 ++++++++++++++++++
 1 file changed, 125 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7701.c b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
index 0b8cf65172ff..660c3f435008 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7701.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
@@ -397,6 +397,31 @@ static void dmt028vghmcmi_1a_gip_sequence(struct st7701 *st7701)
 	ST7701_DSI(st7701, 0x3A, 0x70);
 }
 
+static void kd50t048a_gip_sequence(struct st7701 *st7701)
+{
+	/**
+	 * ST7701_SPEC_V1.2 is unable to provide enough information above this
+	 * specific command sequence, so grab the same from vendor BSP driver.
+	 */
+	ST7701_DSI(st7701, 0xE0, 0x00, 0x00, 0x02);
+	ST7701_DSI(st7701, 0xE1, 0x08, 0x00, 0x0A, 0x00, 0x07, 0x00, 0x09,
+		   0x00, 0x00, 0x33, 0x33);
+	ST7701_DSI(st7701, 0xE2, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+		   0x00, 0x00, 0x00, 0x00, 0x00, 0x00);
+	ST7701_DSI(st7701, 0xE3, 0x00, 0x00, 0x33, 0x33);
+	ST7701_DSI(st7701, 0xE4, 0x44, 0x44);
+	ST7701_DSI(st7701, 0xE5, 0x0E, 0x60, 0xA0, 0xA0, 0x10, 0x60, 0xA0,
+		   0xA0, 0x0A, 0x60, 0xA0, 0xA0, 0x0C, 0x60, 0xA0, 0xA0);
+	ST7701_DSI(st7701, 0xE6, 0x00, 0x00, 0x33, 0x33);
+	ST7701_DSI(st7701, 0xE7, 0x44, 0x44);
+	ST7701_DSI(st7701, 0xE8, 0x0D, 0x60, 0xA0, 0xA0, 0x0F, 0x60, 0xA0,
+		   0xA0, 0x09, 0x60, 0xA0, 0xA0, 0x0B, 0x60, 0xA0, 0xA0);
+	ST7701_DSI(st7701, 0xEB, 0x02, 0x01, 0xE4, 0xE4, 0x44, 0x00, 0x40);
+	ST7701_DSI(st7701, 0xEC, 0x02, 0x01);
+	ST7701_DSI(st7701, 0xED, 0xAB, 0x89, 0x76, 0x54, 0x01, 0xFF, 0xFF,
+		   0xFF, 0xFF, 0xFF, 0xFF, 0x10, 0x45, 0x67, 0x98, 0xBA);
+}
+
 static int st7701_prepare(struct drm_panel *panel)
 {
 	struct st7701 *st7701 = panel_to_st7701(panel);
@@ -700,6 +725,105 @@ static const struct st7701_panel_desc dmt028vghmcmi_1a_desc = {
 	.gip_sequence = dmt028vghmcmi_1a_gip_sequence,
 };
 
+static const struct drm_display_mode kd50t048a_mode = {
+	.clock          = 27500,
+
+	.hdisplay       = 480,
+	.hsync_start    = 480 + 2,
+	.hsync_end      = 480 + 2 + 10,
+	.htotal         = 480 + 2 + 10 + 2,
+
+	.vdisplay       = 854, // was: 854 12 2 60
+	.vsync_start    = 854 + 2,
+	.vsync_end      = 854 + 2 + 2,
+	.vtotal         = 854 + 2 + 2 + 17,
+
+	.width_mm       = 69,
+	.height_mm      = 139,
+
+	.type = DRM_MODE_TYPE_DRIVER | DRM_MODE_TYPE_PREFERRED,
+};
+
+static const struct st7701_panel_desc kd50t048a_desc = {
+	.mode = &kd50t048a_mode,
+	.lanes = 2,
+	.format = MIPI_DSI_FMT_RGB888,
+	.panel_sleep_delay = 0,
+
+	.pv_gamma = {
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xd),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xd),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x10),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x5),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x2),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x8),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x1e),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x11),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 2) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x23),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x29),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x18)
+	},
+	.nv_gamma = {
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC0_MASK, 0),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC4_MASK, 0xc),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC8_MASK, 0x14),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC16_MASK, 0xc),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC24_MASK, 0x10),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC52_MASK, 0x5),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC80_MASK, 0x3),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC108_MASK, 0x8),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC147_MASK, 0x7),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC175_MASK, 0x20),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC203_MASK, 0x5),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC231_MASK, 0x13),
+
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC239_MASK, 0x11),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 2) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC247_MASK, 0x24),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC251_MASK, 0x29),
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_AJ_MASK, 0) |
+		CFIELD_PREP(DSI_CMD2_BK0_GAMCTRL_VC255_MASK, 0x18)
+	},
+	.nlinv = 1,
+	.vop_uv = 4887500,
+	.vcom_uv = 937500,
+	.vgh_mv = 15000,
+	.vgl_mv = -9510,
+	.avdd_mv = 6600,
+	.avcl_mv = -4400,
+	.gamma_op_bias = OP_BIAS_MIDDLE,
+	.input_op_bias = OP_BIAS_MIN,
+	.output_op_bias = OP_BIAS_MIN,
+	.t2d_ns = 1600,
+	.t3d_ns = 10400,
+	.eot_en = true,
+	.gip_sequence = kd50t048a_gip_sequence,
+};
+
 static int st7701_dsi_probe(struct mipi_dsi_device *dsi)
 {
 	const struct st7701_panel_desc *desc;
@@ -776,6 +900,7 @@ static void st7701_dsi_remove(struct mipi_dsi_device *dsi)
 static const struct of_device_id st7701_of_match[] = {
 	{ .compatible = "densitron,dmt028vghmcmi-1a", .data = &dmt028vghmcmi_1a_desc },
 	{ .compatible = "techstar,ts8550b", .data = &ts8550b_desc },
+	{ .compatible = "elida,kd50t048a", .data = &kd50t048a_desc },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, st7701_of_match);
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
