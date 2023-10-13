Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29B53CDB482
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 18:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ybLYPKr1HMwOQ8HUNZ6MiMLMdnwQt0uN1PX104eFGVs=; b=3Zgxn4I8+VUlMm
	bv5cbZPMeX6tJ+W4xrmI75v3E87V+9Wt8m7sWaoFDS5ieCgdbO81haOArv2v2wVOQGi99qVdTXOcq
	MI0LrvwaV2dhKgCnDxClTA/GGBzngiVrOzFk6ogJzjVCq0QLSlkR33hDAF+bxz5Qd3h8PdSY+W845
	ulMukijobE3CzmgMNNlZFi2koMwrDzojVeMbJGF2+DySovOWfEaKgbZGr4ebEgwZLhHWMxqmRifCd
	1jamCKVhpSnMPg7Cbvoesb49gWF3AjYU08OO3BW6ZHpnrV/K0+SU7jh6PzD1ThcNL5aVP5Y+0F8td
	IDBUF+uVoYy7K+A+Fwsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4P-0043xz-32;
	Fri, 13 Oct 2023 18:39:33 +0000
Received: from mail-oi1-x236.google.com ([2607:f8b0:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4K-0043uj-20
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 18:39:31 +0000
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3b2b1b25547so507826b6e.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697222367; x=1697827167; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XpG74RYAbsyeZPWO/cKaZxYQssK+OjpMXseuuKjO9Ig=;
        b=kQX0DYarLc1B0k1x9tsDOgEQmncFwHKms9zQ2sv0B2oMzddQn6zjSryoQC2nspk4XY
         3JNmCtphp/OXdbeIZCgXCeiAcGLHTtrhazCwO0FmFDspxeFVclB62v2KB/Q9Ko+5KTrE
         Uit0N82+WbghkpH8C1hBW/dL/YXveALFrC/vfqedNdkANxmRjm6LLkPAQYsdWA8woFUq
         pAM9pkX2HYSg8m0BQZhLKqL72Q+uLBuMpPgqx83rQvHmlY7xFLIduez8PwXKewwfhxQT
         Lh6GnMhLLT/LRC7B1vVqDcJd5AAAIJzvYknMRBNOS73yFdd2lCb7T+EgvaSwA6h5U3/r
         hErw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697222367; x=1697827167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XpG74RYAbsyeZPWO/cKaZxYQssK+OjpMXseuuKjO9Ig=;
        b=D6N4yhMZktiQgbPSDuoR7dkTes6eRqAf/HrJ06jutdXY31DyHughmh6d8BDBAMD0ns
         oOPzmaAN2xt0q/KM1QdWKo78NNBpJPAs9SCeKQuwXoUuVN5qsnzIAosQyN0ddewrnTNJ
         Xmkgf3gWzRBrTMk0iZfq2npxc6NwIu8oIgvpCQU9hFocLqTCl+nuMbfvsUQongTEXK6k
         41/VxndV2f6LPuTmVH4bFMKHCSD3zgM0LuvolepozJB5INdJL2DOaB9FU8vGULr4Y0bR
         yk4xouyj47t0IXwCQE3Gap0I/ok+7JWa3INtyjnuUf2Npw5fUZfQXTUDE+CFLSbwCmJv
         ZSkA==
X-Gm-Message-State: AOJu0YwZ5l7ZJEW8Zj1BaJwvgC62USpWRJh2B84uuTYcQKL9nSSg2Haa
	fd7lMCGo5nARSBxEIy2gMXHrig01TbA=
X-Google-Smtp-Source: AGHT+IHCXxF7b1a3M3ZOkohw9lmflcVGCXq9oBMeHI9psiYwcW1lfGHZUQH76xDQHNnig2e2Hmhpxg==
X-Received: by 2002:a05:6808:1823:b0:3ad:9540:5475 with SMTP id bh35-20020a056808182300b003ad95405475mr35536504oib.45.1697222367085;
        Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id bx19-20020a0568081b1300b003afe584ed4fsm842159oib.42.2023.10.13.11.39.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 11:39:26 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	megous@megous.com,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/5] drm/panel: st7703: Add Powkiddy RGB30 Panel Support
Date: Fri, 13 Oct 2023 13:39:16 -0500
Message-Id: <20231013183918.225666-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013183918.225666-1-macroalpha82@gmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_113928_662285_9060254C 
X-CRM114-Status: GOOD (  14.16  )
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

The Powkiddy RGB30 4 inch panel is a 4 inch 720x720 DSI panel used in
the Powkiddy RGB30 handheld gaming device. Add support for it.

TODO: The panel seems to not resume properly from suspend. I've
confirmed on the other ST7703 based devices it works correctly.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7703.c | 89 +++++++++++++++++++
 1 file changed, 89 insertions(+)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
index 6a3945639535..a9892a4447fb 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
@@ -433,6 +433,94 @@ static const struct st7703_panel_desc rg353v2_desc = {
 	.init_sequence = rg353v2_init_sequence,
 };
 
+static int rgb30panel_init_sequence(struct st7703 *ctx)
+{
+	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
+
+	/* Init sequence extracted from Powkiddy RGB30 BSP kernel. */
+
+	/*
+	 * For some reason this specific panel must be taken out of sleep
+	 * before the full init sequence, or else it will not display.
+	 */
+	mipi_dsi_dcs_exit_sleep_mode(dsi);
+	msleep(250);
+
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC, 0xf1, 0x12, 0x83);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI, 0x33, 0x81, 0x05, 0xf9,
+			       0x0e, 0x0e, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x44, 0x25, 0x00, 0x90, 0x0a, 0x00,
+			       0x00, 0x01, 0x4f, 0x01, 0x00, 0x00, 0x37);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT, 0x25, 0x22, 0xf0,
+			       0x63);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_BF, 0x02, 0x11, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF, 0x10, 0x10, 0x28,
+			       0x28, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR, 0x73, 0x73, 0x50, 0x50,
+			       0x00, 0x00, 0x12, 0x70, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x46);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0b);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0x3c, 0x12, 0x30);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ, 0x07, 0x07, 0x0b, 0x0b,
+			       0x03, 0x0b, 0x00, 0x00, 0x00, 0x00, 0xff, 0x00,
+			       0xc0, 0x10);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER, 0x36, 0x00, 0x32,
+			       0x32, 0x77, 0xf1, 0xcc, 0xcc, 0x77, 0x77, 0x33,
+			       0x33);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x0a, 0x0a);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x88, 0x88);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1, 0xc8, 0x10, 0x0a, 0x10,
+			       0x0f, 0xa1, 0x80, 0x12, 0x31, 0x23, 0x47, 0x86,
+			       0xa1, 0x80, 0x47, 0x08, 0x00, 0x00, 0x0d, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x0d, 0x00, 0x00, 0x00,
+			       0x48, 0x02, 0x8b, 0xaf, 0x46, 0x02, 0x88, 0x88,
+			       0x88, 0x88, 0x88, 0x48, 0x13, 0x8b, 0xaf, 0x57,
+			       0x13, 0x88, 0x88, 0x88, 0x88, 0x88, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2, 0x96, 0x12, 0x01, 0x01,
+			       0x01, 0x78, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x4f, 0x31, 0x8b, 0xa8, 0x31, 0x75, 0x88, 0x88,
+			       0x88, 0x88, 0x88, 0x4f, 0x20, 0x8b, 0xa8, 0x20,
+			       0x64, 0x88, 0x88, 0x88, 0x88, 0x88, 0x23, 0x00,
+			       0x00, 0x01, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+			       0x00, 0x00, 0x40, 0xa1, 0x80, 0x00, 0x00, 0x00,
+			       0x00);
+	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA, 0x00, 0x0a, 0x0f,
+			       0x29, 0x3b, 0x3f, 0x42, 0x39, 0x06, 0x0d, 0x10,
+			       0x13, 0x15, 0x14, 0x15, 0x10, 0x17, 0x00, 0x0a,
+			       0x0f, 0x29, 0x3b, 0x3f, 0x42, 0x39, 0x06, 0x0d,
+			       0x10, 0x13, 0x15, 0x14, 0x15, 0x10, 0x17);
+
+	return 0;
+}
+
+static const struct drm_display_mode rgb30panel_mode = {
+	.hdisplay	= 720,
+	.hsync_start	= 720 + 45,
+	.hsync_end	= 720 + 45 + 4,
+	.htotal		= 720 + 45 + 4 + 45,
+	.vdisplay	= 720,
+	.vsync_start	= 720 + 15,
+	.vsync_end	= 720 + 15 + 3,
+	.vtotal		= 720 + 15 + 3 + 11,
+	.clock		= 36570,
+	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
+	.width_mm	= 76,
+	.height_mm	= 76,
+};
+
+static const struct st7703_panel_desc rgb30panel_desc = {
+	.mode = &rgb30panel_mode,
+	.lanes = 4,
+	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
+		      MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_LPM,
+	.format = MIPI_DSI_FMT_RGB888,
+	.init_sequence = rgb30panel_init_sequence,
+};
+
 static int st7703_enable(struct drm_panel *panel)
 {
 	struct st7703 *ctx = panel_to_st7703(panel);
@@ -694,6 +782,7 @@ static void st7703_remove(struct mipi_dsi_device *dsi)
 
 static const struct of_device_id st7703_of_match[] = {
 	{ .compatible = "anbernic,rg353v-panel-v2", .data = &rg353v2_desc },
+	{ .compatible = "powkiddy,rgb30-panel", .data = &rgb30panel_desc },
 	{ .compatible = "rocktech,jh057n00900", .data = &jh057n00900_panel_desc },
 	{ .compatible = "xingbangda,xbd599", .data = &xbd599_desc },
 	{ /* sentinel */ }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
