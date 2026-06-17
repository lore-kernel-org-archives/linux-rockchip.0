Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6136ECD98F3
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jun 2026 02:19:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xbSbJmXCeIlYvr2kxMwyQOUTCLcB2ohlRIbLsPL4b9Q=; b=HrbHGaP9Sg5VUy
	jQpxGo6dwj0fwNVuFnZWhyIFO82LOZpRRdJPM5CpsYDMyS3MtZoCTRspMNKOof4b6rP5bqeaxmMDk
	dOBf2Ad9NhRQLn4ikejr2gXu4xBV6F6uv6JNPbpPDjxZ0F1AxLuwPGCGz/x29M9EGp5/rY5jnXseO
	cT9Ii0lfWeECmxmLdQYX8ev6X/z60aL3k8gS30FzH/i1qMibNAjEMXYYX1i7aL36ytvjyBbN1Vp+z
	X6ge36HoO01zQcponwBgc/lmRQKFfLCOG1nTzNq1F4TnabeBgzNrKsNGLCWgdr+dpv4j8VDHGc+qf
	JWOd7Dbtj57MDy63ZDIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsP-0000000GUGx-41MC;
	Wed, 17 Jun 2026 02:19:38 +0000
Received: from mail-qv1-xf34.google.com ([2607:f8b0:4864:20::f34])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZfsM-0000000GUB0-2Y6j
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jun 2026 02:19:35 +0000
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-8ce9df31130so76946856d6.1
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Jun 2026 19:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781662773; x=1782267573; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6gsyD44v5d3JS7lai7ZiO/JkymT3Up+9z8qXjXKcYr8=;
        b=a3Zj8sqrPB+xS6qWZjPoQX+iCv/PpW94OV0a9GjzeDJyXidGQRfJeeuyS90zNmpsTm
         CjIckXTGrAo3jIBonMcyneP5DdrrXQyL2nkJfcSJd2JpbDeVZ+YZtAw4kBzBq8uRhGpg
         oV8jFe+8L1wqWgnIByIyfzKavGSWmcR4JghnJkPoQNzKL2F4n24i0OwMdMbTEEHWNdLq
         m+BdHwCtnP0vNJPvkZ9sXbN+kD9P1DNL9wcnEyeetc9TzZCbDO0V8aDwPIAAS2QUwS+z
         QN8lXZTdNFX9M92LNY56+v5Ei9oFb277N7cV5ay9tzUU76fVceRkctUoFrNnpyCMFXYg
         13QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781662773; x=1782267573;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6gsyD44v5d3JS7lai7ZiO/JkymT3Up+9z8qXjXKcYr8=;
        b=lkocwODja1eXT+JNE7RK3CMkUGQ2HY91NnZZqdqkBHEplWNVNIGWPVfmDwCObWW+3H
         TNRJQC5z+VlLO1Uu2vHyQqilj65Iay3scXLXCgHbM68PYkBdj/UROGOz02Ct/RyHw3SD
         nSh+wN6z0YoNtRpa5hfW67NzfBrvRapIPXMzcqofhJgaSjtJF+VbSvyvAdANnBMesGFb
         GDzSsB1POK6lUdQaIGXjW8tnHakqckJex+UzH1l2ML/bR0GpcyNAeFNk+IfF/x8NkKPm
         7iosJGURjXdNxxOpfFvGn/pO8FqeK8eQQRVHYV9AeD+0T9RmF83mcNHpnEbmBgSJs+sa
         /pZg==
X-Forwarded-Encrypted: i=1; AFNElJ8ee8n2X0IMYs+67U9kjHhLIaNEFHcDIyuAXrQm+41GsJUiNOYZX2nr3EbJUPDxtA7wsA+3Gn8yHxE2j0w77g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz+KoJeDLEPKs7llqT52mxeAfG6YZThK4CT+m7N1+lguBJeQq36
	GzfK4wMLwiWjbgwB5HlNznleR7iHx1whY+5yq4/oRjYXcWJOmjuvlSQo
X-Gm-Gg: Acq92OFQEIUZNAJXhrJo8RF9fP9sG5+crG4KfgyGhhfEz6Id5yM79OSxwl6fnrSb7uK
	pIJcbnLzFnMwLDcRKHC/tuutdnuuVubVYb8q6a5mlGLM69PyH49vreME+TKja28yo/8YYgrSIyd
	lWGhY94wMeS7xTqNHe9BjX2W4Y5pvJJX0SNq6WAZBWl4FQF+RGZsb6VFznrZXyllmU8Ibz66Kyt
	o4lnZa+HW3/MVK2BHlkka+Kyuw2IFs1bMhlMJ8cAq04OATx5H/gpt/2qoL7gJc+/Mg1a7kgZ0C8
	in/k4aP/3KCfhhfJnLZRGKGGkgjcOgBYy36hdqLaL03jOZnc+od4dF6bZhVHf8ghRzgbiwxAhiG
	cmu2Ud0vdf2QYoEv3x4IsU6BYZa+55f5PJS8oQbS+/fyIm96ZAIYnrP+bFgOH93xUFDhxY6aCUL
	uh48A+OCFk+5/noMySzJNgawpM4IKw1Tz7f059eJWR7+vHvrxlTeU7azkK1pwXZPmXNZ6Xl9tEO
	53sp/shoRG8Lb1XR2y06P6hxS7gFHCb
X-Received: by 2002:a05:620a:19a5:b0:915:c4de:7ab7 with SMTP id af79cd13be357-91d8acdc2eemr405909185a.35.1781662773045;
        Tue, 16 Jun 2026 19:19:33 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9161a006e35sm1657646285a.28.2026.06.16.19.19.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2026 19:19:32 -0700 (PDT)
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
Subject: [PATCH v3 4/9] media: rkvdec: bound HEVC tile loops and PPS id to the array capacity
Date: Tue, 16 Jun 2026 22:19:01 -0400
Message-ID: <20260617021906.2746743-5-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260617021906.2746743-1-michael.bommarito@gmail.com>
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260616_191934_677713_3FB5B499 
X-CRM114-Status: GOOD (  16.40  )
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

compute_tiles_uniform() and compute_tiles_non_uniform() loop over
num_tile_columns_minus1 + 1 / num_tile_rows_minus1 + 1 entries, and
assemble_hw_pps() writes one COLUMN_WIDTH / ROW_HEIGHT register per tile
and indexes priv_tbl->param_set[] by pic_parameter_set_id, all taken from
the untrusted PPS. Use the bounded v4l2_hevc_pps_num_tile_columns() /
v4l2_hevc_pps_num_tile_rows() helpers for the tile loops, and bail out of
assemble_hw_pps() before indexing priv_tbl->param_set[] with an
out-of-range pic_parameter_set_id, so the writes stay within the hardware
tables.

Fixes: 3595375c2301 ("media: rkvdec: Add HEVC backend")
Fixes: c9a59dc2acc7 ("media: rkvdec: Add HEVC support for the VDPU381 variant")
Assisted-by: Claude:claude-opus-4-8
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
---
 .../platform/rockchip/rkvdec/rkvdec-hevc-common.c  | 14 ++++++++++----
 .../media/platform/rockchip/rkvdec/rkvdec-hevc.c   |  7 +++++--
 .../platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c |  2 ++
 3 files changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
index 3119f3bc9f98b..753aef3aee51e 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
@@ -16,6 +16,7 @@
  */
 
 #include <linux/v4l2-common.h>
+#include <media/v4l2-hevc.h>
 #include <media/v4l2-mem2mem.h>
 
 #include "rkvdec.h"
@@ -37,15 +38,17 @@ void compute_tiles_uniform(struct rkvdec_hevc_run *run, u16 log2_min_cb_size,
 			   s32 pic_in_cts_height, u16 *column_width, u16 *row_height)
 {
 	const struct v4l2_ctrl_hevc_pps *pps = run->pps;
+	unsigned int num_cols = v4l2_hevc_pps_num_tile_columns(pps);
+	unsigned int num_rows = v4l2_hevc_pps_num_tile_rows(pps);
 	int i;
 
-	for (i = 0; i < pps->num_tile_columns_minus1 + 1; i++)
+	for (i = 0; i < num_cols; i++)
 		column_width[i] = ((i + 1) * pic_in_cts_width) /
 				  (pps->num_tile_columns_minus1 + 1) -
 				  (i * pic_in_cts_width) /
 				  (pps->num_tile_columns_minus1 + 1);
 
-	for (i = 0; i < pps->num_tile_rows_minus1 + 1; i++)
+	for (i = 0; i < num_rows; i++)
 		row_height[i] = ((i + 1) * pic_in_cts_height) /
 				(pps->num_tile_rows_minus1 + 1) -
 				(i * pic_in_cts_height) /
@@ -57,17 +60,20 @@ void compute_tiles_non_uniform(struct rkvdec_hevc_run *run, u16 log2_min_cb_size
 			       s32 pic_in_cts_height, u16 *column_width, u16 *row_height)
 {
 	const struct v4l2_ctrl_hevc_pps *pps = run->pps;
+	unsigned int num_cols = v4l2_hevc_pps_num_tile_columns(pps);
+	unsigned int num_rows = v4l2_hevc_pps_num_tile_rows(pps);
 	s32 sum = 0;
 	int i;
 
-	for (i = 0; i < pps->num_tile_columns_minus1; i++) {
+	/* The last tile entry is written after the loop, so iterate one less. */
+	for (i = 0; i < num_cols - 1; i++) {
 		column_width[i] = pps->column_width_minus1[i] + 1;
 		sum += column_width[i];
 	}
 	column_width[i] = pic_in_cts_width - sum;
 
 	sum = 0;
-	for (i = 0; i < pps->num_tile_rows_minus1; i++) {
+	for (i = 0; i < num_rows - 1; i++) {
 		row_height[i] = pps->row_height_minus1[i] + 1;
 		sum += row_height[i];
 	}
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
index ac8b825d080a2..568746dae9a61 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
@@ -12,6 +12,7 @@
  *	Jeffy Chen <jeffy.chen@rock-chips.com>
  */
 
+#include <media/v4l2-hevc.h>
 #include <media/v4l2-mem2mem.h>
 
 #include "rkvdec.h"
@@ -156,6 +157,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 	 * packet unit). so the driver copy SPS/PPS information to the exact PPS
 	 * packet unit for HW accessing.
 	 */
+	if (pps->pic_parameter_set_id >= ARRAY_SIZE(priv_tbl->param_set))
+		return;
 	hw_ps = &priv_tbl->param_set[pps->pic_parameter_set_id];
 	memset(hw_ps, 0, sizeof(*hw_ps));
 
@@ -274,9 +277,9 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 
 	if (pps->flags & V4L2_HEVC_PPS_FLAG_TILES_ENABLED) {
 		/* Userspace also provide column width and row height for uniform spacing */
-		for (i = 0; i <= pps->num_tile_columns_minus1; i++)
+		for (i = 0; i < v4l2_hevc_pps_num_tile_columns(pps); i++)
 			WRITE_PPS(pps->column_width_minus1[i], COLUMN_WIDTH(i));
-		for (i = 0; i <= pps->num_tile_rows_minus1; i++)
+		for (i = 0; i < v4l2_hevc_pps_num_tile_rows(pps); i++)
 			WRITE_PPS(pps->row_height_minus1[i], ROW_HEIGHT(i));
 	} else {
 		WRITE_PPS(((sps->pic_width_in_luma_samples + ctb_size_y - 1) / ctb_size_y) - 1,
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
index fe6414a175510..6dafa1dd28507 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-vdpu381-hevc.c
@@ -145,6 +145,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 	 * packet unit). so the driver copy SPS/PPS information to the exact PPS
 	 * packet unit for HW accessing.
 	 */
+	if (pps->pic_parameter_set_id >= ARRAY_SIZE(priv_tbl->param_set))
+		return;
 	hw_ps = &priv_tbl->param_set[pps->pic_parameter_set_id];
 	memset(hw_ps, 0, sizeof(*hw_ps));
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
