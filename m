Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5B5CC63797
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 13:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpaPNHAoAy7rP0GGk/j1jnpPn5EYbMb0GldidALS3GE=; b=zJuEK/iTrZOCP0
	11pYPiMmBTY/CjO1639s5s1G2GQp4Rxzcq6J3/Z9/1K8N3RppDju4X8BLqH7iAH50i2XpnfEZp63V
	bA5GxqKAgPO4PJclVmVpjAinOyBktAQboN4i2MU/Ut6t04kBl45O7+I50qQI1qen6+wO4WoTadtoi
	u4zO9VAf8weRev9kwKQ3PvzuM5ErOLD9juw/huXXg/qa+KOX8Yu3CkyQ6v3eKkwXHeq8GZTabLsIK
	Ty8LVN9YZWVN1gNC3j1nM0VXF51IJLXvlN8fVGxjNq2hbvyakbl7k2Ey8k6jmD7a8I78TwMscTjV6
	+Lym5NeVRkbjSKJXC1GA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPYw-00ARCd-3t; Mon, 16 Jan 2023 13:30:10 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPI4-00AJrY-06; Mon, 16 Jan 2023 13:12:48 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id 3796A67784;
	Mon, 16 Jan 2023 13:12:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1673874759; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qnxmLVBM3b5pX8woukmNI4lXDkoScqQDZfPuhN17SoA=;
	b=Ki78kxq5ook/MB+oBsjo/QwrX+4u05UI6B07emgGVaZws7APKtrEOj8FfLfJxuBb8pvUoo
	K3xf0p76E+khWGvFH4Zx7QYk6PLNqBkviFywHoTc0WEvGbU+sM4DXpGsLM1d8Ix72TYntr
	XWHaGgJXlANWMSxjWNNzSZICGWe9y0Q=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1673874759;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qnxmLVBM3b5pX8woukmNI4lXDkoScqQDZfPuhN17SoA=;
	b=mS2UGuvsvQrsC0iwGxsxEyLqbV9mbvfXKLBIk4Nb9SlYrsNtFW2ThorRECRcKstVQs6qbp
	I0tkPGMIywTKE1AA==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id E94BB138FA;
	Mon, 16 Jan 2023 13:12:38 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id 0An9N0ZNxWNrNQAAMHmgww
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
Subject: [PATCH 06/22] drm/ast: Remove unnecessary include statements for drm_crtc_helper.h
Date: Mon, 16 Jan 2023 14:12:19 +0100
Message-Id: <20230116131235.18917-7-tzimmermann@suse.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230116131235.18917-1-tzimmermann@suse.de>
References: <20230116131235.18917-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_051244_319363_252C08E6 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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
 drivers/gpu/drm/ast/ast_drv.c  | 1 -
 drivers/gpu/drm/ast/ast_main.c | 1 -
 drivers/gpu/drm/ast/ast_mode.c | 1 -
 3 files changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/ast/ast_drv.c b/drivers/gpu/drm/ast/ast_drv.c
index 420fc75c240e..d78852c7cf5b 100644
--- a/drivers/gpu/drm/ast/ast_drv.c
+++ b/drivers/gpu/drm/ast/ast_drv.c
@@ -31,7 +31,6 @@
 
 #include <drm/drm_aperture.h>
 #include <drm/drm_atomic_helper.h>
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_fbdev_generic.h>
 #include <drm/drm_gem_shmem_helper.h>
diff --git a/drivers/gpu/drm/ast/ast_main.c b/drivers/gpu/drm/ast/ast_main.c
index bffa310a0431..f83ce77127cb 100644
--- a/drivers/gpu/drm/ast/ast_main.c
+++ b/drivers/gpu/drm/ast/ast_main.c
@@ -29,7 +29,6 @@
 #include <linux/pci.h>
 
 #include <drm/drm_atomic_helper.h>
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_drv.h>
 #include <drm/drm_gem.h>
 #include <drm/drm_managed.h>
diff --git a/drivers/gpu/drm/ast/ast_mode.c b/drivers/gpu/drm/ast/ast_mode.c
index e82e9a8d85e5..dcb8ced4ce75 100644
--- a/drivers/gpu/drm/ast/ast_mode.c
+++ b/drivers/gpu/drm/ast/ast_mode.c
@@ -35,7 +35,6 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_atomic_state_helper.h>
 #include <drm/drm_crtc.h>
-#include <drm/drm_crtc_helper.h>
 #include <drm/drm_damage_helper.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_format_helper.h>
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
