Return-Path: <SRS0=qEJD=IB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 734E2C433DB
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 16:58:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A6D6F64ED4
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Mar 2021 16:58:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A6D6F64ED4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dKH9Ryr/sCJxbeAzGVziQTMFPHHEem2n1huIhLcArJM=; b=dHoQjWv/8z6T2v1b2rKQyW3tG
	QaN/vZdes43kba+4uggiGMyTghfFG8qLsLctuehNHPy8MS0J9nRwbGsAC29aeBcNThC2yT2+jIw8k
	wQ3+ojTBu8qBzwcRfNcI9ezS7nufvglIopSiZZbecS6fxEji4EkujhxudqwpJb2s2toaG7nIA+ZQU
	2YvFgDdqvq89lT+l3iSXspH1TuPFrZFgIeFyi/STtGhAliivTWSYUd5H0zfcFWwWNMSFU6nIjT3+M
	7tDmrMTXMbVdeQUlE5V09qTUyER1ZaqcLGoyrdXIaNTZ5QGEkjp+vv8zIOUuM5m2kD3plyAjcETAA
	rF4gJKBog==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHUoz-005hOM-2l; Wed, 03 Mar 2021 16:58:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHSrw-005Ecd-Se; Wed, 03 Mar 2021 14:53:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=GDbYCbjU8uFIMJCg5RrAXmVXHedjcGN0JOiTY+I1M5g=; b=CfHtJyEt/yDDVwTgTDqcyE/iJS
 XpNNQDYxNFngfIy4X/oPjj0Dff6ViDHvsALtMqXiCFdmyKkqWUzJN4+XPRRazWnTmMoGfdoZbXKE6
 ckuPCKEpBJ4nnK/Hbl/a1bqVrau900xDRvqxEuuna9UzObIFjYerhEE4aKxJHkEDf/vQGD/1JmGet
 +50tZogaLMbCuByfplcNKOYFUzFyp0Go8FhIBz1N8PqYaCP1aelBQew8ttTBp9rdljGB9OxuAO18X
 gDw/Sz+bnJCzd/lPOd5/ZeVc0npk528mXnYWAt8+D6un5JVbqCgJssk3sB1cppXKY2ckd3RcTXUPA
 r+r5hjSQ==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by casper.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHPrb-002O2o-NO; Wed, 03 Mar 2021 11:40:24 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:2035:1dcd:21c7:b3af])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id ACD681F45C2D;
 Wed,  3 Mar 2021 11:40:21 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 peng.fan@nxp.com, hverkuil-cisco@xs4all.nl, dan.carpenter@oracle.com
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v4 05/11] media: hantro: Add a field to distinguish the
 hardware versions
Date: Wed,  3 Mar 2021 12:39:46 +0100
Message-Id: <20210303113952.178519-6-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
References: <20210303113952.178519-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210303_114024_182610_91800BFB 
X-CRM114-Status: GOOD (  16.73  )
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

Decoders hardware blocks could exist in multiple versions: add
a field to distinguish them at runtime.
G2 hardware block doesn't have postprocessor hantro_needs_postproc
function should always returns false in for this hardware.
hantro_needs_postproc function becoming to much complex to
stay inline in .h file move it to .c file.

Keep the default behavoir to be G1 hardware.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/hantro/hantro.h          | 13 +++++++------
 drivers/staging/media/hantro/hantro_drv.c      |  2 ++
 drivers/staging/media/hantro/hantro_postproc.c | 17 +++++++++++++++++
 3 files changed, 26 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index a76a0d79db9f..05876e426419 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -37,6 +37,9 @@ struct hantro_codec_ops;
 #define HANTRO_HEVC_DECODER	BIT(19)
 #define HANTRO_DECODERS		0xffff0000
 
+#define HANTRO_G1_REV		0x6731
+#define HANTRO_G2_REV		0x6732
+
 /**
  * struct hantro_irq - irq handler and name
  *
@@ -171,6 +174,7 @@ hantro_vdev_to_func(struct video_device *vdev)
  * @enc_base:		Mapped address of VPU encoder register for convenience.
  * @dec_base:		Mapped address of VPU decoder register for convenience.
  * @ctrl_base:		Mapped address of VPU control block.
+ * @core_hw_dec_rev	Runtime detected HW decoder core revision
  * @vpu_mutex:		Mutex to synchronize V4L2 calls.
  * @irqlock:		Spinlock to synchronize access to data structures
  *			shared with interrupt handlers.
@@ -190,6 +194,7 @@ struct hantro_dev {
 	void __iomem *enc_base;
 	void __iomem *dec_base;
 	void __iomem *ctrl_base;
+	u32 core_hw_dec_rev;
 
 	struct mutex vpu_mutex;	/* video_device lock */
 	spinlock_t irqlock;
@@ -412,12 +417,8 @@ hantro_get_dst_buf(struct hantro_ctx *ctx)
 	return v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
 }
 
-static inline bool
-hantro_needs_postproc(const struct hantro_ctx *ctx,
-		      const struct hantro_fmt *fmt)
-{
-	return !ctx->is_encoder && fmt->fourcc != V4L2_PIX_FMT_NV12;
-}
+bool hantro_needs_postproc(const struct hantro_ctx *ctx,
+			   const struct hantro_fmt *fmt);
 
 static inline dma_addr_t
 hantro_get_dec_buf_addr(struct hantro_ctx *ctx, struct vb2_buffer *vb)
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index f0b68e16fcc0..e3e6df28f470 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -836,6 +836,8 @@ static int hantro_probe(struct platform_device *pdev)
 	}
 	vpu->enc_base = vpu->reg_bases[0] + vpu->variant->enc_offset;
 	vpu->dec_base = vpu->reg_bases[0] + vpu->variant->dec_offset;
+	/* by default decoder is G1 */
+	vpu->core_hw_dec_rev = HANTRO_G1_REV;
 
 	ret = dma_set_coherent_mask(vpu->dev, DMA_BIT_MASK(32));
 	if (ret) {
diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 6d2a8f2a8f0b..050880f720d6 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -50,6 +50,23 @@ const struct hantro_postproc_regs hantro_g1_postproc_regs = {
 	.display_width = {G1_REG_PP_DISPLAY_WIDTH, 0, 0xfff},
 };
 
+bool hantro_needs_postproc(const struct hantro_ctx *ctx,
+			   const struct hantro_fmt *fmt)
+{
+	struct hantro_dev *vpu = ctx->dev;
+
+	if (ctx->is_encoder)
+		return false;
+
+	if (vpu->core_hw_dec_rev == HANTRO_G1_REV)
+		return fmt->fourcc != V4L2_PIX_FMT_NV12;
+
+	if (vpu->core_hw_dec_rev == HANTRO_G2_REV)
+		return false;
+
+	return false;
+}
+
 void hantro_postproc_enable(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
