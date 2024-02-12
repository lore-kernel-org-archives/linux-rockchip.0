Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4919C4829B
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Feb 2024 13:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NfxZe9mpFX17FTdd1G0RGvwcV7TRmkpFSxVGDwhq5V8=; b=iV1B7xuLb2935V
	D4iMmxjLzyf7HRhpy3N1Nj0Yz5pisrLwpay7mM4ptx3ZuhJ1ePdXVHD0E+BH7jghjRNNrdsfYC4LO
	Nvc8gOT1Dcc7cm0/TWLWRlg9VLRlVS+XQbNlgpweEHrpyUETxIVBfcLeCr4V59i4bRk2po/nAuQ8z
	PMBmo4/1qJYATeKsztZ3I8IlA366oBZF8sao8Uz5euqqUd+w1tqHP5eM1pzPKvXNvyFZcxhNI3zER
	piYkrmAKY9ZcEthbB5wr5A8O64vSI1plUXkbPFr+gRJiNIrzXMl64dJgwZkwPXuN8R4H7R5rGCd80
	p3yOCdMcNOMVJaUu8VWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZWBC-00000005RGt-3M6r;
	Mon, 12 Feb 2024 13:17:02 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZW9B-00000005PeS-0sYn;
	Mon, 12 Feb 2024 13:15:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 6EB48CE12B0;
	Mon, 12 Feb 2024 13:14:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DAE6C43399;
	Mon, 12 Feb 2024 13:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707743694;
	bh=9I0REbcpKSt1MVBIkF5lrOnJOl7fX+Traw8aZNWXX1Y=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=CF+tMWnEsHyAg1Jd1/77+v4kTOpFkQj+1p8X/b2Ni0TCg7bGlMtiDNQvJ/yw//UJI
	 8za4jfG4dWuO1GwfwsXvK73pC43gBQu1nOS6yvOJRNHH7BF1TmXHGUrLgflmO7Sv0u
	 9qRfh7z2ASctZLz3dXldHW/MLNXrkv78oTNvvcEBAks3IciAWAQYJDbxfZp7S+0q0O
	 cxWMwwSRmFgGpHayOIWY6x1H77/j0TAR8IHNlRG400rQkdrqPGwC99PlKVCrBUfadb
	 n5ICKvyOdIx++xYUSU8paNth4faiiSE5TQ9rceFz5STpgu3mv2NUQxdxkZ15i1C4w5
	 x/S+Gh+YhVdCQ==
From: Maxime Ripard <mripard@kernel.org>
Date: Mon, 12 Feb 2024 14:13:13 +0100
Subject: [PATCH v6 30/36] drm/vc4: tests: Convert to plane creation helper
MIME-Version: 1.0
Message-Id: <20240212-kms-hdmi-connector-state-v6-30-f4bcdc979e6f@kernel.org>
References: <20240212-kms-hdmi-connector-state-v6-0-f4bcdc979e6f@kernel.org>
In-Reply-To: <20240212-kms-hdmi-connector-state-v6-0-f4bcdc979e6f@kernel.org>
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
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmnJAuvREvsUY9ojPzovJHzkWT07O7tlpqJ/5KrVgQ0K
 G28d1ako5SFQYyLQVZMkSVG2HxJ3KlZrzvZ+ObBzGFlAhnCwMUpABOZ+JGR4SUL45T0TsY9+8TK
 ElXbBdIrmyfIu7UlGitd9uLz+pEXwciwx0hnX79esb5BUsfc/5p9dhUGAucnctgGVNRnCCU0yzM
 CAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_051457_981180_19EED1AB 
X-CRM114-Status: GOOD (  10.36  )
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
