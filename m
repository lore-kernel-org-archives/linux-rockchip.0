Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9FD7CA0FFF
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Aug 2025 18:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iQlVgiGQIQMwHMTCRIvgW9DEPM95H24z3lWtnDmd/NU=; b=KA2Bp8Gjv8OpNP
	sv0Usltb3tr6sYkbIeNOxesz1e6Xvk7MnFUKJ/FWquJD5Qd+N61z/tKrMFSJw9q6na2epuLdbJgt9
	RFfTj+0nM7BsRbMIrrjGtbbFBueMGl+rvn4JlJZw/UX2IpH4vhioxzQUDkClZr+C+YbwSN5Rw15OK
	3i1DGVh859764poJ1LK298aW9x3r7GDjM9qj9THLMYEMJIeaCHULqbq1qZSkaYCz3PJlVENSIjwB2
	uFAQuAOYu+YMlhVi8zlKxPHMhewedLEybEKLZzoQEo/KjgRrnp3B3qTAHoowxZSN25QjhBKnh0uai
	BCa4QbzhQCJrLuScAtcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urhWR-00000002oLI-2Cqt;
	Thu, 28 Aug 2025 18:38:55 +0000
Received: from leonov.paulk.fr ([185.233.101.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urd9F-00000001oHi-0Lb5;
	Thu, 28 Aug 2025 13:58:42 +0000
Received: from laika.paulk.fr (12.234.24.109.rev.sfr.net [109.24.234.12])
	by leonov.paulk.fr (Postfix) with ESMTPS id 56F5F1F0003D;
	Thu, 28 Aug 2025 13:58:39 +0000 (UTC)
Received: by laika.paulk.fr (Postfix, from userid 65534)
	id CB17DB02230; Thu, 28 Aug 2025 13:58:38 +0000 (UTC)
Received: from shepard (unknown [192.168.1.65])
	by laika.paulk.fr (Postfix) with ESMTP id 1B81BB02226;
	Thu, 28 Aug 2025 13:58:21 +0000 (UTC)
From: Paul Kocialkowski <paulk@sys-base.io>
To: linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Paul Kocialkowski <paulk@sys-base.io>
Subject: [PATCH] media: verisilicon: imx8m: Use the default Hantro G1 irq handler
Date: Thu, 28 Aug 2025 15:58:20 +0200
Message-ID: <20250828135820.1859316-1-paulk@sys-base.io>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250828_065841_286848_DECD00A7 
X-CRM114-Status: GOOD (  11.20  )
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

The existing imx8m_vpu_g1_irq implementation is an exact copy of the
default hantro_g1_irq one. Switch over to it instead of keeping a
duplicated implementation.

Signed-off-by: Paul Kocialkowski <paulk@sys-base.io>
---
 .../media/platform/verisilicon/imx8m_vpu_hw.c | 20 +------------------
 1 file changed, 1 insertion(+), 19 deletions(-)

diff --git a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
index 35799da534ed..f9f276385c11 100644
--- a/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
+++ b/drivers/media/platform/verisilicon/imx8m_vpu_hw.c
@@ -234,24 +234,6 @@ static const struct hantro_fmt imx8m_vpu_g2_dec_fmts[] = {
 	},
 };
 
-static irqreturn_t imx8m_vpu_g1_irq(int irq, void *dev_id)
-{
-	struct hantro_dev *vpu = dev_id;
-	enum vb2_buffer_state state;
-	u32 status;
-
-	status = vdpu_read(vpu, G1_REG_INTERRUPT);
-	state = (status & G1_REG_INTERRUPT_DEC_RDY_INT) ?
-		 VB2_BUF_STATE_DONE : VB2_BUF_STATE_ERROR;
-
-	vdpu_write(vpu, 0, G1_REG_INTERRUPT);
-	vdpu_write(vpu, G1_REG_CONFIG_DEC_CLK_GATE_E, G1_REG_CONFIG);
-
-	hantro_irq_done(vpu, state);
-
-	return IRQ_HANDLED;
-}
-
 static int imx8mq_vpu_hw_init(struct hantro_dev *vpu)
 {
 	vpu->ctrl_base = vpu->reg_bases[vpu->variant->num_regs - 1];
@@ -328,7 +310,7 @@ static const struct hantro_codec_ops imx8mq_vpu_g2_codec_ops[] = {
  */
 
 static const struct hantro_irq imx8mq_irqs[] = {
-	{ "g1", imx8m_vpu_g1_irq },
+	{ "g1", hantro_g1_irq },
 };
 
 static const struct hantro_irq imx8mq_g2_irqs[] = {
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
