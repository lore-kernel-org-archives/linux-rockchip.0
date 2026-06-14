Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28FAACD98E3
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 13:10:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SUomfsLwOCZVI7l2eSO6ipv0Fs0NfpLY7jNXqZfV3g=; b=u2ooEZ4odgGfar
	FgAhm0EXVm/edztuPRYDv4y7tVQ5hjil6a7R+h5sLmiGkWJvdwF9PdsYR/N6cVKiYpUx8/GLtrkF8
	kWDczmmvPlngue8oJ2XtPNoyP8RbblBEA37/YcI+TYVYDcuKn3CLMylk0OBAfWZ2exQTiolGIAUh2
	dEoXnpGFYgQU3VSIXDIi9BdwYsLMGvK5qo08glyWzbYZ6iH46XMnfH0T9hzu2kqmU/OQK7gSyVjGs
	NR0GKxIfZY2DtRRF9nhVy6DG+UgsecwOag6Fg32+AcikuZ3+updJo9ieYKyb37qar/l8sxjRhL/Hk
	NalgWFFGJrlTnMseuzww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbU-0000000D0OG-4A1U;
	Sun, 14 Jun 2026 13:10:21 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbS-0000000D0Hz-0bf4
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 13:10:19 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-915b5ce94c7so266484285a.2
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 06:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781442617; x=1782047417; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eJpu5i70KzzzFRdB2RQuMRBjZ2Ekssr7dUppZeDYSDo=;
        b=lzn4gtLLsJPue3PBfAGUtC1o3k/qmClfdKT8am3nLUK/wQbJnbZuUVbEvku0Gai6V5
         Y2SH4p3cbhMiWS8pGQypVN/ueZGr9gLYp0mdcCBOCM6ORQmzjQyHrRFhjgtj7j/sWWU3
         xGlkS0/aYqpRl1UGkOtg4TKl4N3UUZq2ivScCFTboAq+ULBVJIW4w4gS3eCbMYCZGqJQ
         QVvCK0PfLeCPqq2vk46a2AW7yJeJ7h5N7xk0X6lvJBViSQj9aREBB9jRxEp8WZ8amIPC
         hQ26GsHKaZ/0sUIK0/3vhxC3Uiu/nRGpOc+dSyvm8pf0/BhokwF7pE/neDWeea1mDHAE
         tJ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781442617; x=1782047417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eJpu5i70KzzzFRdB2RQuMRBjZ2Ekssr7dUppZeDYSDo=;
        b=mB1xRgFFRCBGcggXxhktkdLi2F8k3HcZvPakv+AcTlEdF2zV9jOuDk7SJQIeBf1t4M
         GPgNqD16HfDF9zviLFxxfmGUzLTcOwM1JABsNcRoqqmizqsgicIB0UswcmnlPq4YLdmP
         Gz5GLpO1+4PjsLGRYZqokXCH1Wh4cLLqCer7kZZ3qCd9YuqWk7KKXv8opkZGWCqJ7A6T
         NksIyTHsWcfhZkAFNSOSiZ2VPQ7JoYC+TE8HTZohOzRBYMAKs5EmSiq/+guQqhRdJsfZ
         Hb/KuUGYRb+z0LcsMRnN40tlUspXngk6MnbtyvHYPc7FVWdUYf1ma3RNPQOuH6PMKgXX
         aezw==
X-Forwarded-Encrypted: i=1; AFNElJ/2qBLBW0a5gUhdZSwEd7zhBEcLsrAZaYbxj9IIZpgGji1AU16fGQ7M571nqB5yCsqBdfiWkgooXcMXARrxAA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyWolZkGTKwoCutlhgVZQ3jWDcTvgEkGRHrkDs6zoYp7bZBrsgM
	uZc+6NTlHko2NRfmCk8GGlHT5GwOyc4hEaPJN3mw2GVvS8tuvOXgjPrd
X-Gm-Gg: Acq92OHTM9SfOYQWRWpg/ZIf64VDM2MWhCuXBMEU6IY0DavczCQLojau0Ea0Sd6K10c
	liXJxotZiO7KeEs7qPQtIIWg+nb6VT+JroE0sTC6UIX6NIX80TkxWROr90t6CEfiPZ7aTPHpzIG
	Y1S28/oP4HRudFxH7C9fXCWAm0YoWX1YAkNOC2qp3EWzegZLoC8Gv7U3/wKrPl8AE8xuLrzkdPS
	NdYOsaXTu1PHTspNpMJdoVaFQxaW7S2PY/F0EerXVLr5Iv2lv7G3FMY31CQCweR3gjB5WHDWkgp
	2ivaNgGzgJ9BmYq8ZV3ZdBgkkW8kqYfi6Bw9nznEYHINm0ectT6A/M+bKgqBsw8Y5W3S25uWtyi
	Chx/h/OnaXXdRl7pJ/4VgmsddhW7H13qS5//w3zHeiJN2IK8mW0hekv8nK8vIcxRPGfbX7xVs5c
	J1VrqT1QHFz4GPATyh8CL3eKFLUgVbcAnRQW/Fkut9qyfEUXYnGVCBz2wZP25DgRWZqdilmnS3y
	SSVMzB6RpmFz9dgt//eFl43SNVB4/71BWbzBtUv9Pg=
X-Received: by 2002:a05:620a:414a:b0:915:6e30:5bd8 with SMTP id af79cd13be357-917ee4d8cf8mr1102847085a.11.1781442616705;
        Sun, 14 Jun 2026 06:10:16 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-91619f1b400sm752878985a.15.2026.06.14.06.10.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 06:10:16 -0700 (PDT)
From: Michael Bommarito <michael.bommarito@gmail.com>
To: Hans Verkuil <hverkuil@kernel.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Sebastian Fricke <sebastian.fricke@collabora.com>
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
Subject: [PATCH 6/6] media: v4l2-ctrls: add KUnit tests for compound control tile validation
Date: Sun, 14 Jun 2026 09:10:03 -0400
Message-ID: <20260614131003.2524025-7-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614131003.2524025-1-michael.bommarito@gmail.com>
References: <20260614131003.2524025-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_061018_237854_44882CB9 
X-CRM114-Status: GOOD (  17.25  )
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
and assert that out-of-range tile counts and a zero AV1 tile_cols are
rejected with -EINVAL while in-range values pass. The tests are #included
at the end of v4l2-ctrls-core.c to reach the static helper, gated by
CONFIG_V4L2_CTRLS_KUNIT_TEST.

Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
Assisted-by: Claude:claude-opus-4-8
---
The tests are #included at the end of v4l2-ctrls-core.c so they can reach
the static helper, gated by CONFIG_V4L2_CTRLS_KUNIT_TEST. Run under KASAN
on x86_64 they fail on the stock validator and pass after patch 1.

 drivers/media/v4l2-core/Kconfig               |  12 ++
 .../media/v4l2-core/v4l2-ctrls-core-test.c    | 119 ++++++++++++++++++
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |   4 +
 3 files changed, 135 insertions(+)
 create mode 100644 drivers/media/v4l2-core/v4l2-ctrls-core-test.c

diff --git a/drivers/media/v4l2-core/Kconfig b/drivers/media/v4l2-core/Kconfig
index d50ccac..04b15d8 100644
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
index 0000000..6ec48fc
--- /dev/null
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core-test.c
@@ -0,0 +1,119 @@
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
+/* AV1 frame: tile_cols / tile_rows bounds and non-zero requirement. */
+static void v4l2_ctrls_av1_frame_tile(struct kunit *test)
+{
+	struct v4l2_ctrl_av1_frame *f;
+
+	f = kunit_kzalloc(test, sizeof(*f), GFP_KERNEL);
+	KUNIT_ASSERT_NOT_NULL(test, f);
+
+	/* In range: a 1x1 tiling (a zeroed frame is otherwise valid). */
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
+	/* Divide-by-zero guard: tile_cols == 0 must be rejected. */
+	f->tile_info.tile_cols = 0;
+	f->tile_info.tile_rows = 1;
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
index 25227d9..8debd0e 100644
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
