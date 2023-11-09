Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6DCA6C4167D
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 16:39:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iGgPyQjjPIuwzBCej4/qtBKPySdm5Xjrat3MH76jTrQ=; b=bUOM4dPVe9U1kB
	e3d9mcqodaoG06oaUYPXdoCTTB7DUYoKBt4beY8b2/2t1mu/GorsFbivMpqDC4A6jv5K6dRt4Zb0R
	rnynUBZsi1yjF3dzT6/TboZdl+/jYSr+sRR6Im+gaH6rDDA4gOA7PdDoY1fk/kwT1eJIkQZopT+Wr
	YqmzbTjn++EIUADCXRRwL/3nAUosWU8ENE0Uuu9WuSEQW2hkq1QPDSOGachPZQUnOANOqDN86jvOY
	F9rto+kp6fCaPY6LDDZ1GJ35jEULTX9+W1pP+iDujXtbPOCfj7xr2rKc3D5MIVigR+Rzg0JvoYunN
	eYAUxO9nJleEd3OpsTcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1844-006mxm-2o;
	Thu, 09 Nov 2023 16:39:32 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r182f-006lO4-1T;
	Thu, 09 Nov 2023 16:38:06 +0000
Received: from benjamin-XPS-13-9310.. (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 237096607421;
	Thu,  9 Nov 2023 16:38:03 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699547884;
	bh=vezolw57Im6DRr5UrQGGrzNIzO39/GydEUKahqKBxH8=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=J8zKvMICI27yvgnvGQIBMWeJupbn/jDMLV0+XnOmfAYNeQVC02XRx9XlBFqnGhDBS
	 Vrt3Wm9WLqkxqrd5mpAohUzAQUJxqNmDkePxQmCsDhQURRY0Ei64QYHpORznzoWU9v
	 sTMFSV1afmOLp1hH0PJSCj9kr9VpcW6SstbNEC01QpHzCzMEPv2duBi0+g1HH0bXSU
	 L0NGhUP+JWrsVHPG7dEkSEMFyIWSYHwuELNO3JO4IdtFpg23HxvBjjzpckLMGf0mOZ
	 QQiNKpnmiHGpd+k0u814JyWbjV4tqxH1nHkj6VDT9XZCA8v6VLDST7DMXSCktNug/g
	 Qb8lFKla65J5g==
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
	Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
	Rui Miguel Silva <rmfrfs@gmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Martin Kepplinger <martink@posteo.de>
Subject: [PATCH v15 28/56] media: nxp: Stop direct calls to queue num_buffers field
Date: Thu,  9 Nov 2023 17:34:44 +0100
Message-Id: <20231109163512.179524-29-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231109163512.179524-14-benjamin.gaignard@collabora.com>
References: <20231109163512.179524-14-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_083805_652043_A41419B3 
X-CRM114-Status: GOOD (  10.44  )
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

Use vb2_get_num_buffers() to avoid using queue num_buffers field directly.
This allows us to change how the number of buffers is computed in the
future.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
CC: Rui Miguel Silva <rmfrfs@gmail.com>
CC: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
CC: Martin Kepplinger <martink@posteo.de>
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
