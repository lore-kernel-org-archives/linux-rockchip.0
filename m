Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6255C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIUu6K97ax5On4xx6QCx/auxVxlxcHWhasuL92XPKPQ=; b=SSOjfbg0bx7LhG
	/uNuFluy8Wdy045gid0G8HGg3MJ74WImx7GpwzhCzdP2dzERapiAgZ6aMHqiP8jbxBQeMh+s2jgBw
	EFkp2+cAkqODt2kN6F+eIjlAg4S0BqeSudErXyfAkj+Z0Q6/70dDE38chKrQig8p/muRzT2Jra+KX
	pdRCRrnSkNCrFrDW29+irdkeDAF+ZsPMnSw3sc3V/jP+5FhtR8ERdKHx82UDSNtS7tO2X8zFchBRm
	BLBQGWr1V0qbyCKG+qCb1flvqRpUr3vki5LTjQnBgarpFLXBbkJudiTdCFS8hc6lJp0j+DoxDY27w
	hmsw6gZ/d3HPzgSlGKuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnJB-00BJ2M-Lq; Sun, 08 May 2022 20:15:13 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8V-00AyVU-KV
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:12 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 h127-20020a1c2185000000b003946c466c17so210392wmh.4
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6k9bKJA41frCR0pmOk9SA+9AKNxBSbRS1tpgQTa/e4I=;
 b=7WVkQD9lHCDxKB1tD6Un3hFpvX4/cOE8DPsLwSHDOQ7kt6Z2YTDF0rFp5+4bJAtC7w
 DaON87xrGfLz4D/4CKcyMsiq3DL8xisQUHwdd09W40h4D5DFOHh0rizcHFtmOgZsV9c5
 cfnnG8lF+9r5eCrmwylUG43+huwETysAbw8WbNcl9x47hFGjbYfxAH1lyAvKSXHW3nSz
 BtI+lB1SU7EoSr+Uq8LSpCA6qZJ0RBGa2p2T5UufQsicJVKF7cfYMwInywjhKRxm4hiD
 +S2H5vkgIqpdY2JT4C3gsmXhX0XQLWVK2x3qDFWOhQ10NUuVJwxQ/sQifbz8Qly+MDjy
 AvhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6k9bKJA41frCR0pmOk9SA+9AKNxBSbRS1tpgQTa/e4I=;
 b=MVDKpT3M7+bzslpdYXLtcOWbzDlgZZT6TgCjPWenBFPaKCL2/+U1pZEWt2s6IhwErq
 myh8MqK8AvPyss8GP6oArzStKVdczEnCUrBEFOa3P4V5QmUgufWQgiYnNeSALF6t31n/
 3Ujr/CPTTteT8Yl4wCgbopSfgq71cs2yTcGAUtOHWuZH+tyMV9GJyfbtawMi8LSNRuki
 +rKINMr+BsZLyjxiDyVnioPbNsDAHzS5NHyb3bnl5jR0Zxvd9A0vupt52YuTwe6oLjLS
 2J2B5wUN3ctGSenhTTW4nJ9Xj3WiI7LHo4Bb3zo9VRnZ+j/Jq5VsBg1AePq+DVdCrv1N
 2Szg==
X-Gm-Message-State: AOAM530L4q6zSKCejhUfAoHdXimzJqhj9Nm1gxQcKFIDfCImUgdHUkAJ
 hqn/94qiI4+l6Q0Hkte46oKflQ==
X-Google-Smtp-Source: ABdhPJyymoMl24/Hbyu/S0aD+hJRH2OFCmtyRq1xdU5U/WWO64hRsKGKdBVXoAmW0JTe54gXuOZHnA==
X-Received: by 2002:a1c:f30b:0:b0:380:e444:86b9 with SMTP id
 q11-20020a1cf30b000000b00380e44486b9mr12915348wmq.81.1652036404843; 
 Sun, 08 May 2022 12:00:04 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:04 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 01/33] crypto: rockchip: use dev_err for error message
 about interrupt
Date: Sun,  8 May 2022 18:59:25 +0000
Message-Id: <20220508185957.3629088-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_120007_753279_E473F097 
X-CRM114-Status: GOOD (  11.69  )
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

Interrupt is mandatory so the message should be printed as error.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 35d73061d156..45cc5f766788 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -371,8 +371,7 @@ static int rk_crypto_probe(struct platform_device *pdev)
 
 	crypto_info->irq = platform_get_irq(pdev, 0);
 	if (crypto_info->irq < 0) {
-		dev_warn(crypto_info->dev,
-			 "control Interrupt is not available.\n");
+		dev_err(&pdev->dev, "control Interrupt is not available.\n");
 		err = crypto_info->irq;
 		goto err_crypto;
 	}
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
