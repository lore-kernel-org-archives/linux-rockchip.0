Return-Path: <SRS0=G7C5=I5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17B73C433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:44 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 92A106100A
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Mar 2021 17:35:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 92A106100A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rxK9+gCt0QpzBNs28IepGs3JV8Te1xK97WEzRksqo1M=; b=n4PbDZYwJfN3uoozMvfJ5xB7K
	drkmBUvZDX5rAbepLIEUI71Hwm8CG47uH1bph6Ohb0LgWRrcNh8Ard3s1TD6TBCAIx1JEqkOGSq2W
	u+Nnd4ohxiGrWYcER6iC3hnR+tvSk6owTsbAfCsG4WgcuAUnIv6DFBF6T9yogi1VKKxysOsA0gogJ
	bC+ZlpRfjQUNA7FEH5i7Z7Lcs9GYAnOphMUF035jaXRvBzHizYHssaiuo+20NJOrvm1wG51n5skGd
	u7skytXSBJ4d25b3f2PL+z8ZNNNacDLF++SdNN/qmYBv/BF61+6eNHmauKTsx/Q3KPdeslUc9J4DM
	3XaVY2y9A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lReki-007CXB-FU; Wed, 31 Mar 2021 17:35:36 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRekb-007CUe-0D
 for linux-rockchip@lists.infradead.org; Wed, 31 Mar 2021 17:35:30 +0000
Received: by mail-wr1-x42f.google.com with SMTP id c8so20475397wrq.11
 for <linux-rockchip@lists.infradead.org>; Wed, 31 Mar 2021 10:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J7Mm6/g9DScNG5FEVhWNdLSdW972ryQCD27uTAegArs=;
 b=LtN7G9r8/jl/2chD7ZXrYNlXLFyE+1lvHPSzInWwN4rBV3jMbLzdoLCcYqGFP7RmQD
 tr3tNj/8FP3HOc1RRfLu5FJqSuE+8+RfTaVXmDgB6Cn4Bc9HLJicrgfBGSwMvBm6ADvI
 fkTvDyHvX5Z16HcOtUY1O1BiAeJbK1TWtK4rvVlNnHq4ya9cmq5/c9IIvuLd/5Pj9q+X
 Ht5q4jgJ7bG3/s5lu9yYdLWMnquXyYP83V/2GPTsQ5LV7sYAbKE6JqBuy0mAhu9yzMwH
 2zAhow+XzuZIwjc2KIp9P/H51r6f8c1ZHNKY8QrN/B6wv0gljbt22ABz6yhtpk3nzLZM
 E/Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J7Mm6/g9DScNG5FEVhWNdLSdW972ryQCD27uTAegArs=;
 b=Bz10ZE3Pt3jd2UpjnK9keWNqRK4yIxEOJibH+MLlR1ih8TF6mKCrV8X76nK2w6Nv+b
 rifSX+f+Pf2HDYytlYyCoF3ApVYNnM+nNYNKw5vFLsbgux38yyo/w+J+KwCmdulQMKnj
 7tO3P6J3hIhXnQ1ncELghB1+5R2jT6N4pU2L+7U8dWWlvVZ9AhDgc5mBSb76wagxCJ83
 L5tuYvolyV/SKjc3sQ1FOlbVQsozpZp7yy4nC9RsjbcD8e5+pca1umbxsbhORpcIaoZl
 8f2w8vWdpP8sZKpDF9yMCWmarwl2fRAkfvzu4bXtQ4Fwau4K4jHO7IqJhwsfRD+lRoSc
 V0Ow==
X-Gm-Message-State: AOAM5303WoB30ncdi0Fk8SdOsJE8+p+M3G+3LxAmyN+CIaTfujPhTkn7
 +Wt2ek89fhRtki1u1df+CzE=
X-Google-Smtp-Source: ABdhPJw52RKYcN4+cD5o9NRPGtnnTUTfKGBiYwXL6SNpac2aCdJFLiYtuSyEk+mnan+bhPp2J4+htQ==
X-Received: by 2002:a5d:42ca:: with SMTP id t10mr4938431wrr.274.1617212128474; 
 Wed, 31 Mar 2021 10:35:28 -0700 (PDT)
Received: from arch-x1c3.. ([2a00:5f00:102:0:6e1d:cfb9:fb12:552d])
 by smtp.gmail.com with ESMTPSA id 12sm4714200wmw.43.2021.03.31.10.35.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 Mar 2021 10:35:27 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v3 1/9] media: hantro: use G1_REG_INTERRUPT directly for the
 mpeg2
Date: Wed, 31 Mar 2021 18:35:12 +0100
Message-Id: <20210331173520.184191-2-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210331173520.184191-1-emil.l.velikov@gmail.com>
References: <20210331173520.184191-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210331_183529_110997_5427CC57 
X-CRM114-Status: GOOD (  12.45  )
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

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
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
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
