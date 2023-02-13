Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17333C636D4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Feb 2023 15:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pyYBHhs/5X/lBtSN3SMgIf9PPU3xTsShysuW84mSrCc=; b=q/usJTe0hxfEB8
	mg29K64mWSPl/iV4SUBGNDjKjVCPb38mlBEMWk6QH5BWD/4/zB/u4DTNs8P9aOzwbaEa87LX6Yfx2
	t3+SZzpYL4OC6NZ4IaMKTRiNcbyJ0ClfI6ABCmAWqZ6Hq3gRWecfd9qM1gv1yMcwIGzYWDzoq1G9S
	WtnUatmcENsAUslsN3ksRe/BYzrZW7f25AaUQjh2Lro0mcPS4nvZPR+2Z6mlwoCNWckTfBimYXTHZ
	7bXJcOWN+FFZS/SJb6IuJKzyx7Y3k2MdMtuguRW9LGfCCC5NDsp+6gJVe/iWCMxzVxurd13EJlPus
	aWj7wUByw1iZwxsXdjmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRav4-00FFI9-8m; Mon, 13 Feb 2023 15:39:06 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRauX-00FEy1-20
	for linux-rockchip@lists.infradead.org; Mon, 13 Feb 2023 15:38:35 +0000
Received: by mail-ej1-x633.google.com with SMTP id sb24so8915304ejb.8
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Feb 2023 07:38:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aD93lPaEpLbO12AG6KFXUrKcEBNMZrAt4589lIUtesY=;
        b=IRZIXuNAUAG+0zE/5LfJMJKmXT1wn/RbaM9uAG50k32gEjAAEhoazoB2Opl2+fnT57
         M+aRXPU6ZW6qfiik9IlFHU27iWoRN4dPCmJVr6pN5IOxUW9XPKFj8Dp3tOWpDd2gILqN
         D9APtDR1f6TvcEgbrU0Q39wfiKvclIf8z2BSG8XF1BAF5yFGavdq5ZLeJNYufchdrcey
         4I60aGAW5wJ4N6/ntyCFSRkLnkpWG2z59lmkAtuYeOf2D2kUBCqPY62lDjmwtL72UU66
         /lyFAoOj8EZ0KKz2d7P3VbcZsIBAsMADZwu72gqC80NE0VsRhCW+kS8fSZFr6dRzk09c
         ochA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aD93lPaEpLbO12AG6KFXUrKcEBNMZrAt4589lIUtesY=;
        b=PgyGz2Nmd9Y8DqYvZhx7BO7lr9kWZtyiZ8TA4y5bjkahCLzfMmJkTWAx7TZU5mfQpI
         FQmcO6g2LTYSdIeC90WxmAaCkPtn3At6hvyWaX3T320JzlCEvPi6urAaJeWhImm2OgYR
         zCS8khHsOI9TklPKwhB1GbiRuDYfKmox2ZPe/k2/sgXoq+62brbFiRq8+cYNCXHBKn2C
         lOkGlQOCZet7Xiuwhoh24vKhpGUf0yhXV+vb4AYx2zidjnKLtPHTW/tAl7g/m8MS0x0Q
         /QY6VZKMMzoJB4Jljk9ENQt3bKqrx317OKUbsWf5/THkB/esyjHfznVcBPjdjUBkYcLp
         G69g==
X-Gm-Message-State: AO0yUKVsPPPExhOqOaOcaJx6HwT7MoRjPtt0Qe2fC3q3Ey1PIfZQcKom
	d4or5VAT0hUjNtG9orGC/wQ=
X-Google-Smtp-Source: AK7set8SN3JGKNPB4GtbNHjJ+rOSGFuY4qfwA63W6uys5Z0Dn0pmZkVfBbgeX3yFzqPHGZZrzaMKTA==
X-Received: by 2002:a17:906:7704:b0:872:27cb:9436 with SMTP id q4-20020a170906770400b0087227cb9436mr25379952ejm.43.1676302709837;
        Mon, 13 Feb 2023 07:38:29 -0800 (PST)
Received: from localhost.localdomain (83.24.145.108.ipv4.supernova.orange.pl. [83.24.145.108])
        by smtp.gmail.com with ESMTPSA id gf17-20020a170906e21100b008b12614ee06sm115901ejb.161.2023.02.13.07.38.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Feb 2023 07:38:29 -0800 (PST)
From: Maya Matuszczyk <maccraft123mc@gmail.com>
To: heiko@sntech.de,
	Jagan Teki <jagan@amarulasolutions.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: linux-rockchip@lists.infradead.org,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/4] drm: panel: Add orientation support for st7701
Date: Mon, 13 Feb 2023 16:38:15 +0100
Message-Id: <20230213153816.213526-4-maccraft123mc@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230213153816.213526-1-maccraft123mc@gmail.com>
References: <20230213153816.213526-1-maccraft123mc@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230213_073833_181286_276E2C85 
X-CRM114-Status: GOOD (  14.92  )
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

Note that this patch is 'heavily inspired' by orientation support in driver
for Elida KD35T133 panel

Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 drivers/gpu/drm/panel/panel-sitronix-st7701.c | 21 ++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7701.c b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
index 660c3f435008..c9ae5c456f41 100644
--- a/drivers/gpu/drm/panel/panel-sitronix-st7701.c
+++ b/drivers/gpu/drm/panel/panel-sitronix-st7701.c
@@ -135,6 +135,7 @@ struct st7701 {
 	struct regulator_bulk_data supplies[2];
 	struct gpio_desc *reset;
 	unsigned int sleep_delay;
+	enum drm_panel_orientation orientation;
 };
 
 static inline struct st7701 *panel_to_st7701(struct drm_panel *panel)
@@ -514,15 +515,29 @@ static int st7701_get_modes(struct drm_panel *panel,
 	connector->display_info.width_mm = desc_mode->width_mm;
 	connector->display_info.height_mm = desc_mode->height_mm;
 
+	/*
+	 * TODO: Remove once all drm drivers call
+	 * drm_connector_set_orientation_from_panel()
+	 */
+	drm_connector_set_panel_orientation(connector, st7701->orientation);
+
 	return 1;
 }
 
+static enum drm_panel_orientation st7701_get_orientation(struct drm_panel *panel)
+{
+	struct st7701 *st7701 = panel_to_st7701(panel);
+
+	return st7701->orientation;
+}
+
 static const struct drm_panel_funcs st7701_funcs = {
 	.disable	= st7701_disable,
 	.unprepare	= st7701_unprepare,
 	.prepare	= st7701_prepare,
 	.enable		= st7701_enable,
 	.get_modes	= st7701_get_modes,
+	.get_orientation = st7701_get_orientation,
 };
 
 static const struct drm_display_mode ts8550b_mode = {
@@ -733,7 +748,7 @@ static const struct drm_display_mode kd50t048a_mode = {
 	.hsync_end      = 480 + 2 + 10,
 	.htotal         = 480 + 2 + 10 + 2,
 
-	.vdisplay       = 854, // was: 854 12 2 60
+	.vdisplay       = 854,
 	.vsync_start    = 854 + 2,
 	.vsync_end      = 854 + 2 + 2,
 	.vtotal         = 854 + 2 + 2 + 17,
@@ -854,6 +869,10 @@ static int st7701_dsi_probe(struct mipi_dsi_device *dsi)
 		return PTR_ERR(st7701->reset);
 	}
 
+	ret = of_drm_get_panel_orientation(dsi->dev.of_node, &st7701->orientation);
+	if (ret < 0)
+		return dev_err_probe(&dsi->dev, ret, "Failed to get orientation\n");
+
 	drm_panel_init(&st7701->panel, &dsi->dev, &st7701_funcs,
 		       DRM_MODE_CONNECTOR_DSI);
 
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
