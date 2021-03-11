Return-Path: <SRS0=iGaN=IJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 160E8C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8F21664E31
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8F21664E31
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CPXQcoIzJTOhO56qF3EiNEqDH7diHEbZ6TFhBAjn6x8=; b=QUVcCTLoclUl5w8r6qyfNkP4e
	Xx7GlcCZAWxHUxjknERA0PR9HhP1EO11+nNN9jd1W1LOqYlBp/FQVhbGF+/hnQAMg3xNkrV8a5h2Z
	DVyncg/JT/oWMYuqB71PPZXEwVD/Xr+PkeGYuoQFXrJvc7vDgCaUws9PBdvP5WdeThPQ6cjreIaNQ
	N1ba/uYDQb96zK7LdgcG90rFQhVS6+tRJDeauQsVXLudr0nKZz2OrbvqnAIVSbqbWHA5F+WlGYgEM
	Z3jF35j5xVq6PcWKH1IzcnWuodwZ8OJwBFldMFjswkD2Ia5G5XnWiovF7CikCqeXeuZHlUXlOoW76
	TJTjDz8uQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKNR4-009UFL-6J; Thu, 11 Mar 2021 15:41:14 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKNQu-009UBR-E4
 for linux-rockchip@lists.infradead.org; Thu, 11 Mar 2021 15:41:11 +0000
Received: by mail-wr1-x42b.google.com with SMTP id l11so2386226wrp.7
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Mar 2021 07:41:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A9gilAFWqX+sAkYfLFghCBaHM+ZlkbP8jMbwAPT3w7E=;
 b=pektPEun0KxdsEnbuwQz9hjNCrAy48V2ZNCQIjBl8zQKyJmPRrOr08idB06H8UqfO8
 9vwUJAEaHuSJyBg89IHWMNkBvx8Mwo7YTkY5nlcVXbXxKwzXwv/V5AgBnW04fCDIrxj/
 HGiXtvnpCBoQeiIx6ef6DU3Gdt59i9ugc7OCZF1JfnB/JFixmoY2dmBKGRVrnjsDi1R7
 NpvOUzJxgw+QCRi9M33+WSkb+Dm3L3pttaRgGATOt4ojG61iC5KzRLj6Qe6l2S3xG57F
 +1N/6iwOgZ8R1BR2n99gE2TW7767qemdnUZAQAZRefY0Ak/7dVYp5YYmjTtmwd+wWZzB
 DBuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A9gilAFWqX+sAkYfLFghCBaHM+ZlkbP8jMbwAPT3w7E=;
 b=uCTLlpp2EoPE5VbMGutMkPtGUFT2WAkvSvsTH+UNkAQ8bv47S9aRJ71T9YMapqAC92
 7GbG7k/DHkZgdEBFExydBmcjzyKpGoqQh/uxJeUMcF0DWA/aqQwAtTbr/LP4r8TpjoRm
 H9cRlqYOkZPv+jjn7dabpRfX8AYZu0MWEjBdxLMikMgREyIjrHFJ/5wLrYCD+WojhKzb
 Ui0TlikyGxlnq7uS3zx4G/6DXW0yGX/8rC8mUokEG58czjp61MI+Cbs4Y+GV+tc5GMgT
 bv90y0LswhUZE52zsagNkySSjNipzkJxyiw6AV11ErzWjzUylL7anQf+R4vlF05S30RD
 7nxg==
X-Gm-Message-State: AOAM533hHpgSdxK+/MrrtWbPkYj8vwK1jDayrnF/hWm7TPB3QwKJqUaI
 7XVrl+E3JNUF8rH7OzEVJrQ=
X-Google-Smtp-Source: ABdhPJxgud3NIWFBRry4m06fLMiqJrSLDu4S+lxYccZpRNN/gnJmAyCbf6lWujooctTG6oQNOz4cNA==
X-Received: by 2002:adf:f351:: with SMTP id e17mr9282127wrp.416.1615477263932; 
 Thu, 11 Mar 2021 07:41:03 -0800 (PST)
Received: from arch-x1c3.. ([2a00:5f00:102:0:b16d:9752:8f38:7d6b])
 by smtp.gmail.com with ESMTPSA id a17sm4008547wmj.9.2021.03.11.07.41.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 07:41:03 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v2 01/10] media: hantro: use G1_REG_INTERRUPT directly for the
 mpeg2
Date: Thu, 11 Mar 2021 15:40:46 +0000
Message-Id: <20210311154055.3496076-2-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_154104_523533_756C460E 
X-CRM114-Status: GOOD (  11.90  )
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
