Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CEEC4EEAA42
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Sep 2023 13:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1mof2ST7V+2L22k3ZUxu/IyVSJqMYjgtDQyFvCiEN+Y=; b=tFLpm21PB2ZILa
	Kpxhfqi2pkZ7NyMOboz3v7WB19jYhrEEepWMud4Rk5+jWyaVRDkhOXIjSl352JiKE8kEhwP3YxxCa
	UEB0d4LVXztklUUiSwbuVgS78yAnb8695FVtWghtUkBMclF2fj0LctFCBxQnkRCqofMHnx2Qz73/8
	YFT20GEF8IyG5tJl92CYNaugsbfgVaItSjvS5FBTzy7DAHSDQPpDagGMK/uXo5dXyNsulYdxscFfU
	+nqUmErkKkxWQ28aHZBneNHEZOJAmdrfBIsxca4UBE8rz2KXGvKfTmZKVDhEOZCNFoge1QlM5SELU
	xe5PdpWA9LA/OAIrKt0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qgmWo-008VlY-09;
	Thu, 14 Sep 2023 13:37:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgmTg-008SR0-10;
	Thu, 14 Sep 2023 13:33:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=oTtmKjE7vQhNKhTumrx56oub9WvRubSN6lcnNjeiil4=; b=QwnVfPmYSOl9X54+bFKvCUeVWt
	U++jIxRV3gmgFNDEYox93GFYB8FRb7q1oMMzIyRxwuLW5LhjWeOU2ZGDK0l3aRuGl1R2QEVCirn5J
	1KrhJW2uuc+2iNX7t66jdw9SjwS/TWhqTsrGuKHtvtfavw/W1S9L7M9w3ukfylGtKsHKcQJt+PsBc
	6ECS8CSTHsu+5FY/FPsIsYvNLGBgTWe5nBMVG6fLkQueNpGalIWSXjT47uDt8e04y/RciuUrmOAyi
	MjPfZKZH0swGKZJB9Spl30PhzXs8Wph2oCRwTnYulzaYsSNMOjnFSj+hB3D2cdHrE1ciQwata/ezj
	hwJBVSdQ==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qgmTb-007uhO-0w;
	Thu, 14 Sep 2023 13:33:50 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:36f2:37bd:ccbb:373f])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 553316607382;
	Thu, 14 Sep 2023 14:33:47 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1694698427;
	bh=cXivZNqToe41YcZuXIOZnOz7dFiXtOZiRZUwxPYGOCA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=BW/4Li6K5XG6+3vbXDnIR7ChVsl6ZXW8TLElpv89AbHI8KTYjXFsrimfikBDy3zpD
	 5yeVs584mxICnpxmqLwLwpDIlut30f3mPncqh1kmfrMch623WJsC0kxkJkCkhQUsI1
	 l2xPjcNq/AQsUJKsz62nZwvcK9WUJfRVElhEI4BS3dCRzTxJtt9dzb3wCP1UDPInax
	 I8NPTG3IZ9ZAXYa7ukFtL19FCGjYbh6Z8Acdkxvi5wmEkzQbtcucrmE3J2E+NALG1H
	 vzxl3c6XqyR4qOAjjgUgoqNg5hReh+N4/lV4sqBQICAWvk/ZxFzub6griqozOykHD/
	 V76u5/javVwJQ==
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
Subject: [PATCH v7 31/49] media: nxp: Stop direct calls to queue num_buffers field
Date: Thu, 14 Sep 2023 15:33:05 +0200
Message-Id: <20230914133323.198857-32-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
References: <20230914133323.198857-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230914_143348_993277_0B4DBD1C 
X-CRM114-Status: UNSURE (   9.70  )
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

Use vb2_get_num_buffers() to avoid using queue num_buffer field directly.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/platform/nxp/imx7-media-csi.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/nxp/imx7-media-csi.c b/drivers/media/platform/nxp/imx7-media-csi.c
index 15049c6aab37..4c467fb82789 100644
--- a/drivers/media/platform/nxp/imx7-media-csi.c
+++ b/drivers/media/platform/nxp/imx7-media-csi.c
@@ -1245,6 +1245,7 @@ static int imx7_csi_video_queue_setup(struct vb2_queue *vq,
 				      struct device *alloc_devs[])
 {
 	struct imx7_csi *csi = vb2_get_drv_priv(vq);
+	unsigned int q_num_bufs = vb2_get_num_buffers(vq);
 	struct v4l2_pix_format *pix = &csi->vdev_fmt;
 	unsigned int count = *nbuffers;
 
@@ -1254,14 +1255,14 @@ static int imx7_csi_video_queue_setup(struct vb2_queue *vq,
 	if (*nplanes) {
 		if (*nplanes != 1 || sizes[0] < pix->sizeimage)
 			return -EINVAL;
-		count += vq->num_buffers;
+		count += q_num_bufs;
 	}
 
 	count = min_t(__u32, IMX7_CSI_VIDEO_MEM_LIMIT / pix->sizeimage, count);
 
 	if (*nplanes)
-		*nbuffers = (count < vq->num_buffers) ? 0 :
-			count - vq->num_buffers;
+		*nbuffers = (count < q_num_bufs) ? 0 :
+			count - q_num_bufs;
 	else
 		*nbuffers = count;
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
