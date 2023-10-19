Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEE9CC41513
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 12:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDwzWirYudEfxvIO+e84eYwNamoUc2v9Eodi4zuGJss=; b=ur89Y5k3eGEDA+
	RbA9OM/FEcRyTpuXoOYFz32H0jFYlyyycboZQFC270QVPC4TlP6tw5iOhWu2GQqfXT5d2s/rdm2KT
	uqctqL/B1YzN5nta48jdiKgN+Kj9fvpp4cU/sknFmCI0+bbql+l2X6qJ8FeEgRVAz94f1mU9W+lqv
	2CJQQO6cf2KQXDyj/douyBv8WgJ3tryNz7CxA38CV/ViObiiPMlwwb+hbhHgEPismkwv6vK2i+Bk0
	NPtleOXYJxo03NMWQJ0STOOZ75ltLQP3PEf/F0nFQ3EB+NvKtj34wbE6q1nAZHdIvD/V6wlolLlmF
	VPD/qrEN3gEontcSk6Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSZZ-00HR5p-1K;
	Thu, 19 Oct 2023 12:56:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSWE-00HNcQ-2B;
	Thu, 19 Oct 2023 12:52:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8DpoE1AoK2fP+RIvieFAiWcgzt2e00XMFBFnulvtgj0=; b=EO9wLxUg58ImWXNVXjk7st1act
	tFudt1gktj3z347ECAs3zyWJR11RetZ7skhWs8k4LLK1KDGUJplQ/hyLFW6dOXt/bGDB7SaltyQeh
	nVSEb1Lsc2R22QGKBnK5+8ixmpxnsWgTYuYxCdATrdShyQy4lzs89Gw1IASQ8+apewcwRr3jj9PKT
	tyYyiXVNcZIN/V5qbIO0FyOCjP7v+q74yI8pqPN2jB/jjzzAZwjAZasmCCYU1YU6JwJ1q1/vRWpwf
	uVTXECGLxdv9UujykbaVshSpvR4ggxR5NmMqMkMAXZ4dXbkplGHF1Z6T68Zm9qgxi+QYvAypiH/K7
	51FYiSog==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtSW5-009rST-0M;
	Thu, 19 Oct 2023 12:52:48 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:ccea:1fb5:34eb:239b])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 33CCD6607347;
	Thu, 19 Oct 2023 13:52:36 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697719956;
	bh=U25RUhgn4wrEJgYWeqq/JM19FcBBlklJam1nCiVEFHQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AYpmPP36T5mPlYAQ7Ljy1EP2tvHb4iQb5fs2G7SGU61EmhAkf7s7SPmgA/jwHxORZ
	 77IBBOP8nPtKSQr4wPDLxe2O1oVoVdTAfzGTB2gunIGV/Lqm1+PcxifxMQuMBnf2Le
	 cS2eGpXcsaEAKiM9/3Cdwl0Ur8FLSQPonBhM7tGNNvbPR0KvQFBrYOVwQatbNEpNyb
	 xvdPCYMjh4kzc4TEy/SFtvRzmh9xYUTsitvPkf1heJxMZlV+C1O9I5oxUoY7g5k0Oy
	 UbB8Ff82YtWx1jsbO4pEcfmox9FBANJZ4lAs9MqDSoxy1M6dZ1KrG5fLMrGCus0Ehs
	 S3FOa+K7h674A==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: mchehab@kernel.org,
	tfiga@chromium.org,
	m.szyprowski@samsung.com,
	ming.qian@nxp.com,
	ezequiel@vanguardiasur.com.ar,
	p.zabel@pengutronix.de,
	gregkh@linuxfoundation.org,
	hverkuil-cisco@xs4all.nl,
	nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-staging@lists.linux.dev,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Bin Liu <bin.liu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v13 11/56] media: mediatek: jpeg: Use vb2_get_buffer() instead of directly access to buffers array
Date: Thu, 19 Oct 2023 14:51:37 +0200
Message-Id: <20231019125222.21370-12-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231019125222.21370-1-benjamin.gaignard@collabora.com>
References: <20231019125222.21370-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_135245_433690_F8410812 
X-CRM114-Status: GOOD (  11.79  )
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

Use vb2_get_buffer() instead of direct access to the vb2_queue bufs array.
This allows us to change the type of the bufs in the future.
After each call to vb2_get_buffer() we need to be sure that we get
a valid pointer so check the return value of all of them.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
CC: Bin Liu <bin.liu@mediatek.com>
CC: Matthias Brugger <matthias.bgg@gmail.com>
---
 drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
index 7194f88edc0f..73a063b1569b 100644
--- a/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
+++ b/drivers/media/platform/mediatek/jpeg/mtk_jpeg_core.c
@@ -598,12 +598,11 @@ static int mtk_jpeg_qbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
 		goto end;
 
 	vq = v4l2_m2m_get_vq(fh->m2m_ctx, buf->type);
-	if (buf->index >= vq->num_buffers) {
-		dev_err(ctx->jpeg->dev, "buffer index out of range\n");
+	vb = vb2_get_buffer(vq, buf->index);
+	if (!vb) {
+		dev_err(ctx->jpeg->dev, "buffer not found\n");
 		return -EINVAL;
 	}
-
-	vb = vq->bufs[buf->index];
 	jpeg_src_buf = mtk_jpeg_vb2_to_srcbuf(vb);
 	jpeg_src_buf->bs_size = buf->m.planes[0].bytesused;
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
