Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE756C4829E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 18:50:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7i3Tx1wk+5gmrgAX769agnWmg2wcg6ZYb/f7Zwnqeg=; b=B4Ap8isX165QkR
	QJGfK8NHCVrcGHG0Lho7c+55MxCCurUadDnHQrQ2wxsdti7gBvXN7NNakPGmQMlVJU4ph7NuzBleT
	PXAthZ8ybKXEgtlqsrdp5E1Vy6CypU/+zL6WC6jLhL1tijdKncdHXzaIXaF3era5nkVWBDGOv1W+K
	dj2s64QjfgwR1A09yfkLFwbPedtlsPzrGtXdMlBdQcEyOE0PjK8XkHoNMYSZZTesFCorFajKViHgG
	uNqR5SGvmGLOBqwphE8xbjBtfeVD3NKgR910Y+2aSpM78IcTSRygc4C9QSrEgVDljDRNt9WPh08w6
	7lfL1a530xx2vQyKEcvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNX-00000006g7d-1s8V;
	Mon, 12 Feb 2024 18:50:07 +0000
Received: from mail-oo1-xc36.google.com ([2607:f8b0:4864:20::c36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZbNQ-00000006g2V-2zwq
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Feb 2024 18:50:02 +0000
Received: by mail-oo1-xc36.google.com with SMTP id 006d021491bc7-59caf51d4bcso782441eaf.1
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Feb 2024 10:50:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707763799; x=1708368599; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jZFPsjehsGahfaDDXv6wayCfEx1VbKmklsIBWo0yYyU=;
        b=GFv2DwKZFzaFxx9KWZBbmKa/rjHJEduIXRhJp3vOVVgqghx/aMQ+G8safAC/y/oJf6
         nALebWVoxyuY1DXRhhN3QMQy5SAMtOzGFfRF3Q5hQa3mqABGjboXgUex3XCc3yMmgSAK
         zUDbyV0y0xbcB68oRRS9Q5saP7LLV9CZeYxZ3D40oRzHBex90pnqivW+69XT4U4TwKV9
         snmfjO/IBAVLiZ66vMCIXAzLHUSGDiKDv8/acQlTcuTYVM7G2K8ZLwATbN6u3cA+eyMd
         RaLfsx5ixxoTz0Io+kjhG6aqo5CTht6TpzJfM6amAogfBjZpWZftXVbs3E4os12mY8pr
         9LvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763799; x=1708368599;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jZFPsjehsGahfaDDXv6wayCfEx1VbKmklsIBWo0yYyU=;
        b=TRIoLhTIsdONv0F0/Md8tRJQOHq+iKPfrLtc3GkDJrSOy9ErNIwitoxgG82ShVdtBo
         b6sahGW2oiS8+gpaUzTd5Dz6dOPGz+9tehb24Wd0Mm0pq9XYGNH1lxxVt4O8t+/be4r3
         HQguJIANnkPWo8NRTp3BSp1qhdpTPi6uDywngNB41R6rbk5gKQ16jdtQS+vJq44lv7IU
         C9pPO6hPvg+51nchN3mWalaIpQQal6lBHbP4MFKT4n/M6QpopJ4gYSAVkaY3gCKQ93D2
         mErT9HSNioyHCNxOY195X0AEwJs2Z++hvxf/zlMYHyjmZDOicw+ngRzkLrLFAt0k+Tf3
         R+Wg==
X-Gm-Message-State: AOJu0YwQz7n6+lVw0aoy6doIHaB6pdNL3Kz/x2I75VDQEoQKq+hYDHLQ
	EfrBgG0HTTkgOFyrSvN3SoNyf/wjBciNp/pj6B6u0sU/sz44W6C73FU+B9FL
X-Google-Smtp-Source: AGHT+IEjZ9O0me5zTfECpVnc2oS1pkECPbe/I+XKgyEsT9zWfV++kcEm/14iIibhX6edaB/F044vpQ==
X-Received: by 2002:a4a:d091:0:b0:59a:50fc:153 with SMTP id i17-20020a4ad091000000b0059a50fc0153mr162021oor.0.1707763799213;
        Mon, 12 Feb 2024 10:49:59 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU5YSNg5lkpy6/qPSoe2SPJUCYgqmNiULOaruPQ16MIpRzRwP1Y9KLgomxtYLLG3kb6J6iDWS7cswL7GI8ncPjgUKcnN/I84NxxX8mMuUvkmiyhj0TFwZlN/6PULc2rnZez5xkVNPmAzf6ottmp7yEIFzR/VZB+1fDL2Z/QydhNnqb6symmTvSQX2J+QcjXTrC3x7CqrOxLymqdUZnaln9Beb+PWYNjGcXAX+9l8m47UJnLsefTZntGRKNgdyrkBikxM+X4Fqo/YvE3NRsKjTiOCrgTVSasZ6obdSLcbwgmqysbvB5eGQiB8HjQBD43ieG0HExvf9B2t9PkYWvk2wZWcgK70EMlgWWZ18qOWQbVfhMb3R7AYpKGFk5A9uCJEVpjbwVSZQs4EHTRVqBPcBVIwfN4CG5I58qPaRZP65kU1WVGhUQZ8jj3GD++QzCJ3q9SuEtKZOYoeSDw6Pekw/bta2KDVv2Z0rDCQgYsokWz++H8bSRmWxRVkfSYmX8dS4W97/ast+Kxs/xtka9qtetuYrxA16TTgtm8qg5pBa/ZhxKyqiOsV2osrzuy
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id b7-20020a4a3407000000b0059d5360c62esm171939ooa.11.2024.02.12.10.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:49:59 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
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
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/7] drm/panel: st7703: Add Powkiddy RGB10MAX3 Panel Support
Date: Mon, 12 Feb 2024 12:49:45 -0600
Message-Id: <20240212184950.52210-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212184950.52210-1-macroalpha82@gmail.com>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_105000_782752_7F8A82AE 
X-CRM114-Status: GOOD (  11.89  )
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

The Powkiddy RGB10MAX3 is a handheld device with a 5 inch 720x1280
display panel with a Sitronix ST7703 display controller. The panel
is installed rotated 270 degrees.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 91 +++++++++++++++++++
 1 file changed, 91 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index b55bafd1a8be..939ba05c9b58 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -521,6 +521,96 @@ static const struct st7703_panel_desc rgb30panel_desc = {
 	.init_sequence = rgb30panel_init_sequence,
 };
 
+static int rgb10max3_panel_init_sequence(struct st7703 *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+
+	/* Init sequence extracted from Powkiddy RGB10MAX3 BSP kernel. */
+
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC, 0xf1, 0x12, 0x83);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETAPID, 0x00, 0x00, 0x00, 0xda,
+			       0x80);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0xc8, 0x02, 0x30);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF, 0x10, 0x10, 0x28,
+			       0x28, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x04, 0x04);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x78, 0x78);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT, 0x25, 0x22, 0xf0,
+			       0x63);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI, 0x33, 0x81, 0x05, 0xf9,
+			       0x0e, 0x0e, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x44, 0x25, 0x00, 0x90, 0x0a, 0x00,
+			       0x00, 0x01, 0x4f, 0x01, 0x00, 0x00, 0x37);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x47);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_BF, 0x02, 0x11, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR, 0x73, 0x73, 0x50, 0x50,
+			       0x00, 0x00, 0x12, 0x70, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER, 0x25, 0x00, 0x32,
+			       0x32, 0x77, 0xe1, 0xff, 0xff, 0xcc, 0xcc, 0x77,
+			       0x77);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETECO, 0x82, 0x00, 0xbf, 0xff,
+			       0x00, 0xff);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETIO, 0xb8, 0x00, 0x0a, 0x00,
+			       0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCABC, 0x10, 0x40, 0x1e,
+			       0x02);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0b);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA, 0x00, 0x04, 0x07,
+			       0x2a, 0x39, 0x3f, 0x36, 0x31, 0x06, 0x0b, 0x0e,
+			       0x12, 0x14, 0x12, 0x13, 0x0f, 0x17, 0x00, 0x04,
+			       0x07, 0x2a, 0x39, 0x3f, 0x36, 0x31, 0x06, 0x0b,
+			       0x0e, 0x12, 0x14, 0x12, 0x13, 0x0f, 0x17);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ, 0x03, 0x03, 0x03, 0x03,
+			       0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0xff, 0x80,
+			       0xc0, 0x10);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1, 0xc8, 0x10, 0x08, 0x00,
+			       0x00, 0x41, 0xf8, 0x12, 0x31, 0x23, 0x37, 0x86,
+			       0x11, 0xc8, 0x37, 0x2a, 0x00, 0x00, 0x0c, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x0c, 0x00, 0x00, 0x00,
+			       0x88, 0x20, 0x46, 0x02, 0x88, 0x88, 0x88, 0x88,
+			       0x88, 0x88, 0xff, 0x88, 0x31, 0x57, 0x13, 0x88,
+			       0x88, 0x88, 0x88, 0x88, 0x88, 0xff, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2, 0x00, 0x1a, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x8f, 0x13, 0x31, 0x75, 0x88, 0x88, 0x88, 0x88,
+			       0x88, 0x88, 0xf8, 0x8f, 0x02, 0x20, 0x64, 0x88,
+			       0x88, 0x88, 0x88, 0x88, 0x88, 0xf8, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_EF, 0xff, 0xff, 0x01);
+
+	return 0;
+}
+
+static const struct drm_display_mode rgb10max3_panel_mode = {
+	.hdisplay	= 720,
+	.hsync_start	= 720 + 40,
+	.hsync_end	= 720 + 40 + 10,
+	.htotal		= 720 + 40 + 10 + 40,
+	.vdisplay	= 1280,
+	.vsync_start	= 1280 + 16,
+	.vsync_end	= 1280 + 16 + 4,
+	.vtotal		= 1280 + 16 + 4 + 14,
+	.clock		= 63800,
+	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.width_mm	= 62,
+	.height_mm	= 109,
+};
+
+static const struct st7703_panel_desc rgb10max3_panel_desc = {
+	.mode = &rgb10max3_panel_mode,
+	.lanes = 4,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_LPM,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init_sequence = rgb10max3_panel_init_sequence,
+};
+
 static int st7703_enable(struct drm_panel *panel)
 {
 	struct st7703 *ctx = panel_to_st7703(panel);
@@ -784,6 +874,7 @@ static void st7703_remove(struct mipi_dsi_device *dsi)
 
 static const struct of_device_id st7703_of_match[] = {
 	{ .compatible = "anbernic,rg353v-panel-v2", .data = &rg353v2_desc },
+	{ .compatible = "powkiddy,rgb10max3-panel", .data = &rgb10max3_panel_desc },
 	{ .compatible = "powkiddy,rgb30-panel", .data = &rgb30panel_desc },
 	{ .compatible = "rocktech,jh057n00900", .data = &jh057n00900_panel_desc },
 	{ .compatible = "xingbangda,xbd599", .data = &xbd599_desc },
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
