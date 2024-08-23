Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 568F1C531DC
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 12:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Owyyn+ycT4Am0mtJSH/Cta/8gTz44ayTx4aEBnPvbR4=; b=nhyJt9bgFnLbcG
	kbHs12h5ylVqW1Ud6LaUOlivTshxWSD7K0R8zzZTpCy9yMgLeY0FiMl9uiKRyVbFS8p0aNQCykEh6
	MXwE6khRV3ysBpJHThCbwVWe5IXmZEzk+2YfdytNwrA/EJZX2pifNuQMtx6s1N99Ht1WhFJxGno2J
	48lV/l86H67FDiooLZL4cZaqqWrJsNb7Gus1exAyTCaaYzw8E+18xiXjKRJFMmQHmfMFcdLxnP4AK
	a+LDounKLWEh9C2g65sfYoYpAIykccPUEJQRy2k53uo/LnMAs+QV3jt7IYMUZisXI49p+SStiMMTW
	bSi5f74uE9lZNjF0xoSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTqV-0000000GmPh-3dKS;
	Fri, 23 Aug 2024 12:56:51 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shTlW-0000000GlCr-0OqJ
	for linux-rockchip@lists.infradead.org;
	Fri, 23 Aug 2024 12:51:43 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5334eec7485so331405e87.3
        for <linux-rockchip@lists.infradead.org>; Fri, 23 Aug 2024 05:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724417500; x=1725022300; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pPH0zYeEKEXW0yb0C0QcNli7uy5nXQcT3Asm3cghOnA=;
        b=ZmkLZTRpXzdlgZzDFVJ31zXiZT+hRluWj/bCYIr5NM0I8UyrjEkU0tfU6hBshhTpjf
         wsoFSPfDPwY8n/vr+fCNcvd5ZMJL/xRcU/22tXNn4HvGeDcNm54b1XCSw9nyY+kWcQA1
         LVEilFWfbbsgB6Injo5hGBf1w6eo7IDA8GuirBEN0hpYqU/trCyXURxKHzXtRMblETIK
         HPZfjU2mIf7OfJy36DTHVaSVjEAYhN4GoZsdAraoFyPQ2lifAmJ8vDFWGnbUpcykIzYG
         MEyhr58XX6P2E8xp0EUAj+aiwIH/oDGIfp/9gz7FIgFx3bg5/xjmlCxYPoE9s6mQi0HQ
         kRPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724417500; x=1725022300;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pPH0zYeEKEXW0yb0C0QcNli7uy5nXQcT3Asm3cghOnA=;
        b=LZYrDDCpbunDAdqp+0MB00RUGJwvPKEsitaF8gfItVWVnrtTB+6eLlynBmOjM0Rv3K
         TrDCtTqXcirQyaUZAqlNNJHJlp97WAgHl9vrgk/qqMvvbjVewKTQvYvDqli4wTW3kTgz
         ihL7jkBgFKlf00kT7Tu4mLYwNXtWHqKGK0izjFKqmnizZRcNq5t9ch8RhMARto/sHuHc
         OG542TSZW3KhjkhueXgiLwBpaSwcysh1zv46OWthABOQkvlekcRokIUp5CvIyX05GMg8
         4DvkHtOv3PG/tWO/CNby14BwONcDQomu8eeDxy3BqF5YfPIcC4EZiS6FillSAh9QOnza
         Rfjg==
X-Forwarded-Encrypted: i=1; AJvYcCUJ1j+1i0a/YKjBkVeyzteO4abrpQn9yghiqtK/fkLRUZ/opWEcaPUPj//tQKl13Itt1h9HwfttJyl2XUChyA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJHjJXxi6GOA40sRaKMUVqCjTWZWRSy6qJfInUU4Ab+ZxVceE9
	2tdmygDuqd4MtqZSsSbHZlrJUf5cU2GFNP5pf3rgpg2MfpXs8JhpGDlZBHRdI+g=
X-Google-Smtp-Source: AGHT+IEx9QTBZ6Ig4dC6hFm6sSZWyp2NrZPz8Q5OQ6LiyVq1B5Hos95uvD5/wXcqZMFiFAQUCs44Kw==
X-Received: by 2002:a05:6512:ea8:b0:52f:cf7e:b1bc with SMTP id 2adb3069b0e04-5343876c2a6mr830569e87.1.1724417499775;
        Fri, 23 Aug 2024 05:51:39 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a868f4f384bsm255931666b.192.2024.08.23.05.51.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2024 05:51:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 23 Aug 2024 14:51:11 +0200
Subject: [PATCH 07/10] pmdomain: qcom: rpmhpd: Simplify locking with
 guard()
MIME-Version: 1.0
Message-Id: <20240823-cleanup-h-guard-pm-domain-v1-7-8320722eaf39@linaro.org>
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
 linux-renesas-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1388;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=y0QBIaJnf0/fSVbWVB0Xkg+ZYq4xy8XVXKh8rGpZrnE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBmyIXK0zZ4ZGoxkalISx0Oa0HQbALLrTngWax7j
 L5WXrBsTjyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZsiFygAKCRDBN2bmhouD
 1xawD/4+ne9u+0w9Ge4yGMtpLBPqws51qJWUNwZocPNFdFCwDtnWIBM/MFNMy6G7mVaitbYRu8S
 NufmqYkj3DXtJ2sKLwHYQ+wbGJkH2CKegDUkrberoehE5ecSQYeq+L8IeWTDwZ9t/8rORPyEAn3
 0x+pkG6t7Pup4fVh2PrYBqNBLimMVjnwPz/u3f9Da+qwY2cQzBoPcqDso2D9mBwsquclFCwEpQR
 RWeucQ/vUYJtFQqNxObOMA/GEDW+JSHCT4mD2CN1z1T2ASa0Co/ordw0ZJc4WuU4KjCZk9xq9Dj
 5GPBqEWzwt5f9DxLtaELBbhsyGQLEa13QryylbpEhT4Ax9ArnWkugphkF+OWJ5ewm8g5uB5xEqR
 KoLcKhf8VO506EI2bhmXkAW8+vnZmUMVyHnFQzvkDEeI7IjHYozxMcG8iYb+/3HEhwyZOL68qBx
 32uk1Gw5Yu5BWFddNZeihHUePRt4KK8NHdUfvtPQiHYylFkpEFwViCU4s3Gwuz1A8vDyFBVWvfZ
 KzAVDDXyVLMfYt/VO5iVeN4dwHtmPf9xQzkIIwd0gDwPKgC062VVJVqdTysn95/R+LPN6zp8qej
 cO2gtpfnk+e8mUL7UlFd3ZonuKOUmlacOqS2E1+zGdH5umSfmjMv+B2cyoGRXy7d/2Gac7Miz36
 HqfXODj1mLYdYeA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240823_055142_171339_576D830D 
X-CRM114-Status: GOOD (  13.15  )
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

Simplify error handling (less gotos) over locks with guard().

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/pmdomain/qcom/rpmhpd.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/pmdomain/qcom/rpmhpd.c b/drivers/pmdomain/qcom/rpmhpd.c
index d2cb4271a1ca..65505e1e2219 100644
--- a/drivers/pmdomain/qcom/rpmhpd.c
+++ b/drivers/pmdomain/qcom/rpmhpd.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 /* Copyright (c) 2018, The Linux Foundation. All rights reserved.*/
 
+#include <linux/cleanup.h>
 #include <linux/err.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -775,9 +776,9 @@ static int rpmhpd_set_performance_state(struct generic_pm_domain *domain,
 					unsigned int level)
 {
 	struct rpmhpd *pd = domain_to_rpmhpd(domain);
-	int ret = 0, i;
+	int ret, i;
 
-	mutex_lock(&rpmhpd_lock);
+	guard(mutex)(&rpmhpd_lock);
 
 	for (i = 0; i < pd->level_count; i++)
 		if (level <= pd->level[i])
@@ -797,14 +798,12 @@ static int rpmhpd_set_performance_state(struct generic_pm_domain *domain,
 
 		ret = rpmhpd_aggregate_corner(pd, i);
 		if (ret)
-			goto out;
+			return ret;
 	}
 
 	pd->corner = i;
-out:
-	mutex_unlock(&rpmhpd_lock);
 
-	return ret;
+	return 0;
 }
 
 static int rpmhpd_update_level_mapping(struct rpmhpd *rpmhpd)

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
