Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29E2BC54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 07:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YeLk32Ra0a9Qd34jqG1ZYZtQ1RahBj2VPT7T9vQW6ww=; b=wtdHhTouD7vQQE
	sRMiTf5KjDcliXQ3ruCGmr86mT2jX9gs6/22/xYM+AjM1dZzOGymgNEP1DdsPzxnnElotgfSRrvvw
	8Bg247mV0DH0EFki025gZGWo4lvmusG2uzlN5ZvP3w+3abn36WrFhEseV/RFkaDEo1G8JMsR1QI1R
	3tgzgcbYUEmnoytu6rjV10zODzbPRTa6DKIbMlXjWFWdf4p8xL04l1RUe11lmE92oUdg9ojeCWTsg
	JXJn2pxiyAbb3g9ORopKSpBq7OvvZxresNJvTDOZXbIMb1/t40GksvHJLnzZjGcuGmGjS94reaJ2u
	JX0AtjPTYvxRgm71CdfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5S5-008vJM-MK; Tue, 27 Sep 2022 07:56:25 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5RK-008uo8-OW
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:55:41 +0000
Received: by mail-wm1-x329.google.com with SMTP id c192-20020a1c35c9000000b003b51339d350so6486172wma.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:55:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=5oq+K0wpCSsh7jUwt6+vmm/hcvr/21v0i001Dyw+Eww=;
        b=lxkYHvxCAqLWDWDvxXrAB4By3mwYic56in2nci5DWHkW2XvI9y0c3OwcDndIaqeuVH
         9BNiqKAvKp9G9309RaiEkJo3gtb0V6Z/qZCUDm+/CYZtepcNj/c9MPZSUiaIQxD/W8dO
         WdiR9gH83jEx58wTjJKQiD3jsfKZKh/qHTfk3bV7eqnHdwoSnnMK15BF9yD6XqQwZiNA
         6amP1UrUXKNWHgsHsCbwmrmMkFXODvYbiXP+TBgU6EbwvEaQA69U6s+58UqJYfFmJybN
         e+BqrhRU7AxpaHcCk9hEyJBqRN035GZCdNOMn68M49Gi/GMyAcYfskETXbWO7F5j2i2o
         AmNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=5oq+K0wpCSsh7jUwt6+vmm/hcvr/21v0i001Dyw+Eww=;
        b=BpWdc+vQTzgV7qUYYKc/ShEKOGO4J67v0O8Mec4cKOsmkQUsDtj/d01FckTOwHbMrD
         cK05dzSyBTMUb6pI3WcfY9eJ0SpTIxt6RQ2eLXPh+G89qMXt/gqEmL/8K9K0XUhSnwq/
         ySShL2OCmXghexpSgmiHhDZMZoqVsOeV57gorGTXGYiV+s5pJa8Ic+p5goaEPuXgyBUv
         1vpKSe4wRRDaXk2yZn8nH8frX0F0N47dnZ+87aGRAbMMdCehbmi2DXQxsM6tic59edqu
         zmnTs2uIiSrsE1W+f25rFc6o5rpnfrfd48l7sCIn2mVS2gojToSCMsCMMPl0Tby+6Kw/
         r6Hw==
X-Gm-Message-State: ACrzQf3hmOgX+5zVzBIyYV0YfwuuQ+C10k4dCF3i6uWVuJlldH9+th1U
	H7Q4JlxoSdlxJs/KJgrryTh0gg==
X-Google-Smtp-Source: AMsMyM6/Owm7TylvFkkxOOlFObTA52Tc0HgmezFZ3ZDKhH18ki2KYuexhCEF+bw3cOR6XQKPKBY3KQ==
X-Received: by 2002:a05:600c:4a9a:b0:3b4:78ab:bae5 with SMTP id b26-20020a05600c4a9a00b003b478abbae5mr1653203wmp.114.1664265335209;
        Tue, 27 Sep 2022 00:55:35 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:34 -0700 (PDT)
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
	Corentin Labbe <clabbe@baylibre.com>,
	John Keeping <john@metanate.com>
Subject: [PATCH v10 02/33] crypto: rockchip: do not use uninitialized variable
Date: Tue, 27 Sep 2022 07:54:40 +0000
Message-Id: <20220927075511.3147847-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_005538_804416_733F4B2D 
X-CRM114-Status: GOOD (  11.43  )
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

crypto_info->dev is not yet set, so use pdev->dev instead.

Reviewed-by: John Keeping <john@metanate.com>
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 45cc5f766788..21d3f1458584 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -381,7 +381,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 			       "rk-crypto", pdev);
 
 	if (err) {
-		dev_err(crypto_info->dev, "irq request failed.\n");
+		dev_err(&pdev->dev, "irq request failed.\n");
 		goto err_crypto;
 	}
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
