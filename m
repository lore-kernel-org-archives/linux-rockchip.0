Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4155C677F1
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 13:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkKPYYRzIrADlCfxE+2Yme8s3vbssGslUL3bChFka7A=; b=wpbq0EbJWehOu4
	vNJgF8OQd3f/RvoAb+0xyuv1zBnGdprJw4slgpGbRkSXw6HZ1zuBDCVqa5A9qwcZ9Mz2ZARLV34tu
	T0lIPGq5XVEcPFNtyQyBMvI/I7sXc0s054kwty7t4GoQRtxV2NjoRak1hrVlrcqwOu3W5bn4/TJ4T
	yUQRNsqZE3JUEiK+R+U8DEpmP8U9h47kLeFaT37uuUYM8/RdIaO9TRn1twg+nz/pLgxqP9mzu2pdC
	OXwmvimmClVt1qX5J93VJEvwFXeoCyTOOs58cmHA7HMTyvO20ZD90/jHqB3rcx7yX0Du+LWkjHWA5
	JnVW99xjw/qbBQR4BpiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPdO-00ATCk-0e; Mon, 16 Jan 2023 13:34:46 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPI7-00AJve-3Q; Mon, 16 Jan 2023 13:12:53 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id 2C5F93750E;
	Mon, 16 Jan 2023 13:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1673874760; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AWcytlktA6ThhbeY7ZknmMX4QjcMxT5SHmWfC9wky9k=;
	b=VQak71C3s+o08T6KT1Zdy6tRvB8JLP1sUrLjMPnts6uURpLPVUkARu4gMLB7oeEl2fubz+
	8Jg1Gzeaw6eN0ESKC9Im6xvr67e6CL9+CKUGdmBucQnfra8HQgIbn1w3pw4cybpDypU+GA
	nc0WrhznDjJx+llb6f47WxKdqEaM4Js=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1673874760;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AWcytlktA6ThhbeY7ZknmMX4QjcMxT5SHmWfC9wky9k=;
	b=5pSXvONOBEVP9Rm9fmxyaRMuoAMEK11vam0EnUxOLm/dWVlZe/B2O46goiDjG3jwkhHUZb
	up6uLRhBHz1MQhAA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id D6C07139C3;
	Mon, 16 Jan 2023 13:12:39 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id SFF0M0dNxWNrNQAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Mon, 16 Jan 2023 13:12:39 +0000
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
Subject: [PATCH 09/22] drm/i2c/ch7006: Remove unnecessary include statements for drm_crtc_helper.h
Date: Mon, 16 Jan 2023 14:12:22 +0100
Message-Id: <20230116131235.18917-10-tzimmermann@suse.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230116131235.18917-1-tzimmermann@suse.de>
References: <20230116131235.18917-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_051247_331463_D500F255 
X-CRM114-Status: GOOD (  10.93  )
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
 drivers/gpu/drm/i2c/ch7006_drv.c  | 2 ++
 drivers/gpu/drm/i2c/ch7006_priv.h | 1 -
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i2c/ch7006_drv.c b/drivers/gpu/drm/i2c/ch7006_drv.c
index 923389f22020..521bdf656cca 100644
--- a/drivers/gpu/drm/i2c/ch7006_drv.c
+++ b/drivers/gpu/drm/i2c/ch7006_drv.c
@@ -26,6 +26,8 @@
 
 #include <linux/module.h>
 
+#include <drm/drm_crtc_helper.h>
+
 #include "ch7006_priv.h"
 
 /* DRM encoder functions */
diff --git a/drivers/gpu/drm/i2c/ch7006_priv.h b/drivers/gpu/drm/i2c/ch7006_priv.h
index 986b04599906..052bdc48a339 100644
--- a/drivers/gpu/drm/i2c/ch7006_priv.h
+++ b/drivers/gpu/drm/i2c/ch7006_priv.h
@@ -27,7 +27,6 @@
 #ifndef __DRM_I2C_CH7006_PRIV_H__
 #define __DRM_I2C_CH7006_PRIV_H__
 
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_encoder_slave.h>
 #include <drm/drm_probe_helper.h>
 #include <drm/i2c/ch7006.h>
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
