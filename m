Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A65FC43381
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:39:51 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 57EDB650B5
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:39:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 57EDB650B5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PB9WhPfBhYaqD64JqsbYNRTjniQlpaCb9Dgk+gT4MS0=; b=GsQ4ZS5nXp6H7IaGK7ZD+0kKu
	//6gQYVTTxnc5nwWNNXUONfuDQfv0RuJixLOBuSvlY0QH4+6Yx69VPpJk9/cAhkXfvDfuPMmiqGxd
	5skgzJlfE0ea/m/7Egzw+044c1/AANEIXloCrtQzchkTNsUIZLcfm+iekBn5F+Qb7b3Qm34EbhFrD
	zn5TCiocBK8sQG0cgRm05WHqX5y30qwhvigqrPhUtYq983oOJEtE4PRt8oWcEoO2tRw5o7ySWBO9n
	G4qIrtBN15RPVWAhK+408+meAh69K914xd9AYTHcVC6C6cQgOOkDL++76NScopkIPrqcjrEyh796y
	Tlwh9E7Xg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFMT-00G0Ch-6L; Fri, 05 Mar 2021 18:39:41 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFMP-00G0Ar-OJ
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 18:39:39 +0000
Received: by mail-ej1-x62d.google.com with SMTP id w17so5396118ejc.6
 for <linux-rockchip@lists.infradead.org>; Fri, 05 Mar 2021 10:39:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bIJdIGKj6HKNSz+mFrNMaUm/bPZqpcnizzIMsRqYuoY=;
 b=RiVWhR/OvXOcja8xhoQiGT5PENPEhs6J6857L37rppeYpLlOTH6et5xlvA4+/l13oB
 IgaRlZNmLThTUY36AbheXvHSUyptu/w4y/kNgRcH8BW+s6CZe7PZdF95iLM6XL4YUwLu
 bJ5qmvSmOLTEitH66jN4etv4LydMPbJeyRZJOiSrnoNQ87xaKYAOrt4ceqRRnsKCTuZn
 PCbHjZbHpdMRs7LdBdfWzQ9cW2YM7fRq/AMFje8ieYX7bQmjk4zRyp8l84iR6+uMTHvU
 X4J3apTH6S5zqMHdBsLR8zyjSlsmmzFgUGJmcjUv5/89r+kPcSIBo8ohwOm8mnurXhst
 yoUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bIJdIGKj6HKNSz+mFrNMaUm/bPZqpcnizzIMsRqYuoY=;
 b=ISxnfLyr7x9l44INJMzxoqgqPcu6+XcFKeliFkXmy5VgOLApVWF8DwUqg2vzR2euXb
 28OHyk7O0ASSw+TUqxkUufURr1+XlTSRZCg3cCJnUXStc97cm2fspMgZk8PsLgvSA/fb
 5wrbqV+w/iu49z6F16c/YMtoi41tpftj47qnSD2Te6iJf8ELsE2WLcY95P18rANvCrb9
 lVfJE7nm8JkU1MOCLf8PobMRyv1/ncZZMlQTIUBlcMb93g/iKTMsJGEKEmqA7s6SnulN
 NLdh7a7tuPjuOpMkr2z1yukzCp9gd+C7r+irByd5UBcJG7jVvP4oKPZbZ9t/SLAwlOsP
 S3rw==
X-Gm-Message-State: AOAM530a6s6uK3HEVHlevDWREu8Esb+TVfVORKP299gOub2kkkUx6FN3
 XxbjCcEwAIjJSHSGqGCXa+Q=
X-Google-Smtp-Source: ABdhPJyYrwPZqYJTonz4hUccXLXjyd7w2XNt8KWKQ+V7zyILnAlCiP4HpU6o6QjjEkD32oC9F2oRPg==
X-Received: by 2002:a17:906:c210:: with SMTP id
 d16mr3539327ejz.187.1614969576258; 
 Fri, 05 Mar 2021 10:39:36 -0800 (PST)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id o1sm2121808eds.26.2021.03.05.10.39.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 10:39:35 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 1/7] media: hantro: use G1_REG_INTERRUPT directly for the mpeg2
Date: Fri,  5 Mar 2021 18:39:18 +0000
Message-Id: <20210305183924.1754026-2-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_183937_978899_B7111F35 
X-CRM114-Status: GOOD (  11.73  )
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

From: Emil Velikov <emil.velikov@collabora.com>

Use the register directly over the existing SWREG().

Ideally we'll port the driver away from the local registers, but for
now this is enough. For context - I was reading through the IRQ register
handling across the variants.

Cc: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
 drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
index 6386a3989bfe..0fd306806f16 100644
--- a/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
+++ b/drivers/staging/media/hantro/hantro_g1_mpeg2_dec.c
@@ -10,6 +10,7 @@
 #include <media/v4l2-mem2mem.h>
 #include "hantro.h"
 #include "hantro_hw.h"
+#include "hantro_g1_regs.h"
 
 #define G1_SWREG(nr)			((nr) * 4)
 
@@ -20,7 +21,6 @@
 #define G1_REG_REFER2_BASE		G1_SWREG(16)
 #define G1_REG_REFER3_BASE		G1_SWREG(17)
 #define G1_REG_QTABLE_BASE		G1_SWREG(40)
-#define G1_REG_DEC_E(v)			((v) ? BIT(0) : 0)
 
 #define G1_REG_DEC_AXI_RD_ID(v)		(((v) << 24) & GENMASK(31, 24))
 #define G1_REG_DEC_TIMEOUT_E(v)		((v) ? BIT(23) : 0)
@@ -246,6 +246,5 @@ void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx)
 
 	hantro_end_prepare_run(ctx);
 
-	reg = G1_REG_DEC_E(1);
-	vdpu_write(vpu, reg, G1_SWREG(1));
+	vdpu_write(vpu, G1_REG_INTERRUPT_DEC_E, G1_REG_INTERRUPT);
 }
-- 
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
