Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54B0AC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:44:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SWEwBxa/02ur9jMLRMh7ePrqvM9IPLPvdcWBaotx7Oc=; b=TTVwuUowb0DDJb
	/0WPOLyvGmmbS4gfaC4AO6E34J3y418JYcME2qRPioq5b1ug4yLXxmOUVv0N0zumzcY+3FHUXjYGk
	/L5wAEw77++j2By6RjFTErt2n+ikmWx5r1F/Ewdcmk8jNme+waCFw44lO0QAOBC3dr0maiX0JIU+E
	nvnaHahuwtymWgCssbQ4x5yo9fsnTzlTIa0kpirg7yNwQAooYRQ7Wp/o1GB/he4zeu3VeGVcIelXG
	kW0ITBqwHrud9slDnZQ2t8zTLB434HzqZiu4s/1nGE1fGrK+Lc0PNnoQsl0enn4FK93JG520+gC1s
	T7AvzjVNZ8vGToj5GX8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5Yy-00BL2f-4a; Mon, 25 Apr 2022 20:44:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5De-00BBIn-BA
 for linux-rockchip@bombadil.infradead.org; Mon, 25 Apr 2022 20:22:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=pUlPI4V8y0jA00wHnfC+uOcvlIsr/c356N4se7BTI1o=; b=ASKns2EG0RdVcc8756tF/rxJx5
 Z3D3MikicRF0fb+sTzyxKjouBsrbmOyq4wQgCoQXZL8Te4hilCzkO8aCZtYnCHn+gjTUIsk9FWRP4
 hYbOD8ZeP4o4usEDI2bdI+bvmr0IRzYJ4GtjfXzzTExZEZh0EtVvJiWaeORAgKafiD7adJrV4S299
 hn6ssEt8VLeByjQ9fSjOqvlR2bVhDgKuVpE2LzAF1xza5zTVSGkNKdiMSpu152JV+cX+b4KDZEHp2
 Jkgm23ThKlTGAupmE7sKbSJCM5s2BtWaPmP2TCM01qpNpRnvs9Xj8DXuzJU48ArlYZY6iT+Jkog1+
 eN8KsevA==;
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DW-008cxy-PE
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:59 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 129so262279wmz.0
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pUlPI4V8y0jA00wHnfC+uOcvlIsr/c356N4se7BTI1o=;
 b=xPampHwEOvNqW/dpMuuecPF9ncCuBnCbh8gYn5//yPbRTIvJvnC7CWLmxShA1oF39j
 icNr6VbxM9qeDL5Ly/4rj52n4u5o8zEzjI+mASxpR2VomEBdlYsdP7DJiL7nJ70jBudh
 Zl1gQHxU/pQYdSjCuaLOvWbavOpM5eXsQY9Z8YCGSSpUgAsiD73RO/6GD/vISZaMlMe5
 DEV0BgYHZ2FT9Xi7XGP7YT7gUtBC3vOQikQ4THV7PcZ5wf0nJ79PSoE6AI+szXqSkisj
 b+kP7xrf7Fni5z1ovmweAZiiie77ZMwGw1VzLUOdJ9KnU/E5NstMqBVViHcubgS8fj0/
 DSaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pUlPI4V8y0jA00wHnfC+uOcvlIsr/c356N4se7BTI1o=;
 b=4mVeFvJFC1zyITH6BL0jwUKlydbq3YXjd/tmH7Pmpm/no+eqJs+6F/0IKuXsyRm4/x
 FoVpral8rc96RiVcU30VpHGYjZjiKbp0paQ6isAH48JXq+9geHFdbNifVdo6tUvDMi/G
 xUpu5uysldBfAf7Er4/yrf02qOp12JMahwNfTo+Bdwmt/U0vyMLbgoMASPYelqM5xzEg
 6RzosXpCc9Agob2iTuI37M/tVoyKofNbLci/FNUOZo+QCanBWN0Ujo3WVQ4hVfYrZlyY
 k+Jt4IsvH/qKSi57zpfTgh1+T5vsNYpsbmrdMEvxmUEuruz/18Xy+LWZB53avbEfLeGC
 s6Rg==
X-Gm-Message-State: AOAM532OVpu3wIZZhTToXZmQZZSa1E2a1ytQ27n1xtOrlUh9JgPj9d0D
 1MqSz2KfaKVt1mDs9ms3qcBoNQ==
X-Google-Smtp-Source: ABdhPJxiP+6kNXvL4c5W/UZKulvaF/zan8h9UyeMqOd6Vqk6EtMp9lnegC4nYlzjai1p6Oh6zwHXeA==
X-Received: by 2002:a7b:c4d1:0:b0:38e:c1a7:c796 with SMTP id
 g17-20020a7bc4d1000000b0038ec1a7c796mr27247794wmk.150.1650918102103; 
 Mon, 25 Apr 2022 13:21:42 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:41 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 15/33] crypto: rockchip: use clk_bulk to simplify clock
 management
Date: Mon, 25 Apr 2022 20:21:01 +0000
Message-Id: <20220425202119.3566743-16-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_212156_113483_C2D61455 
X-CRM114-Status: GOOD (  14.33  )
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

rk3328 does not have the same clock names than rk3288, instead of using a complex
clock management, let's use clk_bulk to simplify their handling.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 66 ++++---------------------
 drivers/crypto/rockchip/rk3288_crypto.h |  6 +--
 2 files changed, 11 insertions(+), 61 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index a11a92e1f3fd..97ef59a36be6 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -22,47 +22,16 @@ static int rk_crypto_enable_clk(struct rk_crypto_info *dev)
 {
 	int err;
 
-	err = clk_prepare_enable(dev->sclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock sclk\n",
-			__func__, __LINE__);
-		goto err_return;
-	}
-	err = clk_prepare_enable(dev->aclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock aclk\n",
-			__func__, __LINE__);
-		goto err_aclk;
-	}
-	err = clk_prepare_enable(dev->hclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock hclk\n",
-			__func__, __LINE__);
-		goto err_hclk;
-	}
-	err = clk_prepare_enable(dev->dmaclk);
-	if (err) {
-		dev_err(dev->dev, "[%s:%d], Couldn't enable clock dmaclk\n",
-			__func__, __LINE__);
-		goto err_dmaclk;
-	}
-	return err;
-err_dmaclk:
-	clk_disable_unprepare(dev->hclk);
-err_hclk:
-	clk_disable_unprepare(dev->aclk);
-err_aclk:
-	clk_disable_unprepare(dev->sclk);
-err_return:
+	err = clk_bulk_prepare_enable(dev->num_clks, dev->clks);
+	if (err)
+		dev_err(dev->dev, "Could not enable clock clks\n");
+
 	return err;
 }
 
 static void rk_crypto_disable_clk(struct rk_crypto_info *dev)
 {
-	clk_disable_unprepare(dev->dmaclk);
-	clk_disable_unprepare(dev->hclk);
-	clk_disable_unprepare(dev->aclk);
-	clk_disable_unprepare(dev->sclk);
+	clk_bulk_disable_unprepare(dev->num_clks, dev->clks);
 }
 
 /*
@@ -257,27 +226,10 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		goto err_crypto;
 	}
 
-	crypto_info->aclk = devm_clk_get(&pdev->dev, "aclk");
-	if (IS_ERR(crypto_info->aclk)) {
-		err = PTR_ERR(crypto_info->aclk);
-		goto err_crypto;
-	}
-
-	crypto_info->hclk = devm_clk_get(&pdev->dev, "hclk");
-	if (IS_ERR(crypto_info->hclk)) {
-		err = PTR_ERR(crypto_info->hclk);
-		goto err_crypto;
-	}
-
-	crypto_info->sclk = devm_clk_get(&pdev->dev, "sclk");
-	if (IS_ERR(crypto_info->sclk)) {
-		err = PTR_ERR(crypto_info->sclk);
-		goto err_crypto;
-	}
-
-	crypto_info->dmaclk = devm_clk_get(&pdev->dev, "apb_pclk");
-	if (IS_ERR(crypto_info->dmaclk)) {
-		err = PTR_ERR(crypto_info->dmaclk);
+	crypto_info->num_clks = devm_clk_bulk_get_all(&pdev->dev,
+						      &crypto_info->clks);
+	if (crypto_info->num_clks < 3) {
+		err = -EINVAL;
 		goto err_crypto;
 	}
 
diff --git a/drivers/crypto/rockchip/rk3288_crypto.h b/drivers/crypto/rockchip/rk3288_crypto.h
index ddbb9246ce16..28bf09fe1c1d 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.h
+++ b/drivers/crypto/rockchip/rk3288_crypto.h
@@ -190,10 +190,8 @@
 
 struct rk_crypto_info {
 	struct device			*dev;
-	struct clk			*aclk;
-	struct clk			*hclk;
-	struct clk			*sclk;
-	struct clk			*dmaclk;
+	struct clk_bulk_data		*clks;
+	int num_clks;
 	struct reset_control		*rst;
 	void __iomem			*reg;
 	int				irq;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
