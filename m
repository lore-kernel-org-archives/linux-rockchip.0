Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4676C636CC
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Feb 2023 10:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/HHGwTd/7U4pW7/ERdXaxcXiaPTW9n6cGdvASjDsXA=; b=pSjL6aja8FDuYN
	pTJj7p5NIPzV8HU34o52L8ag4RhdQCEn8MnKj5nIFYJeoPWBhQ4pUgv2L7C4t92JBBTH/CrDFGTcu
	5e/cOFYPvn/di+WatLkYvN1Wv+BMVSpHeR5c16bcMxr3B/LcBEQ0Gk5bl9/k3gcojJYVP2CUhVk7r
	7KifV/yx1E31VhQ6sMHURtsrEPy3z6gzigvomSGr+OdxuRCCt+nAiLEVhb7c9tnBoom4ZWM9mP1l/
	C3KWRozam8WiKJ4cpbfQF5bnX+c/x5XgeO+GY8DF02vRaxwM1aUPglGA1PjHhm9RckdBCxhu3ufi4
	Qz/Gddif9wDtCOxbNtnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU3kC-003iME-3C; Mon, 20 Feb 2023 10:50:04 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pU3jA-003i0m-Vy; Mon, 20 Feb 2023 10:49:03 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:d30c:b155:96fb:dcc])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A41796602135;
	Mon, 20 Feb 2023 10:48:57 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1676890138;
	bh=mU6dx4hn+cwCgHPnwybSeD67XSVlGhz85RqJ+3iMsW4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=hAfqO2zphslE1XZvxsSv+wFSwQhqwzKxh9Q7tQbrLqNKyvhEdb81v1OPRszY8PjRP
	 hVTDcMTwz2MRa7IrTbdz9G152y1AI8h5F9wAljx/fKMskyczSQX4zeZtM2REANUFgv
	 hEp4dXxdLy+/UMN9v9+w/COy6OdT1XUcvFLfvd8Y8nYcuccYdgIoQ2ynV+m4aO4gA4
	 fVDzIp3VCY9476oE36M/61O70q1iYTHWV10wGduc5M6oGvjDeSXRDi664JPbibvpcK
	 VTZvyYMvag6I1XF+aPzKRfdx5Wk855nDnx1KMlyekOGrnVaXfaCH+B4CE589MAewaP
	 NichsQwCaqt2w==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	mchehab@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.co.uk,
	robert.mader@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v9 1/6] media: verisilicon: Do not set context src/dst formats in reset functions
Date: Mon, 20 Feb 2023 11:48:44 +0100
Message-Id: <20230220104849.398203-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
References: <20230220104849.398203-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230220_024901_194285_9A9E839C 
X-CRM114-Status: UNSURE (   9.90  )
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

Setting context source and destination formats should only be done
in hantro_set_fmt_out() and hantro_set_fmt_cap() after check that
the targeted queue is not busy.
Remove these calls from hantro_reset_encoded_fmt() and
hantro_reset_raw_fmt() to clean the driver.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/verisilicon/hantro_v4l2.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/media/platform/verisilicon/hantro_v4l2.c b/drivers/media/platform/verisilicon/hantro_v4l2.c
index c0d427956210..d8aa42bd4cd4 100644
--- a/drivers/media/platform/verisilicon/hantro_v4l2.c
+++ b/drivers/media/platform/verisilicon/hantro_v4l2.c
@@ -382,13 +382,10 @@ hantro_reset_encoded_fmt(struct hantro_ctx *ctx)
 
 	vpu_fmt = hantro_get_default_fmt(ctx, true);
 
-	if (ctx->is_encoder) {
-		ctx->vpu_dst_fmt = vpu_fmt;
+	if (ctx->is_encoder)
 		fmt = &ctx->dst_fmt;
-	} else {
-		ctx->vpu_src_fmt = vpu_fmt;
+	else
 		fmt = &ctx->src_fmt;
-	}
 
 	hantro_reset_fmt(fmt, vpu_fmt);
 	fmt->width = vpu_fmt->frmsize.min_width;
@@ -408,11 +405,9 @@ hantro_reset_raw_fmt(struct hantro_ctx *ctx)
 	raw_vpu_fmt = hantro_get_default_fmt(ctx, false);
 
 	if (ctx->is_encoder) {
-		ctx->vpu_src_fmt = raw_vpu_fmt;
 		raw_fmt = &ctx->src_fmt;
 		encoded_fmt = &ctx->dst_fmt;
 	} else {
-		ctx->vpu_dst_fmt = raw_vpu_fmt;
 		raw_fmt = &ctx->dst_fmt;
 		encoded_fmt = &ctx->src_fmt;
 	}
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
