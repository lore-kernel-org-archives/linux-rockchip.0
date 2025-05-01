Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59291C3ABAA
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 May 2025 21:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SQEzifbQ/hYb0WhIAL4J/+1NzMvF1lMTafNIUEkR7hM=; b=E1elfQTALDPnsI
	Kn/9rcEaYn6358QHHVIti37b/tpHP1mFuPgMdCLP8w1de0WeeI/nLxkLUE8Xm3ovzw0cwAWGG2pY/
	wXjpqUX10riXCz1dCDdxRHBK/wwe6LpR4UUpVwqOgzrnRBmhLM9Izg19w3N7W2Zfg0gIerRA+4rhb
	rgFHfi4YSaDgQ0Ss6tZXtNBreBnjbdwW5U2mVgp89Yfub86/x7itj0PoBtW1xNuJOCIIdkoTFdpNF
	XEpnvnZItsc0EeARBobx01zuGr+K12cK/xiJP0VdDBB6D5v0PeUxakeTNEOYrRrMHiizhIzxQvCnX
	OeJOAkZxNVfcCXXnS0xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAb2G-0000000GpZA-0Cy0;
	Thu, 01 May 2025 21:01:36 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAa0z-0000000GX4Y-33Cs
	for linux-rockchip@lists.infradead.org;
	Thu, 01 May 2025 19:56:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1746129371;
	bh=aeUagMt9j8V0x7zgrJ7xP0jWmkoNz11VjTWuvk0eDDc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=oDBFpjb2/InFEqWx+LkSnpjseD+S8IIZPtE+mz+w7c/xo2E/9yo4ggRHdeAzb8vwL
	 Q71ClFeVpUT1cQB4LMjd3bc5weEbzKo3ql01LCYNWeb7KqvwHcNm9un7IWJ4+P+WzO
	 b/MKlczz1KHEpcYA2YSmIAlwQiLbBznfRPWwLm0Bg9h+/GqefRfcpmu8K9HfgLJTKZ
	 nQ0wbHVg4rlIvTxEUb84IXUmnXmqUosxaLMjYCgNoiGH6sOuoI/ANuSMQhljdgJofk
	 YFtAvpp3E8/Bx1IpBgcj5mclMqSaf1U8b66/dk/W3JodchOle1nl1zSTLDptZFDAJ1
	 UO7PpLKJ/QumQ==
Received: from [192.168.13.3] (unknown [IPv6:2606:6d00:17:8242::c73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7134317E0C8C;
	Thu,  1 May 2025 21:56:10 +0200 (CEST)
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Date: Thu, 01 May 2025 15:55:48 -0400
Subject: [PATCH v10 2/4] media: rkvdec: Initialize the m2m context before
 the controls
MIME-Version: 1.0
Message-Id: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-2-c380ba452108@collabora.com>
References: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-0-c380ba452108@collabora.com>
In-Reply-To: <20250501-b4-rkvdec_h264_high10_and_422_support-v10-0-c380ba452108@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, kernel@collabora.com
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_125613_913052_30962EFC 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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

Setting up the control handler calls into .s_ctrl ops. While validating
the controls the ops may need to access some of the context state, which
could lead to a crash if not properly initialized.

Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
---
 drivers/staging/media/rkvdec/rkvdec.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
index 65c6f1d07a493e017ae941780b823d41314a49b8..7b780392bb6a63cc954655ef940e87146d2b852f 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -871,24 +871,24 @@ static int rkvdec_open(struct file *filp)
 	rkvdec_reset_decoded_fmt(ctx);
 	v4l2_fh_init(&ctx->fh, video_devdata(filp));
 
-	ret = rkvdec_init_ctrls(ctx);
-	if (ret)
-		goto err_free_ctx;
-
 	ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(rkvdec->m2m_dev, ctx,
 					    rkvdec_queue_init);
 	if (IS_ERR(ctx->fh.m2m_ctx)) {
 		ret = PTR_ERR(ctx->fh.m2m_ctx);
-		goto err_cleanup_ctrls;
+		goto err_free_ctx;
 	}
 
+	ret = rkvdec_init_ctrls(ctx);
+	if (ret)
+		goto err_cleanup_m2m_ctx;
+
 	filp->private_data = &ctx->fh;
 	v4l2_fh_add(&ctx->fh);
 
 	return 0;
 
-err_cleanup_ctrls:
-	v4l2_ctrl_handler_free(&ctx->ctrl_hdl);
+err_cleanup_m2m_ctx:
+	v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 
 err_free_ctx:
 	kfree(ctx);

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
