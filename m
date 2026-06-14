Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04C72CD98DF
	for <linux-rockchip@archiver.kernel.org>; Sun, 14 Jun 2026 13:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h6Z3oo2LIduzI9DUjGG/3sQiTknptzUuNMQMUWZZuHk=; b=j7ndTKDWAqDo29
	ngrETrlqYFr1FOuUNHTMEFN1nVIrsY4xcUst6ekLtPkQIsLPg94b7IgeVc6cLFRI8F4fjoYlwJi/0
	f3oHIizKldudp9EImZCAOxHy6eJCdsnCfL7GxrJLm6Co1dO6BIS8zOrAZwuoTmZC+QI/gmTWqSnJi
	hThIdBCwPGMgMyQW3pxQtFoVd1ZSICyxt75G2Wy+eRpsowraaCVEQVDMgDioGYca3Eoq7HHdgyMB+
	z3XHWhnSLF7IJ4O4IWzwPG6pbBrxN48Fmp05tJOyj3Cu+hq0Q7uH7o4ikx24hVfLdAh6PACD1IpNK
	mAB6DJiH2klvFmLzbDZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbO-0000000D0Du-2iV5;
	Sun, 14 Jun 2026 13:10:14 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYkbL-0000000D0Ah-1yBY
	for linux-rockchip@lists.infradead.org;
	Sun, 14 Jun 2026 13:10:12 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-915e1354934so263951085a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 14 Jun 2026 06:10:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781442610; x=1782047410; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=viox6pD1QfsYaMbYifCSfXJ+WEadIZxjJ3+HuLOIzqg=;
        b=M8HIOGKB4T7zRXetYJ/5N2HEerq8jt3zNXnVzehMLvMSfa8RIgePoXd83SedXQk/ju
         6OuAfXKkp7F5zxVE0wjpG6Ey1MDIMJrEoWJziKVs/10MKYXC4ve4VqoCYKOqyvBq5GWW
         +w6G91kKQgvBXYI81y1maj5PgmDl3HMHMMBA3CP+PZxGVMN19AE0aqbYwx5tqnQv/fyn
         6GH/XCxWRa5I6QOzFj40DNlB+s6rhBcTCxYA+roeHdDTQe1Z276E+DJz/ZrWuzXfoQsW
         iVTHCN5zRrKwIpErIsjc52w3As+xstr9nbZfZZBZrW15MLlERhLVgdlMT8qnqYtcBFL8
         XSiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781442610; x=1782047410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=viox6pD1QfsYaMbYifCSfXJ+WEadIZxjJ3+HuLOIzqg=;
        b=HHG8JVsOvQb3He5xbuIVLWGugC+6N1sLDLRnauRnrfXZYnl62Yhi8Kqmw0cvKdJSyz
         8LOXAgPl6s2gVNGQolZHYffISw44BkD80uUNrNacPuQRZKUM+oPZP2VYkw0x0wAFJ33r
         1O5aFJOlEBWXfK+EVVTfPnT0/rjCUtsu9d1+I8kTskx5J8nhvJeg7GYyRGti/FqQ6SzP
         TRdOzHUd6uVyJ+iVYPOIyi24C+xMunn/FNZP1bfAt7JlJ/PhVGtFQadDEg7QnqEnybPm
         mGIoF+fU9ohl+MuZPwJ6FLG1O/h6bW57MPH/mPuswzSPZG7jb5BqicRiFMigIdK58YFt
         h7NA==
X-Forwarded-Encrypted: i=1; AFNElJ/hvzLwGyHU9beKPvPk9yZk1kkHxCB+nKT14e7balvDUGSgVlyrcpjKrBEP4Ce4vvDNobLPfXK3gP5E2tm3Jw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzfNC7HEHo9FGYmDblgR91IxEHL+p+igx4GdBrCiN80zrblNbJf
	G+4StR2yXPtrUpNQvIBSpKHmWGRVqGZBuf81BD8vmBp3iYcXoEQ6Kq/s
X-Gm-Gg: Acq92OHsgqqq9twFN8k8EWLx4LhRSDhKtm+ffIJrVQ8P6BnMGHYEKYLY4MKPAsIMakI
	CEGkqUsUgIS7UYpzLY12RI71kYGwzYEYLoTQAJpblxFG+7e5w108Yw4giuHczI52ewPClM3nhZM
	LihwSg7RFslToIZP0Zy4UCO9AEGeZvDUr3erHOaqxxzCb1VaIc2M5spu9hCGFVIPzSKF6xf+Sk5
	pZHRwDxe52JrkU77cpvFf0Yi4rvgspkw84vOac3A/E6WupZvXqx4YlNv5DIq5Thk3xXzMpB1xzB
	WDzmtl9RYO3Nn6WeTyADykOW3A+PXcHcEut9XER5fG9tYYTClEXbVL6cVzS8J6N3NhZeLS+5Tg/
	wqV0Z+Q8lTQqIBdECi8+/yLVlmxmoszicb/kvKK9jLOt7f9x1YUPSFlKkt3Zn5hDpCtrOEX7F3c
	/7OJgjTNK1yBpw4+A7AE9X9NyFTUfXAXKXO6tcObyyoxYesEefGVaSJ+s10UKK0s1fVxs5fpNP6
	pkIHjm28FMn2QlwXGRG9sCgC6+yh9cCqeZvb9NGjbg=
X-Received: by 2002:a05:620a:bc8:b0:915:a73e:3544 with SMTP id af79cd13be357-917f1c56720mr1256745485a.56.1781442610430;
        Sun, 14 Jun 2026 06:10:10 -0700 (PDT)
Received: from server0.tail6e7dd.ts.net (c-68-48-65-54.hsd1.mi.comcast.net. [68.48.65.54])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-91619f1b400sm752878985a.15.2026.06.14.06.10.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Jun 2026 06:10:09 -0700 (PDT)
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
Subject: [PATCH 2/6] media: rkvdec: bound HEVC tile loops and PPS id to the array capacity
Date: Sun, 14 Jun 2026 09:09:59 -0400
Message-ID: <20260614131003.2524025-3-michael.bommarito@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260614131003.2524025-1-michael.bommarito@gmail.com>
References: <20260614131003.2524025-1-michael.bommarito@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260614_061011_555665_77FA589D 
X-CRM114-Status: GOOD (  17.23  )
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
The decoder is an ARM SoC block (Rockchip RK33xx/RK35xx) not reachable on
the x86 KUnit host, so the driver-side out-of-bounds write is not
reproduced here.

 .../rockchip/rkvdec/rkvdec-hevc-common.c      | 22 +++++++++++++++----
 .../platform/rockchip/rkvdec/rkvdec-hevc.c    |  8 +++++--
 .../rockchip/rkvdec/rkvdec-vdpu381-hevc.c     |  2 ++
 3 files changed, 26 insertions(+), 6 deletions(-)

diff --git a/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c b/drivers/media/platform/rockchip/rkvdec/rkvdec-hevc-common.c
index 3119f3b..d0f26f7 100644
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
index ac8b825..29b5adb 100644
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
index fe6414a..6dafa1d 100644
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
