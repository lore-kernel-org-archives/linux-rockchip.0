Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3FB9C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGxfOsI75q2E77n4OaYYWBTwVF5sX/hx/iwaSvvOhfo=; b=fNtGC9phN0nOrf
	2LpOJCEz2mxgs81jr+Kj80Yo/sZ0+PpW0K2YQYyaRVFlOMwS4GNb9D/MGridYfaQB2L5oLuoE3ZGn
	UFlW+H7m+egvXhpJ5H3KeXm6SRx7+qwLFcRvpJYRjWsjSzLE0MvIIXymKdwIfFBTVkFJLcqEQyAz+
	Q+N7n+WatuDRi1aj276f6jNTYxfpyRGdGWvxu95qR3hJiK7fOineDtJ8EeqAExPU7jKt0NmFz/YVp
	dRdOByDqLomAZuJosbHIx/Ry434rwQ4If5/ymnM/f7BfpbrMUKzWztSaiMqVOVDjxwYXBPwDBecMH
	6oNJu3rjBqSJijeXg7nA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5Nl-00BGEe-OY; Mon, 25 Apr 2022 20:32:29 +0000
Received: from mail-wr1-f54.google.com ([209.85.221.54])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DM-00BB3d-Dy
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:51 +0000
Received: by mail-wr1-f54.google.com with SMTP id k2so2043145wrd.5
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=;
 b=PF1zI95b49yWI+mnHScTa0xQUyNrVzG+3/JzFircumtVU8P9BWpymUIILCqS09uDbH
 p18rzBQCQEAxWcYqIqgRLH6cd4hahqCRPjLPFPKWVgruSgGBRoNTNk3H3iNmti2pxEpB
 3daWEmaPwXma4qhCAH02b+wrl9fi86NpXq8qfAprA8uXvfQ5qWijMjjk0FjsDE8aLVr4
 237kKFYg666EcgwzcZVGjvk3bae9IeJrRbFneqRIko8ra5FtS9t4wxEf0JNauFxmvrI4
 0WrtMbhfZwSBv/Yp/OfTcGsxYAu7q/wEMaOfz2H3h8hwGFkvXcKI2aqMR67kHFGN6BCz
 B0FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=;
 b=WoJK+1wLG0pnLn0sI2okBygvvWy8cK3MgQyccvxqb510EBDLf+CBFDEn4WCGJJGvJc
 oMhhweuQ+0sXhQ8O8OB7aUWG96+6uOgsyzXAtYi5TQlUb384x9Zab7CD5uFe001iaxd+
 +qxTut4JjvFPakiuvftAkgPNdPpPRMaOHjAENMHJMI5lgla10cyBzpyvl0Y3htWZfFqr
 EPog2mcsFyTJOKZyhq99eAWviNRK2Ma539RZEuIYT8qz99eTWK94qJ2IVYLjfvp1sKk/
 sdrQfvPnsp1af6xDsY0SGIPkdej/wgRbmmjUYH2Nk6tlXRvrPtPnzZytghwrrFNj8ieJ
 tuhg==
X-Gm-Message-State: AOAM533C1/Eu7U0oq6SME2v0opBLJpDdzvaVEt54svIHUxXGJyFHpBQo
 3O1nbiTnoQvU5Zf2yP92ZdwSWA==
X-Google-Smtp-Source: ABdhPJyALsJcalzGMaIk+TyI2QpcwxPUZ1lkje01D9V37WU9soehA4t9yZ/vHK0Gho1nucCKItKPRQ==
X-Received: by 2002:a5d:4311:0:b0:205:f439:cbf0 with SMTP id
 h17-20020a5d4311000000b00205f439cbf0mr15952343wrq.164.1650918101249; 
 Mon, 25 Apr 2022 13:21:41 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:40 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 14/33] crypto: rockchip: handle reset also in PM
Date: Mon, 25 Apr 2022 20:21:00 +0000
Message-Id: <20220425202119.3566743-15-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132144_506629_C698820A 
X-CRM114-Status: GOOD (  12.35  )
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
