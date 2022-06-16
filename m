Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68734C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jun 2022 20:27:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=laf1Q7U3yPKtY5pdki1LJuk4Cc3qomoljMqhF6Mnf68=; b=qrvf3qSbDWTylC
	Q5lCKaa2VhfitGNlTQA25bJI6D2IIRElP+n+L/xdWqC35vudlhgNTrqvrNRrXOvUXkP0IMyz99v+O
	gcfvNMZ8emis8pKvH0VackKn/tIIMnUaQogRAzMKMurxGpShz1yKnaJ45cdeiVne+y2D1Orumrt1S
	xqMjwnOZ3SbnJjs3dlJOhzdlKveIlodAs04fcdZyqd8WpGwM/a6Zv7Y9tNQM/Lc1gDG2Qha1+zdFt
	NaSjpHu3OckKhZ4n42fJhLCsWrgDaXF8/GVTe/oveVJuCPIYM12NYcNTzgU0iO/Jz1R27yJK3LdSz
	qV9Q1Yrp1sHpHOwYOvGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w4y-0046lT-Jy; Thu, 16 Jun 2022 20:27:00 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1w3T-0045vq-2E; Thu, 16 Jun 2022 20:25:29 +0000
Received: by mail-ed1-x530.google.com with SMTP id b8so3657387edj.11;
        Thu, 16 Jun 2022 13:25:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i3J94croFMFgt0EIDJ5nBaYvM7f2XLJQTjqgj/3/ZjU=;
        b=OjI41978muhCWJpsmE5/OwT4NeZE6oN7hB1HJMp+1zL5tIB2+dDizaiyju2FcUW9qX
         HIT9QQh11RNhiIn6kAMoJlJ0V1HcIwjQ0byUUh6vDi+Cgz473YAWz60fsAqksaBeOlfo
         wM6zf5PwHxslOSTrTzTA2LEYc1LmySjTyVOZl+H8czBl3PtiWqTCeNe/xE8Sw9rcDXoD
         Iowbhe4w+W0cfFkDnWAiYdrkDU0J8lnv8aZ4dgWrEwgnnQ75Sdx22inr6Td2NzeCf1Le
         kg0V6sUw4MclDdS2J5e7nU/G0cTj+f+OQRZs17+zHUJ5UxwRGgx7r88R08oeK8LFHMPR
         cvAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i3J94croFMFgt0EIDJ5nBaYvM7f2XLJQTjqgj/3/ZjU=;
        b=ndsj3QtimP2tcjnSpZYzIRbTF2oA1cynk2OiViFZI+PVsy/cjdMyrkeFRM36BZLk05
         nE7C5+OSElztYlgNY7id/O7yrs4ko/r8sjKAIXBBwsWB2XPLrSaExVMb0mLiAJErbYE1
         T0RF91mXSLIAjM1eImHsX/16RcnHyoue9GP6EB057IdSDuPRnae5AqEAYAghRYFe7qXR
         sKnEuskNov85Bccvp5MotrlDK/dZt2HYn4BtxGC51cUuzyaPzKcuSHin51/Cy19S2Kkm
         8F4+3MkCYxcxputGaroRY/CPQrm70aL828eaOdpzAFdJ3e7+Bv6C6vH3/s+j3bCck6+v
         EnzQ==
X-Gm-Message-State: AJIora8a12COg0WR8Tab59yQ9wW/LaFf20HMGoc2kRehJ4PnoiBbXzFy
	zj+cX8XcmcIrRU+M1iceT7k=
X-Google-Smtp-Source: AGRyM1v1iQnrIcKC/5Ullqm08UvUYs8tXFYALDcMtA4733HLWtfij5akuBYqnFfWLR2YvuEHSDo7UA==
X-Received: by 2002:a05:6402:2788:b0:431:3f86:1d4e with SMTP id b8-20020a056402278800b004313f861d4emr8890198ede.238.1655411124688;
        Thu, 16 Jun 2022 13:25:24 -0700 (PDT)
Received: from kista.localdomain (213-161-3-76.dynamic.telemach.net. [213.161.3.76])
        by smtp.gmail.com with ESMTPSA id 21-20020a170906329500b006fe8a4ec62fsm1186760ejw.4.2022.06.16.13.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 13:25:24 -0700 (PDT)
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
Subject: [PATCH v2 5/7] media: hantro: postproc: Properly calculate chroma offset
Date: Thu, 16 Jun 2022 22:25:11 +0200
Message-Id: <20220616202513.351039-6-jernej.skrabec@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220616202513.351039-1-jernej.skrabec@gmail.com>
References: <20220616202513.351039-1-jernej.skrabec@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_132527_181954_88779D27 
X-CRM114-Status: GOOD (  10.75  )
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
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
