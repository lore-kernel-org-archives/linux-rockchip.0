Return-Path: <SRS0=sEzw=ML=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B34EC07E9B
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 20:53:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 67FD7610F7
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Jul 2021 20:53:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 67FD7610F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sH/l9bjA9X8nrRfb79O4TWUh7fJMQ4YIVmU99JqdTI0=; b=DVyj+BFEaIvQNl
	V6z+Bg3xBOYUItFsKwbsqJ791WdQNaLxom5FwjQaidlOfRELMuP3Hhn1cfE8eVulxslI6/O5j7l/4
	0Sv3LBmGKdGN39pjyJRqdcZ6oV4i6U7vbQaRTwyEbXxv1/r9UQ572FUIXxGNAoOE0d3SlH3gIPeY1
	C/USaw3p+t3szSQsaAAUd1GWDufx4KVx+EPf4yFnClC1XaPYjdlM6IrlcLXRN1KHO1HDLpg2YyXvH
	sOXyjSsQxSZRNoWGg/ghbzltl0mnA0+TfrZ9xIarzhYa6oWaEBakHFxP89EjGCz+v/i/QJdCMti6A
	WjcbuLggOcs4EnivLpZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m5aGG-00BJVm-Bd; Mon, 19 Jul 2021 20:53:12 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m5aGD-00BJTu-S2
 for linux-rockchip@lists.infradead.org; Mon, 19 Jul 2021 20:53:11 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 774E61F42DE7
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
 Alex Bee <knaerzche@gmail.com>, maccraft123mc@gmail.com,
 Chris Healy <cphealy@gmail.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Jonas Karlman <jonas@kwiboo.se>, Kever Yang <kever.yang@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, kernel@collabora.com
Subject: [PATCH v3 02/10] hantro: Make struct hantro_variant.init() optional
Date: Mon, 19 Jul 2021 17:52:34 -0300
Message-Id: <20210719205242.18807-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210719205242.18807-1-ezequiel@collabora.com>
References: <20210719205242.18807-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210719_135310_094677_F86ABADE 
X-CRM114-Status: GOOD (  12.80  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The hantro_variant.init() function is there for platforms
to perform hardware-specific initialization, such as
clock rate bumping.

Not all platforms require it, so make it optional.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
Tested-by: Alex Bee <knaerzche@gmail.com>
---
 drivers/staging/media/hantro/hantro.h          |  4 ++--
 drivers/staging/media/hantro/hantro_drv.c      | 10 ++++++----
 drivers/staging/media/hantro/sama5d4_vdec_hw.c |  6 ------
 3 files changed, 8 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index a70c386de6f1..c2e2dca38628 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -61,8 +61,8 @@ struct hantro_irq {
  * @num_postproc_fmts:		Number of post-processor formats.
  * @codec:			Supported codecs
  * @codec_ops:			Codec ops.
- * @init:			Initialize hardware.
- * @runtime_resume:		reenable hardware after power gating
+ * @init:			Initialize hardware, optional.
+ * @runtime_resume:		reenable hardware after power gating, optional.
  * @irqs:			array of irq names and interrupt handlers
  * @num_irqs:			number of irqs in the array
  * @clk_names:			array of clock names
diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
index 31d8449ca1d2..9b5415176bfe 100644
--- a/drivers/staging/media/hantro/hantro_drv.c
+++ b/drivers/staging/media/hantro/hantro_drv.c
@@ -942,10 +942,12 @@ static int hantro_probe(struct platform_device *pdev)
 		}
 	}
 
-	ret = vpu->variant->init(vpu);
-	if (ret) {
-		dev_err(&pdev->dev, "Failed to init VPU hardware\n");
-		return ret;
+	if (vpu->variant->init) {
+		ret = vpu->variant->init(vpu);
+		if (ret) {
+			dev_err(&pdev->dev, "Failed to init VPU hardware\n");
+			return ret;
+		}
 	}
 
 	pm_runtime_set_autosuspend_delay(vpu->dev, 100);
diff --git a/drivers/staging/media/hantro/sama5d4_vdec_hw.c b/drivers/staging/media/hantro/sama5d4_vdec_hw.c
index 58ae72c2b723..9c3b8cd0b239 100644
--- a/drivers/staging/media/hantro/sama5d4_vdec_hw.c
+++ b/drivers/staging/media/hantro/sama5d4_vdec_hw.c
@@ -64,11 +64,6 @@ static const struct hantro_fmt sama5d4_vdec_fmts[] = {
 	},
 };
 
-static int sama5d4_hw_init(struct hantro_dev *vpu)
-{
-	return 0;
-}
-
 /*
  * Supported codec ops.
  */
@@ -109,7 +104,6 @@ const struct hantro_variant sama5d4_vdec_variant = {
 	.codec = HANTRO_MPEG2_DECODER | HANTRO_VP8_DECODER |
 		 HANTRO_H264_DECODER,
 	.codec_ops = sama5d4_vdec_codec_ops,
-	.init = sama5d4_hw_init,
 	.irqs = sama5d4_irqs,
 	.num_irqs = ARRAY_SIZE(sama5d4_irqs),
 	.clk_names = sama5d4_clk_names,
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
