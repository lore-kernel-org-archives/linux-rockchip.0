Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7671C43467
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 735E220797
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:33 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="VAmuVRN4";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="JRN55ccK"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 735E220797
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ygahk19ksjxrFobYtr5UzSk04EU0KmH08wOOJZO+QEU=; b=VAmuVRN420iBUAu7LeW/DJKFD
	uuZsoHGWsbQSg9jJSwKOSvp+Sq2Udmkjxneh0mxu0tBqs5/K0aGfiVC/46oadLSvAmJvuasLTkIUR
	t7BTu0aXv8Fuw62iuPEpj1jdc5F83vCnticwSAiwnujdNEEyo/WaKwMN+jf9KdwpoRc8Ev1+5gwK6
	znNEdh56p9g5tx5W0cttqzZycDrk+Md04lmZLKpA0fVRRE+FNjjiO0sBuazA5qluQrEs1k6Eo1FJe
	7uJxWntABzA7BYLih1AuLDWci3AXmA4uUr5eS/nOu34l/fwebxLvDh8LLhpOSo+CHZTGAtNSZxHBA
	30WB4okww==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS5F2-00084g-8J; Mon, 12 Oct 2020 21:20:24 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS5F0-00083L-TB
 for linux-rockchip@merlin.infradead.org; Mon, 12 Oct 2020 21:20:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=4n1K/0jwH1CHbkD0CkUpdEofsXu/NH/IkDb7qdDg5Pw=; b=JRN55ccKOChysihpgP3s9UoQ13
 rt+ObFbgzEcheMM0pC3KRTE4eYkfgBGpSC1YSWx/9flOW2YT7/FPOi2bUckU213qYTTbR1xmYX61U
 a1M+CbQ6mHUZd1zBnD4zB8kR8fDwPSlxau2SbrF7fkwEWPKdHhTTrNTR6nJyRGlfrsLHpcWL6u80W
 oBZSSIlejlBuPb97z6W4JJi/HnB/+RhjrvIIO2MCIH2P6d01kyBR87jvnSc9g1t7jjeRx+ovi5q9F
 F+Gc5JwKW6fEPouKSyTlYt6lEjdMa22Y76NqdIgi3RIicIf0CbZpNhuTej6sQktpbdzWJXOO78u+r
 lufxFXNw==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uY-0004oV-7m
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id F30831F44C5B
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 17/18] media: hantro: add dump registers debug option before
 decode start
Date: Mon, 12 Oct 2020 23:59:56 +0300
Message-Id: <20201012205957.889185-18-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_215914_875473_9D058AFD 
X-CRM114-Status: GOOD (  11.63  )
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
Cc: Fruehberger Peter <Peter.Fruehberger@de.bosch.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Mark Brown <broonie@kernel.org>,
 kuhanh.murugasen.krishnan@intel.com, Daniel Vetter <daniel@ffwll.ch>,
 kernel@collabora.com, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

It is very useful to know the status of all the decoder configuration
registers right before starting a decode operation, so add an option
to print them if register debugging is enabled (debug bit 7 is set).

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro.h          | 1 +
 drivers/staging/media/hantro/hantro_h264_dec.c | 9 ++++++++-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index 70aeb11b1149..1b0c441ff15a 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -304,6 +304,7 @@ struct hantro_reg {
  * bit 4 - detail fmt, ctrl, buffer q/dq information
  * bit 5 - detail function enter/leave trace information
  * bit 6 - register write/read information
+ * bit 7 - dump
  */
 extern int hantro_debug;
 
diff --git a/drivers/staging/media/hantro/hantro_h264_dec.c b/drivers/staging/media/hantro/hantro_h264_dec.c
index e64b59c84111..2c53394cbb0c 100644
--- a/drivers/staging/media/hantro/hantro_h264_dec.c
+++ b/drivers/staging/media/hantro/hantro_h264_dec.c
@@ -381,7 +381,9 @@ void hantro_g1_h264_dec_run(struct hantro_ctx *ctx)
 	struct hantro_dev *vpu = ctx->dev;
 	struct hantro_regmap_fields_dec *fields = vpu->reg_fields_dec;
 	bool do_high10 = (vpu->h264_hw_mode == HANTRO_H264_HIGH10);
-	int reg;
+	u32 max_reg = hantro_regmap_dec.max_register;
+	u32 reg_stride = hantro_regmap_dec.reg_stride;
+	int reg, i;
 
 	/* Prepare the H264 decoder context. */
 	if (hantro_h264_dec_prepare_run(ctx))
@@ -421,6 +423,11 @@ void hantro_g1_h264_dec_run(struct hantro_ctx *ctx)
 	regmap_field_write(fields->dec_max_burst, 16);
 	regmap_field_write(fields->dec_axi_rd_id, 16);
 
+	vpu_debug(7, "Reg dump at decoding start\n");
+	for (i = 0; hantro_debug & BIT(7) && i <= max_reg; i += reg_stride)
+		vpu_debug(7, "swreg %03d: %08x\n", i / 4, vdpu_read(vpu, i));
+	vpu_debug(7, "Reg dump end\n");
+
 	/* Start decoding! */
 	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_E, G1_REG_INTERRUPT);
 }
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
