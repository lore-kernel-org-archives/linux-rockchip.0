Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1037DC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RgLsM2oNjfZ3ZL3I58xwyq2Tf/+F2pJ8J/c7PeGGEvY=; b=RS634nwmmQUG8h
	gncmkX7vpUcvmrQSkhVcL17GdvVS060XLv63vfJ0qHT3shXztySxhhHY8bETIcoN1TMEo3kb4Pl1D
	0FhJL/v/7h2WsYgxLnbBQZ9nIOWEPTHTsUvInYtIdXpTwlcPM6mTH56CaIrn1SUT6sTsvsuby2M3m
	RA9f9h2aFcS6I3b8IpHSUZLBOhpltgmn+KDlUQj8KYG2ZZ/GLSZrOyLlvVmwR4wJ6PMZBlYTh3Ps/
	06JyLEjoNO7I1HvdLvJ8HJh80tUh0rYDBWzpyGjZQ0o7xiuPuL8d99u4DtOGS6kNBJ+w+hwhGYeMl
	2Ee2lf07QrNvW0m8raeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vIF-004svZ-0R;
	Tue, 28 Nov 2023 10:26:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHc-004sID-0h;
	Tue, 28 Nov 2023 10:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=PH6gvDQ430aaiQUMncrVPosuV9oj8DpHCA7u4ohN0fM=; b=Go2LIWQM1TMrCFwtxusRmtrRCs
	MkjsNab7gqXVVaxD9EAlH13q+0RpnN7t1UwOCAz9y6DHeu2l/Qg07n5dEyXgM4X8aWkHXUS4XF1xC
	B8cOtmtFx+3wkbkLTxBD6FHDhWC/4MQUn4TPgpi9dLirrDg1/pfvvtmRiVMOK45MBCDrIlE9mLT7V
	QPFrhQx3i7l1CTak6whK9Ml57kNMovla86Ez/0cEmHbaVmIwYVPNZz4Md2Bmg8lS03LACMaCVQwee
	hUUwfMgREw6PL4YFAQwWdrWvSqqfO9cWn5RZL1c9OJdSToZAEr9vop2LUWWmi3fHc8VkhQ/3n6hjF
	klgLkyOA==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHW-00GaEB-2G;
	Tue, 28 Nov 2023 10:25:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 00EBBCE1ABE;
	Tue, 28 Nov 2023 10:25:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB250C433B7;
	Tue, 28 Nov 2023 10:25:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167126;
	bh=T7BGbpPZ3AlM96tkJBI+UFTFXx2WsbuihikI0ttB014=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=f/Bpu358TNzYIPG5mpFwKYmtNrkcMtijeR/lWbQf23dFAxrkGAY6QUZr6Oju6+603
	 +pgJFt8oUqVt7m+zeVuvqKhXooUoZRm7QeBzshDJAqwvJjwwq+nNGeaAF8gNZsGCn0
	 NUz5wuozBrE09q4FXj/TJGaniH925vhwVhimQaTsg3fyAFxBjXSVhGbSChbKRztjeD
	 7VP129ivYXCeS5tO8/tKf3C6BxL+B29NrQ4R3rgO8DmhVIOq0siqqsMJpLuv9IqiEo
	 txzV/R2rUjWEB2rX+YPybp78LczMd08j2/aGpf/PckoIMH1xtyUJYeH1Uwzu2nXqXo
	 3oky2fjdPLB3g==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:33 +0100
Subject: [PATCH v4 22/45] drm/vc4: tests: Convert to plane creation helper
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-22-c7602158306e@kernel.org>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
In-Reply-To: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
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
 h=from:subject:message-id; bh=T7BGbpPZ3AlM96tkJBI+UFTFXx2WsbuihikI0ttB014=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y+xmf458dT/1RwJHv2u3WfWfF/O8vviLRbXR0kZY
 n7akjfrO0pZGMS4GGTFFFlihM2XxJ2a9bqTjW8ezBxWJpAhDFycAjAR7nBGhnfajw78nOJ3c2Pt
 4mkHeiveGlioz126dtnJ3Tw9a7TXLpNn+MXUMWNuxeSDq1I7s8o0lgpOD/u5ZKto0cPTN+LKpj8
 3FmcBAA==
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_102531_360589_69238F87 
X-CRM114-Status: GOOD (  10.47  )
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
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
