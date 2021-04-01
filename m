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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 399DFC433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:44:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BAB4261243
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Apr 2021 14:44:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BAB4261243
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uPgXfCYBtQWKGpRkf9mZyAElYuoQ5c+W+UefNUFGi7Y=; b=nBXH/uqQ3AssAArVKHY/PIJ/6
	y908HzcbIQgMeH7iQH/ZruXphR7BstcP9Zf8ItCKapPTu1iUEf8BPVufS1DI1EtES3Rj+EWh2XNTS
	84V8w+BL8M8vm47CCjUZwTZByFn+OTP9+hqo6d2kj/NEX/2P+T6vux4PI7S8Jx5COIkiqmrExATh9
	snBglL87MtH4bpkfFogBlXZuWzA1FOHLA3MTiB04TCvHioQzbiiMOQRBXZMVA/B4m36i7NzED1Kui
	koD3xElV6GD48L9fE5nZvbP/rA0V0iaFdzAmaFuqdBjNXksgapnurvWHHpZwyPtB4jvB1krwWFI2F
	MyBfmLq6A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRyY8-009sdk-JA; Thu, 01 Apr 2021 14:43:57 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRyY1-009sa6-Rj
 for linux-rockchip@lists.infradead.org; Thu, 01 Apr 2021 14:43:53 +0000
Received: by mail-ej1-x62b.google.com with SMTP id r12so3264894ejr.5
 for <linux-rockchip@lists.infradead.org>; Thu, 01 Apr 2021 07:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RKzjLcplK3Qj6N++ugVsRlEJA8YUUn4W3Fexo0s7VWk=;
 b=Yx8aJJF9roXhjRvDam2PZ/yiaGQfqO6XO6xisEn4pmEJrBCqSuW73+eIrydZ8+7iwJ
 0Xt6ZBC77PaQOMtj4201lxCmu4wX/dkuj/RVa1r9XkwWmiRQb6dDdjmKsSQbv+vhRbPx
 u+dMeYQZJW7ZhTvkhNs+vIBwagNotIf8JBLoxszWk8De+6QZjAP8C6RE4vgaOtm3f7Y7
 Ht+vr4bDq4zY16YByGONEw2LshCyJbFte7VvJjH4on84mLfs3NRKmcU6be1j6clerxf2
 ReXUEyf+PGGKQ4JcBruu2oQMLxw6Rtm/+5TX4V8pdtTbTApFFhkUb38ZpCbFZPyCNd/k
 /U3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RKzjLcplK3Qj6N++ugVsRlEJA8YUUn4W3Fexo0s7VWk=;
 b=LFzUzkOsq+KQTKxxU5M9QRhnrnNWqm8BGwV0bMPyqIIvj7LO1/C3nICFYgWeZ/ilto
 CEF1FhbsZ3+m4PAl8wSdkGy6nlYe4bszvR11Pxtbh1yekvam40l1FSoqPMUzB0rw9q4d
 vez6XpijFKKcVw7s/di5MXzdTuSrBfu027CGEtS4L5hWIZsLWE1sBOFXImI4A8VRuaa6
 48W1AgFWOISkR7VJWsjzUzcz/G902RLwDnqwUVRWYIhGVy65j1dA3/qtw95ZP9knU2wF
 hIIknvHPoqtN8oNjelzghRAiyxaLWjJ/LCtdgghFgyd+HtRXet2dAASHqhLUVsrzCcQX
 MCdg==
X-Gm-Message-State: AOAM533B5L4B8ed8ggeKdeYn7i5DM3VNm1/9D6X0HK34NxXLc0ZMaat9
 tHRNYhCGZOhRBZa0Sr50r6g=
X-Google-Smtp-Source: ABdhPJzZowtT7P8Uk03UXsaDI9qXGEjJgDB6omDUiNF5Lwe4cohmebQyyy0VbSRa7O5DF0gjk8/Vyw==
X-Received: by 2002:a17:907:7785:: with SMTP id
 ky5mr9157045ejc.133.1617288229379; 
 Thu, 01 Apr 2021 07:43:49 -0700 (PDT)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id nd36sm2854950ejc.21.2021.04.01.07.43.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Apr 2021 07:43:48 -0700 (PDT)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: kernel@collabora.com, Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 devicetree@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v4 4/9] media: hantro: imx: remove unused include
Date: Thu,  1 Apr 2021 15:43:31 +0100
Message-Id: <20210401144336.2495479-5-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
References: <20210401144336.2495479-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210401_154351_843638_D75B74F5 
X-CRM114-Status: GOOD (  10.43  )
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

The current imx8 code does not use the jpeg encoder. Remove the
unnecessary include.

Fixes: 8e4aaa687863 ("media: hantro: add initial i.MX8MQ support")
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Reviewed-by: Ezequiel Garcia <ezequiel@collabora.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Signed-off-by: Emil Velikov <emil.velikov@collabora.com>
---
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/media/hantro/imx8m_vpu_hw.c b/drivers/staging/media/hantro/imx8m_vpu_hw.c
index cb1ac02c03d2..f36c1bd681ba 100644
--- a/drivers/staging/media/hantro/imx8m_vpu_hw.c
+++ b/drivers/staging/media/hantro/imx8m_vpu_hw.c
@@ -9,7 +9,6 @@
 #include <linux/delay.h>
 
 #include "hantro.h"
-#include "hantro_jpeg.h"
 #include "hantro_g1_regs.h"
 
 #define CTRL_SOFT_RESET		0x00
-- 
2.31.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
