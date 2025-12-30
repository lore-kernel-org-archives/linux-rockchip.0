Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 49633EE498E
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Dec 2025 17:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2w4E4SKABf+5YlAu+qkPFLRnNsk8lJLDOQmYuq4n+LE=; b=sPIPjTTkw3Ut2d
	2zaW2sEx7yT8mBC0BOnl4Xgn5Z7rDGVyrMEY1fAeQTsZI/ofwoIUnMjbOn5wtPOugC8yB/pDvEj9N
	absrSlLsyAtB0zQyE7nIUHAWO/sCg4pop+UQlSxayV5sYL0cTheQ4RFv5jRUD4HcIOx/mk+Tlzhfo
	dm1HKW6eBeS3YDqvw4f4ZFBbL9u3sM95ONLnZPKf1Sq3Z42gchUkz7083eUpaK8uA+OowhN/Z9/ge
	lDwRytGEJcbjJj518MwDHmMLr7sRvccWL82on5YUBtbX6+JcN5ySZfY/6eGAU2fiGe85Bz5uNganb
	LUxjqqdwiGxEXQ8EEQrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vadPQ-0000000572c-2gOC;
	Tue, 30 Dec 2025 17:21:24 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vadOy-000000056pj-23eY;
	Tue, 30 Dec 2025 17:21:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E45CA1515;
	Tue, 30 Dec 2025 09:20:47 -0800 (PST)
Received: from 010265703453.localdomain (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B9BC53F63F;
	Tue, 30 Dec 2025 09:20:52 -0800 (PST)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de,
	neil.armstrong@linaro.org,
	dianders@chromium.org,
	thierry.reding@gmail.com,
	sam@ravnborg.org
Cc: jesszhan0024@gmail.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/4] drm/panel-edp: Move FriendlyELEC HD702E
Date: Tue, 30 Dec 2025 17:20:32 +0000
Message-Id: <027763b36fbad2005d09eeb289b7716c57f65e76.1767111809.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1767111804.git.robin.murphy@arm.com>
References: <cover.1767111804.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251230_092058_881211_05056D80 
X-CRM114-Status: GOOD (  10.01  )
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

FriendlyELEC's HD702E module is an eDP panel (in as much as it's some
LVDS LCD behind a Chrontel CH7511B eDP bridge), so move its data over
to the eDP driver, also resolving the warning about the missing bpc
value in the process.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 drivers/gpu/drm/panel/panel-edp.c    | 26 ++++++++++++++++++++++++++
 drivers/gpu/drm/panel/panel-simple.c | 25 -------------------------
 2 files changed, 26 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/panel/panel-edp.c b/drivers/gpu/drm/panel/panel-edp.c
index 415b894890ad..dd53ccc209ce 100644
--- a/drivers/gpu/drm/panel/panel-edp.c
+++ b/drivers/gpu/drm/panel/panel-edp.c
@@ -1256,6 +1256,29 @@ static const struct panel_desc boe_nv140fhmn49 = {
 	},
 };
 
+static const struct drm_display_mode friendlyarm_hd702e_mode = {
+	.clock		= 67185,
+	.hdisplay	= 800,
+	.hsync_start	= 800 + 20,
+	.hsync_end	= 800 + 20 + 24,
+	.htotal		= 800 + 20 + 24 + 20,
+	.vdisplay	= 1280,
+	.vsync_start	= 1280 + 4,
+	.vsync_end	= 1280 + 4 + 8,
+	.vtotal		= 1280 + 4 + 8 + 4,
+	.flags		= DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
+};
+
+static const struct panel_desc friendlyarm_hd702e = {
+	.modes = &friendlyarm_hd702e_mode,
+	.num_modes = 1,
+	.bpc = 8,
+	.size = {
+		.width	= 94,
+		.height	= 151,
+	},
+};
+
 static const struct drm_display_mode innolux_n116bca_ea1_mode = {
 	.clock = 76420,
 	.hdisplay = 1366,
@@ -1663,6 +1686,9 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "boe,nv140fhmn49",
 		.data = &boe_nv140fhmn49,
+	}, {
+		.compatible = "friendlyarm,hd702e",
+		.data = &friendlyarm_hd702e,
 	}, {
 		.compatible = "innolux,n116bca-ea1",
 		.data = &innolux_n116bca_ea1,
diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
index b26b682826bc..3ea52667b858 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -2359,28 +2359,6 @@ static const struct panel_desc frida_frd350h54004 = {
 	.connector_type = DRM_MODE_CONNECTOR_DPI,
 };
 
-static const struct drm_display_mode friendlyarm_hd702e_mode = {
-	.clock		= 67185,
-	.hdisplay	= 800,
-	.hsync_start	= 800 + 20,
-	.hsync_end	= 800 + 20 + 24,
-	.htotal		= 800 + 20 + 24 + 20,
-	.vdisplay	= 1280,
-	.vsync_start	= 1280 + 4,
-	.vsync_end	= 1280 + 4 + 8,
-	.vtotal		= 1280 + 4 + 8 + 4,
-	.flags		= DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
-};
-
-static const struct panel_desc friendlyarm_hd702e = {
-	.modes = &friendlyarm_hd702e_mode,
-	.num_modes = 1,
-	.size = {
-		.width	= 94,
-		.height	= 151,
-	},
-};
-
 static const struct drm_display_mode giantplus_gpg482739qs5_mode = {
 	.clock = 9000,
 	.hdisplay = 480,
@@ -5235,9 +5213,6 @@ static const struct of_device_id platform_of_match[] = {
 	}, {
 		.compatible = "frida,frd350h54004",
 		.data = &frida_frd350h54004,
-	}, {
-		.compatible = "friendlyarm,hd702e",
-		.data = &friendlyarm_hd702e,
 	}, {
 		.compatible = "giantplus,gpg482739qs5",
 		.data = &giantplus_gpg482739qs5
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
