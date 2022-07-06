Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55769C43334
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Jul 2022 18:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f2yUM0+7iDV4g07xup9QAO+ficlQpItGo60rIshO27I=; b=BSVhT2S6ByTAms
	r5AU04f8i2DeGLRKBwQLpPbgHKTwsuj4+0fa6Qd10qmS/pO39nt7USBYLiLjT0Ois50PcHl8T52T2
	qjnEZV2cb7ix89l6KCl9e85CnM9Tm+yW7PeCrP4JAFpyaSLJjW5ivmcP/qSxHK3cYMPAVpzq1Q6DN
	eiY6kz3iw3BvpHx8GnZa2JH7nxdB77tjQo0oUo07XY1iP5uopNkbCJsL5o39poIMxlubSpF64n7DQ
	sdabkPF4G/hzS8ejWGpzZjzPYuO7tHUQsUV2dr27C1GTMhHFMRWhm49SBLH2DCVMjClvRugMbBkH8
	MIHctx6xEd1hNflc/hsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99nk-00Bxmz-D4; Wed, 06 Jul 2022 18:31:04 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o99m8-00Bwwo-0H; Wed, 06 Jul 2022 18:29:25 +0000
Received: by mail-wr1-x436.google.com with SMTP id f2so17852483wrr.6;
        Wed, 06 Jul 2022 11:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FBjdN5NUGMSrTfcSwRSnviKC0jDxf73NH1c09YBH+ks=;
        b=klI9lAEds8ntHb3bSSotoDSlhZMq2joJLVCnocYqYFGSS7LZmvwrfnitTKi1K6X/b9
         pvJgM59bEy0ouuAf+lNwyppcYvw8lBzDlzA6BI+FcfLqD6N7rS++8g8lNiPcA8NWaD9B
         XmURxrAAIG01cIj4P3/Wy3UccHZfiD7otxMF08UVoPm/WsqNorgmp9r9NZfI3LXJoMsQ
         wgs6GYjr+2nc9PEINOCpgW2hUZ5XSDv2vOMBubI/2jc23JBJ4pv+9iBkfPsM7WYT5BEL
         mgqS7jKsNeL6Vl4KxMi5x5l0/ANyplO1b1q6JgW6u816RjrkvctCuR/nNTkb/0MvJ3Ad
         /VKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FBjdN5NUGMSrTfcSwRSnviKC0jDxf73NH1c09YBH+ks=;
        b=E3lwRB/eGNTcnCOzh/uZtLJ2fyPhf3Lsyz/Qf8ranNZNx5MqyDL/YfMO/A2yD9apIc
         fFQ3YOSDfLrfD0Z7Lh2NuRS02LbpYMfMI33nYtNn13TTS733j4HvS1Y0TpnVOCInK1F1
         ArWuXDuUc3tn34YL9xEDatQRZmfzRhkm3hhZGY9yr2yAlK9c8Q7y9C+7OLz1oBd1UeyO
         QN2OIaFR5S6Dto3ViavxEovDaqtzeICg9MoV/ZYaro0DaakNCOHTWVJ5s3O5zLxInzup
         N6BrSVMEYmvks+WehhwRD1Wutq2B5QLkjiQtElAsDr9aB3MPKEbMcM7GSYeo2sgAnkbu
         pCQA==
X-Gm-Message-State: AJIora+KfKmTNs3SSnJY2y6yJB069wJeupHK9gvdeZyhSbBJ1X5SqJag
	9iw3oMxbm96dBm2a9hxvXXmEWdYQIg1xcA==
X-Google-Smtp-Source: AGRyM1vmHpcNssTFlNOXB27/03qd4J3xPuu63Y2Bl+wCdVyppCVWa3L2700thlJ4oAbh6D/NAoWZZg==
X-Received: by 2002:a5d:5f05:0:b0:21b:8ca0:6d3d with SMTP id cl5-20020a5d5f05000000b0021b8ca06d3dmr38801018wrb.382.1657132158045;
        Wed, 06 Jul 2022 11:29:18 -0700 (PDT)
Received: from kista.localdomain (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id r15-20020a0560001b8f00b0021d74906683sm5142406wru.28.2022.07.06.11.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Jul 2022 11:29:17 -0700 (PDT)
From: Jernej Skrabec <jernej.skrabec@gmail.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de
Cc: mchehab@kernel.org,
	hverkuil-cisco@xs4all.nl,
	benjamin.gaignard@collabora.com,
	nicolas.dufresne@collabora.com,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Jernej Skrabec <jernej.skrabec@gmail.com>
Subject: [PATCH v3 5/7] media: hantro: postproc: Properly calculate chroma offset
Date: Wed,  6 Jul 2022 20:28:59 +0200
Message-Id: <20220706182901.78949-6-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.37.0
In-Reply-To: <20220706182901.78949-1-jernej.skrabec@gmail.com>
References: <20220706182901.78949-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_112924_084010_F60390A3 
X-CRM114-Status: GOOD (  10.84  )
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

Currently chroma offset calculation assumes only 1 byte per luma, with
no consideration for stride.

Take necessary information from destination pixel format which makes
calculation completely universal.

Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Tested-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Jernej Skrabec <jernej.skrabec@gmail.com>
---
 drivers/staging/media/hantro/hantro_postproc.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro_postproc.c b/drivers/staging/media/hantro/hantro_postproc.c
index 8933b4af73ed..a0928c508434 100644
--- a/drivers/staging/media/hantro/hantro_postproc.c
+++ b/drivers/staging/media/hantro/hantro_postproc.c
@@ -113,12 +113,14 @@ static void hantro_postproc_g2_enable(struct hantro_ctx *ctx)
 {
 	struct hantro_dev *vpu = ctx->dev;
 	struct vb2_v4l2_buffer *dst_buf;
-	size_t chroma_offset = ctx->dst_fmt.width * ctx->dst_fmt.height;
 	int down_scale = down_scale_factor(ctx);
+	size_t chroma_offset;
 	dma_addr_t dst_dma;
 
 	dst_buf = hantro_get_dst_buf(ctx);
 	dst_dma = vb2_dma_contig_plane_dma_addr(&dst_buf->vb2_buf, 0);
+	chroma_offset = ctx->dst_fmt.plane_fmt[0].bytesperline *
+			ctx->dst_fmt.height;
 
 	if (down_scale) {
 		hantro_reg_write(vpu, &g2_down_scale_e, 1);
-- 
2.37.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
