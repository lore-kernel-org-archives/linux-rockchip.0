Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BA96E82CA5
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 15:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZR+FcCVgzOkEznZ47+lh8a9tGV/Wy2jYLgF3q4KKUX0=; b=Uxl8JpnUHBKDvF
	o0bYsKVMewrb/se16wumGlJh3zoLk0P+27Ipz/TE+KvNfo7YNiDmLZ/b4sqogFPU1zGgmOPN9dCAc
	wzdUafTCuwUn+zZHAEuuHOrrhx5qhDLj6WnzvuU5Xq/vdweMJUGYKwDfUzoGvIJ6mR3bemBPCCd99
	jfOzu9V/e5aLm51xcsilkrvj9wdFXTnTiyrZJKIezklKRePe5S3yUwxwBE+OO9Dk1u7H6frd7JnFt
	dGBK7AeTN6UvcS/RYQhA1bWWj+zjjwH8/Wb0hoy8G7iBqDdR2MdFSDDZaVojUuYhWk7daDWOUkQ9S
	nusFLnycynyKCV6v7asg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlWen-001LAK-2Y;
	Wed, 27 Sep 2023 15:40:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlWaU-001GaF-33;
	Wed, 27 Sep 2023 15:36:37 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:672:46bd:3ec7:6cdf])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2296A6607376;
	Wed, 27 Sep 2023 16:36:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695828989;
	bh=qUxQMObFxpiy3pFolAat/Lsgv4wZ2hZHcdle7SRl8Pw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MJGhnJH7QCZeXAMK4RxX+U5d4DufSL7rrACPblJTpXUxaovUCbzqlJ91cvZLCoRI7
	 i8MwxVQHPE+ePg6yZ+dg6YYDtMtjk6UmjsdOFs/b6yXIOMZx3FmDSZOEUYwH9BP/+P
	 EIIiv24NiBf4WQ4hPRVnPQGx1uqiCUc0Fcwqfjv7qwCJPPTVtBu1opfOqhooSYzEkk
	 Rp8pPVC9cJS6K4fNKjaUNUGhbwyO3XASYZ21tREL0iWiWMXHtpI/7WHPpLGz6Aee0u
	 aNL0lwIebq3DriUDtGR5JcE732iONCK+rPVj1WaxMXDdl9nmvk6nwoJmtTMzCJTGwe
	 FhgEPTsXzDu+w==
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
	Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v8 44/53] media: meson: vdec: Stop direct calls to queue num_buffers field
Date: Wed, 27 Sep 2023 17:35:49 +0200
Message-Id: <20230927153558.159278-45-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230927153558.159278-1-benjamin.gaignard@collabora.com>
References: <20230927153558.159278-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_083631_147078_63A17CF8 
X-CRM114-Status: GOOD (  12.50  )
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

Use vb2_get_num_buffers() to avoid using queue num_buffer field directly.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/staging/media/meson/vdec/vdec.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/vdec.c b/drivers/staging/media/meson/vdec/vdec.c
index 219185aaa588..1e2369f104c8 100644
--- a/drivers/staging/media/meson/vdec/vdec.c
+++ b/drivers/staging/media/meson/vdec/vdec.c
@@ -167,22 +167,23 @@ static void process_num_buffers(struct vb2_queue *q,
 				bool is_reqbufs)
 {
 	const struct amvdec_format *fmt_out = sess->fmt_out;
-	unsigned int buffers_total = q->num_buffers + *num_buffers;
+	unsigned int q_num_bufs = vb2_get_num_buffers(q);
+	unsigned int buffers_total = q_num_bufs + *num_buffers;
 	u32 min_buf_capture = v4l2_ctrl_g_ctrl(sess->ctrl_min_buf_capture);
 
-	if (q->num_buffers + *num_buffers < min_buf_capture)
-		*num_buffers = min_buf_capture - q->num_buffers;
+	if (q_num_bufs + *num_buffers < min_buf_capture)
+		*num_buffers = min_buf_capture - q_num_bufs;
 	if (is_reqbufs && buffers_total < fmt_out->min_buffers)
-		*num_buffers = fmt_out->min_buffers - q->num_buffers;
+		*num_buffers = fmt_out->min_buffers - q_num_bufs;
 	if (buffers_total > fmt_out->max_buffers)
-		*num_buffers = fmt_out->max_buffers - q->num_buffers;
+		*num_buffers = fmt_out->max_buffers - q_num_bufs;
 
 	/* We need to program the complete CAPTURE buffer list
 	 * in registers during start_streaming, and the firmwares
 	 * are free to choose any of them to write frames to. As such,
 	 * we need all of them to be queued into the driver
 	 */
-	sess->num_dst_bufs = q->num_buffers + *num_buffers;
+	sess->num_dst_bufs = q_num_bufs + *num_buffers;
 	q->min_buffers_needed = max(fmt_out->min_buffers, sess->num_dst_bufs);
 }
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
