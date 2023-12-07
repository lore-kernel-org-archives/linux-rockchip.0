Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CFDFC10DC3
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 17:01:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H+EpHozSy3DzTIydtSD6eDsh36tO1ie5cH6LzrmGLfw=; b=OlTFD+vhKgwkM2
	FJKckxp7V2nagQnv9vwrGq6Dm6fQ1nUplpfQnFWZApL+VGVRmliyEHL2GQUY/5FN6LtmGvnG5pKn6
	4spEx99F/4wzmuTRhOKWfTIIAvr31QCzXBrbVlXSATAkK6Qn07YjBfxijZicO+SEpfZEnj6b+fmVs
	15ZR8rC9moKmn6kYI8lcx97qcRwPGGWwmlqP7E6VR5NGe/HMALyGuF5Tj3/at0m5+J+RW2SFIkTbM
	FxxjdW6he0+ZpwtJo3xchSfn7mn5TAo5UrWTDfun8420TfonwH1WgSlKP1StBn+Jn4YFSfFLmiG5v
	HmSU7bHXiV+zaKIAuodg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBHk5-00DT72-2O;
	Thu, 07 Dec 2023 17:00:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGe3-00DH3R-0o;
	Thu, 07 Dec 2023 15:50:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=mv+2ikShuMN+dY92lfWCcT9vJiP0+AsCoyPJXat97JQ=; b=laLMsftvfZJRVYFTY0As5Annv5
	NvG4QPGk3tv2A1Fl1jYgXui6OvXQLDrVF2uT6At971t42KsnChsrlHWunDvg66x1qW2NKMDO/zcfc
	DA0lpTM5A8GnuRBEHW9gVf1xqXEB1FyMkAPhjffUpnJTGP6+l1nH1iv5nI+1DxTLKULHqHCW+2UOf
	GesHZg97cauywyFYHydeJtHmSA0qwxbTnLPnrTzGG534KAERa3WrwQLg715RYCtr4ecpDSHoHHo/v
	HfhTl2ecju/5dIAS9b+TAtkA96ovI5oOEaYzoMRutR+z5JtttRy1XJQlAICHbHsTPt6TYNL8JOMm9
	1JMVJVkA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGdy-0062Qz-1Z;
	Thu, 07 Dec 2023 15:50:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1684C61E91;
	Thu,  7 Dec 2023 15:50:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82DA0C43391;
	Thu,  7 Dec 2023 15:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964228;
	bh=Yu+T4WCmV/LVjhCEdfQlyO9Lu7gGgQ3FuKEzvGbxZvM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=oKJ/17OH7rkdjG5BcoE3FN0c4+7ifO9mEQA/PIWcbyRUy8EtPGChywtg2Rrv4J7px
	 NphVWN2KA9yNaEF8H/GbBarDvSm5XW8F62KhbWFVJmR2yDym31OdBELHKE76WyaVTl
	 p/bd80ybmzk91L7QMAxzaLxY4/28VmRt2VBWkfmj+X371RZ3b0Bxa4qY14IrJkWIpi
	 TN5Dtb1hLPd5EgKJbyKCxkfvkluQjL5m4izltLOdtsilS9IgUpTTZIAZGhH2PFLSnw
	 UtLlZuh++epwCphjoaSAtCE0PJ33AcvQh5gFbb34bLLYDKXCJtQFjCrmYy3I6C7aM0
	 doj3/hwVcZXqA==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:43 +0100
Subject: [PATCH v5 20/44] drm/vc4: tests: Remove vc4_dummy_plane structure
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-20-6538e19d634d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3334; i=mripard@kernel.org;
 h=from:subject:message-id; bh=Yu+T4WCmV/LVjhCEdfQlyO9Lu7gGgQ3FuKEzvGbxZvM=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL1vXTxf+qn/jzY6W1WeO37hUOI+hXfzl8yPfnr/47
 KQifGbN5I5SFgYxLgZZMUWWGGHzJXGnZr3uZOObBzOHlQlkCAMXpwBM5HQow/+KxRM2vq5vktI6
 tM2vk6/5yEXfD4vmrM04qvZuK/MyfwdNRoYFKqETIjljJb6V5Etkvjblb0qRKOn7k9LkyfFxrfw
 he34A
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155030_980895_E721953A 
X-CRM114-Status: GOOD (  11.16  )
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

The vc4_dummy_plane structure is an exact equivalent to vc4_plane, so we
don't need it.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/vc4/tests/vc4_mock.c       |  6 ++----
 drivers/gpu/drm/vc4/tests/vc4_mock.h       |  9 ++-------
 drivers/gpu/drm/vc4/tests/vc4_mock_plane.c | 14 +++++---------
 3 files changed, 9 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/vc4/tests/vc4_mock.c b/drivers/gpu/drm/vc4/tests/vc4_mock.c
index 63ca46f4cb35..1c1be39141ba 100644
--- a/drivers/gpu/drm/vc4/tests/vc4_mock.c
+++ b/drivers/gpu/drm/vc4/tests/vc4_mock.c
@@ -109,16 +109,14 @@ static const struct vc4_mock_desc vc5_mock =
 static int __build_one_pipe(struct kunit *test, struct drm_device *drm,
 			    const struct vc4_mock_pipe_desc *pipe)
 {
-	struct vc4_dummy_plane *dummy_plane;
 	struct drm_plane *plane;
 	struct vc4_dummy_crtc *dummy_crtc;
 	struct drm_crtc *crtc;
 	unsigned int i;
 
-	dummy_plane = vc4_dummy_plane(test, drm, DRM_PLANE_TYPE_PRIMARY);
-	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, dummy_plane);
+	plane = vc4_dummy_plane(test, drm, DRM_PLANE_TYPE_PRIMARY);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, plane);
 
-	plane = &dummy_plane->plane.base;
 	dummy_crtc = vc4_mock_pv(test, drm, plane, pipe->data);
 	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, dummy_crtc);
 
diff --git a/drivers/gpu/drm/vc4/tests/vc4_mock.h b/drivers/gpu/drm/vc4/tests/vc4_mock.h
index 2d0b339bd9f3..002b6218960c 100644
--- a/drivers/gpu/drm/vc4/tests/vc4_mock.h
+++ b/drivers/gpu/drm/vc4/tests/vc4_mock.h
@@ -21,13 +21,8 @@ struct drm_crtc *vc4_find_crtc_for_encoder(struct kunit *test,
 	return NULL;
 }
 
-struct vc4_dummy_plane {
-	struct vc4_plane plane;
-};
-
-struct vc4_dummy_plane *vc4_dummy_plane(struct kunit *test,
-					struct drm_device *drm,
-					enum drm_plane_type type);
+struct drm_plane *vc4_dummy_plane(struct kunit *test, struct drm_device *drm,
+				  enum drm_plane_type type);
 
 struct vc4_dummy_crtc {
 	struct vc4_crtc crtc;
diff --git a/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c b/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c
index 62b18f5f41db..973f5f929097 100644
--- a/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c
+++ b/drivers/gpu/drm/vc4/tests/vc4_mock_plane.c
@@ -22,15 +22,12 @@ static const uint32_t vc4_dummy_plane_formats[] = {
 	DRM_FORMAT_XRGB8888,
 };
 
-struct vc4_dummy_plane *vc4_dummy_plane(struct kunit *test,
-					struct drm_device *drm,
-					enum drm_plane_type type)
+struct drm_plane *vc4_dummy_plane(struct kunit *test, struct drm_device *drm,
+				  enum drm_plane_type type)
 {
-	struct vc4_dummy_plane *dummy_plane;
 	struct drm_plane *plane;
 
-	dummy_plane = drmm_universal_plane_alloc(drm,
-						 struct vc4_dummy_plane, plane.base,
+	plane = __drmm_universal_plane_alloc(drm, sizeof(struct drm_plane), 0,
 						 0,
 						 &vc4_dummy_plane_funcs,
 						 vc4_dummy_plane_formats,
@@ -38,10 +35,9 @@ struct vc4_dummy_plane *vc4_dummy_plane(struct kunit *test,
 						 NULL,
 						 DRM_PLANE_TYPE_PRIMARY,
 						 NULL);
-	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, dummy_plane);
+	KUNIT_ASSERT_NOT_ERR_OR_NULL(test, plane);
 
-	plane = &dummy_plane->plane.base;
 	drm_plane_helper_add(plane, &vc4_dummy_plane_helper_funcs);
 
-	return dummy_plane;
+	return plane;
 }

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
