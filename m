Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 284E6C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIUu6K97ax5On4xx6QCx/auxVxlxcHWhasuL92XPKPQ=; b=SJFOKWZsSzXDNY
	D1aECZpwzpADbr07qajRrdpgz9cjsD9D7FgclT4a6bfhKNwr7FhK/98Xkd/g6hM+HmLtYj0wd/g2O
	KrCItVIWHMY3L6YMkHls+D0NrcA6qySo6t7x7/biGd3RdkTGVVNmd1DPgVDJNAD77s2D7yUyIVFnJ
	sRRY7nN7IBcyKoTSVU1vaoDZOJ7JKS2Nsdsa9ouVCtXFNzZ7Qi4YlHQp98AotYlCn5V2SAOTBAUxW
	rSqxJ2Vq+Vqipl8Yq5QchYYjQanefpeYKmRJ9cFVQSGU6wqQsHpc9cWFhtcjH0l5nzYRW8ofUB6Bz
	R3gUd88RLmMQv33JT+uA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5E0-00BBQw-Da; Mon, 25 Apr 2022 20:22:24 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DB-00BAuG-R7
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:21:35 +0000
Received: by mail-wr1-x42b.google.com with SMTP id x18so22536236wrc.0
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6k9bKJA41frCR0pmOk9SA+9AKNxBSbRS1tpgQTa/e4I=;
 b=iVygEJI5sek2lCtA59VX0g2JTIJPfOrprLb1yt1gSc9dKlRNF6I2HxVGvcgvHWQ5+C
 CVTZpYxmmAD90VQBw2Y7JOjoqSBExuo+c1v7tRMMiNhmYj7a+qBVKH/wLVLKybiHijS2
 aP/cqx5SBHi8lfTlWU+dbwlIx8Z4fX0o3gqObjYJ1RKSvRQEM/ws84ZfQB0gtaUx1466
 q1aHDyUYVAdvJY9hi5QKmoIaMnvweM44muPrdT7b55ziPfU1BEazN6/PXKKm+x5qbld2
 FEeqSN/bzwHM1wlVEHYOLRnKocb3EJHrXg2gB4H3S22jCZgxHJVArk/QCPhDzvqVAqQk
 2krw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6k9bKJA41frCR0pmOk9SA+9AKNxBSbRS1tpgQTa/e4I=;
 b=Cn/rEjSycByQDbXkuOJzzNLVLhzV/SyxB04bs9EEy4UB7feLUBeDe/aSlbMHcHeVQV
 vu5EbT9G+SWcVzrPUpUgA99HG1ztK9cZbTjAzTA9iPvCCJQEmcFnGAofqItsdQW+dxXk
 F7MzBtjp/bJ5QP48pPBwAKEEjtL4LJCrGgQJygznau9uGwi9QZrOgmFfdQbRS2XC6VEV
 5R0c0zjb/b8tClVPZyOdY9Cc4Sdw46wuGdPCe/9v4QNsJ+TBuhAcRoywiMchXD0lmtJK
 p5Kx0hoMMCHYuCawNM+wo7zWVdUsN5A/TPZdeK0PtsByL7fSypaYUTX/eKg3Uo4J48IQ
 r8QA==
X-Gm-Message-State: AOAM533fqSs5XfrSW7k9RtJOdJMXv1W3KXIuKWSNkdGZL0XMk3FTiHL7
 uHE2ykn9Ffx4uTxC6C2Ylnsnkg==
X-Google-Smtp-Source: ABdhPJwFGMyIGVr2bDkLKpz3m2r4r/xoym7+kMDjAI//J76Valv15mCRD8UaLNFfa1MROLOkLnNQJA==
X-Received: by 2002:a05:6000:156d:b0:20a:e015:315f with SMTP id
 13-20020a056000156d00b0020ae015315fmr2982111wrz.140.1650918088724; 
 Mon, 25 Apr 2022 13:21:28 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:28 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 01/33] crypto: rockchip: use dev_err for error message
 about interrupt
Date: Mon, 25 Apr 2022 20:20:47 +0000
Message-Id: <20220425202119.3566743-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132133_943032_50341E1D 
X-CRM114-Status: GOOD (  11.92  )
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
