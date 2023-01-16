Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36DD3C46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 13:35:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMGQZiIJVL7PnLB+X1n6XajIZRUz1RVbYHV8EecL6GQ=; b=27yS0szeQELdQM
	pQdV647TarY/KQ8GCfHnt/cFjF1wmRInr1zGiWwDI2ASkrB+ldQG2rFc8hBnJA0mJTmTMrxjOR/pj
	XBJ0rcht+pTJ8HrX0GCkLQyaxOhBDrunltX2dZ0m4JRJADnFEYHj7Z4qLTwGSfBihgFe3CUnV3ZqO
	wLzKJMjm0PXMusRtSNkIdjh7S0NGDvOox8EEbcPu2S2fJZYGsuh28Xd2HlwsQs9BbKLECZIGK80Xu
	H6034KJYj0GBoG4zjyt4mDl0Sj76wBVd3FoCzgRcrqvmF9sKWLK3A7Rza7Rk7/DSceKUbrdxxMwsB
	yq6op3/TXY8ITPBcLkkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPdY-00ATJp-CR; Mon, 16 Jan 2023 13:34:56 +0000
Received: from smtp-out1.suse.de ([2001:67c:2178:6::1c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPI8-00AJxN-K9; Mon, 16 Jan 2023 13:12:56 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 108BF37517;
	Mon, 16 Jan 2023 13:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1673874763; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CHJduNjTlBdtfxl8JrayP6NLHP0T+8ZzSLanopuII3s=;
	b=cTP0/Amq7eept+EgzV+NHtfmjOf92B9XzudnFU/YSuugqMCvmwMkXsRbr6qp7KLnqxXQNB
	MvopcVNU5LyUbuBdiVC6KCzhmkXbL4yLAvQKFNQLzlEIdNZx+NrcMbsyFMdPEMuUdIRIxb
	+QCZwiZ89nMyuIe+MQrmacQu0N7DFOs=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1673874763;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CHJduNjTlBdtfxl8JrayP6NLHP0T+8ZzSLanopuII3s=;
	b=HKTNeajy+YLfmf8rC2RHhY13CZrsNsl8trSX5oZ5oiq8I2qrnlASkppmuZJecr4oNc8QCU
	IE7z7+mqVPua4BCg==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id C0A05139C3;
	Mon, 16 Jan 2023 13:12:42 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id yOcwLkpNxWNrNQAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Mon, 16 Jan 2023 13:12:42 +0000
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
Subject: [PATCH 19/22] drm/tidss: Remove unnecessary include statements for drm_crtc_helper.h
Date: Mon, 16 Jan 2023 14:12:32 +0100
Message-Id: <20230116131235.18917-20-tzimmermann@suse.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230116131235.18917-1-tzimmermann@suse.de>
References: <20230116131235.18917-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_051248_885176_C903612A 
X-CRM114-Status: GOOD (  10.68  )
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
 drivers/gpu/drm/tidss/tidss_crtc.c    | 1 -
 drivers/gpu/drm/tidss/tidss_drv.c     | 1 -
 drivers/gpu/drm/tidss/tidss_encoder.c | 2 +-
 drivers/gpu/drm/tidss/tidss_kms.c     | 1 -
 drivers/gpu/drm/tidss/tidss_plane.c   | 1 -
 5 files changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/tidss/tidss_crtc.c b/drivers/gpu/drm/tidss/tidss_crtc.c
index cd3c43a6c806..5e5e466f35d1 100644
--- a/drivers/gpu/drm/tidss/tidss_crtc.c
+++ b/drivers/gpu/drm/tidss/tidss_crtc.c
@@ -7,7 +7,6 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_gem_dma_helper.h>
 #include <drm/drm_vblank.h>
 
diff --git a/drivers/gpu/drm/tidss/tidss_drv.c b/drivers/gpu/drm/tidss/tidss_drv.c
index 07d94b1e8089..2dac8727d2f4 100644
--- a/drivers/gpu/drm/tidss/tidss_drv.c
+++ b/drivers/gpu/drm/tidss/tidss_drv.c
@@ -12,7 +12,6 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_fbdev_generic.h>
 #include <drm/drm_gem_dma_helper.h>
diff --git a/drivers/gpu/drm/tidss/tidss_encoder.c b/drivers/gpu/drm/tidss/tidss_encoder.c
index e278a9c89476..0d4865e9c03d 100644
--- a/drivers/gpu/drm/tidss/tidss_encoder.c
+++ b/drivers/gpu/drm/tidss/tidss_encoder.c
@@ -7,7 +7,7 @@
 #include <linux/export.h>
 
 #include <drm/drm_crtc.h>
-#include <drm/drm_crtc_helper.h>
+#include <drm/drm_modeset_helper_vtables.h>
 #include <drm/drm_panel.h>
 #include <drm/drm_of.h>
 
diff --git a/drivers/gpu/drm/tidss/tidss_kms.c b/drivers/gpu/drm/tidss/tidss_kms.c
index 345bcc3011e4..ad2fa3c3d4a7 100644
--- a/drivers/gpu/drm/tidss/tidss_kms.c
+++ b/drivers/gpu/drm/tidss/tidss_kms.c
@@ -9,7 +9,6 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_bridge.h>
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
diff --git a/drivers/gpu/drm/tidss/tidss_plane.c b/drivers/gpu/drm/tidss/tidss_plane.c
index 42d50ec5526d..fe2c41f0cd4f 100644
--- a/drivers/gpu/drm/tidss/tidss_plane.c
+++ b/drivers/gpu/drm/tidss/tidss_plane.c
@@ -8,7 +8,6 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_blend.h>
 #include <drm/drm_crtc.h>
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_fourcc.h>
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_gem_atomic_helper.h>
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
