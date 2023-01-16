Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75861C46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 13:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ewrd9yp5nNX7yQc5h9BdNkMvitAiWpRFx6mmyeFdFLU=; b=vg0zSSZ8vbbcTr
	tA9o+IkUMX+lYIkN44K6C+rJGTXzBhqROkRNXTkqeojoCi11aShVvf6N1dGY4qR1EaqoFyN9qOV9N
	FCEfF1nAKMtV7I0qOyPYhrqrirsLLTKiGrMK8+7tQSIEu+b4MWhekJfMM8yoth8/yIAztSHr4V5e4
	aYHBfjbTdDtzIN4BSgjscu0OqSSkYYHvz00cyFyBU+rvIiEfEkLnFjWvBPOW+F3HWIiPn9/PU0A7M
	ehzl+DXyIuTigVhgSUVgo24JP04ErDKq7s9EgnJta4e7SnOkVdm7Jxz2qMRdo+UH67G+YJSbD6qgL
	jMiDCIcKIdC3vwBxQIbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPda-00ATLn-3u; Mon, 16 Jan 2023 13:34:58 +0000
Received: from smtp-out1.suse.de ([2001:67c:2178:6::1c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHPI9-00AJyC-Jc; Mon, 16 Jan 2023 13:12:58 +0000
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id D486F3751A;
	Mon, 16 Jan 2023 13:12:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
	t=1673874763; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OO536y1oIIavqxJbggquU+Ve/xMHXk1PsPJeSriBnEc=;
	b=Udkbksja4U2SmueaT/CBQsB1+CnfK2yVlqG1l9ZE5v78J3trCBUlXz2roVXvwoK8JV+j/5
	RJBpTXJMbF1eF1IVQTt5IsaogDnmOtmBRNYkOH3qPIyZY2v7XlyXWADk1UpBB17xSI4khU
	CZJDLkGyF0XQJr3XVOuEWpBhmMoHRt4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
	s=susede2_ed25519; t=1673874763;
	h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OO536y1oIIavqxJbggquU+Ve/xMHXk1PsPJeSriBnEc=;
	b=9MzN2mh+4Y19EA2xQcARcGH/wwJ5CLbTFhxyzTEtdsZAzOAJxfT4YnHxkMNDoB0Q8nvGy/
	kHh7OuLMzJlFZ8AQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 94FAB138FA;
	Mon, 16 Jan 2023 13:12:43 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap2.suse-dmz.suse.de with ESMTPSA
	id WB17I0tNxWNrNQAAMHmgww
	(envelope-from <tzimmermann@suse.de>); Mon, 16 Jan 2023 13:12:43 +0000
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
Subject: [PATCH 22/22] drm/crtc-helper: Remove most include statements from drm_crtc_helper.h
Date: Mon, 16 Jan 2023 14:12:35 +0100
Message-Id: <20230116131235.18917-23-tzimmermann@suse.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230116131235.18917-1-tzimmermann@suse.de>
References: <20230116131235.18917-1-tzimmermann@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_051249_854020_849831C8 
X-CRM114-Status: UNSURE (   8.47  )
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

Remove most include statements from crm_crtc_helper.h and forward-
declare the contained types in drm_crtc_helper.h. Only keep <linux/types.h>
for the definition of 'bool'.

Suggested-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
---
 include/drm/drm_crtc_helper.h | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/include/drm/drm_crtc_helper.h b/include/drm/drm_crtc_helper.h
index 072bc4f90349..8c886fc46ef2 100644
--- a/include/drm/drm_crtc_helper.h
+++ b/include/drm/drm_crtc_helper.h
@@ -33,13 +33,17 @@
 #ifndef __DRM_CRTC_HELPER_H__
 #define __DRM_CRTC_HELPER_H__
 
-#include <linux/spinlock.h>
 #include <linux/types.h>
-#include <linux/idr.h>
 
-#include <drm/drm_crtc.h>
-#include <drm/drm_modeset_helper_vtables.h>
-#include <drm/drm_modeset_helper.h>
+struct drm_atomic_state;
+struct drm_connector;
+struct drm_crtc;
+struct drm_device;
+struct drm_display_mode;
+struct drm_encoder;
+struct drm_framebuffer;
+struct drm_mode_set;
+struct drm_modeset_acquire_ctx;
 
 void drm_helper_disable_unused_functions(struct drm_device *dev);
 int drm_crtc_helper_set_config(struct drm_mode_set *set,
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
