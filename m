Return-Path: <SRS0=hzxT=DT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93ACC433DF
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 202A22076E
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2020 21:20:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="uCmWeP99";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.b="UGuLYwPz"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 202A22076E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TSQNayAK6YUskIC4jUJnTesFvO3bek4WJ9GMmAfIJfw=; b=uCmWeP99ODqj+wE0ggzDu29Xe
	fRk//qCMpZRUkL3CdrZwFe+gbqQNw4qcvw1jfneiMjYIrf2bBYcTRftxb6FlNmZm18yU+zSKk7m8I
	g30er97/0ymR/Q56fB5MHVlO5n3dqi2i/MjIkJ9IXZHc96ykHsvI54dkXVJR09OXzeSbP8KadOc80
	J9/RECJpBavupPQAwDrFcO/pGYgiVCGHzK02AT4eQtRocZfqax0vls0nZ39hLxPxoY1CeLb/C4QQ1
	cOm72gtqBIOXpSUS0kdLmh+UTHqLVv3OdqnbA0rZf5SFMoCbYjz8w+yKuNaDGqBrsxbnX0YlfUfdI
	plJyJgbsQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kS5FN-0008Gh-Rx; Mon, 12 Oct 2020 21:20:45 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS5FE-00083L-Hh
 for linux-rockchip@merlin.infradead.org; Mon, 12 Oct 2020 21:20:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=euNyQ3k0xK5JYURc+Nm+4Z68tVxhoeEbMU826jGDkJQ=; b=UGuLYwPzGL6hePliOXVGG9JcOq
 YZjdz07CSGbvprqRJmtvzZOPrviSWAvpUA8XGkylk1jvlqm2XDIS4DX9IiMh7yyZLOR/waoYM9/Dv
 lwjKPauPWbsJk9Sh0VXeMVfYGrpl9mG//8a52U53rG5uabWF71d2ZwNeJqK16+RhCvzuq+Al562vi
 M0blLfuWOvvejrndr4d/xOhKh9hf+G4aKJMR6xN4z292AmGQclAqjuEKi9c0Vbh2gbAPvQ6kTHknc
 SF2y+ur83mzAemWdoM4egutPc23k7TGR4wkhBBN6a0lgBwuyKTz6fuBVRSEIpgZsA0AmM+1kM1H7f
 wwpJbrLA==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kS4uG-0004hc-JG
 for linux-rockchip@lists.infradead.org; Mon, 12 Oct 2020 20:58:58 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aratiu) with ESMTPSA id 984B81F44C2C
From: Adrian Ratiu <adrian.ratiu@collabora.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>
Subject: [PATCH 03/18] media: hantro: make G1_REG_SOFT_RESET Rockchip specific
Date: Mon, 12 Oct 2020 23:59:42 +0300
Message-Id: <20201012205957.889185-4-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201012205957.889185-1-adrian.ratiu@collabora.com>
References: <20201012205957.889185-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201012_215856_797815_F107EB7B 
X-CRM114-Status: GOOD (  12.97  )
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

This register is not documented in either the G1 or VC8000D register
maps and on VC8000D there is a conflict because at the same offset the
VPU IP defines another register with a very different meaning.

What likely happened is the HW integrator which uses only the G1 IP
core added some reset/control logic at the end of the VPU map, so
it makes sense to make this register RK-specific.

Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
 drivers/staging/media/hantro/hantro_g1_regs.h | 1 -
 drivers/staging/media/hantro/rk3288_vpu_hw.c  | 4 +++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_regs.h b/drivers/staging/media/hantro/hantro_g1_regs.h
index 073b64cbe295..a482a2ba6dfe 100644
--- a/drivers/staging/media/hantro/hantro_g1_regs.h
+++ b/drivers/staging/media/hantro/hantro_g1_regs.h
@@ -315,7 +315,6 @@
 #define     G1_REG_REF_BUF_CTRL2_REFBU2_THR(x)		(((x) & 0xfff) << 19)
 #define     G1_REG_REF_BUF_CTRL2_REFBU2_PICID(x)	(((x) & 0x1f) << 14)
 #define     G1_REG_REF_BUF_CTRL2_APF_THRESHOLD(x)	(((x) & 0x3fff) << 0)
-#define G1_REG_SOFT_RESET				0x194
 
 /* Post-processor registers. */
 #define G1_REG_PP_INTERRUPT		G1_SWREG(60)
diff --git a/drivers/staging/media/hantro/rk3288_vpu_hw.c b/drivers/staging/media/hantro/rk3288_vpu_hw.c
index 7b299ee3e93d..4ad578b1236e 100644
--- a/drivers/staging/media/hantro/rk3288_vpu_hw.c
+++ b/drivers/staging/media/hantro/rk3288_vpu_hw.c
@@ -13,6 +13,8 @@
 #include "hantro_g1_regs.h"
 #include "hantro_h1_regs.h"
 
+#define VDPU_REG_SOFT_RESET 0x194
+
 #define RK3288_ACLK_MAX_FREQ (400 * 1000 * 1000)
 
 /*
@@ -167,7 +169,7 @@ static void rk3288_vpu_dec_reset(struct hantro_ctx *ctx)
 
 	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_IRQ_DIS, G1_REG_INTERRUPT);
 	vdpu_write(vpu, G1_REG_CONFIG_DEC_CLK_GATE_E, G1_REG_CONFIG);
-	vdpu_write(vpu, 1, G1_REG_SOFT_RESET);
+	vdpu_write(vpu, 1, VDPU_REG_SOFT_RESET);
 }
 
 /*
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
