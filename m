Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 476F9CD98EE
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 02:19:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uqRCg500lcw1U6+v11taw10MtRZm5mC9uWnpd0P6JF0=; b=YBCsyuJuqGjHQY
	pdIiOh+YMCj/hZC6QjbYKY1rA9ma272zh4YL24VnYiAhoJSdwKw5R7QS6ZNGQlvYIW3SPLS39clZW
	QPn2nVU+2WY0cTAAbhLnMCoHsutT0KdI+ebXOzsgDblCxDdpGkFElEtAN+JRiHXRgqpAwwcmwzbeR
	kKhclvBIBnoHNnW18CoepmF5BXvpzKpI5gIB3k6YKf4crDcfGnFXDYtlA8xPmIqBXYH2986ZR+wep
	L5fwq2n0gQVgfn2FnChIvspSz5Azbam37pvjHzzdDEbjKuGsxb9QhBJj9A/dL85a8/OokXWSo7hZg
	vMMlIrbhIT0C5TKS6Pfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsY-0000000GUWM-08jz;
	Wed, 17 Jun 2026 02:19:46 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsV-0000000GUOe-1hf6
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 02:19:45 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-9159951f05aso576756985a.0
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 19:19:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781662782; x=1782267582; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nliXYvoRQ3wSjHuqpNr9lxWmoUaal/xuLZ8F2phbi/s=;
        b=sHQghSXxdbeT9q9PeNLuut6uwUkWuuPTf3LmqZl5ndnN2z7Te8Li59siDBu45JWhc+
         H81zRMuFc9AqANA4KQnYKjFnmRIo7Kwu/xhbdz/yGO692dO/ZX8NjyTnjZDoe3Kr0Ehz
         ZRKMRjFIWtI8ZIWpqhMS+ySdyiHdc1L7RxyGLjn0AGvjfiWhTPGOBVWLruEMUwM9eNw1
         OAcalc2C/PSR+yCguGW1AKSkxIvPghyjdbk/bfCwYZhUDXd3prCgxGmVVA1Cdiu7XBcj
         ky714okGpZ/tJJ76ujQW92nI2WMHsFVMZlAdLDWc2eOiwJCo0Qb8/xv63nB+6BS1/YOb
         rtWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781662782; x=1782267582;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nliXYvoRQ3wSjHuqpNr9lxWmoUaal/xuLZ8F2phbi/s=;
        b=l+CGtKAxUGcOV0Y7KmSnagdUgQYWiBDZ7onszpOvIil+3SrKt/JbpTyc+1l3DWIwCp
         HDmU1nrnyz1rhJu6fZ/doP1/brbeNQpJ4t4RvSt6z+qfWtXhGPCDggxRwyMrjkbwpX7z
         X9qpRuXslj+HqhmsK6/HecL1f79HIR/7waKr94yjdg+8I9geOFoDm9BTNh9xz9atutHb
         LzZLDS4xe6S4pBK9aP29oP3Vp0Krw4GZPdHNOEFKtSrK+flUo1qDeUTH0vHR/mG7zyVW
         D7sn0JBZtnoQy51sIKgT71j3joSX8l6h+ye0HPA9sttb7S7CLaw5kpLXm8gUlsq+9zbD
         lDqA==
X-Forwarded-Encrypted: i=1; AFNElJ/dCFwkX2SFeTl6Fk+E5CY6HeDeXaJ26IwRN54Zqctcr9+Ff4qtmsBisoJCIpmWCWgXKaSYp5G7aKu/AekeYg==@lists.infradead.org
X-Gm-Message-State: AOJu0YxKxUj0uX6d7gPsFb7ZO0/eMzsCf2W0tKPzS5RrCZTVesvNpfYQ
	UOtEC+ltaxic/ZRvuFcuTrW0+71eApC3JIdAt/ufD14USivffGUIzmHG
X-Gm-Gg: Acq92OHayD2zUV+q5HQZUUHMfnT6BqAruCwngm3Bm/0jZx0KW60MYARPJUkjcTk/n61
	YGSntJsowEr+tLBpAxP5p9xQs28hefsKAGF5/GMyAipWLJYqtFzVB4Ko2QD6C7lDiFPD2Dt/Mum
	XGF5NzOoQytXwj6ss/DlztoeN8q+3SSf6a7jO07ejOH7hIo1tkz0KhuDrmo03J/NT7s7BAKAbyc
	NiOqhVonoIsjPWkY/zTHl5EKXDrYQNwE/BJWRz9624gQVXSxXtweWSyWcKFPM7i2QekP2/0bMdR
	tBETBJxOyAOzydJuQeMQ3WzaISZlRqQ5wDKA6zwUjh9YWdr4I1WvDMWfuE6qut4jwOYc/5xb2sz
	y6ATwKyXx9hiEucmSo6Sal1+PrKuli6VDzDeUp+/yCwQuBpYscVy4pszvcsjSRmqup52pkfPxwk
	bR8PPkB4JSkNHkO2qKeygBA5hJav1XyWdbsQtyKwuVdhy8ID2z/a3jXW6JK53YBKnJRsF5MeZdD
	2xRk29q1YuCufCJwqM4U3sX5KCm/1c+q6G9KQgYGEY=
X-Received: by 2002:a05:620a:258d:b0:915:8f76:8029 with SMTP id af79cd13be357-91dbc52d1b4mr268487985a.44.1781662782028;
        Tue, 16 Jun 2026 19:19:42 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a006e35sm1657646285a.28.2026.06.16.19.19.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 19:19:41 -0700 (PDT)
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
Subject: [PATCH v3 9/9] media: v4l2-ctrls: add KUnit tests for compound control tile validation
Date: Tue, 16 Jun 2026 22:19:06 -0400
Message-ID: <20260617021906.2746743-10-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260617021906.2746743-1-michael.bommarito@gmail.com>
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_191943_472872_93BAB10F 
X-CRM114-Status: GOOD (  18.79  )
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

Add KUnit coverage for the HEVC and AV1 tile-count checks in
std_validate_compound(): in-range counts pass, out-of-range per-dimension
counts and an AV1 grid whose product exceeds V4L2_AV1_MAX_TILE_COUNT are
rejected, and the zero-initialised AV1 frame control that userspace
submits still passes.

Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 drivers/media/v4l2-core/Kconfig               |  12 ++
 .../media/v4l2-core/v4l2-ctrls-core-test.c    | 145 ++++++++++++++++++
 drivers/media/v4l2-core/v4l2-ctrls-core.c     |   4 +
 3 files changed, 161 insertions(+)
 create mode 100644 drivers/media/v4l2-core/v4l2-ctrls-core-test.c

diff --git a/drivers/media/v4l2-core/Kconfig b/drivers/media/v4l2-core/Kconfig
index d50ccac9733cc..52c00dfe9322f 100644
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
+	  HEVC and AV1 tile counts are rejected before the stateless decoders
+	  consume them as loop bounds and array indices.
+
+	  If unsure, say N.
+
 config VIDEO_V4L2_I2C
 	bool
 	depends on I2C && VIDEO_DEV
diff --git a/drivers/media/v4l2-core/v4l2-ctrls-core-test.c b/drivers/media/v4l2-core/v4l2-ctrls-core-test.c
new file mode 100644
index 0000000000000..c0141f3defa82
--- /dev/null
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core-test.c
@@ -0,0 +1,145 @@
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
+	/*
+	 * In range: total tiles == V4L2_AV1_MAX_TILE_COUNT with each
+	 * dimension at or below its per-dimension maximum (64 * 8 == 512).
+	 */
+	f->tile_info.tile_cols = V4L2_AV1_MAX_TILE_COLS;
+	f->tile_info.tile_rows = V4L2_AV1_MAX_TILE_COUNT / V4L2_AV1_MAX_TILE_COLS;
+	KUNIT_EXPECT_EQ(test,
+			call_validate_compound(V4L2_CTRL_TYPE_AV1_FRAME, f,
+					       sizeof(*f)),
+			0);
+
+	/*
+	 * Out of range: each dimension is legal on its own but the product
+	 * exceeds V4L2_AV1_MAX_TILE_COUNT (64 * 64 == 4096 > 512), which would
+	 * overflow the per-tile descriptor buffers.
+	 */
+	f->tile_info.tile_cols = V4L2_AV1_MAX_TILE_COLS;
+	f->tile_info.tile_rows = V4L2_AV1_MAX_TILE_ROWS;
+	KUNIT_EXPECT_EQ(test,
+			call_validate_compound(V4L2_CTRL_TYPE_AV1_FRAME, f,
+					       sizeof(*f)),
+			-EINVAL);
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
index fb20ad13dfec7..1409b06eee0a8 100644
--- a/drivers/media/v4l2-core/v4l2-ctrls-core.c
+++ b/drivers/media/v4l2-core/v4l2-ctrls-core.c
@@ -2860,3 +2860,7 @@ int v4l2_ctrl_new_fwnode_properties(struct v4l2_ctrl_handler *hdl,
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
