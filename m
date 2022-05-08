Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00921C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 19:08:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/DdqJ1PpgPaNKNxg06VQGjtl/NDNx6YxjK6X4kUMww=; b=TMBgYqJoi4hR0p
	oFZt5Tp8+gp4k8iGpqNCUhRaoZO4FCMC6rZCZfN6tQsGoypGQ9BKO/n/LRqggTVySPtOChbLnEveG
	jmO2K+78ENqK/XweAqhuye/NTeObq97ink3PYPjYbWJWf4YNlJbpLGVeV7F+XTXbwMckxeCvmo+Tz
	tOuVNX3RRxMV00XVkJKtZsaF103Wd54KQIS3aPFURdmIL0jG1Kn/Y4H7DkFCLjDZ4taRwPYlhFKUN
	KLYbJduxv076C0dg3AtBsBm3tfY8NZG5APxBsbD/9NubbJRfWqxN1vTq2URBa6K7Btt3+iQC6zCZ3
	1+gBcg2WnJsJmbtPFlcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnmGV-00B1gc-Hv; Sun, 08 May 2022 19:08:23 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8V-00AyVn-QT
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:12 +0000
Received: by mail-wm1-x336.google.com with SMTP id
 n126-20020a1c2784000000b0038e8af3e788so7168346wmn.1
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yV669w6ThAcunb2ptGEHL08NqOMgexsX7UsYGNNFxgw=;
 b=Ki84OyQLc7pROgZxF1gnhF3jTMDMdtHA0MKpUpw5o9PWE0XLuWAk+sF8CCULMHACxQ
 lsT0XNnKNIEzzttaeTOE1QHk57B2KRoJepX1h+/Y5IYUkrtJPsEmb6I7ubPeD/bNzeKQ
 NVZk4mYcG4fMJURYZydF+07oax1jglMhdr3uu/QkPVPoEJ1MCFnjevtCeAHPcKuW16o3
 PclhGOU3Ls6QSpH9ouMbWl3pDOGVUAmmzpDyoNEgtShNx/yviW59rKQrr7fnKB0a6hCg
 WgLfueXyIDzsaWmbFvj+cpBFxTTVaLyR++wN9O6rfZzoziQZHR8rKAamJayV18ANqCvF
 moVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yV669w6ThAcunb2ptGEHL08NqOMgexsX7UsYGNNFxgw=;
 b=0lxe4IKtVmEsRk1Q27XuZbt1NvqLHiWWGA1QtUc0cEbuxQLlEdF3T0+8bXbZwwJQ9L
 35Q3xLy2glYU+z6CYSeDS7N/jCpfYiBa+tGejxJ9nkIvXvwSUqXXvXBEYEEJs3TG4etH
 AnrjS7wU87pxvmLj0TMLPxbUDtdkZbUVItyQ0Z2niOcb9Dt2Y99dvzqnJWEP3lc6D9NI
 RbOb9P8zSJ54KFelsVrUuxmz8rJy3hqw7G+v9lngjCzCgA6PgQQ24GvcgZIId4tzsK2s
 0J8yRb5LtymQPoc1tdwXEzqnZzl/5FMGtYpsPJBFwEdCGa2ScKX+4bSa/aBk+ZSBQqwv
 AOeg==
X-Gm-Message-State: AOAM533pDOC4pSqEmKqmQDXbnG1Up+e9BNZSf8M7URx85SiPvV/Bh0wV
 lKWPb7OuuD2H7Vzq1QGd3yMsOQ==
X-Google-Smtp-Source: ABdhPJxroBCDR5YqPv0VuwWLtpz8x0Z9sdjqxoHa4No5XKXjZtWbwMaPh4Aaq+tNaF5XRLLFHvYFHA==
X-Received: by 2002:a05:600c:3c9c:b0:394:8fb8:5589 with SMTP id
 bg28-20020a05600c3c9c00b003948fb85589mr2048195wmb.13.1652036405904; 
 Sun, 08 May 2022 12:00:05 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:05 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 02/33] crypto: rockchip: do not use uninitialized variable
Date: Sun,  8 May 2022 18:59:26 +0000
Message-Id: <20220508185957.3629088-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_120007_991377_959AD5FD 
X-CRM114-Status: GOOD (  10.98  )
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

crypto_info->dev is not yet set, so use pdev->dev instead.

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
