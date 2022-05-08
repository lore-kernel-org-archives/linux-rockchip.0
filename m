Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BECDDC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 19:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00hkGAB3fbtKUCkNE3UGll6kG/W3zSfXSTvu3wYxQtU=; b=4+lSBWpfAAgU8F
	s/bRH6TteH7yKyBE3qKk1JzIFm1FcpDV7p/b3znTon3fv7uVoYepN3IpeanQeYQahDkuNX//jDCjR
	bLVKDp2i7RUo66Bli2XXugr6qGqZ50Zblk4BDB4OhIS0t/gVP+LLlmA0+APr3wFXTc68NQ7oOESO3
	8RoDqJ4W/CkLP6Inudtr5+ddnE7+3gkOSBvpqEFMbvjWGW6Le+lbbw5tXpGTQSwt3MfrLFM9Yat3s
	GqyV5aDkYzQ7RLeZ9RWSJsM91YZgNtW+I5C2cU+VCAjMIimuAYNQ/TnguBnHc2QYjlJe5il46/PT1
	+/GuAZeWNh/wD5bwvLwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnmjk-00BDb9-Ht; Sun, 08 May 2022 19:38:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnmjG-00BDQw-Be
 for linux-rockchip@bombadil.infradead.org; Sun, 08 May 2022 19:38:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=JBfzxCMFwSqtUUAKgLYX1NAdCBaYrQJEwA5Wp5fjHpE=; b=pkjllVPLGciDn3lZbwVWjltnSn
 h9kxs0ZnG0OiCxZOCKFiwO1QViQSBzNwcbGldYr0KvOQne7GmCABgw45MlSAIpa0gHDR5QvJ0XWED
 /XB7bS2SZ5AN5Sf533K5xP1SVK8As+ys/HPZB34K5zDDEf9Ptkvm6riqLPt8aKDq79/6agfkIV1gS
 WH2OydbSr9zK2Szvm2weWG/QrdTQq32Bz/veSStoo10VHq9WVV1OXZny6X3AdH2W+Rd3m5Q9HBNxM
 b7QkXnHzLIDRKRUHJ9DgwL4Bn6xAgnZw/G08Yqnh11u71HBdQqarj+iQdZISURcaQ5jMkc6ACq0dP
 LgxHvGww==;
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm94-002jvA-1p
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:44 +0000
Received: by mail-wr1-x42a.google.com with SMTP id b19so16697262wrh.11
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JBfzxCMFwSqtUUAKgLYX1NAdCBaYrQJEwA5Wp5fjHpE=;
 b=X49Rs6jVUOJqsKLd9jCnOcyVt8anEgCOlsz0UpHKBZyITY/VIqK5RzWuqqpOR7ud/R
 36j9fkZwvcmYiYS0Zza4NW9ELQ/m0CMALIYo7TuUduPJtbV2e/3S4WRYiH9tZeHxPcOU
 ce4I0mHJlDdMRdb4g8L9DmIsb3pXWaL5cYIyroTictucbxTR7bk5+jp6zZgujAKg8dxo
 cRnspmco7/r682hMxNP6cA2SWdZVgH8F7pQHZqxMcxmEWlmOGpq1CRd5ypd1RlFhNVpE
 9+ZTm4JaP0aN+xRfnK29crWT9l/6tP+1r72mSDzpnar1HbAJqPEuaBZg7/3O1MDXHXkc
 VLVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JBfzxCMFwSqtUUAKgLYX1NAdCBaYrQJEwA5Wp5fjHpE=;
 b=tqGQxLUNZJ5P5h0xvdln/QTj+35PpKkePclDk6SxMIgm3AHR+iXAxihwd2Rc7nb5zV
 R6M1z9maOMGyHwbbXAcaQuKkdR0iJwF6wmn2bdoAy5/prl3F0Cz6f5gc5IN2Mszge5PI
 c5wBdlfi3AD7mD0TNo0aGAKwnTAQHKb4TdljwYRW3yeCIFuJUqFHnNTzXN9QAWKoH66J
 /Yyx2x1680FpplYaOZG8+FTaZaZE7VWmZLDaY9QktFpXZ+5JS68G8iYiTL0MtJe0niJX
 +IuAgQY2JiyLGWs6KgAidLM5yPeo4nLBMzckN0I7iLQyAQGr6STwA3TQr7IKLj4Clnwc
 OFHg==
X-Gm-Message-State: AOAM533LLo0SfwYcKIbpuPCQBnhsDahxN9DmaFxsq2c/DppCCZaio2sc
 eu2naaaTfsuY2/5EzehK+d7MVg==
X-Google-Smtp-Source: ABdhPJzncxhGn7VRrhx5Bk1UNUpsBAsFpyNOBZ0pRTwwqnTzrOzKrSuLmPcV6khsNUhAKov1Q6ZN/A==
X-Received: by 2002:a5d:47cc:0:b0:20c:6b7c:8a19 with SMTP id
 o12-20020a5d47cc000000b0020c6b7c8a19mr10648752wrc.608.1652036438918; 
 Sun, 08 May 2022 12:00:38 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:38 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 32/33] crypto: rockchip: permit to have more than one reset
Date: Sun,  8 May 2022 18:59:56 +0000
Message-Id: <20220508185957.3629088-33-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_200042_118504_A20BFC5F 
X-CRM114-Status: GOOD (  12.08  )
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

The RK3399 has 3 resets, so the driver to handle multiple resets.
This is done by using devm_reset_control_array_get_exclusive().

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index d6d78b8af57c..9ba9b9e433c4 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -276,7 +276,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	crypto_info->rst = devm_reset_control_get(dev, "crypto-rst");
+	crypto_info->rst = devm_reset_control_array_get_exclusive(dev);
 	if (IS_ERR(crypto_info->rst)) {
 		err = PTR_ERR(crypto_info->rst);
 		goto err_crypto;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
