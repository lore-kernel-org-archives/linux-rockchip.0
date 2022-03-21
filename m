Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1832AC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Mar 2022 20:08:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajYN87l0OvC7Vm5KhxuDsh9ulfvB2nHB0mTzjIurm3Q=; b=cmpX0hk4IqikA5
	C7k6tQdA3l7J7cIwppM1s78uNVQw1MeRjbFGs/2NFGUarliVHWFTTZDRCt3lB2zc6k5/yLTMJE5eV
	R41r9yV/TnNnUOOz7mDdbSDU0PE0pxUQcvhtspD0s9OxT0KqW8WMTna+5pMBGZV2yEKD75aATvZfC
	eSkem5u1Bb8YZ0w7lPBx/Iqfqg6l2CMznWCza5dFvp3PyjQUPBCEwVifJMvqyY8uYnatV1Kh8fb9h
	7U3nipBZyXTW/ncawdgbpUOcW/XKElXlXtgtVgbAySUj3nFZnE07gZq1fn1jjcJGcvc9xtagoY+2f
	yclkHSHylH8vzoxh+P7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWOKN-008tpv-Gs; Mon, 21 Mar 2022 20:08:31 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWOJk-008tPg-9F
 for linux-rockchip@lists.infradead.org; Mon, 21 Mar 2022 20:07:55 +0000
Received: by mail-wr1-x436.google.com with SMTP id r13so7178355wrr.9
 for <linux-rockchip@lists.infradead.org>; Mon, 21 Mar 2022 13:07:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B4Tf8ps8Giknxs7LQki4ZGeia2acPTQFjucag6hcCiQ=;
 b=a5sdYH/JpduGpHD1tJRBR8er5IEbsClNfH4hgpWRK5s0+TXOINVNN1DNWc4QM5y0cz
 JH6/NV5PqdZ1ky07vprQy7CVZz+/Wq35BT81QdG6z3kTRWl/mFF1tbvyb5U5lkph+rGa
 DCznuSr+wpfwfCTRtEYMSF2uJFLVckT2GtBapFEGR7cMQ4FAVNxhnxjfandRUP94E43J
 TV6jkc64qtNCwBd2Abay8L3GUGgych7CpLkh7HYaLRkGBNxZvnIV6VTRYD7vqxSMB/RB
 vPUIqL/+XVdFYhuz4BxNljahR/VYlwTEWvz5zvoWvB+uNrG1o4EIiKWX8nCrUBtNRBj1
 FqcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B4Tf8ps8Giknxs7LQki4ZGeia2acPTQFjucag6hcCiQ=;
 b=r3uxL4QqRQCB3jWBI/ux7Hb1iLVEw5i9mJz7cWy5NmoBVMwuO8cCRYzbQB99wvAwcO
 1jqdovJOVpd9RhhNV463tR1d4Np7SsxzYkMylupD/DHiGyv3QhuIQ5CRmYDJ9JLik6xy
 vF9kOebtz8C/fMsef6egnwb6EhSSKTlXb3H1ffK6im21NhDM9pRSNeN7nRLMNOcWjhtt
 zT4+XURYncp1FB5ATkOHCs811qbQ9/WU5e6y3Bw75ZE1/JgTsmA+gQENXEVoiU58hV0D
 EqjsB790I3lD3G6kzipxA5SQRRdu6uKPsC60U740efkm1vvESwBO/S8MEOoVzmryLr7X
 PoZg==
X-Gm-Message-State: AOAM533VhT3lHGy9q3nQdoxq7qoNvbHI8uFLCUPsdZAZxRcgiwVjnoE8
 ZVC4QifGRbBdO3AKP3rUhRjYTQ==
X-Google-Smtp-Source: ABdhPJwYTWhzkN17VaZNGiC+QJK17xaCo3Z3qvpMMvQ6vPT24W5CB9Yg+9XGiJtSQblUoHYogJ4VkQ==
X-Received: by 2002:adf:df8c:0:b0:203:e4f3:920 with SMTP id
 z12-20020adfdf8c000000b00203e4f30920mr19304734wrl.461.1647893269753; 
 Mon, 21 Mar 2022 13:07:49 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 i14-20020a0560001ace00b00203da1fa749sm24426988wry.72.2022.03.21.13.07.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 13:07:49 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org, sboyd@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v3 01/26] crypto: rockchip: use dev_err for error message
 about interrupt
Date: Mon, 21 Mar 2022 20:07:14 +0000
Message-Id: <20220321200739.3572792-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220321200739.3572792-1-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_130752_344688_E98120DF 
X-CRM114-Status: GOOD (  11.56  )
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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
