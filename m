Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2B01C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AGxfOsI75q2E77n4OaYYWBTwVF5sX/hx/iwaSvvOhfo=; b=gNpjx+mAwGz1Vu
	n+AYH3gtKzlpr3csmr4PnVDPi2exCZBdJO7exl4TS4Jin7z4vO70+FDKCml8vVl7klbyOds3VuGly
	sIaNbdDnnriLiiJVMJGjvh+6Yypbvqf0vfh4Qg8x16evWnIIVBWizCdOgmdA2gOLep5SBnGwuJ36C
	+Bh1kab1kT/S5aK8SSue+dHDlD6SG/jmQNWMvvXGH+A4sDOlPYBuAcHVeob0ofkIiVjsxKUSS1pmI
	eYRoih1kPM7ty19Rr5b35c+Cg8DesqeAZdr7kf4MrPXInB31GOk5BoM5GwJU06Ve2E7iuRBCC1ggA
	Hc5xIxUWzUqIeprQs76w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiSn-002ML3-Ny; Wed, 13 Apr 2022 19:15:37 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiL4-002I7X-VD
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:44 +0000
Received: by mail-wr1-x436.google.com with SMTP id c10so4012102wrb.1
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=;
 b=MWfH9rhjS4kYABFCOD8A2pPFY++uVUZ8LAVX5bdw61oIeh1cFPG+JhjRhdC5RwRwNt
 Cmo+t3usSTii1D9mNiCfSMg4en7hAkh3ractzlPy/E+l5vwwZ73IFI8+BvYxBka71hCc
 nFredmvx0CMKyfDZyL6ev+rzxwRydne/blmbs5eCUd/GmpxyKyXI2pid1Bdbb39fpyqG
 E3qA+Ommr0Du9MqGK65vtKPK4YD/gOu/j6MmTFiW13EWkC5p6kCbQMJhDGrvX0+snr0i
 Al9n2wySFwziCVySQLNuWa9/CDEu59u/EJualBSSRgo+NC95+oDJ46i/gz8tPi0Q6ON0
 6dBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=p55H6E0886aSJalxirRbnL3xLKJ1MG4FEZeIU1Ksblw=;
 b=A+20896dCsHpmRMW38LMANw10kEAP6RFGyXs0Xd9RQb/fepZtWa8PrH9I1KgNvEuqL
 Rzd9M0+nhkiO4reaNYy2QV4lSgo29BWyXTfpZLdcuT50wbUr8xey3TSi2aDXX96udeev
 WfIDAwksecAXsSi9K1wlotBQC4huAFAKxyzHXUQSVPqOz95UMesigM113EgqrF50Rx66
 1i4UBuqjHPng4FEH2/V+OLwsPdfJnp3p1qGz0CRXPt/1S5rVL2ZlmLb4O6PniVJg+I5i
 RXJ8t9MsPl0EzW9m8bjnrMh/oyFYs6PBMX4fw+BT/aMmM4L1E//RbTwwPRCSs5SL1t/r
 p5ug==
X-Gm-Message-State: AOAM531gUQzh/LdG2WQeMHv8rSDtpB7WqdbclEcDPfkLFHIIiuoTpB5z
 yjf0pgbjHUfeyD39DqLRUuUnYA==
X-Google-Smtp-Source: ABdhPJx+lwIskjfvzg8sH7td1AEsMm3+nQKJ3+1FkKm2XKocXVu0c8zMQSmQ6YKKLtt9+JF8y7G/eA==
X-Received: by 2002:a05:6000:2aa:b0:207:a57a:c9c3 with SMTP id
 l10-20020a05600002aa00b00207a57ac9c3mr233542wry.417.1649876856621; 
 Wed, 13 Apr 2022 12:07:36 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:36 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 14/33] crypto: rockchip: handle reset also in PM
Date: Wed, 13 Apr 2022 19:06:54 +0000
Message-Id: <20220413190713.1427956-15-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120739_090084_34BBD6E7 
X-CRM114-Status: GOOD (  12.05  )
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
