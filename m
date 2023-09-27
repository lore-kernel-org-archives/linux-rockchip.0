Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77247E82CA6
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 15:41:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uH3fkv+q9xZ7SE6/f/zkWaAjSAVtPMWZoc//w6C41ho=; b=Gfag7u2Jbr+4oB
	rr/fCwV6+iyXX2hj/nFuIzzPSTO1zv0WPuSqTDU0Fs+xLoqispbKAbmhTEkosByLftHKDVdRhI/Rd
	IRja5P5GE+42xMFmxDq4+pY+U6Sr+hp4HOBY+QjCB8D0Rkz9WeqRvxFJhbgT4dB4VRI3PdPvrJN10
	S5+2+NBHSHDKqZpEjyWIqrushzFbjj7fUijuI4NvHbk8rXiRoAodW4zw+Q16bZxLmQSexUm0qtOHD
	htodkLXlfKR46J1w2d8JUoz5vG1RVHy+vjMgPVrYdMKoHIeZuDSGrnAu1LAPMKs2fqzb6fnX4Mgsv
	j9mIaUrJsU2XZy/dCk5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlWen-001L9N-0S;
	Wed, 27 Sep 2023 15:40:57 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlWag-001GnB-1k;
	Wed, 27 Sep 2023 15:36:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qTuPHPU4Io44nAdkQT6nBOAqUL8jchiAXtKAUc5aY3c=; b=OzHBeFZ45u4NsGkj3jnNVXYIEH
	dJmsF3anXgi21dWe+Ji0z5Ji0ftt1DlBDv27kr/v2YD9lcS0HWCdtJ//avvHiKwLZZWmvdb2rI7Yj
	mFOOX5xqEAGwsb10xrKmBeKik2l/6lEigyyZXPJAZJuSruFK6sgv7EAyfcG+EcEuAIiChARm3KYkS
	AWuLqlApN5eOJM7vEBfMnX/Xzz/ZZtR9DOrPXXBmALo8Dys31I4WBOx4VISQyID+zu3vP1BqY1R/6
	aQVfPf0c35mFg7qxWTXUS25hT7Ft69QrDHCwNQjno2jZ9l0MwTjjz0j9TmgHJteKusPUOlQ+7ys1H
	MEGI/kdA==;
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1qlWaW-00EesO-Qg; Wed, 27 Sep 2023 15:36:41 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:672:46bd:3ec7:6cdf])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A00876607373;
	Wed, 27 Sep 2023 16:36:27 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695828988;
	bh=nwepyznt8z6pxABzkpFHR6clGV59kYVToyX8aj6cN+w=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ONqyrTE2hGWLwWIGz+oEE+zkDiSdp7AY/6CC6gkND7/p8p/mpNXXGuXdyjke8Eqbv
	 4zatZ6INn/pGM7xDf07Z3CaOXgauPQ8B4stL1tCXSWnYtjpGir2/VmwXkdzOqbBhMY
	 dMTyrV4uLADgw0lgk37/dB5+iPTX9k2Q0l8vrSoD3Usi59ebktNrYxpXvqdRB33BSf
	 d+hzKTGzNwgKEM2x9luscYeYxeOxc2/UbRb5Nm1bIeiLC62A+ugBDlzS1ZxOCRCeRO
	 o2v/I4Mxjf+7IhJjbN4h7BSBuVz0VYGANcRNq5sg+WrrPPr0zIcQkWv+EpgckcGJTV
	 lbtvLRwdAsmdA==
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
Subject: [PATCH v8 41/53] media: usb: usbtv: Set min_buffers_needed to 2
Date: Wed, 27 Sep 2023 17:35:46 +0200
Message-Id: <20230927153558.159278-42-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230927153558.159278-1-benjamin.gaignard@collabora.com>
References: <20230927153558.159278-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_163632_916283_9144C690 
X-CRM114-Status: GOOD (  11.05  )
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

vb2 queue_setup checks for a minimum number of buffers so set
min_buffers_needed to 2 and remove the useless check in
usbtv_queue_setup().

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/usb/usbtv/usbtv-video.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/media/usb/usbtv/usbtv-video.c b/drivers/media/usb/usbtv/usbtv-video.c
index 1e30e05953dc..0e9e860be47f 100644
--- a/drivers/media/usb/usbtv/usbtv-video.c
+++ b/drivers/media/usb/usbtv/usbtv-video.c
@@ -727,8 +727,6 @@ static int usbtv_queue_setup(struct vb2_queue *vq,
 	struct usbtv *usbtv = vb2_get_drv_priv(vq);
 	unsigned size = USBTV_CHUNK * usbtv->n_chunks * 2 * sizeof(u32);
 
-	if (vq->num_buffers + *nbuffers < 2)
-		*nbuffers = 2 - vq->num_buffers;
 	if (*nplanes)
 		return sizes[0] < size ? -EINVAL : 0;
 	*nplanes = 1;
@@ -892,6 +890,7 @@ int usbtv_video_init(struct usbtv *usbtv)
 	/* videobuf2 structure */
 	usbtv->vb2q.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 	usbtv->vb2q.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
+	usbtv->vb2q.min_buffers_needed = 2;
 	usbtv->vb2q.drv_priv = usbtv;
 	usbtv->vb2q.buf_struct_size = sizeof(struct usbtv_buf);
 	usbtv->vb2q.ops = &usbtv_vb2_ops;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
