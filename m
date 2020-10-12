Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78BB2C433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:07:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 01269206CA
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:07:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jyo59J6x"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 01269206CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vchwpFy2qd+/6FrHWX6Yi7T+aNuH2/+r7Hb0Dak1OJE=; b=jyo59J6xlxBwx/QOyTbxhNHT2
	ZAJNp6xa7lD2vGkWjft31yz2fdK0mAg+YklOZqySAchxRXomIHRBZ9uKN3VBzEMI0RVo0jKEy9YMb
	OGuYgiANyKfVizfD2RsbMQ4qqJP1QxH5iGyzV4dFo16P/s4FFml+y5IV7VtqZzH/W99bIvJro13nP
	JgOGGzDBCF2+t/TISqyJ+MrvngqjG2kHW89mTC0i/vcAYL2w5tQl9T8VD1TsgiBNnpl1fZu7IZPoc
	azDfYeRwR2gKa7mEerT9XizXnt1Oq2NVAGPYkkPT/VX/5EcckgZNFhL9fgDgp78Z6B63RzyL/J0Sv
	exApYY2Ew==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS52W-0004qq-Ex; Mon, 12 Oct 2020 21:07:28 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uN-0000wm-5A
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:59:35 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 2C9261F44C44
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 09/18] media: hantro: default regmap to relaxed MMIO
Date: Mon, 12 Oct 2020 23:59:48 +0300
Message-Id: <20201012205957.889185-10-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_165903_349629_37AAD78E 
X-CRM114-Status: GOOD (  11.98  )
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

This is done to match the pre-regmap membarrier behaviour, ensuring
default regmap_write calls in _relaxed() are indeed relaxed while
the non-relaxed versions include an explicit mem-barrier call.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro.h        | 4 ++++
 drivers/staging/media/hantro/hantro_regmap.c | 1 +
 2 files changed, 5 insertions(+)

diff --git a/drivers/staging/media/hantro/hantro.h b/drivers/staging/media/hantro/hantro.h
index c5425cd5ac84..5b7fbdc3779d 100644
--- a/drivers/staging/media/hantro/hantro.h
+++ b/drivers/staging/media/hantro/hantro.h
@@ -346,6 +346,7 @@ static inline void vepu_write_relaxed(struct hantro_dev *vpu,
 static inline void vepu_write(struct hantro_dev *vpu, u32 val, u32 reg)
 {
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
+	wmb(); /* flush encoder previous relaxed writes */
 	regmap_write(vpu->regs_enc, reg, val);
 }
 
@@ -354,6 +355,7 @@ static inline u32 vepu_read(struct hantro_dev *vpu, u32 reg)
 	u32 val;
 
 	regmap_read(vpu->regs_enc, reg, &val);
+	rmb(); /* read encoder swreg data in order */
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
 
 	return val;
@@ -369,6 +371,7 @@ static inline void vdpu_write_relaxed(struct hantro_dev *vpu,
 static inline void vdpu_write(struct hantro_dev *vpu, u32 val, u32 reg)
 {
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
+	wmb();/* flush decoder previous relaxed writes */
 	regmap_write(vpu->regs_dec, reg, val);
 }
 
@@ -377,6 +380,7 @@ static inline u32 vdpu_read(struct hantro_dev *vpu, u32 reg)
 	u32 val;
 
 	regmap_read(vpu->regs_dec, reg, &val);
+	rmb(); /* read decoder swreg data in order */
 	vpu_debug(6, "0x%04x = 0x%08x\n", reg / 4, val);
 
 	return val;
diff --git a/drivers/staging/media/hantro/hantro_regmap.c b/drivers/staging/media/hantro/hantro_regmap.c
index 890e443688e2..2fc409cbd797 100644
--- a/drivers/staging/media/hantro/hantro_regmap.c
+++ b/drivers/staging/media/hantro/hantro_regmap.c
@@ -21,6 +21,7 @@ struct regmap_config hantro_regmap_dec = {
 	.reg_stride = 4,
 	/* all hantro accesses are sequential, even with respect to irq ctx */
 	.disable_locking = true,
+	.use_relaxed_mmio = true,
 	.name = "hantro_regmap_dec",
 };
 
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
