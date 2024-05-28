Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44E9BC27C44
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 14:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oI4s09P5hwgl2Tlf0BB477xUrLFEwyWbf/ZwzNnK4/Y=; b=SSRqc0TBiBzJcH
	OVnxIMKq6aWnNNd3o8LjSovVBpo/Vra3zh036ztv5e7wp4PhYDvzfCtVEBqxtJEAEOl2IxoF/H0Mk
	ToxpD4OEIoLEEu/ubI4RB1QFKEadCVflE85hzRYI4/m61FPNpsE9lDaGL8gBU7VCw5F1+hP3xqLsb
	NVylWc64DsvrjBIb/uC9QLJSFH/MPdi9jeByYbKUR8bgsISJ2pj0NY8BPbmX2kP/32EWdhC4375zT
	7djXoW8DTvGkMxpxL2qEYB5GFDfjvOVZMEZYziuBWuLXPt7dRSzdT89URM0zM7WF2xbHIimjFZ0lx
	lFauozuO/BD89ynyK1jw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxSN-00000000vhL-0pFa;
	Tue, 28 May 2024 14:05:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBxS5-00000000vWk-464i
	for linux-rockchip@lists.infradead.org;
	Tue, 28 May 2024 14:05:23 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1sBxS0-0005wE-OR; Tue, 28 May 2024 16:05:16 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 28 May 2024 16:05:13 +0200
Subject: [PATCH 1/2] media: rockchip: rga: fix field in OUTPUT buffers
MIME-Version: 1.0
Message-Id: <20240528-rk3568-rga-v1-1-b946e55d9d37@pengutronix.de>
References: <20240528-rk3568-rga-v1-0-b946e55d9d37@pengutronix.de>
In-Reply-To: <20240528-rk3568-rga-v1-0-b946e55d9d37@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 kernel@pengutronix.de
X-Mailer: b4 0.12.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_070522_075094_8C6BD4F9 
X-CRM114-Status: GOOD (  10.67  )
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

Returned buffers shouldn't contain V4L2_FIELD_ANY as field. Set the
field to V4L2_FIELD_NONE, if it isn't set.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/media/platform/rockchip/rga/rga-buf.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/media/platform/rockchip/rga/rga-buf.c b/drivers/media/platform/rockchip/rga/rga-buf.c
index 662c81b6d0b5..77c7535893e3 100644
--- a/drivers/media/platform/rockchip/rga/rga-buf.c
+++ b/drivers/media/platform/rockchip/rga/rga-buf.c
@@ -119,6 +119,16 @@ static int rga_buf_prepare(struct vb2_buffer *vb)
 	if (IS_ERR(f))
 		return PTR_ERR(f);
 
+	if (V4L2_TYPE_IS_OUTPUT(vb->vb2_queue->type)) {
+		if (vbuf->field == V4L2_FIELD_ANY)
+			vbuf->field = V4L2_FIELD_NONE;
+		if (vbuf->field != V4L2_FIELD_NONE) {
+			v4l2_err(&ctx->rga->v4l2_dev, "Unsupported field %s\n",
+				 v4l2_field_names[vbuf->field]);
+			return -EINVAL;
+		}
+	}
+
 	for (i = 0; i < vb->num_planes; i++) {
 		vb2_set_plane_payload(vb, i, f->pix.plane_fmt[i].sizeimage);
 

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
