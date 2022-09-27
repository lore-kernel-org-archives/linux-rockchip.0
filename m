Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE32AC07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 08:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voU5h/FuI3C+67r1jok2GsZFu4+IIKOgHse04Z2UrM0=; b=p7RDoBjDYjWATP
	8MAgVS6y6AsS3vym7CPPp97dTWY/P0OQPYcjYKvnIJ0LM9vkmQbOiyWcQNKmnSvzNl/8MRdthQtIk
	9iAFi768/AzMOp6PmlyWN79S4uoxeAWoqzH7xV0WCxSFm2oIdjY/OC46V2Ti9au+oAtsz4hkkq/mo
	H+jwRdqvFaqeqi6F2F5OpGzQct4KNTX8yY0CBHYSM+f9b0k/tZpp/Forn9ojV4wQGYb7Q0bk4rq1e
	NCsdM1WcUkCmq3xI59VXBlRo94iSek6IcDws+1QM1dSXjZaXP8y5n+JkOgwfaPxqPv8CiaX3D1EMz
	95+vvZB5XTIaYbpWgqfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Vi-008xL2-P6; Tue, 27 Sep 2022 08:00:10 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5RV-008uqo-5y
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:55:54 +0000
Received: by mail-wm1-x32b.google.com with SMTP id u16-20020a05600c211000b003b5152ebf09so6341604wml.5
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:55:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=5JnoAw4X1z7bCscIjsjfjSMoE54Bwt7ulA7ZsyJ5jyg=;
        b=BAEIwPdPo97GcH+1wCKYAvWzAKOymsVbLsGocAIxNn6gxhCoMqYd5T+1ct3/STEMc0
         P88AJfOkg1nRgg3ELPKYgEXSPs5bG5jfe34eznuA2GSLRs6cT0awTDEFkjwoDio3bJsh
         gHJiOv2k2UKAV7JkG4LPvNvA/kNpHHClPSdyDK1q4ZZoihg45ujIrrJYViNPRmip1yiS
         GbAVKvWMtHaPz4BoVgnl114K/5Y19j3p5Rtg84C8YwjhtW4JFbowgU4NHcUbw/sEM2EU
         owzHS9E+tJGEgHZnC24mSqSaKbeEz4Hn4YbSmGsp5KZduNJiI+s5oEwacyOvdAGsgUJP
         vwjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=5JnoAw4X1z7bCscIjsjfjSMoE54Bwt7ulA7ZsyJ5jyg=;
        b=CLTD92hUShZPiG4Q/Xg1i6g+EJEiCLYIlMRA4cIRmp6W0vTWkmR5gdjXdkowC4vKkU
         xHq+jscpy3RTJR7K1j6sLXOSBAdsOwDyLm1ApuuGKIM+Gu8E+7zM7NmLB4xOW3sgFWlX
         /0qPrv500IK8rK5wn5XRKZKrWh1FtM6j8PBSr3WHUQ/Ew2QATHJtsUg5JRACLoHoH1ZB
         mObxo7+48DKaw3M0FChl2LJL3TdZQIxM8XQwF4t73yJ2c80GzRVeB4TrfQYCwOIg2TjA
         F7VJO3bd8eDfI5dw4DResF/yEG5IWd0vvkesr6Kuo4nSTHrxmiVZwQ/WaYOvyWKVYwLN
         iuzQ==
X-Gm-Message-State: ACrzQf2WpTEBil40GP/iWESYjJG3XyX4a41ZSi0XPBTvXn6d14F+fHG0
	1aTWzvuvnVnkfjJs8pl61fcWQA==
X-Google-Smtp-Source: AMsMyM4uL0HObRJBotMMVGLYbEpvjLQleTH4GKMAsTIxMiv2kESR0p82m1H8rmbo2gqmUlSYI2Y8FQ==
X-Received: by 2002:a05:600c:1f05:b0:3b4:ae0a:b2e5 with SMTP id bd5-20020a05600c1f0500b003b4ae0ab2e5mr1691511wmb.104.1664265348751;
        Tue, 27 Sep 2022 00:55:48 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:48 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	ardb@kernel.org,
	davem@davemloft.net,
	herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v10 14/33] crypto: rockchip: handle reset also in PM
Date: Tue, 27 Sep 2022 07:54:52 +0000
Message-Id: <20220927075511.3147847-15-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_005553_027010_50B56A1A 
X-CRM114-Status: GOOD (  14.63  )
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

reset could be handled by PM functions.
We keep the initial reset pulse to be sure the hw is a know device state
after probe.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 22 ++++++++++------------
 1 file changed, 10 insertions(+), 12 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index d9258b9e71b3..399829ef92e0 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -74,14 +74,23 @@ static int rk_crypto_pm_suspend(struct device *dev)
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
 
 	rk_crypto_disable_clk(rkdev);
+	reset_control_assert(rkdev->rst);
+
 	return 0;
 }
 
 static int rk_crypto_pm_resume(struct device *dev)
 {
 	struct rk_crypto_info *rkdev = dev_get_drvdata(dev);
+	int ret;
+
+	ret = rk_crypto_enable_clk(rkdev);
+	if (ret)
+		return ret;
+
+	reset_control_deassert(rkdev->rst);
+	return 0;
 
-	return rk_crypto_enable_clk(rkdev);
 }
 
 static const struct dev_pm_ops rk_crypto_pm_ops = {
@@ -222,13 +231,6 @@ static void rk_crypto_unregister(void)
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
@@ -258,10 +260,6 @@ static int rk_crypto_probe(struct platform_device *pdev)
 	usleep_range(10, 20);
 	reset_control_deassert(crypto_info->rst);
 
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
