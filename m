Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBD93E75436
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Oct 2023 08:08:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SlKkkRGRa6dQ42+H6XWzVsbQi3tO5KK42PVLvFPaLA=; b=DqpE/hju/OTGKk
	x9hqEOsdtj9FM3Tc2SqzNpDZE+UmxR7/CZjZxSWruYJ8yohmmuMG1xgneWktHKPX/7hCtZtVe2hdi
	jFYgneTKfr0uOg9OHvUb2r2lKoYxhS97GI2YZu2szN3faiLTVILTyIZvHCCB4uYjv/9kI4jnWXXAe
	bC0oT85M4C0YL6Pq7REiD8MQqZjb32fnznkAmKMai45TFBo9ybQcpUznmKNFdnYS1YSuhALEKENAk
	kieYppsripioNQS21gvOk5ayfDcsQGAjxT3u2ErWUegkyJl91y1n9NIwULJpuUwXxFVyneiy1CUlE
	OTEn5vC/lHlmy6+ahNvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnaSV-00E4dF-2U;
	Tue, 03 Oct 2023 08:08:47 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnaR9-00E39l-0b;
	Tue, 03 Oct 2023 08:07:29 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:b6df:b784:6a0f:8451])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A37C66607347;
	Tue,  3 Oct 2023 09:07:20 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696320441;
	bh=/rw+5kiG9NH9F1WJEwdp/d4z1jjMgH/1J5yw8ccESj4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ibOVzPFnCu7xS/9VbCrqUZQdqEyRNLCo9wX+6ddUTppdLjfpg5JKUxT6rr0aDAUr9
	 m9IYbLplc/jzC98cdRjFvKP5HNI9jV5ZJwKM3LkfLaM2iuZW8Mf3f95Xcz+6R+RkMU
	 Xu8735Q1UKCApDr4/vKGlv/cloc96s962UMgxTFXrNKsMorbwhnfAR34enCL35CP83
	 RyLa9tW1notemgbUD3pImo7hzkMvUboOTABmmVXg0IBMFnPrb60Fu41mJhYiTGfgkW
	 15luS1mU2lYcY8cs4fhg+/iuy7eW5O2c+yPlk8AzX5qq6VPwVqjfEF4pv4/AG6TZfp
	 AZ5/M1gpdzfEw==
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
Subject: [PATCH v10 15/54] media: test-drivers: vicodec: Increase max supported capture queue buffers
Date: Tue,  3 Oct 2023 10:06:24 +0200
Message-Id: <20231003080704.43911-16-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231003080704.43911-1-benjamin.gaignard@collabora.com>
References: <20231003080704.43911-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_010723_353608_866E7E7A 
X-CRM114-Status: UNSURE (   7.96  )
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

Allow to allocated up to 64 buffers on capture queue.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/test-drivers/vicodec/vicodec-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/test-drivers/vicodec/vicodec-core.c b/drivers/media/test-drivers/vicodec/vicodec-core.c
index 6f0e20df74e9..69cbe2c094e1 100644
--- a/drivers/media/test-drivers/vicodec/vicodec-core.c
+++ b/drivers/media/test-drivers/vicodec/vicodec-core.c
@@ -1718,6 +1718,7 @@ static int queue_init(void *priv, struct vb2_queue *src_vq,
 			V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE :
 			V4L2_BUF_TYPE_VIDEO_CAPTURE);
 	dst_vq->io_modes = VB2_MMAP | VB2_USERPTR | VB2_DMABUF;
+	dst_vq->max_num_buffers = 64;
 	dst_vq->drv_priv = ctx;
 	dst_vq->buf_struct_size = sizeof(struct v4l2_m2m_buffer);
 	dst_vq->ops = &vicodec_qops;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
