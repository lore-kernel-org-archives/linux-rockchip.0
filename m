Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2FF3C61CE5
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jun 2025 19:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oN9IIPWKPCMmmckBJNE1j3mRhRc81hNO7QB8J124lnk=; b=erUeszDxUa6s83
	Brrlq3ORB+fn6wduRdtvZplQhO3R4VlaUd9msQAnNCZQACfPmeKR0dxZhK6Li4LPsoBqcVoBMx88Z
	lUlK3UqUh1T3aDoiZFRePbd+IvZnSn3Do9wXnVbP5HbDRr0DMAySZlMPdusJdZOxp9vhxnJ8Onjiv
	EB+ruojIuOgH8hP+mx1IvGmeIsxs/WvvuzcXEd/xJ0+C4hyVe3UgONMtpwlZYgvA6b061t4btp6uM
	EjDXdB6wBgiCu4JGtnHbitdOeVO0maQL60fGRFaUyHy2nL2tjTQRDNoTDYEgPTk2InboAOAxFy+FV
	NMThTTnB0E2cQzUp9axg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMXWP-0000000BjEb-0U6f;
	Tue, 03 Jun 2025 19:42:05 +0000
Received: from mail-oo1-xc35.google.com ([2607:f8b0:4864:20::c35])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMXWM-0000000BjDN-1bRy
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Jun 2025 19:42:03 +0000
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-60bef8e7bb3so2720116eaf.2
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Jun 2025 12:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748979721; x=1749584521; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TIVqz2dRGfkeXaVkRfMlKjXlMd9pJR9pSIQQIKcgCz8=;
        b=JXH/m7oPKBsicm49bSJkdYnPcm819vNojYwBmYiIODqtueOqTUmZVDu2VfRprebO6B
         783N12xf8SzzIdZO5VVk3PysjzarzPd0srZdKKUJS5hAgFWwGUo0SKT1cvh1IszxCErr
         ZWzCogYllN4WtPO/a9ryL5GQO8EjPtjBZkd5WUUXP9nlSNU4/kmU6iLGsTWXmv65TwEE
         3kMvwz/Xk+LGbTgOl750qMFP2vxcVk2X7vTCnvCDtEasQJhgNNnN1qBv61nT23Vjo5qY
         o2xPhzsOxkiu1CHofbTIt13pPJZakZgMSnWUIMp4saSB1UaPkN0lLuSfetoCW12Jv30L
         T7Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748979721; x=1749584521;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TIVqz2dRGfkeXaVkRfMlKjXlMd9pJR9pSIQQIKcgCz8=;
        b=F8DsAN1MR29tmrlpWY8pT9mjqpftEw2iJARuPkhouhQkdiVenSXpDsx5r4/rtaLg8y
         oSR0+POS+rFCki7i7oyf2DC1wo5F821o8vMgUasw2tVhxMg65J6XGo5WcQuu2s0KGe+K
         5mWSM6Nb2li+q/xYLd2bRkEjwJQ2CBp+huxw5C3PKYL4e2hSevlisQ3SJlkf+/557EZi
         ULPEUQTp60kKF90WI+klnTUNxq5HNI0ogP4IoJsDSXNh9oiKSOADlxPMY972ZS+VBzEz
         bMPLLq8QeAw8yMXdWuJS/6uvGI6/iCPGfDQJpMs4NfNGjsFwL03UbkQC06xcZ0+GDzyp
         ohrQ==
X-Gm-Message-State: AOJu0Yw097OeNujURXT+PxlchwaofO1OTz4V3Ux6GBA6LwTg7HPmGioV
	ewLjULgBP43h+QxE5Ef5ePANxd+IgovNmBlAIsFUAh8IeN9Lb0o130qU
X-Gm-Gg: ASbGncvqYfU1cXNZvxy8tDzu4Hn9NcqxsSWoDwRr2Q7fmXu8gXrYDLQtAfOty7ZXJ0H
	x/assvwvXPh3nR5hIdRlS6Y+CQvYkDEXk0reimVp2IIzSmBXYbfGm/cQecpIvdlV1d4dtwIggLM
	+O1ANSGjhR8TeSpJLtY94RnamfN2TzNJy0v/FyJNf4Go0/uVaatzYmApvzrUEC214L6/QfkVrMK
	soWxw8oMToYRqscd5JyknnrtpSvlyUKCK4cBELmOmKBxIL3Ttz0ZioRSAtIxd5bZrIQeXf025NV
	U+cQCbB9AYSqIZh9tzuTO1eE1FQpEYHHbIzKJKmwfhXXNuh/toVXFiGPq7JKTdhSLP2p1EQ=
X-Google-Smtp-Source: AGHT+IEPHZuFkTYXQCTkJo5Ym0ylfV4pxcvfbfHQSSmEIozDMoZD4JWFzvzgmrQ3ty+jtqiGY0g7Aw==
X-Received: by 2002:a05:6820:2901:b0:60e:e75c:5ef2 with SMTP id 006d021491bc7-60ee75c6b78mr6812635eaf.7.1748979721192;
        Tue, 03 Jun 2025 12:42:01 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:d19a:d10c:4358:1346])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c88f96sm1967615eaf.17.2025.06.03.12.42.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:42:00 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] drm/panel: himax-hx8394: Add Support for Huiling hl055fhav028c
Date: Tue,  3 Jun 2025 14:39:29 -0500
Message-ID: <20250603193930.323607-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_124202_444995_07CE939C 
X-CRM114-Status: GOOD (  14.59  )
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

Add support for the Huiling hl055fhav028c panel as used on the
Gameforce Ace handheld gaming console. This panel uses a Himax HX8399C
display controller and requires a sparsely documented vendor provided
init sequence. The display resolution is 1080x1920 and is 70mm by 127mm
as stated in the manufacturer's documentation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-himax-hx8394.c | 142 +++++++++++++++++++++
 1 file changed, 142 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-himax-hx8394.c b/drivers/gpu/drm/panel/panel-himax-hx8394.c
index ff994bf0e3cc..16e450b156b7 100644
--- a/drivers/gpu/drm/panel/panel-himax-hx8394.c
+++ b/drivers/gpu/drm/panel/panel-himax-hx8394.c
@@ -477,6 +477,147 @@ static const struct hx8394_panel_desc mchp_ac40t08a_desc = {
 	.init_sequence = mchp_ac40t08a_init_sequence,
 };
 
+/*
+ * HL055FHAV028C is based on Himax HX8399, so datasheet pages are
+ * slightly different than HX8394 based panels.
+ */
+static void hl055fhav028c_init_sequence(struct mipi_dsi_multi_context *dsi_ctx)
+{
+	/* 6.3.6 SETEXTC: Set extension command (B9h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETEXTC,
+				     0xff, 0x83, 0x99);
+
+	/* 6.3.17 SETOFFSET: Set offset voltage (D2h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETOFFSET,
+				     0x77);
+
+	/* 6.3.1 SETPOWER: Set power (B1h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETPOWER,
+				     0x02, 0x04, 0x74, 0x94, 0x01, 0x32,
+				     0x33, 0x11, 0x11, 0xab, 0x4d, 0x56,
+				     0x73, 0x02, 0x02);
+
+	/* 6.3.2 SETDISP: Set display related register (B2h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETDISP,
+				     0x00, 0x80, 0x80, 0xae, 0x05, 0x07,
+				     0x5a, 0x11, 0x00, 0x00, 0x10, 0x1e,
+				     0x70, 0x03, 0xd4);
+
+	/* 6.3.3 SETCYC: Set display waveform cycles (B4h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETCYC,
+				     0x00, 0xff, 0x02, 0xc0, 0x02, 0xc0,
+				     0x00, 0x00, 0x08, 0x00, 0x04, 0x06,
+				     0x00, 0x32, 0x04, 0x0a, 0x08, 0x21,
+				     0x03, 0x01, 0x00, 0x0f, 0xb8, 0x8b,
+				     0x02, 0xc0, 0x02, 0xc0, 0x00, 0x00,
+				     0x08, 0x00, 0x04, 0x06, 0x00, 0x32,
+				     0x04, 0x0a, 0x08, 0x01, 0x00, 0x0f,
+				     0xb8, 0x01);
+
+	/* 6.3.18 SETGIP0: Set GIP Option0 (D3h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP0,
+				     0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+				     0x06, 0x00, 0x00, 0x10, 0x04, 0x00,
+				     0x04, 0x00, 0x00, 0x00, 0x00, 0x00,
+				     0x00, 0x00, 0x00, 0x00, 0x00, 0x01,
+				     0x00, 0x05, 0x05, 0x07, 0x00, 0x00,
+				     0x00, 0x05, 0x40);
+
+	/* 6.3.19 Set GIP Option1 (D5h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP1,
+				     0x18, 0x18, 0x19, 0x19, 0x18, 0x18,
+				     0x21, 0x20, 0x01, 0x00, 0x07, 0x06,
+				     0x05, 0x04, 0x03, 0x02, 0x18, 0x18,
+				     0x18, 0x18, 0x18, 0x18, 0x2f, 0x2f,
+				     0x30, 0x30, 0x31, 0x31, 0x18, 0x18,
+				     0x18, 0x18);
+
+	/* 6.3.20 Set GIP Option2 (D6h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGIP2,
+				     0x18, 0x18, 0x19, 0x19, 0x40, 0x40,
+				     0x20, 0x21, 0x02, 0x03, 0x04, 0x05,
+				     0x06, 0x07, 0x00, 0x01, 0x40, 0x40,
+				     0x40, 0x40, 0x40, 0x40, 0x2f, 0x2f,
+				     0x30, 0x30, 0x31, 0x31, 0x40, 0x40,
+				     0x40, 0x40);
+
+	/* 6.3.21 Set GIP Option3 (D8h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
+				     0xa2, 0xaa, 0x02, 0xa0, 0xa2, 0xa8,
+				     0x02, 0xa0, 0xb0, 0x00, 0x00, 0x00,
+				     0xb0, 0x00, 0x00, 0x00);
+
+	/* 6.3.9 Set register bank (BDh) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
+				     0x01);
+
+	/* 6.3.21 Set GIP Option3 (D8h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
+				     0xb0, 0x00, 0x00, 0x00, 0xb0, 0x00,
+				     0x00, 0x00, 0xe2, 0xaa, 0x03, 0xf0,
+				     0xe2, 0xaa, 0x03, 0xf0);
+
+	/* 6.3.9 Set register bank (BDh) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
+				     0x02);
+
+	/* 6.3.21 Set GIP Option3 (D8h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN4,
+				     0xe2, 0xaa, 0x03, 0xf0, 0xe2, 0xaa,
+				     0x03, 0xf0);
+
+	/* 6.3.9 Set register bank (BDh) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETREGBANK,
+				     0x00);
+
+	/* 6.3.4 SETVCOM: Set VCOM voltage (B6h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETVCOM,
+				     0x7a, 0x7a);
+
+	/* 6.3.26 SETGAMMA: Set gamma curve related setting (E0h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETGAMMA,
+				     0x00, 0x18, 0x27, 0x24, 0x5a, 0x68,
+				     0x79, 0x78, 0x81, 0x8a, 0x92, 0x99,
+				     0x9e, 0xa7, 0xaf, 0xb4, 0xb9, 0xc3,
+				     0xc7, 0xd1, 0xc6, 0xd4, 0xd5, 0x6c,
+				     0x67, 0x71, 0x77, 0x00, 0x00, 0x18,
+				     0x27, 0x24, 0x5a, 0x68, 0x79, 0x78,
+				     0x81, 0x8a, 0x92, 0x99, 0x9e, 0xa7,
+				     0xaf, 0xb4, 0xb9, 0xc3, 0xc7, 0xd1,
+				     0xc6, 0xd4, 0xd5, 0x6c, 0x67, 0x77);
+
+	/* Unknown command, not listed in the HX8399-C datasheet (C6h) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_UNKNOWN2,
+				     0xff, 0xf9);
+
+	/* 6.3.16 SETPANEL (CCh) */
+	mipi_dsi_dcs_write_seq_multi(dsi_ctx, HX8394_CMD_SETPANEL,
+				     0x08);
+}
+
+static const struct drm_display_mode hl055fhav028c_mode = {
+	.hdisplay	= 1080,
+	.hsync_start	= 1080 + 32,
+	.hsync_end	= 1080 + 32 + 8,
+	.htotal		= 1080 + 32 + 8 + 32,
+	.vdisplay	= 1920,
+	.vsync_start	= 1920 + 16,
+	.vsync_end	= 1920 + 16 + 2,
+	.vtotal		= 1920 + 16 + 2 + 14,
+	.clock		= 134920,
+	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.width_mm	= 70,
+	.height_mm	= 127,
+};
+
+static const struct hx8394_panel_desc hl055fhav028c_desc = {
+	.mode = &hl055fhav028c_mode,
+	.lanes = 4,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init_sequence = hl055fhav028c_init_sequence,
+};
+
 static int hx8394_enable(struct drm_panel *panel)
 {
 	struct hx8394 *ctx = panel_to_hx8394(panel);
@@ -683,6 +824,7 @@ static void hx8394_remove(struct mipi_dsi_device *dsi)
 
 static const struct of_device_id hx8394_of_match[] = {
 	{ .compatible = "hannstar,hsd060bhw4", .data = &hsd060bhw4_desc },
+	{ .compatible = "huiling,hl055fhav028c", .data = &hl055fhav028c_desc },
 	{ .compatible = "powkiddy,x55-panel", .data = &powkiddy_x55_desc },
 	{ .compatible = "microchip,ac40t08a-mipi-panel", .data = &mchp_ac40t08a_desc },
 	{ /* sentinel */ }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
