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
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC1BBC433E6
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:40:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7983F64EEE
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 18:40:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7983F64EEE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Geiu62lHHH0h/lPNaRoM84wPtpPAckxozJoR4jKTEGk=; b=LgMgWNxHO+ySqRk0+usXFl8/C
	YXH+gEPPiWhTpHusbgJj0SmE6pr00wiWujXSGVUqtdyW2Gs42ybg98yk/+giY4yl+stN72k6Z2uFR
	/k1JdvX0JNP2Ogw8fupIdIXr9HuVbFyhPg9icaEJj7zAyLqwnEK46CVQEgp1wW+nEd5bAemQkQzMy
	zvwdPo/bt/Fm+y3b+9/CsAgy+V+k0Se3UUQPKz23pu97D9ciWk0w5uv/871DSI2AnnkqEJna7mEvN
	SQYCg7HmmTXVG96GM0l3RrJmwY3BHp4EjB1H026+Vg3F/5+9pmvUaCqvoAZ6RZD6duGbsTLHq4WfB
	+Mx/sFoSQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lIFMs-00G0R4-8T; Fri, 05 Mar 2021 18:40:06 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lIFMT-00G0CM-0m
 for linux-rockchip@lists.infradead.org; Fri, 05 Mar 2021 18:40:03 +0000
Received: by mail-ej1-x62b.google.com with SMTP id mm21so5335475ejb.12
 for <linux-rockchip@lists.infradead.org>; Fri, 05 Mar 2021 10:39:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cnQkxEWf1/jtkQDwhzC/RNRYSHdN3zniN7xfiNIEH/g=;
 b=LMLFVrOEGn51sRs8V4YMad2+cDt8RA5s41ALA7xZSTNor06qKOThJTA6rFiLoRwATp
 XWD7BJajOkvb4kY5oOTptSr7TaVnRX+PAlwFdEHD5g61idaFed63kHbZvQg+SQDhoV1p
 C/Oo3OBDLNvRunWjxGXCcht8xhEEgEnqa2M1825Jy8MKmXr16MB2UMp+huaFlyJ2SLS2
 YdLgXfCFnvkdeslqO3IpOK5LxddG9BLMWmeJpiOhLn/K/gTUp35x1ov3LaBeapdjATe+
 TK3HzPDRHGDT7tdW6er0Y2+U5n66XXhteyyhZR9B68tcak74v3SvC6Npoj5oGzzyXYx0
 XF7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cnQkxEWf1/jtkQDwhzC/RNRYSHdN3zniN7xfiNIEH/g=;
 b=BwIHouGyMgyUu2a9bcgN9GaXqhzPgGw2eBG6b/qlkaTFzoIpHtiElrGqxs38S+YlFC
 WZL73984CgxK5xFgknpuabrgz3TshnR6YIqgdCJaG/pJ6BLT7hO/LRJQWAwFTMgsti8f
 Av8i5yW7P2l6mZMjYZd3HriInCqddNKRp7HA6+be8MicGfNz7OLS3aCtx+KP6g0mjvEW
 8PwJND4kmKUBEGoNmzbKWqG+SZHq5iC71d9kY4XFPkWbZrSCf9DbCjDexjAebGkyT+Gd
 Iqa183/LF51mGYFjfSQ6mqVS1/JMbD5rMgFP78JH1EID/ji6vg1pgjAIRHfUbcXIfAQq
 BupA==
X-Gm-Message-State: AOAM533y+fzuYKy55gQzt5UfuKgMsCi0F6gF0pB9oksyKTHB8fl2ZNDL
 CGovryyyvv3p2hheAtZId5jvB2YzPWRthA==
X-Google-Smtp-Source: ABdhPJzBaLPRZpXtKABYaswg2O212z146iHBthxlDQutr5KFQDi3h3XyDO9t51biut3VAu6DCsFcig==
X-Received: by 2002:a17:907:9e6:: with SMTP id
 ce6mr3468949ejc.207.1614969580342; 
 Fri, 05 Mar 2021 10:39:40 -0800 (PST)
Received: from arch-x1c3.. (cpc92308-cmbg19-2-0-cust99.5-4.cable.virginm.net.
 [82.24.248.100])
 by smtp.gmail.com with ESMTPSA id o1sm2121808eds.26.2021.03.05.10.39.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Mar 2021 10:39:39 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: [PATCH 4/7] media: hantro: imx: remove unused include
Date: Fri,  5 Mar 2021 18:39:21 +0000
Message-Id: <20210305183924.1754026-5-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
References: <20210305183924.1754026-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_183941_686708_ECE8C6AC 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
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

Cc: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
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
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
