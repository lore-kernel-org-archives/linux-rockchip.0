Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22688C77B7C
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 May 2023 15:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UDSC9wX9MeTAHThXJb+uwiOxeJ/g2Nb8IzVYQ9ZfHGk=; b=rUaFjUaxqEsSYS
	7UVEYzmER453ZBDIBlyVXw8hRpMRtQyWuNb4gn6q14VjQCGVygtImG0Mc0ANVhLGD5rgpxd8N/YbP
	z3xqBF/fYhkOylXQhZ/Ky6IXVaBYbec+Gr7s0+Bc6dSQR14Hq7OWx1MS0ZEDUkfbqTUEdDVQmCfz8
	n+gGGoN0ncx2IFSoB6ts6k+I3IQNbefJlVz8caKaPez+3/K6q39Mtvb5I+8g+9BmuZTEXIMeeZFq8
	8rdTLVn6oNAegwrJPDzr8fixQZc1ElSIUuvi/z1KUavJ9a9ABGsXremGItfMtzuKXBG060XBjlqz8
	yooHNumWfVH0mwt+7u7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwOrv-003el9-2U;
	Tue, 09 May 2023 15:03:11 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwOrr-003ejl-2f
	for linux-rockchip@lists.infradead.org;
	Tue, 09 May 2023 15:03:10 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3f315735514so212231285e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 09 May 2023 08:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=yngvason.is; s=google; t=1683644582; x=1686236582;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yiiCFHEosqMsCxH4XI80X8lEQ3JLMfR1TMA28RRGwNE=;
        b=Vq31+bD8BmUMKDR2yIRO+WwAKTomtKCl8AFDzULseMjyEc0Z62L3dSqL0a/wPZmDUB
         JGRvYzFVcTKEzt2O/ZBlDKc6gQuBmKipuV9QnpZiO+yi0z3URYwcc+0EBuMv/q5u547X
         98c3NRtivO5Y6/T/H5notMvmWkKWV+1JzTbp0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683644582; x=1686236582;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yiiCFHEosqMsCxH4XI80X8lEQ3JLMfR1TMA28RRGwNE=;
        b=SuClkjM+kwdfeDRdHkCXD4WtMe9ydLMdSl8bfzD1Rn/tjrP/eQ5EWTLiKKo2hr6ucp
         y1fVuJ6dNShqq/O5sstnX0XBaHtQ1zQcqYrN0YllpjvTJ4IhiwzXImLRRYlQE+9JwQRJ
         BfU1eHph8dFqmfQFsNVktmUFHDmlP7E7MuyXniM1FdBRI7TE2VjMV94ZOtLH1LJCvXVJ
         NqmvOSLMWt3Rl2+bdhPskT7vQ3qzv6fWUKIqUF2L1NsTS1dXQt+4luwYr2ZUDfc16Y5W
         gTGNIIv7+vpC4BxEXeGv2CeDiixjaUlImaDdigPU3QbUqn7VqDieYLc1xCY0IbaTJaRt
         skxQ==
X-Gm-Message-State: AC+VfDxUilQQ64Fncpb+XI6/W2aULfPEsn+yPTO9nYeuSTBXpVCOWUbD
	PSxJMWTw5S9poeDyRGOD4jiCzQ==
X-Google-Smtp-Source: ACHHUZ4gjz4q+PyY6d+zetOBkLBeMQVa9bwTVYN5JzodVoQDnsveCJ/cK4ILy5y5ZL3eTDfWh0fF3A==
X-Received: by 2002:adf:db01:0:b0:307:9d14:eeee with SMTP id s1-20020adfdb01000000b003079d14eeeemr3587019wri.3.1683644580856;
        Tue, 09 May 2023 08:03:00 -0700 (PDT)
Received: from andri-workstation.turninn.appdynamic.com ([2a01:8280:aa07:ad:7285:c2ff:fef0:4baf])
        by smtp.gmail.com with ESMTPSA id n10-20020a5d400a000000b00307a3045d65sm2588373wrp.46.2023.05.09.08.03.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 May 2023 08:03:00 -0700 (PDT)
From: Andri Yngvason <andri@yngvason.is>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Andri Yngvason <andri@yngvason.is>
Subject: [PATCH 1/2] media: verisilicon: rockchip_vpu2_hw_jpeg_enc: Consolidate setting of source buffer addresses
Date: Tue,  9 May 2023 15:02:48 +0000
Message-Id: <20230509150249.824440-1-andri@yngvason.is>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_080308_056804_4F94CEF2 
X-CRM114-Status: GOOD (  12.89  )
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

Signed-off-by: Andri Yngvason <andri@yngvason.is>
---
 .../verisilicon/rockchip_vpu2_hw_jpeg_enc.c   | 36 ++++++++++---------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c b/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
index 8395c4d48dd0..52c76fb91c56 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu2_hw_jpeg_enc.c
@@ -32,6 +32,16 @@
 
 #define VEPU_JPEG_QUANT_TABLE_COUNT 16
 
+static inline u32 __vepu_reg_addr_for_plane(int plane)
+{
+	switch (plane) {
+	case 0: return VEPU_REG_ADDR_IN_PLANE_0;
+	case 1: return VEPU_REG_ADDR_IN_PLANE_1;
+	case 2: return VEPU_REG_ADDR_IN_PLANE_2;
+	}
+	return 0;
+}
+
 static void rockchip_vpu2_set_src_img_ctrl(struct hantro_dev *vpu,
 					   struct hantro_ctx *ctx)
 {
@@ -70,35 +80,27 @@ static void rockchip_vpu2_jpeg_enc_set_buffers(struct hantro_dev *vpu,
 					       struct vb2_buffer *dst_buf)
 {
 	struct v4l2_pix_format_mplane *pix_fmt = &ctx->src_fmt;
-	dma_addr_t src[3];
+	unsigned int num_planes = pix_fmt->num_planes;
+	unsigned int i;
+	dma_addr_t src;
 	u32 size_left;
 
 	size_left = vb2_plane_size(dst_buf, 0) - ctx->vpu_dst_fmt->header_size;
 	if (WARN_ON(vb2_plane_size(dst_buf, 0) < ctx->vpu_dst_fmt->header_size))
 		size_left = 0;
 
-	WARN_ON(pix_fmt->num_planes > 3);
+	WARN_ON(num_planes > 3);
+	if (num_planes > 3)
+		num_planes = 3;
 
 	vepu_write_relaxed(vpu, vb2_dma_contig_plane_dma_addr(dst_buf, 0) +
 				ctx->vpu_dst_fmt->header_size,
 			   VEPU_REG_ADDR_OUTPUT_STREAM);
 	vepu_write_relaxed(vpu, size_left, VEPU_REG_STR_BUF_LIMIT);
 
-	if (pix_fmt->num_planes == 1) {
-		src[0] = vb2_dma_contig_plane_dma_addr(src_buf, 0);
-		vepu_write_relaxed(vpu, src[0], VEPU_REG_ADDR_IN_PLANE_0);
-	} else if (pix_fmt->num_planes == 2) {
-		src[0] = vb2_dma_contig_plane_dma_addr(src_buf, 0);
-		src[1] = vb2_dma_contig_plane_dma_addr(src_buf, 1);
-		vepu_write_relaxed(vpu, src[0], VEPU_REG_ADDR_IN_PLANE_0);
-		vepu_write_relaxed(vpu, src[1], VEPU_REG_ADDR_IN_PLANE_1);
-	} else {
-		src[0] = vb2_dma_contig_plane_dma_addr(src_buf, 0);
-		src[1] = vb2_dma_contig_plane_dma_addr(src_buf, 1);
-		src[2] = vb2_dma_contig_plane_dma_addr(src_buf, 2);
-		vepu_write_relaxed(vpu, src[0], VEPU_REG_ADDR_IN_PLANE_0);
-		vepu_write_relaxed(vpu, src[1], VEPU_REG_ADDR_IN_PLANE_1);
-		vepu_write_relaxed(vpu, src[2], VEPU_REG_ADDR_IN_PLANE_2);
+	for (i = 0; i < num_planes; i++) {
+		src = vb2_dma_contig_plane_dma_addr(src_buf, i);
+		vepu_write_relaxed(vpu, src, __vepu_reg_addr_for_plane(i));
 	}
 }
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
