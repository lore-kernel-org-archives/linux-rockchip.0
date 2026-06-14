Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 306AECD98DC
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 15:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jdUuomGIpCOO0bfvt1Y264k5mI8XyH23U4aZ28wzsE8=; b=AXqUcjmtCR8KXA
	13G+HoJmfsL42rYuP/zCqK1gCVw4B9UgKX4sVe8YZBnSW+HcNxa+PY86bDj9F+TwGvJDiwWYOsuYA
	KdjcYzBtmknoqjJhQEklsHcs6Jw1YFzGlILPK1mvS7Vo3kOSrdECcR7aaoZ9xMA04NIBBG4OrGy7H
	4JjntPjiGuEaT18yfwfePh9RpcCHiDLyhcqtoRxAqZ+IHzzCSWkYQvTf3KEudJ9QQWiGUmBoPvynX
	Cr2hVz3KRh1VwlZKt0c3LG7ZHzW/qi8SlKAndp2bBkcFRdrSe8+jIgncuxGHjDyZI2SbEok3pSf36
	BmLG1chJLcZrBskEYS+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnCF-0000000D9kQ-1QrE;
	Sun, 14 Jun 2026 15:56:27 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnCC-0000000D9el-3M0z
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 15:56:25 +0000
Received: by mail-qv1-xf30.google.com with SMTP id 6a1803df08f44-8ce9df31840so21060286d6.1
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 08:56:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781452583; x=1782057383; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8jz+BPfeJA3CKv3gaCxJRY7nP9NRgfQenpRYWfzzFvk=;
        b=OQFOmulsisiNJop2TK/MfEvAOUHeBARY82w1iikH4bGIv1tCZKaAgQJ8EPBGQ/vI3g
         n3u/Gy6hmXn9+H2m/J9pruc1SEcs5zYeu0abU5LJ/QwsJdB2lm2r4TWrz+pkejVsvITB
         kn7SRoI2qQ+Y/HIkjQGXYMaR26u8kictkyfhk/SQS9It7DnmForNZZsX2Y/PpltgKiMy
         Qqz+0M7wFf1sOQo3b0aH7IHeqKHxP7KPRlzjHIKQBhTykas0UH5aD6sgC1bFZmJ31md0
         vTfobQX0iDY79h4ERDSpP6dxGOCdU265R3F6MKGjT4xs1X2qTiARuVlSvWG9bGzAlv4t
         0PYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781452583; x=1782057383;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8jz+BPfeJA3CKv3gaCxJRY7nP9NRgfQenpRYWfzzFvk=;
        b=IQdkZ2v9LQpn67gz+6XyFaRYuUvNzwzsD6zqyR8NhLuyeIEnRHF4lRTa0A5l+rdYZu
         Kwx47UjqLXdZqOBVhunZtuqw0f0kLWb/xXMo/kMNSZisrDhykB8qaaewvN0rvd53RG1n
         Pu6Xz1qBTKDAQdbj2/r99q/uNWKWdEzXrAs+jHsRsBpmls8hrg6iBZGtglTIgz0/nQKU
         +Zi8B41PK1N0SlqyANAU0bxQ38hWnJxqjqjHmaVbq5mG8pHTAn0AjqbnccdLbvZ+qO8M
         WygoarmQRigi9UIIwpISwlNOodmOIzl7M3w+AT6nN7qYmuyD64YJmminF+5ERgmj/yST
         TKWQ==
X-Forwarded-Encrypted: i=1; AFNElJ+sKQivTZdA6yqJK+f/0BPnkqK41GbwDiRVnl3WbzMMEWtPN0ftLCNk/vUQJ4um/rnshtuqhbFsz6jw03oLaQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxx+w/H3KH5RYTh1Vv4/K75tApUAOE+UnO/ByOJO4/Yz0FhokBB
	7H8ZMfSaYhjCjQS/I7MPjja7Nm7k/uHAiPJa0T1wdkC2HnK0nvLpindN
X-Gm-Gg: Acq92OHfbxi6pOX0zClOWy1mI9VMI20hQU+NtIwBeNYpanzlBsLrb11cSYltGFWDvSD
	WuLl7nkNcMx+vj50UY3l8DhaF1vVMM3FsJmH483a51bwW46v+6KkY6jfItuUn/BOb+7pKPiWpld
	qGarOJXY/MgBkEzm3VGtqYI1OqouyBpyTaY9Ms7LKaaXe5S6wZ/aom9azm8711oKxmusQniSZpB
	eVNFOZi3521Q2+ek4/dGP//AafEJIPzBchWfLqQRYrgI2aDPcDWZ+zTdxHW9P1uLkNhFgEJ2lsr
	fepLw9toyaF18yo6KOb0/lyOOS31yMBdh8nY00QIII9U5bOd++NqaXvRg77AGoA+4pU2yVCbRIa
	r+9cZFDZsweex1E/g4iZR9teaKOCk5bUtBKePI5w/vD+MsBqxB6AWTqX25P+lQYGbBvArAnJ1Yo
	YxvOpB3Lcl6zLplkYZdMlTCkRadSni8FZaxes6RN7NiDTxkPjTDz7WQnESj+FlHJQsfJOzXBFFl
	VYjzFqHN+IzZyk9aC95peO9rv89TvzmVN//1HeVzmQ=
X-Received: by 2002:a05:6214:e48:b0:8be:3da0:bbac with SMTP id 6a1803df08f44-8d32b56ffe0mr182671126d6.3.1781452583338;
        Sun, 14 Jun 2026 08:56:23 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8d30522cbeasm82008446d6.44.2026.06.14.08.56.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 08:56:21 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Yunfei Dong <yunfei.dong@mediatek.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Heiko Stuebner <heiko@sntech.de>,
	Kees Cook <kees@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/6] media: v4l2-ctrls: add KUnit tests for compound control tile validation
Date: Sun, 14 Jun 2026 11:56:08 -0400
Message-ID: <20260614155609.3107600-7-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614155609.3107600-1-michael.bommarito@gmail.com>
References: <20260614155609.3107600-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_085624_864298_61651635 
X-CRM114-Status: GOOD (  18.56  )
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

Drive std_validate_compound() with crafted HEVC PPS and AV1 frame controls
and assert that out-of-range tile counts are rejected with -EINVAL while
in-range values pass, including the zero-initialised AV1 frame default that
userspace and v4l2-compliance submit. The tests are #included at the end of
v4l2-ctrls-core.c to reach the static helper, gated by
CONFIG_V4L2_CTRLS_KUNIT_TEST.

Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
Assisted-by: Claude:claude-opus-4-8
---
 drivers/media/v4l2-core/Kconfig               |  12 ++
 .../media/v4l2-core/v4l2-ctrls-core-test.c    | 130 ++++++++++++++++++
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |   4 +
 3 files changed, 146 insertions(+)
 create mode 100644 drivers/media/v4l2-core/v4l2-ctrls-core-test.c

diff --git a/drivers/media/v4l2-core/Kconfig b/drivers/media/v4l2-core/Kconfig
index d50ccac9733cc..04b15d860a0af 100644
--- a/drivers/media/v4l2-core/Kconfig
+++ b/drivers/media/v4l2-core/Kconfig
@@ -3,6 +3,18 @@
 # Generic video config states
 #
 
+config V4L2_CTRLS_KUNIT_TEST
+	bool "KUnit tests for V4L2 compound control validation" if !KUNIT_ALL_TESTS
+	depends on VIDEO_DEV && KUNIT=y
+	default KUNIT_ALL_TESTS
+	help
+	  This builds KUnit tests for the stateless-codec compound control
+	  validation in std_validate_compound(). They check that out-of-range
+	  HEVC/AV1 tile counts and parameter-set / tile indices are rejected
+	  before driver code consumes them as array indices or loop bounds.
+
+	  If unsure, say N.
+
 config VIDEO_V4L2_I2C
 	bool
 	depends on I2C && VIDEO_DEV
diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core-test.c b/drivers/media/v4l2-core/v4l2-ctrls-core-test.c
new file mode 100644
index 0000000000000..813872694eb46
--- /dev/null
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core-test.c
@@ -0,0 +1,130 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * KUnit tests for HEVC/AV1 tile-count validation in std_validate_compound().
+ * #included at the end of v4l2-ctrls-core.c to reach the static helper.
+ */
+
+#include <kunit/test.h>
+
+static int call_validate_compound(enum v4l2_ctrl_type type, void *payload,
+				  u32 elem_size)
+{
+	struct v4l2_ctrl ctrl = {
+		.type = type,
+		.elem_size = elem_size,
+	};
+	union v4l2_ctrl_ptr ptr = { .p = payload };
+
+	return std_validate_compound(&ctrl, 0, ptr);
+}
+
+/* HEVC PPS: num_tile_columns_minus1 / num_tile_rows_minus1 bounds. */
+static void v4l2_ctrls_hevc_pps_tile_cols(struct kunit *test)
+{
+	struct v4l2_ctrl_hevc_pps *pps;
+
+	pps = kunit_kzalloc(test, sizeof(*pps), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_NULL(test, pps);
+
+	pps->flags = V4L2_HEVC_PPS_FLAG_TILES_ENABLED;
+
+	/* In range: count == array capacity (minus1 == capacity - 1). */
+	pps->num_tile_columns_minus1 = ARRAY_SIZE(pps->column_width_minus1) - 1;
+	pps->num_tile_rows_minus1 = ARRAY_SIZE(pps->row_height_minus1) - 1;
+	KUNIT_EXPECT_EQ(test,
+			call_validate_compound(V4L2_CTRL_TYPE_HEVC_PPS, pps,
+					       sizeof(*pps)),
+			0);
+
+	/* Out of range: one past the column array. */
+	pps->num_tile_columns_minus1 = ARRAY_SIZE(pps->column_width_minus1);
+	pps->num_tile_rows_minus1 = 0;
+	KUNIT_EXPECT_EQ(test,
+			call_validate_compound(V4L2_CTRL_TYPE_HEVC_PPS, pps,
+					       sizeof(*pps)),
+			-EINVAL);
+
+	/* Out of range: maximal attacker value. */
+	pps->num_tile_columns_minus1 = 0xff;
+	pps->num_tile_rows_minus1 = 0xff;
+	KUNIT_EXPECT_EQ(test,
+			call_validate_compound(V4L2_CTRL_TYPE_HEVC_PPS, pps,
+					       sizeof(*pps)),
+			-EINVAL);
+}
+
+/* AV1 frame: tile_cols / tile_rows upper bounds. */
+static void v4l2_ctrls_av1_frame_tile(struct kunit *test)
+{
+	struct v4l2_ctrl_av1_frame *f;
+
+	f = kunit_kzalloc(test, sizeof(*f), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_NULL(test, f);
+
+	/*
+	 * Benign control: a zero-initialised frame (tile_cols == 0) must
+	 * still pass. Userspace and v4l2-compliance set the zeroed default,
+	 * and the divisor that a zero tile_cols would feed is guarded in the
+	 * consuming driver rather than rejected here.
+	 */
+	KUNIT_EXPECT_EQ(test,
+			call_validate_compound(V4L2_CTRL_TYPE_AV1_FRAME, f,
+					       sizeof(*f)),
+			0);
+
+	/* In range: a 1x1 tiling. */
+	f->tile_info.tile_cols = 1;
+	f->tile_info.tile_rows = 1;
+	KUNIT_EXPECT_EQ(test,
+			call_validate_compound(V4L2_CTRL_TYPE_AV1_FRAME, f,
+					       sizeof(*f)),
+			0);
+
+	/* In range: maximal legal tile_cols / tile_rows. */
+	f->tile_info.tile_cols = V4L2_AV1_MAX_TILE_COLS;
+	f->tile_info.tile_rows = V4L2_AV1_MAX_TILE_ROWS;
+	KUNIT_EXPECT_EQ(test,
+			call_validate_compound(V4L2_CTRL_TYPE_AV1_FRAME, f,
+					       sizeof(*f)),
+			0);
+
+	/* Out of range: tile_cols past the array. */
+	f->tile_info.tile_cols = V4L2_AV1_MAX_TILE_COLS + 1;
+	f->tile_info.tile_rows = 1;
+	KUNIT_EXPECT_EQ(test,
+			call_validate_compound(V4L2_CTRL_TYPE_AV1_FRAME, f,
+					       sizeof(*f)),
+			-EINVAL);
+
+	/* Out of range: maximal attacker value. */
+	f->tile_info.tile_cols = 0xff;
+	f->tile_info.tile_rows = 0xff;
+	KUNIT_EXPECT_EQ(test,
+			call_validate_compound(V4L2_CTRL_TYPE_AV1_FRAME, f,
+					       sizeof(*f)),
+			-EINVAL);
+
+	/* Out of range: tile_rows past the array. */
+	f->tile_info.tile_cols = 1;
+	f->tile_info.tile_rows = V4L2_AV1_MAX_TILE_ROWS + 1;
+	KUNIT_EXPECT_EQ(test,
+			call_validate_compound(V4L2_CTRL_TYPE_AV1_FRAME, f,
+					       sizeof(*f)),
+			-EINVAL);
+}
+
+static struct kunit_case v4l2_ctrls_test_cases[] = {
+	KUNIT_CASE(v4l2_ctrls_hevc_pps_tile_cols),
+	KUNIT_CASE(v4l2_ctrls_av1_frame_tile),
+	{}
+};
+
+static struct kunit_suite v4l2_ctrls_test_suite = {
+	.name = "v4l2-ctrls-compound",
+	.test_cases = v4l2_ctrls_test_cases,
+};
+
+kunit_test_suite(v4l2_ctrls_test_suite);
+
+MODULE_DESCRIPTION("KUnit tests for V4L2 stateless-codec compound control validation");
+MODULE_LICENSE("GPL");
diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core.c b/drivers/media/v4l2-core/v4l2-ctrls-core.c
index 58e2eb7002a19..5e86b6373a136 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -2851,3 +2851,7 @@ int v4l2_ctrl_new_fwnode_properties(struct v4l2_ctrl_handler *hdl,
 	return hdl->error;
 }
 EXPORT_SYMBOL(v4l2_ctrl_new_fwnode_properties);
+
+#if IS_ENABLED(CONFIG_V4L2_CTRLS_KUNIT_TEST)
+#include "v4l2-ctrls-core-test.c"
+#endif
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
