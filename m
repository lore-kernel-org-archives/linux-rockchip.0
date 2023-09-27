Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E783E82CA6
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Sep 2023 15:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fsy6aCkj/ZcEcl+g9Iei5biC74rTS7DKxLZQJ/zisqI=; b=bHQyT5wY82ku9F
	+PUuhBYsBitGVfvwaA0TS8XKRqZC3GurLd+Nq6y+VPrk6hjIMLuvfSbPJPWc7KT/iye80ejVBlA6p
	CMdJdXsV84RhA7GPIfAhTW/cXO1TshuS0k0+4lrAeLKyhRMllQkUeG8Fu8Yy1OlRAstEVeGstMkFL
	pLvCvTT9RmcOym8XXaoriRY2G6u94NhIuWeOEMSXvaClac8wLhmzruUl02ZzE0sBTvVMUdkGMTxOW
	DPwq+yL/8w8g4oGdy4AsEGb7kUIhmVbdfuObt7a2vyeIM0tiVwYQ2BGbg/iWpvQmf2blB+kIOl+IR
	W22RnQVe5ZUUQpuzJC3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlWeU-001Klt-2H;
	Wed, 27 Sep 2023 15:40:38 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlWaS-001GWk-0V;
	Wed, 27 Sep 2023 15:36:34 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:672:46bd:3ec7:6cdf])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 2F458660736F;
	Wed, 27 Sep 2023 16:36:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1695828986;
	bh=ipUXv7UJIHHhxRMQZmIK4W+snIi8YRwkVW1/aAA+P6g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RNjqkIxLR9AoBM9x7S19uuBBvVaoi88hez3/jJbo2ds014HMM5/coIoRoaiEpBkRZ
	 lWrVnwDt/TNsKC3oU7qbznGMSfRNgrfJ3gsVQ60pEwbTTiUh1xnLl1J4rt/kztBmLO
	 QWkIZFCbCqN7cuOs4llMEHZpiMLSQ0CyjQfnh6/X8DVUvTE+/os6QUcKYs6aaqLr3R
	 qc7Psr5CpnsSLgmlr3bWz70kn+I5h3660o6oCsXm2qDGBQzHQBhzC/b8gNixsrnTpP
	 My+hUTXzgX8OdV0kWdROV9IjdBBk926ly/PqIgjzX0sLzi8oXEkoKgnHNEXP9eAXGd
	 kUQnXLCAvsQpw==
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
Subject: [PATCH v8 38/53] media: usb: airspy: Set min_buffers_needed to 8
Date: Wed, 27 Sep 2023 17:35:43 +0200
Message-Id: <20230927153558.159278-39-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230927153558.159278-1-benjamin.gaignard@collabora.com>
References: <20230927153558.159278-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230927_083628_464230_4C8E7A2F 
X-CRM114-Status: GOOD (  10.27  )
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
min_buffers_needed to 8 and remove the useless check in
airspy_queue_setup().

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 drivers/media/usb/airspy/airspy.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/media/usb/airspy/airspy.c b/drivers/media/usb/airspy/airspy.c
index 462eb8423506..56bc1b23d39b 100644
--- a/drivers/media/usb/airspy/airspy.c
+++ b/drivers/media/usb/airspy/airspy.c
@@ -483,15 +483,10 @@ static int airspy_queue_setup(struct vb2_queue *vq,
 {
 	struct airspy *s = vb2_get_drv_priv(vq);
 
-	dev_dbg(s->dev, "nbuffers=%d\n", *nbuffers);
-
-	/* Need at least 8 buffers */
-	if (vq->num_buffers + *nbuffers < 8)
-		*nbuffers = 8 - vq->num_buffers;
 	*nplanes = 1;
 	sizes[0] = PAGE_ALIGN(s->buffersize);
 
-	dev_dbg(s->dev, "nbuffers=%d sizes[0]=%d\n", *nbuffers, sizes[0]);
+	dev_dbg(s->dev, "nbuffers=%d sizes[0]=%d\n", vb2_get_num_buffers(vq), sizes[0]);
 	return 0;
 }
 
@@ -1011,6 +1006,8 @@ static int airspy_probe(struct usb_interface *intf,
 	/* Init videobuf2 queue structure */
 	s->vb_queue.type = V4L2_BUF_TYPE_SDR_CAPTURE;
 	s->vb_queue.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
+	/* Need at least 8 buffers */
+	s->vb_queue.min_buffers_needed = 8;
 	s->vb_queue.drv_priv = s;
 	s->vb_queue.buf_struct_size = sizeof(struct airspy_frame_buf);
 	s->vb_queue.ops = &airspy_vb2_ops;
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
