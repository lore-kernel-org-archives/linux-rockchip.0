Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15768C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 15:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfxZe9mpFX17FTdd1G0RGvwcV7TRmkpFSxVGDwhq5V8=; b=0UOMDho+irxrW0
	rnpvcU7SFfVUhgmAMYL2GshrO5NPgDifZ/i+TOSLU5PO5UlKGHLEeLoYf0Tv/zMKCUpnTGabPcnhG
	T5knV9x88cRNzqYB5uUsJfx99nykCmFXkxNxiDJi1RHadQJikLZXkPpbQRvkL96QvRvZWAZTjX61R
	lEf3JgXcxBq1jAi2yKeTUrH5qIzKBblx3EtWcq5b9qFbyQpVhK18oFCWWDz5uhdp67Hf1RUBLxdad
	YugCbexWLyh4PS9a/rL+mVjrgnbkQOp08upSdq3+8RTzhWITDSqgBCjy9WMBpeLcc4Uk7iYVABX8L
	kyBM23fPPH6tfGWu+FEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGf3-00DIAT-3B;
	Thu, 07 Dec 2023 15:51:38 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGe6-00DH6V-0x;
	Thu, 07 Dec 2023 15:50:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=gaT0aM4/uPSvpfapRGJ+DSSoLq0IKLkNQZbKiiX+lJY=; b=rWaGmUr6efS4AXq+qZ0e+1LDbg
	I9UFnvhjOFmPDJj9QAOTCjvleyCyshJJrbrAVrxJdpnbe2v6dBus5/rhI7jjh6QQYr3zjvCoqIuQF
	YeCpmIgtLGuL4w1+zSG3TSt9rnUxJLRlCHi0ZR/fqa6Hno3gY0f/UmoBfKqR3PXRvkEOwjBETu6LG
	TYEvoXX8TDajYVf7XuhGO2SEjDSaH97WMGZOqkjTANa5v/hbRpS9uI+z0AcRrEcV2lzoavWoAcs8h
	AAsGknGnKmUaYea6Idb4wKvLwRVpi25j+LrbxZFGPpAjN2V/9fvwibvhHuPgfnqoynWVZ+W5ZRffc
	NCud8pkg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGe1-0062Sg-2p;
	Thu, 07 Dec 2023 15:50:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3A70A61E9B;
	Thu,  7 Dec 2023 15:50:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7038C433C9;
	Thu,  7 Dec 2023 15:50:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964232;
	bh=9I0REbcpKSt1MVBIkF5lrOnJOl7fX+Traw8aZNWXX1Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=vB+GyYU5mse7AtiZ/yY3mJSBiYHSiXWFofbmUg7iIRLN3Xcd8f+RQPoNqF2DXUsz8
	 J0N36pUgRTSYzFT9P6iaygAVEFMPAjLpbuEM6LA4kmsQ+3cmbzyVyR4MAwyqKwtdgH
	 Lv3f5Jv9d037lOwyY3HqFiH+pNy5rohnWrXWCMuM5P/9gbxaBzxikQbnYA2E3pnJv1
	 OgkWg6BDBD+t+izMswLPQEND9Karpa/2JQHhhWaCPcLQu3axMlPj2RQbDNFXdLFWoQ
	 MvHns/qsd1M3iv5tD2/gMb52SwLOcXT9VUU4R3oo7RTj3YHgaKXdpaj6tSwIV9lcR9
	 00qAfzKImvuOQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:44 +0100
Subject: [PATCH v5 21/44] drm/vc4: tests: Convert to plane creation helper
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-21-6538e19d634d@kernel.org>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2025; i=mripard@kernel.org;
 h=from:subject:message-id; bh=9I0REbcpKSt1MVBIkF5lrOnJOl7fX+Traw8aZNWXX1Y=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL1sTs8I2b+rjzJO31T8WXmr7++zHJQ8bbFb2J2y1e
 JHWLZjVUcrCIMbFICumyBIjbL4k7tSs151sfPNg5rAygQxh4OIUgInkRzL8rzLgE3Ju2vegqezr
 x6vdqZsOZBd+DK32Fyjc2aV/6lWMAyND6/cNsWyNPx+3B7FP7LzxkXlnub+O6JPWosN9C/96afh
 yAwA=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155034_316305_7CDDD5E8 
X-CRM114-Status: GOOD (  10.44  )
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

Now that we have a plane create helper for kunit mocked drivers, let's
convert to it in vc4.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/vc4/tests/vc4_mock_plane.c | 34 +++++++-----------------------
 1 file changed, 8 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c b/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c
index 973f5f929097..14357db82238 100644
--- a/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c
+++ b/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c
@@ -1,43 +1,25 @@
 // SPDX-License-Identifier: GPL-2.0
 
-#include <drm/drm_atomic_state_helper.h>
-#include <drm/drm_fourcc.h>
-#include <drm/drm_modeset_helper_vtables.h>
+#include <drm/drm_kunit_helpers.h>
 #include <drm/drm_plane.h>
 
 #include <kunit/test.h>
 
 #include "vc4_mock.h"
 
-static const struct drm_plane_helper_funcs vc4_dummy_plane_helper_funcs = {
-};
-
-static const struct drm_plane_funcs vc4_dummy_plane_funcs = {
-	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
-	.atomic_duplicate_state	= drm_atomic_helper_plane_duplicate_state,
-	.reset			= drm_atomic_helper_plane_reset,
-};
-
-static const uint32_t vc4_dummy_plane_formats[] = {
-	DRM_FORMAT_XRGB8888,
-};
-
 struct drm_plane *vc4_dummy_plane(struct kunit *test, struct drm_device *drm,
 				  enum drm_plane_type type)
 {
 	struct drm_plane *plane;
 
-	plane = __drmm_universal_plane_alloc(drm, sizeof(struct drm_plane), 0,
-						 0,
-						 &vc4_dummy_plane_funcs,
-						 vc4_dummy_plane_formats,
-						 ARRAY_SIZE(vc4_dummy_plane_formats),
-						 NULL,
-						 DRM_PLANE_TYPE_PRIMARY,
-						 NULL);
+	KUNIT_ASSERT_EQ(test, type, DRM_PLANE_TYPE_PRIMARY);
+
+	plane = drm_kunit_helper_create_primary_plane(test, drm,
+						      NULL,
+						      NULL,
+						      NULL, 0,
+						      NULL);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, plane);
 
-	drm_plane_helper_add(plane, &vc4_dummy_plane_helper_funcs);
-
 	return plane;
 }

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
