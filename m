Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 900C1C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:51:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/W0bEamgwPgVEyU/UxZsOB2NkzwhhyU6WPJAw2zKKGU=; b=Lb8xxepCRNxIoM
	fIcUeQoyyadvTj+gw5iLPOpzlzN5lSOTClZaRaxS3QMF3d6YgK6vlLKT89OzY+0VdFjH2eCXN4Q67
	Prls50yUEOdny7n6zaIKT59TMneJ7TN38pF/raLoU4KG3t3LKv2akgzR92pYrgwg529Zv/KJ+RkSR
	c/+GHp9LXc4ucVr3mzkvV9NU3cnegTGX7NRNZWG6Vimr3yQebGfTgAkjQgiseAeXogVTcDFfoGXUA
	I8zxGf2vvlKy3Xj0IQptUfZNmIaYuIuCzTPhNTv6AiVvfyw1vTt92h6BxwkIoYbxduYFK5IR/+81I
	YXuTR9AmNzYhorLJ6TcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naOEm-007KJq-IR; Fri, 01 Apr 2022 20:51:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naODN-007IwW-GX
 for linux-rockchip@bombadil.infradead.org; Fri, 01 Apr 2022 20:49:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=FcH8eAoI6yz+8TC9BMdMFxwPGrpdfZxlhw/9L623qlU=; b=G5LaE54MYapcAsy54+oaDzRY4N
 hwTi8FrQ1J3GPnPePEGEGeXck+7ftDF7oOG1Lhcaratd/Nvq0iwO4IIPZVv7XjimSGWBPMWMBDc55
 vN5/zhuzdIKZFsnHHU1Ao/SIhTcdepoD+/pvUNm62mG/Bey+3NZvpk3ZvkJ7inSF38m4v51P6uEVx
 9etfDomOcChplO82ShdNW8jW9cHkpsK4CaCN7E/gpegbfl9rzks73iSHHIzWEnJSpltenYWSWaZvE
 KyoUBssYKf+bsr6QV0cFZQDcEFYRzbRyrqfD3y2hVfUsRvH69+7+8jTEgDYZ9oVMFWvH8R+vO3MW1
 w+H2StUA==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNiz-000f7Z-K1
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:28 +0000
Received: by mail-wr1-x42a.google.com with SMTP id c7so5896128wrd.0
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=FcH8eAoI6yz+8TC9BMdMFxwPGrpdfZxlhw/9L623qlU=;
 b=llsrWDxNsvEMzNlzLU35oj0tkJ0Y7D2I5R00fLAEedh+oepe72uq1hj/+DV5thVha8
 MOwOBAubNz7hOE9SG5/J+GOdeEeOfomzibIyfFgBNL6TK4FHGB9W7kRl7IVFMm8NNwaI
 k8ttDsR8fw38yuiR2SKn8CQ/Uv/SMH5/ZLP3HUuFJmyr/R/TOwSV3Qjco1tOqHRmUJ+q
 JzYL5DrxggHdIBxEJkOT//D1ExWyHndxqGUusZOYpzYMNbZi+8LYwBumNMXyb9F3C376
 rXiAKWkih8+yQk+spVNJy5Fgit1HNX/dKraydCblNQLPSAUrjTQLi1ntgw7KY1X9HsmL
 tcjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=FcH8eAoI6yz+8TC9BMdMFxwPGrpdfZxlhw/9L623qlU=;
 b=hJiO+/RWpkP0/BQkWwc+W16Xh+uMGbyYHYfvltChD/24t6r4xA1xJS7OCYvw5eci0M
 X06z31ajrtgKZb7Iy/eVAUg222ccJOk/sjthOoANFehIp97sT6D2xBqhCEoZqhVEXlzq
 +GgmSo/2bQ0/Io3fNv9mtapqIjPqnfmMqO/6Y9UWyoGFiPQS7jQaQykHBydLfMozF7T4
 op2CKyAilILM2QOKBuhAi4kckuWmncXfaMIZb7+AdK6K4JPrR1LTNI2OchyXPE01e8sA
 OLqpZlkyuDant9rNPtv5W9YehHHmokbhbdGZpZhdRzhlmoo9Xm7T3JBySQCPFPahIaff
 gh4Q==
X-Gm-Message-State: AOAM5331nlK+x6rLlDvx2wsSkusph06b/rvDhOboYFiRlDB6xhV3etgG
 FRWse7HHG3awuo+GqBxDuwcFog==
X-Google-Smtp-Source: ABdhPJzTOemI9rOSCOekpTcQ631Yx6r9L6brdVTB1mC6yBy5nExdFsXzYxX4lJq0AzOsYlxq5h2XjQ==
X-Received: by 2002:adf:eb4d:0:b0:1ed:c1f7:a951 with SMTP id
 u13-20020adfeb4d000000b001edc1f7a951mr8648033wrn.454.1648844303336; 
 Fri, 01 Apr 2022 13:18:23 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:23 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 17/33] crypto: rockchip: use read_poll_timeout
Date: Fri,  1 Apr 2022 20:17:48 +0000
Message-Id: <20220401201804.2867154-18-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_211827_150294_1A1F9D05 
X-CRM114-Status: GOOD (  11.79  )
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

Use read_poll_timeout instead of open coding it

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_ahash.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_ahash.c b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
index 137013bd4410..21c9a0327ddf 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_ahash.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_ahash.c
@@ -10,6 +10,7 @@
  */
 #include <linux/device.h>
 #include <asm/unaligned.h>
+#include <linux/iopoll.h>
 #include "rk3288_crypto.h"
 
 /*
@@ -305,8 +306,8 @@ static int rk_hash_run(struct crypto_engine *engine, void *breq)
 		 * efficiency, and make it response quickly when dma
 		 * complete.
 		 */
-	while (!CRYPTO_READ(tctx->dev, RK_CRYPTO_HASH_STS))
-		udelay(10);
+	read_poll_timeout(readl, v, v == 0, 10, 1000, false,
+			  tctx->dev->dev + RK_CRYPTO_HASH_STS);
 
 	for (i = 0; i < crypto_ahash_digestsize(tfm) / 4; i++) {
 		v = readl(tctx->dev->reg + RK_CRYPTO_HASH_DOUT_0 + i * 4);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
