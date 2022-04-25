Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50BD8C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=00hkGAB3fbtKUCkNE3UGll6kG/W3zSfXSTvu3wYxQtU=; b=0c3j1byxXtyPBH
	79Dd3GN8AfeiQTiiLtihf3OHEVqlDwe6+/wgC3qP/MIFYYM6PIW1HYG6FDWJMClHDu7+1RoVkyq2V
	gr1ZFpbnOmYK3ohSDMrl0jzS3DA2LyZ0EZnxjcKQAIcJjRhTJ7WWdzFQuTM2Jp8PLAZ/u1ebU2OSy
	Ms9TCFDdLSjpoY/yWUPSAWR8keVyQS3UtvC/J5H1zvRU82JtKqRg+uof3K0uriKPXDL/B73hZam7Y
	qgr2NPB+RvPcUgi4zsCTNyA0XKCsD+eqUZkuE5SC44XF8fF7sjYm/Kbu2yJkZPgoqldvx6W7LHxVE
	1NpLjCa3noKdMPJIlGww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5cN-00BMaH-AU; Mon, 25 Apr 2022 20:47:35 +0000
Received: from mail-wr1-x430.google.com ([2a00:1450:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5Db-00BBGP-Iz
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:22:05 +0000
Received: by mail-wr1-x430.google.com with SMTP id b19so22452584wrh.11
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JBfzxCMFwSqtUUAKgLYX1NAdCBaYrQJEwA5Wp5fjHpE=;
 b=Z1sd3HVLsayY8MumfB1wqk+G5Kp3bdjZm0cqTrmrLPFHjZGYSNcrtnWvywBiPAmSn2
 04TiThXfxwHVCG3GNw7Jxw77NnGXa4yLERWXHMkEQPtX84Ag7eoITDX6/Xd8vwdUDZyQ
 w5zHTd7q0EhgefgJ1inIYexOMbbbX4sYzmNkhVOn8zuTbnAL7jHg3nzlDi5b4xo9xZNI
 J4GQSYy0zC/VIitJzE0JnS9cHizc/l0tmuDZ9tvDPSthUN8htS08fI4iXq/lpvWHZ3yO
 9bcJtW00geKWrH5VJFQj0RtMuzUp+L/udWp6Y7Sutz+PijghwxtQDWHc8MZ8re5p6z9w
 eoHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JBfzxCMFwSqtUUAKgLYX1NAdCBaYrQJEwA5Wp5fjHpE=;
 b=FR9CPtK1Vkj5L8boHlz06ThBuyVGM3QsCyD8u8gNNlXMGYVouO4DXnI0j4LAg9qbiw
 qZmXSmUaDKrPNegWs1Yry2RHWob4TJ4ceMWmd4UTRRTBUVPZM+NjIlCcBAJLtCRTaJaD
 Rd1m9/vwK8dWUfRncTh/f5Nh9oksUT0mVHjWlX42nfe+e65LTQP7q4e15JIKh27XMYqf
 7KYkKOJkZCtWM6XcHYKvKCl2AHcsw98RzINpWv2UJehcUM0WWifxudxE/EcbwONWxh0L
 fquys8HPKrBZGswKVlPlxnQDPayFNE15I4YFOkEp+7wKScsuJ4Yk6bAG1kB1kWA5MJwg
 0XWQ==
X-Gm-Message-State: AOAM530ym2IQO1dYD11rpGcglANNbKIrf5zgJYjWcXID+b7EF3jzqiBL
 AHITuPRSduiA8LF3yJTb3qDZYQ==
X-Google-Smtp-Source: ABdhPJxNWd3M4cRFr5bsPUuzlFPqKIiWknPAwX3WBYB9OYoVFFs1WSG+KDvw11V6w5QEZWs2ErXxIA==
X-Received: by 2002:a05:6000:54e:b0:20a:d9d2:e6b2 with SMTP id
 b14-20020a056000054e00b0020ad9d2e6b2mr6361745wrf.178.1650918118290; 
 Mon, 25 Apr 2022 13:21:58 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:57 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 32/33] crypto: rockchip: permit to have more than one reset
Date: Mon, 25 Apr 2022 20:21:18 +0000
Message-Id: <20220425202119.3566743-33-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132159_695289_E8AB04BB 
X-CRM114-Status: GOOD (  11.97  )
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
