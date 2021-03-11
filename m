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
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0AD7C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:21 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7311B64E31
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Mar 2021 15:41:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7311B64E31
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DuPJOKEakRsmSKzDfsG6TUO/o8rcRx9B4jZtDfzWSuo=; b=h7eVWu1FStwsZIBSZhjCU3xec
	7fg1kwmPw5dyWLu0YVeRVzJuqC/js3+DIvuA8laGc5eTKfS1czZ51kdGAPCTYdzgTpDWkqC2v20ML
	piXm8J8tCV9rf3+a4P9XvOdbYtnP4b4GMwDDWxamg1afPay6Savqhr8hg/13bHSoVwqLCElXEdQYe
	ZfRlJ5pE42SCg6l1b4V5KJ+Dcd5s5M+ViVWIAvCtowWf+5BEOlOUvbRaCG7T53MLt9lUHrAUiVMwx
	5QVu/eYSwykfgq9bsyjjsd2XolJAz6IkjvW1QnfXvDzTer7yW7bFX2DAebhfLv5VNQ3JL2WCDrbrw
	B8dfUVfmg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lKNR5-009UFe-3l; Thu, 11 Mar 2021 15:41:15 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lKNQx-009UCf-Dv
 for linux-rockchip@lists.infradead.org; Thu, 11 Mar 2021 15:41:11 +0000
Received: by mail-wm1-x332.google.com with SMTP id
 f22-20020a7bc8d60000b029010c024a1407so13496460wml.2
 for <linux-rockchip@lists.infradead.org>; Thu, 11 Mar 2021 07:41:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/r3aZbcoQSdd2XlNz/UGKekZlF4ttbt76qWK9B/aFNk=;
 b=UqPLiW74XyVzX+/8i1wFG4KYZv4JtNlR+POcaYks2dw73DeibmIKY+eAfxocTv4QAh
 m9w9FOgQIXx2pUE9rEwweK+GY755VQKjBGotptkRCyy8y/l3JDsvEICCZy0is/lshXts
 25Fkooa49fmVuLkqtZO/QxcRnmnBLdeEstgwA4AStWv8aLNj2GsICxNApRrUPj0+BrSt
 TUJWmeRncmVYDie3V5+U9UuCLewznQfsnKDauWAqvXyMVM6VvPoobxp6YVC6aAw/TqVN
 Xh6IMh1C+9cxKO47tOV9FxhK2NTLgubFMJiYVQEju+0SA+LVZ/6gljVO2LMjljWhksl7
 3lbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/r3aZbcoQSdd2XlNz/UGKekZlF4ttbt76qWK9B/aFNk=;
 b=TQ16KaqfK7iUm4H1fGTC5e+1ofywNWsimX8bkJvZ7+stDkKRdUHor4MZ3x7vdvuHCi
 jH0IznsKe1CxMz1ll8cBHHJn1LAYtzeaBpIkx4BHVCPUQ+627IVZBEGwlgQD0Krc0WO+
 1/wI40LoiaS50tPzst+DKUlAA5DMC+nM/rD8twRb24FSDldLaDsx3EsnQlIs9yr6VcRf
 Jqe/fkxMIQiW33d4VjvX+J1cYwVbOHNwcxw+hXjNy0/LITMRDX6v1kKJ+zPcY/Nc6DN6
 tdMxKP7kQnbQucBx21yDk3Yox5UP7z/s04nmsBT5yzSeqCOZx6Rv5se+36vHbzGlbPl0
 +zDw==
X-Gm-Message-State: AOAM532x2ExCOeksTY9jwNEPSTETVilFYm3GMKxibY31zg6XsZF99Td4
 AAjS3DbSx2M3DpUFLXQAMLe9dwEh6vS4IQ==
X-Google-Smtp-Source: ABdhPJwZaFjAOAqytix5m62/UG9vW5dE/VZ2CndcnxU4JL0UkXJxjs5A40JB6/bpCXjBwhvuJunELw==
X-Received: by 2002:a1c:a306:: with SMTP id m6mr8517880wme.13.1615477266868;
 Thu, 11 Mar 2021 07:41:06 -0800 (PST)
Received: from arch-x1c3.. ([2a00:5f00:102:0:b16d:9752:8f38:7d6b])
 by smtp.gmail.com with ESMTPSA id a17sm4008547wmj.9.2021.03.11.07.41.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Mar 2021 07:41:06 -0800 (PST)
From: Emil Velikov <emil.l.velikov@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: emil.l.velikov@gmail.com
Subject: [PATCH v2 04/10] media: hantro: imx: remove unused include
Date: Thu, 11 Mar 2021 15:40:49 +0000
Message-Id: <20210311154055.3496076-5-emil.l.velikov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
References: <20210311154055.3496076-1-emil.l.velikov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210311_154107_559617_644E91B2 
X-CRM114-Status: UNSURE (   9.64  )
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

Fixes: 8e4aaa687863 ("media: hantro: add initial i.MX8MQ support")
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
2.30.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
