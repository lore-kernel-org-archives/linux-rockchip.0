Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD7FDC433E0
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:07:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5B35E64D7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:07:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5B35E64D7F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fz5X0oQilKD7W1IV9FNLExoQsOeI1XWOnEzfR6vLIdE=; b=T1nWehdZQsssskOfGp8q2Jo8L
	eZ+/xQposnxJPq8zXIGICpfa/Js7bZG+EcHYKmwWIczUpu0Yx9cSdcZji+lOV8H7HPT9SwlSI505/
	gh1lqk+Wue5LN6SMSEWeoB00SfVnsqCDpckUIuB4/EHnn8thROv/pRQQxo4kgnRrCtvcByiz2YZYu
	xpdSHdVvUBxpVQJDdGjdWvprSwOwH4jk5dQzy9pITa46OtNXCH2pqAK7mvPiwuaGeRzrbmcYrVnAj
	lG2wWl5t6q16RDJoM/rD8JgUR649id0EUc+zg6KohhLnbwBbhwFwJ86JV+Mj1vAtCTioAxy3t+0Cj
	42O446uWA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCHri-000055-NU; Wed, 17 Feb 2021 08:07:18 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCHoi-00071w-3z; Wed, 17 Feb 2021 08:04:17 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id B51451F45097;
 Wed, 17 Feb 2021 08:04:08 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
Subject: [PATCH v1 14/18] media: hantro: add G2 support to postproc
Date: Wed, 17 Feb 2021 09:03:02 +0100
Message-Id: <20210217080306.157876-15-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_030412_387862_470BD0C2 
X-CRM114-Status: GOOD (  12.60  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

G2 doesn't have the same post processor feature than G1.
Adapt post processor code for G2 requirements.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 .../staging/media/hantro/hantro_postproc.c    | 35 ++++++++++++-------
 1 file changed, 23 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 050880f720d6..64eee936285d 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -74,12 +74,6 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
 	u32 src_pp_fmt, dst_pp_fmt;
 	dma_addr_t dst_dma;
 
-	if (!vpu->variant->postproc_regs)
-		return;
-
-	/* Turn on pipeline mode. Must be done first. */
-	HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x1);
-
 	src_pp_fmt = VPU_PP_IN_NV12;
 
 	switch (ctx->vpu_dst_fmt->fourcc) {
@@ -93,13 +87,32 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
 		break;
 	}
 
+	if (!vpu->variant->postproc_regs)
+		return;
+
+	/* Turn on pipeline mode. Must be done first. */
+	HANTRO_PP_REG_WRITE_S(vpu, pipeline_en, 0x1);
+
+	switch (ctx->dev->core_hw_dec_rev) {
+	case HANTRO_G1_REV:
+		HANTRO_PP_REG_WRITE(vpu, clk_gate, 0x1);
+		HANTRO_PP_REG_WRITE(vpu, out_endian, 0x1);
+		HANTRO_PP_REG_WRITE(vpu, out_swap32, 0x1);
+		HANTRO_PP_REG_WRITE(vpu, max_burst, 16);
+
+		HANTRO_PP_REG_WRITE(vpu, orig_width, MB_WIDTH(ctx->dst_fmt.width));
+		HANTRO_PP_REG_WRITE(vpu, display_width, ctx->dst_fmt.width);
+		break;
+	default:
+		vpu_err("PP does not recognize HW revision: %x, disabling\n",
+			ctx->dev->core_hw_dec_rev);
+		hantro_postproc_disable(ctx);
+		return;
+	}
+
 	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
 
-	HANTRO_PP_REG_WRITE(vpu, clk_gate, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, out_endian, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, out_swap32, 0x1);
-	HANTRO_PP_REG_WRITE(vpu, max_burst, 16);
 	HANTRO_PP_REG_WRITE(vpu, out_luma_base, dst_dma);
 	HANTRO_PP_REG_WRITE(vpu, input_width, MB_WIDTH(ctx->dst_fmt.width));
 	HANTRO_PP_REG_WRITE(vpu, input_height, MB_HEIGHT(ctx->dst_fmt.height));
@@ -107,8 +120,6 @@ void hantro_postproc_enable(struct hantro_ctx *ctx)
 	HANTRO_PP_REG_WRITE(vpu, output_fmt, dst_pp_fmt);
 	HANTRO_PP_REG_WRITE(vpu, output_width, ctx->dst_fmt.width);
 	HANTRO_PP_REG_WRITE(vpu, output_height, ctx->dst_fmt.height);
-	HANTRO_PP_REG_WRITE(vpu, orig_width, MB_WIDTH(ctx->dst_fmt.width));
-	HANTRO_PP_REG_WRITE(vpu, display_width, ctx->dst_fmt.width);
 }
 
 void hantro_postproc_free(struct hantro_ctx *ctx)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
