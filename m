Return-Path: <SRS0=fCHL=I6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F3F8C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:43:56 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8C91861360
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:43:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8C91861360
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rxK9+gCt0QpzBNs28IepGs3JV8Te1xK97WEzRksqo1M=; b=ABc+W6DaGIr0bx0wDXu0dfIY3
	fE6yJwkxxmXuM+OXwiiXiR2ycylLZFzOLT1Hdcdmxq5wRyPVXMImEbr1l5eMm/XZjdEloJNPzRp7H
	wHn/G0BkbK8aagOW4wRfj2OXO3r5TMeXxnu9txZqZqkg/qaauxV9XVIRbTVn4XTULds49mhQbsaMs
	8vdddCCIxq2C2bpQjrv/Edrjl5wiBilWqWJkkaKAGyVRSzEAWtgqcq3CS3Qn/A1cVvkV31BWbvVCN
	vMgUHtTWtN71FYdlahyJYMgkHjajfhrgWLsF5uiyVCRQBK6E1aPC+5u3EAv/sHTJLydvEIekVZfNY
	xCyEDopjA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRyY4-009sbL-E2; Thu, 01 Apr 2021 14:43:52 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRyXy-009sZ9-MZ
 for linux-rockchip@lists.infradead.org; Thu, 01 Apr 2021 14:43:48 +0000
Received: by mail-ej1-x62d.google.com with SMTP id e14so3233266ejz.11
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Apr 2021 07:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=J7Mm6/g9DScNG5FEVhWNdLSdW972ryQCD27uTAegArs=;
 b=cocP5aFSaDQz8YX9rCZCsYjT4pyAyRqKwmr4Mz497RoajsgGF2xqbQCtJ9O1AY1Gok
 ztzYsKCqUuhznyQHYNx2Ba6KCc28I3YlyUPf+rRN55qv+nTIwfMsXFpH1R+VsnczpIsn
 AHdxpAHTqlY7owm9DUO/EWWQc0gyCbJ84Ia71jjxSrFwE+HNkgTzErq5IJPuKGBXzjYT
 sxrjIr4B9GpD9yQvDcDIqYCd8CPisH9MTH4PUN8ypRhG7B0+q81iEIvldW03OaV/sYVY
 I+7YmjudeoZ+90m1q30mzvPcIALWSTMjdDS3lm7yhQaGuhM88R53g0IXZGctH+u/a4xD
 Wt6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=J7Mm6/g9DScNG5FEVhWNdLSdW972ryQCD27uTAegArs=;
 b=ohTc+seafCFBvuFCgYQyB1o8IaJ1ySK1h5D8yiVOoYqetETvaqdU17WsCfefVrvkOk
 F5xPimq9PI42MEEK7Bi1aIGOkjSXh//6XJxc9xtrrR1qQyyoRl3Hsz7vEUYivV2aUfx+
 slab7jaRMdeAsfCXcEesw9rd+TUzfQbZhGFTVESGtMdbHJomrBMNBebj6ilv+KeOUsdW
 +bX4HwOzXPU3FUiK77n3ui0HYGgNsoZ2MiLjq2dhZHbq6KSk3i9GGddX9uDmnPCtVw9E
 4dUhg4wiz8I867NOyfAX5ZrC6sjRTGQllz5qz92P1Qm3Fy1YC/kmYhkEAJ9lHdRhQ1e8
 teEA==
X-Gm-Message-State: AOAM5317eW/UiVdj1GDS6hZ+IgVUUUUgJs6h2CWvDlLXa1ofpQZuOTn4
 CBHbNYsKBxXLXVWHJL2IF80=
X-Google-Smtp-Source: ABdhPJyVac4iu3IdmV+i/AHmGdiPnVtIYRQD5L8PxGyrsvDy5FaLQyPgzgxpLJNCatATCQIbVe94Ww==
X-Received: by 2002:a17:907:37a:: with SMTP id
 rs26mr9422030ejb.336.1617288226183; 
 Thu, 01 Apr 2021 07:43:46 -0700 (PDT)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id nd36sm2854950ejc.21.2021.04.01.07.43.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 07:43:45 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v4 1/9] media: hantro: use G1_REG_INTERRUPT directly for the
 mpeg2
Date: Thu,  1 Apr 2021 15:43:28 +0100
Message-Id: <20210401144336.2495479-2-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_154346_848169_74F6B848 
X-CRM114-Status: GOOD (  12.73  )
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
