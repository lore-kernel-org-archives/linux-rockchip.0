Return-Path: <SRS0=sEzw=ML=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1100FC07E9D
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 14:38:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D0214610FB
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 14:38:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D0214610FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QVxzGOsQjuZoDECKwCo80ZOqy2vQASDOs/25K95b4ms=; b=Gmr+67ATSQTeOF
	7ucjIuRTPAjbV+tsq62TRoTko9zrxYiF/dmRHBqAFm4eDNVDQG+uWqUTQF4HdX5LYgXiVTI+gIcHA
	bYWB1mPzdDtrFkoncfHaJO6dt+WHe0vzzW9deXVop4Z8RfW4yS+xJIyu1JvuCgm+QkmScUxip0aGK
	C6kXyqi7NXAsD3opW4w32c8NEmXKl4Xypo/Q4tNk04LRJ4DYHJsCSZBdcn7rjZdgex3ejEgIjhoo0
	XdmlIjFAvb9nyTiFuhTaF8R2jXBJHR3X9O3bHBwl7yBB4mMDFz9rr+bu0vhNcX3lI/aHOwmmPp4o0
	9fAt0eMOG8cDd64Jxq6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5UPo-009ujm-Dt; Mon, 19 Jul 2021 14:38:40 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5UP5-009uOy-B2
 for linux-rockchip@lists.infradead.org; Mon, 19 Jul 2021 14:37:57 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id D19DB1F42C33
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Philipp Zabel <p.zabel@pengutronix.de>,
 Heiko Stuebner <heiko@sntech.de>, Alex Bee <knaerzche@gmail.com>,
 maccraft123mc@gmail.com, Chris Healy <cphealy@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Jonas Karlman <jonas@kwiboo.se>,
 Rob Herring <robh+dt@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: [PATCH RESEND v2 04/10] media: hantro: h264: Move DPB valid and
 long-term bitmaps
Date: Mon, 19 Jul 2021 11:37:05 -0300
Message-Id: <20210719143711.55749-5-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210719143711.55749-1-ezequiel@collabora.com>
References: <20210719143711.55749-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210719_073755_538720_1C931A4E 
X-CRM114-Status: GOOD (  13.57  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

In order to reuse these bitmaps, move this process to
struct hantro_h264_dec_hw_ctx. This will be used by
the Rockchip VDPU2 H.264 driver.

This idea was originally proposed by Jonas Karlman
in "[RFC 08/12] media: hantro: Fix H264 decoding of field encoded content"
which was posted a while ago.

Link: https://lore.kernel.org/linux-media/HE1PR06MB4011EA39133818A85768B91FACBF0@HE1PR06MB4011.eurprd06.prod.outlook.com/
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
 .../staging/media/hantro/hantro_g1_h264_dec.c   | 17 ++---------------
 drivers/staging/media/hantro/hantro_h264.c      | 13 +++++++++++++
 drivers/staging/media/hantro/hantro_hw.h        |  4 ++++
 3 files changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
index 2aa37baad0c3..6faacfc44c7c 100644
--- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
@@ -129,25 +129,12 @@ static void set_ref(struct hantro_ctx *ctx)
 	struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
 	const u8 *b0_reflist, *b1_reflist, *p_reflist;
 	struct hantro_dev *vpu = ctx->dev;
-	u32 dpb_longterm = 0;
-	u32 dpb_valid = 0;
 	int reg_num;
 	u32 reg;
 	int i;
 
-	/*
-	 * Set up bit maps of valid and long term DPBs.
-	 * NOTE: The bits are reversed, i.e. MSb is DPB 0.
-	 */
-	for (i = 0; i < HANTRO_H264_DPB_SIZE; ++i) {
-		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
-			dpb_valid |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
-
-		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
-			dpb_longterm |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
-	}
-	vdpu_write_relaxed(vpu, dpb_valid << 16, G1_REG_VALID_REF);
-	vdpu_write_relaxed(vpu, dpb_longterm << 16, G1_REG_LT_REF);
+	vdpu_write_relaxed(vpu, ctx->h264_dec.dpb_valid, G1_REG_VALID_REF);
+	vdpu_write_relaxed(vpu, ctx->h264_dec.dpb_longterm, G1_REG_LT_REF);
 
 	/*
 	 * Set up reference frame picture numbers.
diff --git a/drivers/staging/media/hantro/hantro_h264.c b/drivers/staging/media/hantro/hantro_h264.c
index ed6eaf11d96f..6d72136760e7 100644
--- a/drivers/staging/media/hantro/hantro_h264.c
+++ b/drivers/staging/media/hantro/hantro_h264.c
@@ -229,12 +229,25 @@ static void prepare_table(struct hantro_ctx *ctx)
 	const struct v4l2_ctrl_h264_decode_params *dec_param = ctrls->decode;
 	struct hantro_h264_dec_priv_tbl *tbl = ctx->h264_dec.priv.cpu;
 	const struct v4l2_h264_dpb_entry *dpb = ctx->h264_dec.dpb;
+	u32 dpb_longterm = 0;
+	u32 dpb_valid = 0;
 	int i;
 
 	for (i = 0; i < HANTRO_H264_DPB_SIZE; ++i) {
 		tbl->poc[i * 2] = dpb[i].top_field_order_cnt;
 		tbl->poc[i * 2 + 1] = dpb[i].bottom_field_order_cnt;
+
+		/*
+		 * Set up bit maps of valid and long term DPBs.
+		 * NOTE: The bits are reversed, i.e. MSb is DPB 0.
+		 */
+		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_ACTIVE)
+			dpb_valid |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
+		if (dpb[i].flags & V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM)
+			dpb_longterm |= BIT(HANTRO_H264_DPB_SIZE - 1 - i);
 	}
+	ctx->h264_dec.dpb_valid = dpb_valid << 16;
+	ctx->h264_dec.dpb_longterm = dpb_longterm << 16;
 
 	tbl->poc[32] = dec_param->top_field_order_cnt;
 	tbl->poc[33] = dec_param->bottom_field_order_cnt;
diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
index 5dcf65805396..ce678fedaad6 100644
--- a/drivers/staging/media/hantro/hantro_hw.h
+++ b/drivers/staging/media/hantro/hantro_hw.h
@@ -89,12 +89,16 @@ struct hantro_h264_dec_reflists {
  * @dpb:	DPB
  * @reflists:	P/B0/B1 reflists
  * @ctrls:	V4L2 controls attached to a run
+ * @dpb_longterm: DPB long-term
+ * @dpb_valid:	  DPB valid
  */
 struct hantro_h264_dec_hw_ctx {
 	struct hantro_aux_buf priv;
 	struct v4l2_h264_dpb_entry dpb[HANTRO_H264_DPB_SIZE];
 	struct hantro_h264_dec_reflists reflists;
 	struct hantro_h264_dec_ctrls ctrls;
+	u32 dpb_longterm;
+	u32 dpb_valid;
 };
 
 /**
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
