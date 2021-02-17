Return-Path: <SRS0=wec+=HT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 675BDC433E6
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:07:19 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 060DF64E04
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Feb 2021 08:07:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 060DF64E04
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TVBuZP73KgO1u0kx4v6d/jkPxBFZDWosGy+aSBgBNg0=; b=xLmVtzDTNPLHjDJn5qP05cmdl
	drwGYKeoro09MpfXowcDT82j8mZj4qGJ3I3GRFTkotGYRxzjry0UqgkPTv/x5yo3RfOYhIUG3iPAy
	nj+hB1Z1xHUdx+4ubOuaev7m61iRN/LEYbZeke1tD48BMQp64cBQRbK0O5zzHhLqLFsFoaF5/twVj
	/eIvm4XSDcE7UwLGu8AM1CtgKu70FqLOpsDRFOOwStYWpyn7J10ZHbIGxY1tUgb2bjHJkI6L4rm0h
	qXQJOgn5jEVxaKj1YINpFN+Fof9Rl9D4z8t3YE4EwgbUgxk1tQ86TU3+hvOGVqoR1JyNRZONtvg9f
	SIHXRrbQg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lCHra-0008RM-0W; Wed, 17 Feb 2021 08:07:10 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lCHoc-0006yi-Id; Wed, 17 Feb 2021 08:04:13 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:fd6e:12cd:95d7:3350])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id E7C0B1F4508E;
 Wed, 17 Feb 2021 08:04:03 +0000 (GMT)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: ezequiel@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 gregkh@linuxfoundation.org, mripard@kernel.org,
 paul.kocialkowski@bootlin.com, wens@csie.org, jernej.skrabec@siol.net,
 krzk@kernel.org, shengjiu.wang@nxp.com, adrian.ratiu@collabora.com,
 aisheng.dong@nxp.com, peng.fan@nxp.com, Anson.Huang@nxp.com,
 hverkuil-cisco@xs4all.nl
Subject: [PATCH v1 11/18] media: hantro: Add helper function for auxiliary
 buffers allocation
Date: Wed, 17 Feb 2021 09:02:59 +0100
Message-Id: <20210217080306.157876-12-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
References: <20210217080306.157876-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210217_030408_678772_CF70EF1D 
X-CRM114-Status: GOOD (  12.59  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add helper functions to allocate and free auxiliary buffers.
These buffers aren't for frames but are needed by the hardware
to store scaling matrix, tiles size, border filters etc...

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro.h | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index a9b80b2c9124..7f842edbc341 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -446,6 +446,30 @@ hantro_get_dec_buf(struct hantro_ctx *ctx, struct vb2_buffer *vb)
 	return vb2_plane_vaddr(vb, 0);
 }
 
+static inline int
+hantro_aux_buf_alloc(struct hantro_dev *vpu,
+		     struct hantro_aux_buf *buf, size_t size)
+{
+	buf->cpu = dma_alloc_coherent(vpu->dev, size, &buf->dma, GFP_KERNEL);
+	if (!buf->cpu)
+		return -ENOMEM;
+
+	buf->size = size;
+	return 0;
+}
+
+static inline void
+hantro_aux_buf_free(struct hantro_dev *vpu,
+		    struct hantro_aux_buf *buf)
+{
+	if (buf->cpu)
+		dma_free_coherent(vpu->dev, buf->size, buf->cpu, buf->dma);
+
+	buf->cpu = NULL;
+	buf->dma = 0;
+	buf->size = 0;
+}
+
 void hantro_postproc_disable(struct hantro_ctx *ctx);
 void hantro_postproc_enable(struct hantro_ctx *ctx);
 void hantro_postproc_free(struct hantro_ctx *ctx);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
