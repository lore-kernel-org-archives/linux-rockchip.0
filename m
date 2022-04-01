Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1649C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:51:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGxfOsI75q2E77n4OaYYWBTwVF5sX/hx/iwaSvvOhfo=; b=z0aFONjbcMR/fD
	WarwVXIxKv3vdwc+8YmFpNA20ZhVHEpjKpsnN2ucRC24jbBLcdxZFN8u5X6hu4jGyCyiKQ0swzPZh
	8eiSzwUZk0cHaATQjwEKuxDtTNYHDSNe/xP+bFrAM3W0XzPlWNMus1S3vOHXKS0zNNvBlONc+0Tag
	KJr/V7f8XjCom9N7QdvOI6LD0/0lM/+0mXfm7hsPJ+oCe2nzLmL0u3RQtVMvj1XLa+B6ff605u2wd
	QL5RAb+pZrGCJYzydGKPGuNcETp9TAPjjmncfF3HzBtvFmFWixbqa0T+/en1cJ47pwXZjHYYeqhqP
	jadGi5A1UyXsINJ/x8Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naOEl-007KJC-0U; Fri, 01 Apr 2022 20:51:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naODL-007IwW-Bc
 for linux-rockchip@bombadil.infradead.org; Fri, 01 Apr 2022 20:49:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=; b=N8jLU27IKPtmvbCEhJUFJPAVxc
 xoPg8Ds7nzeRHrLXdskaoo4aB0UyMEOT9S1KFa8dahhEbNo6GZAZbIVoEjFaATvaOcr4fO4+gyZkC
 dwEtakdiVXaRnaLgPsjJEM5fZ2PdltWIFTbPM3zmxggUfVmSuPLXVAeajothGNKDGFZlndo+bgyD/
 PusfG0zlOjv9MTkDgWf2eA1wv3Oje+4hpxmLi9pO0L1SpXBT7N7XLmutty99awzlg8dsuz5ChitXA
 eKViqpCmonlBU5Io9uoEDh4pfUXE/FdBO7kgmP6qNijl3rzUJbA32DNYEDzZm2DdZb57/eBS/GtZA
 as3PPqiw==;
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNix-000f7V-8J
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:28 +0000
Received: by mail-wm1-x32f.google.com with SMTP id h16so2458466wmd.0
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=;
 b=s8Cu/rVKGMjrNEJCNpVM5WtrdVm4ROL8ZfqEDqFZAZfHalE22880Ztj4cVYjxzuYZl
 /GoQCP+5Rq9H4RWWAWCwa3q5JB2VUDIokmmHL8x9yIotCqPtUC9bYisvzJajCNG8v+gf
 suYSi9GzTyqmCm/AOD1K4f40yxAqd8fief4yzBvt5mcNieDwXaq2Neu8lMxD5QxYM46x
 ALySFfpHEBi4ANpWuxZV31bTiY8oPv1RxyJfMknJ/I6990S6O6jZYih58K78aebJFLOz
 fu/wKeOIfX6r+UeMkbvUTMuXO7GHPy1Ch3KqLEx/4GP+q2k9+Al0rIn3oMax4UWyZ7E7
 emxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=;
 b=33YjxZte6HxS5RKrUwdzNqxAbUZHa1EoSXtbFPLIHtFFq0zWel5qPt+WofqKgAnXpe
 Thh9K9qOUUTDKNEig9R3vRiZo9K3m6e9aDF/ssMcbT0FokRS4kdkoBS5AiykknF70QhI
 iJtNuAkp5F6aiK0TGOd9NttBzJaK2JKQEaf2ClzPV8Az0oozI+6s8TJdZTrJehOw/O7T
 GrQKV8Bj6JgJp7EZ4FGwbUL+9k9KDKNDnLRVfxjqo8O/wATsk/hQH+PbBo+rlIk6VCtW
 fyfWxXvv8u7WAbRzVi5Rm/k/VeTMNK7aqJ8zHdSlOIn+P2QJ8KSPYLIiqMoKmMHS1gD1
 kD6Q==
X-Gm-Message-State: AOAM531C1fRsXt2r5JRF5W6Ja8XmYrSZPnATR6dt75kaL1lDs/OxBhaz
 fdEIioxbeHURi612CXAgvazO9g==
X-Google-Smtp-Source: ABdhPJwuUqNh9i8vH0ViWgv/pGUH26oWTravnWNZ8bFCmnKXXi7E8aVuxDjFAOpwq80dsKHCFJlHDg==
X-Received: by 2002:a1c:f219:0:b0:38c:782c:3bb with SMTP id
 s25-20020a1cf219000000b0038c782c03bbmr9873410wmc.94.1648844301200; 
 Fri, 01 Apr 2022 13:18:21 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:20 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 14/33] crypto: rockchip: handle reset also in PM
Date: Fri,  1 Apr 2022 20:17:45 +0000
Message-Id: <20220401201804.2867154-15-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_211826_306062_C29AE645 
X-CRM114-Status: GOOD (  12.40  )
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

reset could be handled by PM functions.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 19 ++++---------------
 1 file changed, 4 insertions(+), 15 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index d9258b9e71b3..a11a92e1f3fd 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -73,6 +73,8 @@ static int rk_crypto_pm_suspend(struct device *dev)
 {
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
 
+	reset_control_assert(rkdev->rst);
+
 	rk_crypto_disable_clk(rkdev);
 	return 0;
 }
@@ -81,6 +83,8 @@ static int rk_crypto_pm_resume(struct device *dev)
 {
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
 
+	reset_control_deassert(rkdev->rst);
+
 	return rk_crypto_enable_clk(rkdev);
 }
 
@@ -222,13 +226,6 @@ static void rk_crypto_unregister(void)
 	}
 }
 
-static void rk_crypto_action(void *data)
-{
-	struct rk_crypto_info *crypto_info = data;
-
-	reset_control_assert(crypto_info->rst);
-}
-
 static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto" },
 	{}
@@ -254,14 +251,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	reset_control_assert(crypto_info->rst);
-	usleep_range(10, 20);
-	reset_control_deassert(crypto_info->rst);
-
-	err = devm_add_action_or_reset(dev, rk_crypto_action, crypto_info);
-	if (err)
-		goto err_crypto;
-
 	crypto_info->reg = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(crypto_info->reg)) {
 		err = PTR_ERR(crypto_info->reg);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
