Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22F69ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 14:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=voU5h/FuI3C+67r1jok2GsZFu4+IIKOgHse04Z2UrM0=; b=xj5txfaAtbPsI+
	nLrQjNHYmiG9Z+P3oKd0B/p2EsK7PcX1s54FmxsvHVFZu19KQV7IFmYB430M1xYjEKQZGjJpylzG8
	YqPNexnK5nEM1vmZBJQHby6tvqZeJF0ceLJK5zpiDiwnv1eA6IjjHDze38DCc0NgnFe7eXkuYIm2N
	W84T9zii+4VNb+792pdZNrKpUWNnlH9NjmX8rvnE5rR+aPzUsrhxzk95lUPVhwIhcVMmIwY0e3B0O
	76cL28Ldx9zUWKIfNLsMbS1vizOJXq4zqD1MoOydLQPGpS7pzFUfF7br3QM2OiRX7dxFPfQf3CO2M
	VripAI6x7fycdvnN26mA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkp9-00CK8K-G2; Thu, 01 Sep 2022 14:05:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTkn0-00CIuS-8r
	for linux-rockchip@bombadil.infradead.org; Thu, 01 Sep 2022 14:03:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=5JnoAw4X1z7bCscIjsjfjSMoE54Bwt7ulA7ZsyJ5jyg=; b=j3f33pJJXf6Yw+ZpQRABnfoqol
	EuOYJd0sUo/LfkCZGrsbImAsWU1yRAcjshR2UJJr/pS/97l7P/uHAAJ5ZGG6h/H36BFzzX6M5TzHF
	lNWfF3rJSDx1yYz4+eo/fOAzqtr7Hw/CEOeMo/BBXSqpbghxmi6EXN2GJOtg1Hkr66SxzUQYfzgf3
	WsblvY+53k6hUJn2MWWNM9Hp6sQC2OUXmfbj7lBbI4HV3jjDzgH6+Me3p2eucYevvLzZvcxouuowk
	n3KSSM5lagqmj38FfEms7eX8jSbAtv5+PlZU1HD/T/NOtcfPTt5XaeOROiImgkmah2aWDs2QHtkCu
	pfcRFyaw==;
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTjlE-008P3i-AP
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 12:57:39 +0000
Received: by mail-wr1-x435.google.com with SMTP id m16so22222940wru.9
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 05:57:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=5JnoAw4X1z7bCscIjsjfjSMoE54Bwt7ulA7ZsyJ5jyg=;
        b=tuupKdXS6ZDyT9dibu24u3ydXvQkCsphFGu19lBsiAKGKBkErbWlL04bWscmWbV4i8
         VmmxJHxjPIhNTrGcTY6yppBUtNlDU7i6zlyvj4Tk3an+75hRz0Xh8xKpMKDJFXWQxtii
         b+uAI+mweDCx3BOMIXFGgfUY+NadFyYST4l5hvXl3Uc3ONdEg+UurOT0JhA2IHdUXOVA
         kUi/apzYc1LE+85CYrrgDmpPRK+JDD8AW80Q/FuhDNtsWuu+XBeYWzYov0jJ+gUgymd7
         azhfEGwLkkz5a4fCBIozKSJnWjn880ZeiqoZ5ihw0V2wcmF/juYqJ8i6+fXztfUu8hjY
         E73Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=5JnoAw4X1z7bCscIjsjfjSMoE54Bwt7ulA7ZsyJ5jyg=;
        b=BwyIpSWUNejpJCDUzQOkmw7ki36Zs3M1vk+J//XAVwBDrxwPu0hjzaE00TJ8sR6EfW
         xbVUqlHBwWjD870UsAZpBKT+FjNx3Gbbuv3EYWiVurcZBYQAJNDJJ1v+4wkR2hvucIHl
         myTg32DA2OKHsehPmVr7gd19LG0Ed3EUfzU+HLJacdFYBxD0Vb9ZFek7gOtyu9rMHvp8
         fBk0M6SyUFYcia+q95GNbQsxyktuCOPuJPU7TLsOh0e5+MpdxEAu9Tl1ZG83oVn81KI+
         kBn6pAb9m/u1UD2tT/Ryi5MJRg7HEOBcVEno87FYR38qFNyIUNum7z5UX+iJeITzfzk8
         I04Q==
X-Gm-Message-State: ACgBeo19RBQOkkNHBOwJPDE585khWHY8JEj/m9pVUOru802H7AnjpWew
	EVmzFBnuWx3kk81m7yqKxSyqGP1gnyX9Og==
X-Google-Smtp-Source: AA6agR7VQFD7bsUaUpzjN20zRJwbycuUHHgikSZzJiO1QDajtpVf4ad0oH0zPMuPAEiQEjMxiGrQGw==
X-Received: by 2002:a5d:648b:0:b0:222:cc32:c292 with SMTP id o11-20020a5d648b000000b00222cc32c292mr14088396wri.463.1662037051241;
        Thu, 01 Sep 2022 05:57:31 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id v5-20020a5d59c5000000b002257fd37877sm15556709wry.6.2022.09.01.05.57.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 05:57:30 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	herbert@gondor.apana.org.au,
	ardb@kernel.org,
	davem@davemloft.net,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	sboyd@kernel.org
Cc: linux-crypto@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-clk@vger.kernel.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v9 14/33] crypto: rockchip: handle reset also in PM
Date: Thu,  1 Sep 2022 12:56:51 +0000
Message-Id: <20220901125710.3733083-15-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220901125710.3733083-1-clabbe@baylibre.com>
References: <20220901125710.3733083-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_135732_741295_AA370F1D 
X-CRM114-Status: GOOD (  14.69  )
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
