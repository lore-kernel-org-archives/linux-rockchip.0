Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 939AEC5DF6D
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Aug 2026 09:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=os6+MI2+Tu0X6DZmzbBKs3hfB4e+5VZECK2wIiQPyyY=; b=ZwSu+bbjUF2Ptp
	cnYNmLmHON4Zcb2zfBn3hVxLahNRU748y1NIi96Iqby7k57pti50p0vQmsPtIHxkIT9EQrWgx0rQf
	04dHpkdCBFjyxAQpOit5/gnNTH3MgFuLoNb7sLcfeS4ifzjgj5AQSPGs78RhOKJ97RLVEuoc/SrB2
	+F+CI2KlRDQW56cqdkuIEUGl+K1eHwDcTTtX0RfAv41Ed1sO9mu8951hwlAOmXSUISlNpDg2HWv1r
	5YgLfrscT48quFy2RV5mImMadxTbePEtjk+lg/0zoyGskroh8rnySURC22ErYb/dkq32poUJ7SvFU
	HpCKC2dgu4WUgHLZjHog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwcaq-00000009Pkb-1NVh;
	Wed, 19 Aug 2026 09:28:20 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwcan-00000009PiW-3MRS
	for linux-rockchip@lists.infradead.org;
	Wed, 19 Aug 2026 09:28:19 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-499acf0fb55so2240495e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 19 Aug 2026 02:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787131693; x=1787736493; darn=lists.infradead.org;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kjJqO5Tkx7QkqQKX+O7z966c27TyW/hoTQBkhU3dCmM=;
        b=TsY5uzPKoQyGBPZV+qcRY4nlaWIuqxdr6e1cFUfwvZrvOpt/32DnJGGr23KAnf5N56
         I7ZH+G+CBFrGlCOipQtqK9SrxAWTHGJjtWt2VkAHz3g4HwkyS4QhlbIkQY9Dmw6wzu2n
         bXjPdhogrippbsQmqzCsnneJ1SvBWuPZ2U6Ng4jfpkueYS8bTLt2W/CyFm7e8pqKY7zi
         onlrKqcoiVmlDasE1ReJc0XWC0zWy2M3lBWnQl5PI+1SjI9o4qpqWL2o9tB5YZRDbJus
         dgKpLNsh+7Vt38lM79g0VhtCpWs01bZoyjuYGoamg+G16cQeKcv36v3SyHOVdB8FtNw0
         DIFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787131693; x=1787736493;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kjJqO5Tkx7QkqQKX+O7z966c27TyW/hoTQBkhU3dCmM=;
        b=nDBXs/1d8ahoveRtqZEzMx/I5jruNP+JSYdfWtbgrrs7Sw4Cfk6q0w5HnjOu78I4nN
         fHW367VvRtlEf+4IMmjOWZajl7N+7uNMjW0aePk76SQj99Fs29iUm2+x3jdzR5qdO25U
         a/sxSQ5oiJi0rJyGo6DjmMC/n+4HbLdp93hTUkT97OPVps0+ME1VZdZhb24uRMfvkIHB
         Cbo4uHpevkN8lcVrmk34KWRCFvVxkljQydIC2dt2nrCDp3HW3y5LVoLoQkSwemuan0JM
         RagzeLjym5Jh4bJP2Rut+JWs6p6OwPhUBqhfyBIXjwUxlmhHd4T8Q5qytBW+0l5WTwhb
         jnnA==
X-Forwarded-Encrypted: i=1; AHgh+RqobviRgiQ33K0bQemL5nu6CrzvF2q+dOypiRFfUmb12qLA1+6BxfIhl/7EqPEds+cmxTqP1mm1DTppjqqxbw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy0pj0cW8XeVsV2vJM6WQaRDnCOmgK54WZZlNNjHyIpGh4l+8dn
	Z8IwedQInDoES1hSiYRq5829RR8SO8gjNSkyx7BvqUXiJvNkPAh0B6/F
X-Gm-Gg: AR+sD112jKwp1z5A2QRYsGtmuSswnNUke/XfPLLFPzoqkvt110aDUDZ9GRH1AGk7K7f
	qyxHJ3jCKDKJYgWOxAMQlEo4PQ1wYYD8oFpprHBBmcPTIGNLNRlxNyna/9gSa7K14CKCCrD0yYU
	3k0O+ITPNFRe7dRccmrp7e4TocT8VjdJ+BANRKo6fWgy5G4/0VrpH4364B9vy/hPjsnMV3r26p9
	xX0qYtTreC4iPM4gfYdHr+KCLGtl3WKL1hpNTidqrzneamAVbnVk8Tadii9tWPmcybGb78sf5PB
	PY+6SJrv63UTXHC1AH/hH/yn14SQeFlPVW1CP5aFFQdFHYxHc4RtlOSIHjWvA2wjc51Yg+PXLO8
	NHOjyMzsnrsO4+z/dd3qrmX57YfRTiGC9M5M4kkaFUt2FjGZ/VsEk2MXbb7LG6ikJI/Oewi5YDi
	1WAMXar2MT5j0patXKNJuhbT5kNzzvrb4xdq1hq7StcKeVqNd4tuVv9S1NjLWLg73LXl9c2+l8W
	10eQnkekOGee1vVfrz7xhNWlw==
X-Received: by 2002:a05:600c:8b65:b0:499:a5fc:2087 with SMTP id 5b1f17b1804b1-499aa1722f5mr58865455e9.6.1787131693443;
        Wed, 19 Aug 2026 02:28:13 -0700 (PDT)
Received: from michalis-linux (adsl-75.176.58.251.tellas.gr. [176.58.251.75])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499aa11fd3asm42234935e9.8.2026.08.19.02.28.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Aug 2026 02:28:13 -0700 (PDT)
Date: Wed, 19 Aug 2026 12:28:12 +0300
From: Michail Tatas <michail.tatas@gmail.com>
To: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com,
	p.zabel@pengutronix.de, mchehab@kernel.org, heiko@sntech.de
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] media: verisilicon: rockchip: Fix leaks in init
Message-ID: <aoV3LLy5hSoKL4QP@michalis-linux>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260819_022817_902144_E5F21B9E 
X-CRM114-Status: GOOD (  12.07  )
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

if one of the dma_alloc_coherent in the init fucntion fails then
the previously allocated ones leak.

Fix by freeing them in the error path.

Fixes: 727a400686a2 ("media: verisilicon: Add Rockchip AV1 decoder")
Signed-off-by: Michail Tatas <michail.tatas@gmail.com>
---
 .../verisilicon/rockchip_vpu981_hw_av1_dec.c  | 68 +++++++++++++++----
 1 file changed, 55 insertions(+), 13 deletions(-)

diff --git a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
index e4e21ad37323..fa77fd402412 100644
--- a/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
+++ b/drivers/media/platform/verisilicon/rockchip_vpu981_hw_av1_dec.c
@@ -369,6 +369,7 @@ void rockchip_vpu981_av1_dec_exit(struct hantro_ctx *ctx)
 
 int rockchip_vpu981_av1_dec_init(struct hantro_ctx *ctx)
 {
+	int ret = 0;
 	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_av1_dec_hw_ctx *av1_dec = &ctx->av1_dec;
 
@@ -377,39 +378,54 @@ int rockchip_vpu981_av1_dec_init(struct hantro_ctx *ctx)
 	av1_dec->global_model.cpu = dma_alloc_coherent(vpu->dev, GLOBAL_MODEL_SIZE,
 						       &av1_dec->global_model.dma,
 						       GFP_KERNEL);
-	if (!av1_dec->global_model.cpu)
-		return -ENOMEM;
+	if (!av1_dec->global_model.cpu) {
+		ret = -ENOMEM;
+		goto global_model_cpu_err;
+	}
+
 	av1_dec->global_model.size = GLOBAL_MODEL_SIZE;
 
 	av1_dec->tile_info.cpu = dma_alloc_coherent(vpu->dev, AV1_TILE_INFO_SIZE,
 						    &av1_dec->tile_info.dma,
 						    GFP_KERNEL);
-	if (!av1_dec->tile_info.cpu)
-		return -ENOMEM;
+	if (!av1_dec->tile_info.cpu) {
+		ret = -ENOMEM;
+		goto tile_info_cpu_err;
+	}
+
 	av1_dec->tile_info.size = AV1_TILE_INFO_SIZE;
 
 	av1_dec->film_grain.cpu = dma_alloc_coherent(vpu->dev,
 						     ALIGN(sizeof(struct rockchip_av1_film_grain), 2048),
 						     &av1_dec->film_grain.dma,
 						     GFP_KERNEL);
-	if (!av1_dec->film_grain.cpu)
-		return -ENOMEM;
+	if (!av1_dec->film_grain.cpu) {
+		ret = -ENOMEM;
+		goto film_grain_cpu_err;
+	}
+
 	av1_dec->film_grain.size = ALIGN(sizeof(struct rockchip_av1_film_grain), 2048);
 
 	av1_dec->prob_tbl.cpu = dma_alloc_coherent(vpu->dev,
 						   ALIGN(sizeof(struct av1cdfs), 2048),
 						   &av1_dec->prob_tbl.dma,
 						   GFP_KERNEL);
-	if (!av1_dec->prob_tbl.cpu)
-		return -ENOMEM;
+	if (!av1_dec->prob_tbl.cpu) {
+		ret = -ENOMEM;
+		goto prob_tbl_cpu_err;
+	}
+
 	av1_dec->prob_tbl.size = ALIGN(sizeof(struct av1cdfs), 2048);
 
 	av1_dec->prob_tbl_out.cpu = dma_alloc_coherent(vpu->dev,
 						       ALIGN(sizeof(struct av1cdfs), 2048),
 						       &av1_dec->prob_tbl_out.dma,
 						       GFP_KERNEL);
-	if (!av1_dec->prob_tbl_out.cpu)
-		return -ENOMEM;
+	if (!av1_dec->prob_tbl_out.cpu) {
+		ret = -ENOMEM;
+		goto prob_tbl_out_cpu_err;
+	}
+
 	av1_dec->prob_tbl_out.size = ALIGN(sizeof(struct av1cdfs), 2048);
 	av1_dec->cdfs = &av1_dec->default_cdfs;
 	av1_dec->cdfs_ndvc = &av1_dec->default_cdfs_ndvc;
@@ -420,11 +436,37 @@ int rockchip_vpu981_av1_dec_init(struct hantro_ctx *ctx)
 						   AV1_TILE_SIZE,
 						   &av1_dec->tile_buf.dma,
 						   GFP_KERNEL);
-	if (!av1_dec->tile_buf.cpu)
-		return -ENOMEM;
+	if (!av1_dec->tile_buf.cpu) {
+		ret = -ENOMEM;
+		goto tile_buf_cpu_err;
+	}
+
 	av1_dec->tile_buf.size = AV1_TILE_SIZE;
 
-	return 0;
+	return ret;
+
+tile_buf_cpu_err:
+	dma_free_coherent(vpu->dev, av1_dec->prob_tbl_out.size,
+			  av1_dec->prob_tbl_out.cpu,
+			  av1_dec->prob_tbl_out.dma);
+prob_tbl_out_cpu_err:
+	dma_free_coherent(vpu->dev, av1_dec->prob_tbl.size,
+			  av1_dec->prob_tbl.cpu,
+			  av1_dec->prob_tbl.dma);
+prob_tbl_cpu_err:
+	dma_free_coherent(vpu->dev, av1_dec->film_grain.size,
+			  av1_dec->film_grain.cpu,
+			  av1_dec->film_grain.dma);
+film_grain_cpu_err:
+	dma_free_coherent(vpu->dev, av1_dec->tile_info.size,
+			  av1_dec->tile_info.cpu,
+			  av1_dec->tile_info.dma);
+tile_info_cpu_err:
+	dma_free_coherent(vpu->dev, av1_dec->global_model.size,
+			  av1_dec->global_model.cpu,
+			  av1_dec->global_model.dma);
+global_model_cpu_err:
+	return ret;
 }
 
 static int rockchip_vpu981_av1_dec_prepare_run(struct hantro_ctx *ctx)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
