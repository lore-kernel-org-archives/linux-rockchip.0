Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0C21CD98E0
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 15:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xKzoHgYMxXgdf0lYZx3i6MLGXtE2iXyOgGx1/o6eOo=; b=sfxnDpSO2igB4Y
	KA/a8MkFAL/NvrelHh3CfDAM/MFa92w9mhdut/1653X7JWOL2oF40lTh8VvGby1SpuXCyygikTcdK
	KL+mRIqDsesfjrXJF+i4CXVtimbEhmH7jmIqNBfuPy1tp+4Z7/f6l3rtPqh1wnb8C5L00YVsTmBQQ
	q4FLtjLJDyF4uyCbhRzkBEGCDbY+NwdpFgyJyZa0gZ7hQlANwTyRfP5u6oLCztF2YOZNgcrCJWuFW
	oAZ0U0N6k7XWEfmcnvrSVWn4LAXC27dbCtXYNr2XucA2zDjk2E70/+R4EWO2RTl3Vau9Emk1vYuEy
	nW/eBrMiDa7m6kiaPOpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnC7-0000000D9YG-1x82;
	Sun, 14 Jun 2026 15:56:19 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYnC5-0000000D9Wg-2Hgy
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 15:56:18 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-8ced8f44da0so30255726d6.2
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 08:56:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781452576; x=1782057376; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z35bHdhSh8a/Z8G1ETcqSJjtROGT6H3Pl9v+4lJ8nHY=;
        b=GBRdwVM1J1qjW9f1O3+eKycj7mwECZpZUEgLgQ1BCfMqLQrTAwqUqvXzfC1Q+WkLJM
         Koy2dyziaJ0CTP8cYawFVpFIdHNimMSDSWUb0Ti2eDWMMMs1JJf1/mtFWg62WAEDVsbW
         4fwQZ9a53q+OxMr0kEbVC5fZOp/IDWwMfXb0O/vNVOXUf/++YwpwBIIhd6xO8wW0V+AK
         z4WrMhaat+J7UkQ1fLnJ66i/uPF8vrfEynEwfBnthx1ADIAf3Epj9YFonOXwwZo4nt5M
         JC2fd9MpU6uBwkInhyEjdmqIk0cWLg9O7nK1WDVdcL/3WhKpxq3H2u6OreQfWopcqRbQ
         +wLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781452576; x=1782057376;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z35bHdhSh8a/Z8G1ETcqSJjtROGT6H3Pl9v+4lJ8nHY=;
        b=qgtPj846xAI3yw2+919EF9zCxCkmLjNUmfyHJzzM1iJ8IcN0dwLOIzOZTgvkydXYCO
         4Vz+YjLnhtX0h+7H45nPXS1UgAds99ZZ4TvR07U7/lIINbpLR69xjGyjlk7sk2tIKqHQ
         cBJSChtrpUOzNmaQyBcv8AvQ9NU7KCSy0xxeSUCaNl/wKJvOPV4tHEchw3/5dlwr2afL
         xZ2NUfIlIOlbJRss/FlUC2GMljCgNSPEl4GUTNVfCmVHUm5rTPOx4SZlCycWzmyVPnDC
         fAGQNj7LN/P6EDKGxGmaavyuIWBA3ZzPT/1GW3AkAO0ESsf68jPevtc1ReBQugbmN7B5
         1L0w==
X-Forwarded-Encrypted: i=1; AFNElJ+LiqkfmXGSwZVD2NQrxlhd1rPZc7yjOvxWmCBygawhis3mrxkgQupMMRYdfbxUtFZM1k4H7CQAEewrUKZpHQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzUtnD5Qu4Xtn7vcJkdWASR5TnMNVyGLpUAuvizht1zDidcUK3R
	ZaWWCs25S2/8+B/33z7sliEpunKjQpFkOoaASRN8Uqa+YrGS96iRPo/K
X-Gm-Gg: Acq92OGI5r9MTNshpLjJsrTDChMP/njy808WsjALd0nf4Q6cMPasaHEI4XEQt0HUKg/
	ja8URUfuBsBPF7fFt/s+KMkxvQL9vOp4FNF4hRb0opEUpuq2SZb1pKU2qlegIF2yBcaptFRBcIS
	AC7K2fS9YrbsW7cacRXrNVAgKFdhTQKUW6NSJT2I1QtUDKoBaPMYnUQkDOiC8K5CyZpMVuvlbN8
	/ngFZJgUrbRsKlXhBo14H3irh9phpRssIsZ0OTQHCicSV1HdtnwlSWnT8C3/qAoWQ2XPJinPDbq
	vCiZSSGsW7MnBkY5RhGal22QH6lto9xzltIJDVeyVPl7uCUrjLhIbyW/uY+Ao6Qc9vSziRp5HLn
	5E9zQYdghdPHyoSmQFB3mR4+7Zj/u7qxdS5c28A/Nl4Cjg4wdlYajP+ITo53JPWs4sKq5Z9QO2X
	UhCBJnimuG5YP1aAPsWngWYQXfJ2C/XSkUQHL1GcvVs2sQ3aC4hZLzNvwzg2UMXFPUJ2eaxUlHo
	/pictlyfMaYu9Yi3DNiFb6u73hXZXqqTYp9rjdQW/A=
X-Received: by 2002:ad4:596a:0:b0:8cc:e8f4:1630 with SMTP id 6a1803df08f44-8d32e50112cmr179007736d6.30.1781452576150;
        Sun, 14 Jun 2026 08:56:16 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8d30522cbeasm82008446d6.44.2026.06.14.08.56.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 08:56:15 -0700 (PDT)
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
Subject: [PATCH v2 2/6] media: rkvdec: bound HEVC tile loops and PPS id to the array capacity
Date: Sun, 14 Jun 2026 11:56:04 -0400
Message-ID: <20260614155609.3107600-3-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614155609.3107600-1-michael.bommarito@gmail.com>
References: <20260614155609.3107600-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_085617_605861_E2C3CDD2 
X-CRM114-Status: GOOD (  17.10  )
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

compute_tiles_uniform() / compute_tiles_non_uniform() and assemble_hw_pps()
loop over num_tile_columns_minus1 / num_tile_rows_minus1 to write the
per-tile column_width[] / row_height[] arrays, sized to the PPS uAPI arrays
column_width_minus1[20] / row_height_minus1[22]; bound the loops to that
capacity. assemble_hw_pps() also indexes the fixed param_set[] table by
pic_parameter_set_id, a driver-interpreted index the core does not reject;
bound it to the table size before the access.

Fixes: 3595375c2301 ("media: rkvdec: Add HEVC backend")
Fixes: c9a59dc2acc7 ("media: rkvdec: Add HEVC support for the VDPU381 variant")
Signed-off-by: Michael Bommarito <michael.bommarito@gmail.com>
Assisted-by: Claude:claude-opus-4-8
---
 .../rockchip/rkvdec/rkvdec-hevc-common.c      | 22 +++++++++++++++----
 .../platform/rockchip/rkvdec/rkvdec-hevc.c    |  8 +++++--
 .../rockchip/rkvdec/rkvdec-vdpu381-hevc.c     |  2 ++
 3 files changed, 26 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
index 3119f3bc9f98b..d0f26f736a763 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
@@ -37,15 +37,22 @@ void compute_tiles_uniform(struct rkvdec_hevc_run *run, u16 log2_min_cb_size,
 			   s32 pic_in_cts_height, u16 *column_width, u16 *row_height)
 {
 	const struct v4l2_ctrl_hevc_pps *pps = run->pps;
+	unsigned int num_cols, num_rows;
 	int i;
 
-	for (i = 0; i < pps->num_tile_columns_minus1 + 1; i++)
+	/* Bound the loops to the column_width[]/row_height[] capacity. */
+	num_cols = min_t(unsigned int, pps->num_tile_columns_minus1 + 1,
+			 ARRAY_SIZE(pps->column_width_minus1));
+	num_rows = min_t(unsigned int, pps->num_tile_rows_minus1 + 1,
+			 ARRAY_SIZE(pps->row_height_minus1));
+
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
@@ -57,17 +64,24 @@ void compute_tiles_non_uniform(struct rkvdec_hevc_run *run, u16 log2_min_cb_size
 			       s32 pic_in_cts_height, u16 *column_width, u16 *row_height)
 {
 	const struct v4l2_ctrl_hevc_pps *pps = run->pps;
+	unsigned int num_cols, num_rows;
 	s32 sum = 0;
 	int i;
 
-	for (i = 0; i < pps->num_tile_columns_minus1; i++) {
+	/* Leave one slot for the trailing last-tile entry written below. */
+	num_cols = min_t(unsigned int, pps->num_tile_columns_minus1,
+			 ARRAY_SIZE(pps->column_width_minus1) - 1);
+	num_rows = min_t(unsigned int, pps->num_tile_rows_minus1,
+			 ARRAY_SIZE(pps->row_height_minus1) - 1);
+
+	for (i = 0; i < num_cols; i++) {
 		column_width[i] = pps->column_width_minus1[i] + 1;
 		sum += column_width[i];
 	}
 	column_width[i] = pic_in_cts_width - sum;
 
 	sum = 0;
-	for (i = 0; i < pps->num_tile_rows_minus1; i++) {
+	for (i = 0; i < num_rows; i++) {
 		row_height[i] = pps->row_height_minus1[i] + 1;
 		sum += row_height[i];
 	}
diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
index ac8b825d080a2..29b5adb509727 100644
--- a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
+++ b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc.c
@@ -156,6 +156,8 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 	 * packet unit). so the driver copy SPS/PPS information to the exact PPS
 	 * packet unit for HW accessing.
 	 */
+	if (pps->pic_parameter_set_id >= ARRAY_SIZE(priv_tbl->param_set))
+		return;
 	hw_ps = &priv_tbl->param_set[pps->pic_parameter_set_id];
 	memset(hw_ps, 0, sizeof(*hw_ps));
 
@@ -274,9 +276,11 @@ static void assemble_hw_pps(struct rkvdec_ctx *ctx,
 
 	if (pps->flags & V4L2_HEVC_PPS_FLAG_TILES_ENABLED) {
 		/* Userspace also provide column width and row height for uniform spacing */
-		for (i = 0; i <= pps->num_tile_columns_minus1; i++)
+		for (i = 0; i <= pps->num_tile_columns_minus1 &&
+		     i < ARRAY_SIZE(pps->column_width_minus1); i++)
 			WRITE_PPS(pps->column_width_minus1[i], COLUMN_WIDTH(i));
-		for (i = 0; i <= pps->num_tile_rows_minus1; i++)
+		for (i = 0; i <= pps->num_tile_rows_minus1 &&
+		     i < ARRAY_SIZE(pps->row_height_minus1); i++)
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
