Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45A1BC46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 13:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Xxy05Rbi5IU/PKyjJTAqqpo7jjuO05kC1srrT1UHEc=; b=Fbof7fgObqCNCn
	h5OlP5PDdRSmuCAwFC814ggLHLGnTiK4ojo7PxcIEY3oKAtMTTMKf6Wklpu6ijktSCSWHcIEf1jVC
	lQf47MsvZDSUhekDZygAcYaNw+VmO0jy6O2TmPUU+b9B5MSiWT3t7AahehUU0v3MhXHoxDWa0SMmk
	ozIb08y92hnIBnVOdM560j6hjxRAz0psPlZupUgi5JwniHDQhJ/I+qH1tBEtFr9Epmzpp5EliBAdI
	XbYbrizizS5NLtZcVIP1QSpwkOB7RSYR+RUVWWczuFapkgGxlnLHJ+wE6k8JDTMPLtqat2KzybrnG
	LLaqBVFQVdVgh6CDccLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPSK-00AOCS-Ho; Mon, 16 Jan 2023 13:23:20 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPI2-00AJrB-Ci; Mon, 16 Jan 2023 13:12:46 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 566F53748B;
	Mon, 16 Jan 2023 13:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1673874758; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6aqtATkZoYffG6UI5K5Okp+pm86436Ur3nX5CypeQrw=;
	b=QGP6WBLkvJWbaValZVZROvmH7gIgxq8GrOs0IANkznAeptXFVooCalRLFDOpHscnAsMzXv
	qZx5darxl0z5NxkFKTwc1BY0hV1znB2KtII8VmrLPdLRbfMmNJBr3wdZEB6MlQu4IpJaNO
	bkpgE2vAWDvHIojzOHodmrPhF2lhzvQ=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1673874758;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6aqtATkZoYffG6UI5K5Okp+pm86436Ur3nX5CypeQrw=;
	b=+SyjorZc2v4J3wxa03FiMpZk4Dr9NGdmDi2YCH8PVK9ZApaZ/v8x3qiMLkP61THHqFpJhR
	6+lwzpf7R1N++7Dg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 0AF63139C3;
	Mon, 16 Jan 2023 13:12:38 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id WATjAUZNxWNrNQAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Mon, 16 Jan 2023 13:12:38 +0000
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
Subject: [PATCH 03/22] drm/amdgpu: Remove unnecessary include statements for drm_crtc_helper.h
Date: Mon, 16 Jan 2023 14:12:16 +0100
Message-Id: <20230116131235.18917-4-tzimmermann@suse.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230116131235.18917-1-tzimmermann@suse.de>
References: <20230116131235.18917-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_051242_785602_DB4F6700 
X-CRM114-Status: GOOD (  10.77  )
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
 drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c | 2 ++
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c     | 1 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_display.c    | 1 +
 drivers/gpu/drm/amd/amdgpu/amdgpu_encoders.c   | 1 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c        | 1 -
 drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h       | 1 -
 drivers/gpu/drm/amd/amdgpu/atombios_crtc.c     | 1 -
 drivers/gpu/drm/amd/amdgpu/atombios_encoders.c | 1 -
 drivers/gpu/drm/amd/amdgpu/dce_v10_0.c         | 2 ++
 drivers/gpu/drm/amd/amdgpu/dce_v11_0.c         | 2 ++
 drivers/gpu/drm/amd/amdgpu/dce_v6_0.c          | 2 ++
 drivers/gpu/drm/amd/amdgpu/dce_v8_0.c          | 2 ++
 12 files changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
index 2ebbc6382a06..3c962d0214cc 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_connectors.c
@@ -25,7 +25,9 @@
  */
 
 #include <drm/display/drm_dp_helper.h>
+#include <drm/drm_crtc_helper.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/amdgpu_drm.h>
 #include "amdgpu.h"
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
index 0993ee91fe18..63122482208d 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_device.c
@@ -39,6 +39,7 @@
 #include <drm/drm_aperture.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fb_helper.h>
+#include <drm/drm_crtc_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/amdgpu_drm.h>
 #include <linux/vgaarb.h>
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
index b22471b3bd63..c5b98e9a69e9 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_display.c
@@ -42,6 +42,7 @@
 #include <drm/drm_fb_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_fourcc.h>
+#include <drm/drm_modeset_helper.h>
 #include <drm/drm_vblank.h>
 
 /**
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_encoders.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_encoders.c
index c96e458ed088..27a782a9dc72 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_encoders.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_encoders.c
@@ -24,7 +24,6 @@
  *          Alex Deucher
  */
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/amdgpu_drm.h>
 #include "amdgpu.h"
 #include "amdgpu_connectors.h"
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c
index a6aef488a822..d0a1cc88832c 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_irq.c
@@ -45,7 +45,6 @@
 #include <linux/irq.h>
 #include <linux/pci.h>
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_vblank.h>
 #include <drm/amdgpu_drm.h>
 #include <drm/drm_drv.h>
diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h b/drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h
index 8a39300b1a84..cf4b6e8d7d1e 100644
--- a/drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h
+++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_mode.h
@@ -35,7 +35,6 @@
 #include <drm/drm_edid.h>
 #include <drm/drm_encoder.h>
 #include <drm/drm_fixed.h>
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_probe_helper.h>
 #include <linux/i2c.h>
diff --git a/drivers/gpu/drm/amd/amdgpu/atombios_crtc.c b/drivers/gpu/drm/amd/amdgpu/atombios_crtc.c
index afad094f84c2..10098fdd33fc 100644
--- a/drivers/gpu/drm/amd/amdgpu/atombios_crtc.c
+++ b/drivers/gpu/drm/amd/amdgpu/atombios_crtc.c
@@ -24,7 +24,6 @@
  *          Alex Deucher
  */
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/amdgpu_drm.h>
 #include <drm/drm_fixed.h>
 #include "amdgpu.h"
diff --git a/drivers/gpu/drm/amd/amdgpu/atombios_encoders.c b/drivers/gpu/drm/amd/amdgpu/atombios_encoders.c
index 18ae9433e463..d95b2dc78063 100644
--- a/drivers/gpu/drm/amd/amdgpu/atombios_encoders.c
+++ b/drivers/gpu/drm/amd/amdgpu/atombios_encoders.c
@@ -28,7 +28,6 @@
 
 #include <acpi/video.h>
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/amdgpu_drm.h>
 #include "amdgpu.h"
 #include "amdgpu_connectors.h"
diff --git a/drivers/gpu/drm/amd/amdgpu/dce_v10_0.c b/drivers/gpu/drm/amd/amdgpu/dce_v10_0.c
index a2452fc304c5..01d1e2a631be 100644
--- a/drivers/gpu/drm/amd/amdgpu/dce_v10_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/dce_v10_0.c
@@ -22,6 +22,8 @@
  */
 
 #include <drm/drm_fourcc.h>
+#include <drm/drm_modeset_helper.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_vblank.h>
 
 #include "amdgpu.h"
diff --git a/drivers/gpu/drm/amd/amdgpu/dce_v11_0.c b/drivers/gpu/drm/amd/amdgpu/dce_v11_0.c
index 6ac680c4c6e2..973abe989ebe 100644
--- a/drivers/gpu/drm/amd/amdgpu/dce_v11_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/dce_v11_0.c
@@ -22,6 +22,8 @@
  */
 
 #include <drm/drm_fourcc.h>
+#include <drm/drm_modeset_helper.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_vblank.h>
 
 #include "amdgpu.h"
diff --git a/drivers/gpu/drm/amd/amdgpu/dce_v6_0.c b/drivers/gpu/drm/amd/amdgpu/dce_v6_0.c
index 354ae09cc9a2..86e95b1c9d0e 100644
--- a/drivers/gpu/drm/amd/amdgpu/dce_v6_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/dce_v6_0.c
@@ -24,6 +24,8 @@
 #include <linux/pci.h>
 
 #include <drm/drm_fourcc.h>
+#include <drm/drm_modeset_helper.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_vblank.h>
 
 #include "amdgpu.h"
diff --git a/drivers/gpu/drm/amd/amdgpu/dce_v8_0.c b/drivers/gpu/drm/amd/amdgpu/dce_v8_0.c
index 33977b0ba19d..f81f1d5d3e8a 100644
--- a/drivers/gpu/drm/amd/amdgpu/dce_v8_0.c
+++ b/drivers/gpu/drm/amd/amdgpu/dce_v8_0.c
@@ -22,6 +22,8 @@
  */
 
 #include <drm/drm_fourcc.h>
+#include <drm/drm_modeset_helper.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_vblank.h>
 
 #include "amdgpu.h"
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
