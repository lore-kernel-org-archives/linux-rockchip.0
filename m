Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 43DFEC27C40
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 22:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8vzJXPTvvTKm610mGFDrwlxQxZjs3Z08O1jIZgmfwAs=; b=t4Lz5/Y+cC9T7X
	inAIEUrAFci3CWPhYzwhS63NTpucT/wDphwpWlEzgKOiCOexQk4/45cXY5+s7G6MxEA6CX5WuQAN/
	5fpnKLfJ7CTTXGEDJSXXdH4ZfgUHaCJpgjFqcc6cIpr/BMx7Cdte9BNSe4x+8R2o77oMg6B7wBXYe
	9aaZhaX01LiMLU9jmaD5b+oZBFGK8Aiw967mOY2Oksk82C0vZMJkwXqKfKFjGc1YxLx/5KJfezBE2
	8Pt7gnbAMhHPM/rEWoVa5ibzAaMxAyH1zAXsXa+1JCvEfv5zyF/Er1v8r2Y6JkfbTMgIBxjDvZCMb
	ArSuhCe0wSJAL6Gz+2uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5vYd-003Bxu-1u;
	Wed, 22 Nov 2023 22:18:55 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5vYY-003Bwo-2l;
	Wed, 22 Nov 2023 22:18:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 87566CE2600;
	Wed, 22 Nov 2023 22:18:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6237DC433B6;
	Wed, 22 Nov 2023 22:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700691524;
	bh=LxBGHdJ2v9bdua30Gg+KKEVoYaWNReAP/fHM99MgfLg=;
	h=From:To:Cc:Subject:Date:From;
	b=ZoJh6dBQME/k9NdDqkjJ5mDfVWRFJQhjrrCElROlyU1JHn/mAUQLFKfiCq2kfvfc/
	 9q1MHs7St+bQVxjHJMruozUyeIb7BIN2GtTtLetF6d55QUScqXGo/tXY+/Ob0JsyIi
	 4Q1Vp+3mUeIt2OZdnIOYyiGbH1f+VhHF7LqQxyNhkOlU10X8W3lFK6MoPmkjmvpDWR
	 A/qmfrWGLZ4MMbMTZrlJj/Ucx/szFxhKP1YiJPjIHlcPuvQUYHxLTo0y6QeAOo6K8T
	 cXcff1M3qSfsQrP9/Tw4785yc2oru+lW1H0Ho9jauIvK/X/IrDL1F++WlwD79Sr9q/
	 Ti9tuiIdPxSDg==
From: Arnd Bergmann <arnd@kernel.org>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Johan Jonker <jbx6244@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
	Kees Cook <keescook@chromium.org>,
	Douglas Anderson <dianders@chromium.org>,
	Azeem Shaikh <azeemshaikh38@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: rk3066_hdmi: include drm/drm_atomic.h
Date: Wed, 22 Nov 2023 23:18:29 +0100
Message-Id: <20231122221838.3164349-1-arnd@kernel.org>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_141851_460582_267CDC23 
X-CRM114-Status: GOOD (  10.24  )
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

From: Arnd Bergmann <arnd@arndb.de>

Without this header, the newly added code fails to build:

drivers/gpu/drm/rockchip/rk3066_hdmi.c: In function 'rk3066_hdmi_encoder_enable':
drivers/gpu/drm/rockchip/rk3066_hdmi.c:397:22: error: implicit declaration of function 'drm_atomic_get_new_connector_state'; did you mean 'drm_atomic_helper_connector_reset'? [-Werror=implicit-function-declaration]
  397 |         conn_state = drm_atomic_get_new_connector_state(state, &hdmi->connector);
      |                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      |                      drm_atomic_helper_connector_reset
drivers/gpu/drm/rockchip/rk3066_hdmi.c:397:20: error: assignment to 'struct drm_connector_state *' from 'int' makes pointer from integer without a cast [-Werror=int-conversion]
  397 |         conn_state = drm_atomic_get_new_connector_state(state, &hdmi->connector);
      |                    ^
drivers/gpu/drm/rockchip/rk3066_hdmi.c:401:22: error: implicit declaration of function 'drm_atomic_get_new_crtc_state'; did you mean 'drm_atomic_helper_swap_state'? [-Werror=implicit-function-declaration]
  401 |         crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
      |                      ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      |                      drm_atomic_helper_swap_state
drivers/gpu/drm/rockchip/rk3066_hdmi.c:401:20: error: assignment to 'struct drm_crtc_state *' from 'int' makes pointer from integer without a cast [-Werror=int-conversion]
  401 |         crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
      |                    ^

Fixes: ae3436a5e7c2 ("drm/rockchip: rk3066_hdmi: Switch encoder hooks to atomic")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index 0e7aae341960..7d561c5a650f 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -4,6 +4,7 @@
  *    Zheng Yang <zhengyang@rock-chips.com>
  */
 
+#include <drm/drm_atomic.h>
 #include <drm/drm_edid.h>
 #include <drm/drm_of.h>
 #include <drm/drm_probe_helper.h>
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
