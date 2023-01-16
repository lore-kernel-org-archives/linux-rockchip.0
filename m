Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFDD1C677F1
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 13:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rWZW2V3b4HjHhMImLudYAndV1Iuyweas9riLjNUm/vA=; b=EOHLTM4XF3j83q
	NZ9zr/KGIDA6rPWQu6wUSwvIKheiLaqwfQgU4/24MmULyjv9EolSrMDrOMmY/aJemXv8c/POKUos8
	XQXRtSqUqVBXG+Wq0IB3SbUy6w1KuYEsRfsLqWdtIBorB32+HdmyzY7S/pRxwHgj/NGynbAbRNk2F
	0cHu7mGcs7r47QJM0N6UHz1f9I47wtd/2tP7I8Ek57RIkMX6Z30zVBtPjwwYTh/UguFdNgTvMRGTp
	frd3b7g/xNMwIbbnzPUgBKTpXKnF+rRo/9i5AcCc3ZSaOduCJcMPY2mIJTw3CszPf7bAU0BXuvFlp
	tPqm8RGnL5E1/Aj9WvLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPdW-00ATIN-7a; Mon, 16 Jan 2023 13:34:54 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPI8-00AJwm-0e; Mon, 16 Jan 2023 13:12:55 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id A9B2437513;
	Mon, 16 Jan 2023 13:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1673874761; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VXZEifJ8Oh1Xl6hlqWbbe7wHIwTG00QRLyPtDsIhTMI=;
	b=r0lvixtSmUPcm5BGFh3EhX/NQWrNwNby4v9aaczgCG8nZ4bBs3VFyniDNF79mZlYOfxVsN
	dlNG7RPjLcw0jtbOs3jIw48o67X1/N8zqzZS2xOS1oHkV6xDiLlCWFxNPjreQXHoCfd70H
	KKX/xkakqJNGaVVv2Xncjq1OfkqtMaM=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1673874761;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VXZEifJ8Oh1Xl6hlqWbbe7wHIwTG00QRLyPtDsIhTMI=;
	b=uzeNyMnq6i9UKlZnpjFEnUCZ9e/nP7oGmIWjWS0t41EXrSx/o71pDK1JWubiP+8caSPzig
	C1vVspCpYcXq/8Dw==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 54344138FA;
	Mon, 16 Jan 2023 13:12:41 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id mICmE0lNxWNrNQAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Mon, 16 Jan 2023 13:12:41 +0000
From: Thomas Zimmermann <tzimmermann@suse.de>
To: sam@ravnborg.org,
	daniel@ffwll.ch,
	airlied@gmail.com
Cc: dri-devel@lists.freedesktop.org,
	amd-gfx@lists.freedesktop.org,
	linux-aspeed@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mips@vger.kernel.org,
	nouveau@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-renesas-soc@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH 14/22] drm/radeon: Remove unnecessary include statements for drm_crtc_helper.h
Date: Mon, 16 Jan 2023 14:12:27 +0100
Message-Id: <20230116131235.18917-15-tzimmermann@suse.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230116131235.18917-1-tzimmermann@suse.de>
References: <20230116131235.18917-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_051248_384681_75D99568 
X-CRM114-Status: GOOD (  11.30  )
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

Several source files include drm_crtc_helper.h without needing it or
only to get its transitive include statements; leading to unnecessary
compile-time dependencies.

Directly include required headers and drop drm_crtc_helper.h where
possible.

Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 drivers/gpu/drm/radeon/atombios_crtc.c          | 2 +-
 drivers/gpu/drm/radeon/atombios_encoders.c      | 1 +
 drivers/gpu/drm/radeon/r300.c                   | 1 -
 drivers/gpu/drm/radeon/radeon_asic.c            | 1 -
 drivers/gpu/drm/radeon/radeon_connectors.c      | 1 +
 drivers/gpu/drm/radeon/radeon_display.c         | 1 +
 drivers/gpu/drm/radeon/radeon_drv.c             | 1 -
 drivers/gpu/drm/radeon/radeon_encoders.c        | 1 -
 drivers/gpu/drm/radeon/radeon_irq_kms.c         | 1 -
 drivers/gpu/drm/radeon/radeon_legacy_crtc.c     | 2 +-
 drivers/gpu/drm/radeon/radeon_legacy_encoders.c | 2 +-
 drivers/gpu/drm/radeon/radeon_legacy_tv.c       | 1 -
 drivers/gpu/drm/radeon/radeon_mode.h            | 2 +-
 13 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/radeon/atombios_crtc.c b/drivers/gpu/drm/radeon/atombios_crtc.c
index 6844e080e3be..ade13173921b 100644
--- a/drivers/gpu/drm/radeon/atombios_crtc.c
+++ b/drivers/gpu/drm/radeon/atombios_crtc.c
@@ -24,10 +24,10 @@
  *          Alex Deucher
  */
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_fixed.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_vblank.h>
 #include <drm/radeon_drm.h>
 
diff --git a/drivers/gpu/drm/radeon/atombios_encoders.c b/drivers/gpu/drm/radeon/atombios_encoders.c
index c841c273222e..1471c3a96602 100644
--- a/drivers/gpu/drm/radeon/atombios_encoders.c
+++ b/drivers/gpu/drm/radeon/atombios_encoders.c
@@ -30,6 +30,7 @@
 
 #include <drm/drm_crtc_helper.h>
 #include <drm/drm_file.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/radeon_drm.h>
 
 #include <acpi/video.h>
diff --git a/drivers/gpu/drm/radeon/r300.c b/drivers/gpu/drm/radeon/r300.c
index 621ff174dff3..7b0cfeaddcec 100644
--- a/drivers/gpu/drm/radeon/r300.c
+++ b/drivers/gpu/drm/radeon/r300.c
@@ -31,7 +31,6 @@
 #include <linux/slab.h>
 
 #include <drm/drm.h>
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_device.h>
 #include <drm/drm_file.h>
 #include <drm/radeon_drm.h>
diff --git a/drivers/gpu/drm/radeon/radeon_asic.c b/drivers/gpu/drm/radeon/radeon_asic.c
index bfacf8fe5cc1..802b5af19261 100644
--- a/drivers/gpu/drm/radeon/radeon_asic.c
+++ b/drivers/gpu/drm/radeon/radeon_asic.c
@@ -30,7 +30,6 @@
 #include <linux/pci.h>
 #include <linux/vgaarb.h>
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/radeon_drm.h>
 
 #include "atom.h"
diff --git a/drivers/gpu/drm/radeon/radeon_connectors.c b/drivers/gpu/drm/radeon/radeon_connectors.c
index f44d5a2b5baa..07193cd0c417 100644
--- a/drivers/gpu/drm/radeon/radeon_connectors.c
+++ b/drivers/gpu/drm/radeon/radeon_connectors.c
@@ -27,6 +27,7 @@
 #include <drm/display/drm_dp_mst_helper.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_crtc_helper.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/radeon_drm.h>
 #include "radeon.h"
diff --git a/drivers/gpu/drm/radeon/radeon_display.c b/drivers/gpu/drm/radeon/radeon_display.c
index 9bed1a6cb163..f34a7f63261d 100644
--- a/drivers/gpu/drm/radeon/radeon_display.c
+++ b/drivers/gpu/drm/radeon/radeon_display.c
@@ -38,6 +38,7 @@
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_gem_framebuffer_helper.h>
+#include <drm/drm_modeset_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/drm_vblank.h>
 #include <drm/radeon_drm.h>
diff --git a/drivers/gpu/drm/radeon/radeon_drv.c b/drivers/gpu/drm/radeon/radeon_drv.c
index 0e8148fca8b7..716ab85a376b 100644
--- a/drivers/gpu/drm/radeon/radeon_drv.c
+++ b/drivers/gpu/drm/radeon/radeon_drv.c
@@ -38,7 +38,6 @@
 #include <linux/pci.h>
 
 #include <drm/drm_aperture.h>
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_file.h>
 #include <drm/drm_gem.h>
diff --git a/drivers/gpu/drm/radeon/radeon_encoders.c b/drivers/gpu/drm/radeon/radeon_encoders.c
index fbc0a2182318..b3518a8f95a0 100644
--- a/drivers/gpu/drm/radeon/radeon_encoders.c
+++ b/drivers/gpu/drm/radeon/radeon_encoders.c
@@ -26,7 +26,6 @@
 
 #include <linux/pci.h>
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_device.h>
 #include <drm/radeon_drm.h>
 
diff --git a/drivers/gpu/drm/radeon/radeon_irq_kms.c b/drivers/gpu/drm/radeon/radeon_irq_kms.c
index da2173435edd..3377fbc71f65 100644
--- a/drivers/gpu/drm/radeon/radeon_irq_kms.c
+++ b/drivers/gpu/drm/radeon/radeon_irq_kms.c
@@ -29,7 +29,6 @@
 #include <linux/pci.h>
 #include <linux/pm_runtime.h>
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_device.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_probe_helper.h>
diff --git a/drivers/gpu/drm/radeon/radeon_legacy_crtc.c b/drivers/gpu/drm/radeon/radeon_legacy_crtc.c
index eef35872a72e..825b351ff53c 100644
--- a/drivers/gpu/drm/radeon/radeon_legacy_crtc.c
+++ b/drivers/gpu/drm/radeon/radeon_legacy_crtc.c
@@ -24,10 +24,10 @@
  *          Alex Deucher
  */
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_fixed.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_vblank.h>
 #include <drm/radeon_drm.h>
 
diff --git a/drivers/gpu/drm/radeon/radeon_legacy_encoders.c b/drivers/gpu/drm/radeon/radeon_legacy_encoders.c
index 0cd32c65456c..601d35d34eab 100644
--- a/drivers/gpu/drm/radeon/radeon_legacy_encoders.c
+++ b/drivers/gpu/drm/radeon/radeon_legacy_encoders.c
@@ -27,9 +27,9 @@
 #include <linux/backlight.h>
 #include <linux/pci.h>
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_device.h>
 #include <drm/drm_file.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_util.h>
 #include <drm/radeon_drm.h>
 
diff --git a/drivers/gpu/drm/radeon/radeon_legacy_tv.c b/drivers/gpu/drm/radeon/radeon_legacy_tv.c
index d9df7f311e76..12e180b119ac 100644
--- a/drivers/gpu/drm/radeon/radeon_legacy_tv.c
+++ b/drivers/gpu/drm/radeon/radeon_legacy_tv.c
@@ -1,6 +1,5 @@
 // SPDX-License-Identifier: MIT
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_device.h>
 
 #include "radeon.h"
diff --git a/drivers/gpu/drm/radeon/radeon_mode.h b/drivers/gpu/drm/radeon/radeon_mode.h
index 9f5be416454f..3a59d016e8cd 100644
--- a/drivers/gpu/drm/radeon/radeon_mode.h
+++ b/drivers/gpu/drm/radeon/radeon_mode.h
@@ -35,7 +35,7 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_encoder.h>
 #include <drm/drm_fixed.h>
-#include <drm/drm_crtc_helper.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <linux/i2c.h>
 #include <linux/i2c-algo-bit.h>
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
