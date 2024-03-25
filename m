Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA4EEC54E64
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 13:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DyiEcRT0BvTPSWoTAeIWRQKwiD7vhUrraGwo0CBfpOk=; b=gW+I2emdz324ug
	0noU6oJQ/2L4XND348fSko7ienaBs78aoGlMCLBdIc5K3K71rTeMe/wvYmoCWAd+ymABQXTaTSBSl
	7CE3O1HINbrryigzoURuKg8xhOWCWFEAMB/naRqVs+The3Whsr6GSBERTjNYunw9jgIaK/JDIK/E2
	WiD9qmM6yx7SS/OvlwS/FFJCAQFkWL/aOZhfmxq5TM0M8MF+6FAatstt2BhVfqA7hhE1wBYNx9Upa
	WUjNHociua08aWTPeTzP3ZEaCEHPzP8Nr/4q82hGEqWadhAxpMCjVuHouB+2J6OjKTWTAptPG3RLK
	lTJW4YFoSzfes+jliFiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rokiU-000000003nq-1oQa;
	Mon, 25 Mar 2024 13:50:22 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rokiL-000000003g5-3P6J
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 13:50:15 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6e50e8dcc72so1798461a34.3
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 06:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711374609; x=1711979409; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NZ8I/B+6mEM+116M4DIyR6SirHqDJuaLw9lcy//WX3A=;
        b=CuSbzbnjQSG252iJWa2OLYQujW27b5RcKaSdzrVahGc2DU290/mBHQ7ktyHc54+RtU
         l8ew8HzJeZxAuAICUs7jfnpbFDFjmtnAQdjoA6+zzOeQcQkfIzIya0Bvh2RyaIYRFkjN
         TaEkMDL6aWqp0c3A+2itnrid7+U5QKduN/BjGv1zx/7VweBdtgCpAzpaFG2heQK9Gg0Z
         vm4nZDdXMScpXNyspptWvPdjxkUk1EEJbYCG+jcKrQYBHdSMYcWV77BVlD7jD1QGzCA7
         iW1imtChvBwTdA+bARFhwzwByY51IovNOCkAhF7kvU0aRNG2Id2Z7R/Fnscsbj6Wru/D
         n+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711374609; x=1711979409;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NZ8I/B+6mEM+116M4DIyR6SirHqDJuaLw9lcy//WX3A=;
        b=ezQsn0G/4Z8i/Bg7Zu7ZACdUCqwcPz5vyAEfHxLFlpQEUoLBMj/VhKJqnnjQkk50mJ
         +DaX5xfeLVMrWW1ziU5mYj6NfMzBEZO3JOQ1VWrfPYX9RvPHhqHFSfh/r/oGqKrmS/q6
         jGVbEyubCQfMfOnkCcEmGZ5OZkV+69SXgfmwwxSF3G3JUtX06QEIoJSOq4S+E9/Hihpr
         yyqUxHrj1y3kbfEFm1NNkTUV+tvz0SI/KriGzkhhV9LQjuEPpUEuJVEPJYIqX4qm6GYD
         zwP29VcGMHleoCRDAByy/tG1s9+72JsL5bVXhUDpWH1QB83uulKu22lYaLSMdODh+NLA
         75mw==
X-Gm-Message-State: AOJu0Yxn/SgN3aj173GKYXvN9+TMEP+WnhERiAwCjz2yZp0Y808N81Na
	7JELnF9DfTlLIxFfLNcQINorzqACgD7bbLDXQVS0YleIS3aWkTP/N2zluQUO
X-Google-Smtp-Source: AGHT+IFw0aRgzuj/ozXB1DR5+V3PMgi7I/Nei+XmYatRDtf2qOj6MyvsNUYaAak5CZgDTgQCqoq5Bw==
X-Received: by 2002:a9d:4e97:0:b0:6e4:e483:863f with SMTP id v23-20020a9d4e97000000b006e4e483863fmr7712698otk.23.1711374609412;
        Mon, 25 Mar 2024 06:50:09 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z8-20020a05683010c800b006e673e2d2a3sm1118250oto.77.2024.03.25.06.50.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 06:50:09 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/5] drm/panel: st7703: Add GameForce Chi Panel Support
Date: Mon, 25 Mar 2024 08:49:57 -0500
Message-Id: <20240325134959.11807-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_065013_896115_039D4D35 
X-CRM114-Status: GOOD (  13.86  )
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

The GameForce Chi is a handheld device with a 3.5" 640x480 ST7703 based
display panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 87 +++++++++++++++++++
 1 file changed, 87 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index a3e142f156d5..7d8302cca091 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -612,6 +612,92 @@ static const struct st7703_panel_desc rgb10max3_panel_desc = {
 	.init_sequence = rgb10max3_panel_init_sequence,
 };
 
+static int gameforcechi_init_sequence(struct st7703 *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+
+	/*
+	 * Init sequence was supplied by the panel vendor. Panel will not
+	 * respond to commands until it is brought out of sleep mode first.
+	 */
+
+	mipi_dsi_dcs_exit_sleep_mode(dsi);
+	msleep(250);
+
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC, 0xf1, 0x12, 0x83);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI, 0x31, 0x81, 0x05, 0xf9,
+			       0x0e, 0x0e, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x44, 0x25, 0x00, 0x91, 0x0a, 0x00,
+			       0x00, 0x02, 0x4f, 0xd1, 0x00, 0x00, 0x37);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT, 0x25);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_BF, 0x02, 0x11, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF, 0x0c, 0x10, 0x0a,
+			       0x50, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR, 0x73, 0x73, 0x50, 0x50,
+			       0x00, 0x00, 0x08, 0x70, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x46);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0b);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0x00, 0x13, 0xf0);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ, 0x07, 0x07, 0x0b, 0x0b,
+			       0x03, 0x0b, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00,
+			       0xc0, 0x10);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER, 0x53, 0x00, 0x1e,
+			       0x1e, 0x77, 0xe1, 0xcc, 0xdd, 0x67, 0x77, 0x33,
+			       0x33);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x10, 0x10);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x6c, 0x7c);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1, 0x08, 0x00, 0x0e, 0x00,
+			       0x00, 0xb0, 0xb1, 0x11, 0x31, 0x23, 0x28, 0x10,
+			       0xb0, 0xb1, 0x27, 0x08, 0x00, 0x04, 0x02, 0x00,
+			       0x00, 0x00, 0x00, 0x04, 0x02, 0x00, 0x00, 0x00,
+			       0x88, 0x88, 0xba, 0x60, 0x24, 0x08, 0x88, 0x88,
+			       0x88, 0x88, 0x88, 0x88, 0x88, 0xba, 0x71, 0x35,
+			       0x18, 0x88, 0x88, 0x88, 0x88, 0x88, 0x00, 0x00,
+			       0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2, 0x97, 0x0a, 0x82, 0x02,
+			       0x13, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x80, 0x88, 0xba, 0x17, 0x53, 0x88, 0x88, 0x88,
+			       0x88, 0x88, 0x88, 0x81, 0x88, 0xba, 0x06, 0x42,
+			       0x88, 0x88, 0x88, 0x88, 0x88, 0x88, 0x23, 0x10,
+			       0x00, 0x02, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA, 0x00, 0x07, 0x0b,
+			       0x27, 0x2d, 0x3f, 0x3b, 0x37, 0x05, 0x0a, 0x0b,
+			       0x0f, 0x11, 0x0f, 0x12, 0x12, 0x18, 0x00, 0x07,
+			       0x0b, 0x27, 0x2d, 0x3f, 0x3b, 0x37, 0x05, 0xa0,
+			       0x0b, 0x0f, 0x11, 0x0f, 0x12, 0x12, 0x18);
+
+	return 0;
+}
+
+static const struct drm_display_mode gameforcechi_mode = {
+	.hdisplay	= 640,
+	.hsync_start	= 640 + 40,
+	.hsync_end	= 640 + 40 + 2,
+	.htotal		= 640 + 40 + 2 + 80,
+	.vdisplay	= 480,
+	.vsync_start	= 480 + 17,
+	.vsync_end	= 480 + 17 + 5,
+	.vtotal		= 480 + 17 + 5 + 13,
+	.clock		= 23546,
+	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.width_mm	= 71,
+	.height_mm	= 53,
+};
+
+static const struct st7703_panel_desc gameforcechi_desc = {
+	.mode = &gameforcechi_mode,
+	.lanes = 2,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_LPM,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init_sequence = gameforcechi_init_sequence,
+};
+
 static int st7703_enable(struct drm_panel *panel)
 {
 	struct st7703 *ctx = panel_to_st7703(panel);
@@ -887,6 +973,7 @@ static void st7703_remove(struct mipi_dsi_device *dsi)
 
 static const struct of_device_id st7703_of_match[] = {
 	{ .compatible = "anbernic,rg353v-panel-v2", .data = &rg353v2_desc },
+	{ .compatible = "gameforce,chi-panel", .data = &gameforcechi_desc },
 	{ .compatible = "powkiddy,rgb10max3-panel", .data = &rgb10max3_panel_desc },
 	{ .compatible = "powkiddy,rgb30-panel", .data = &rgb30panel_desc },
 	{ .compatible = "rocktech,jh057n00900", .data = &jh057n00900_panel_desc },
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
