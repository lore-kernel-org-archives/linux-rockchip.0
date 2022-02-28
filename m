Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AD3EC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Feb 2022 19:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ajYN87l0OvC7Vm5KhxuDsh9ulfvB2nHB0mTzjIurm3Q=; b=x6drKuZ54jwdmS
	tIaJ0rD9DnQ0HdZYbesT1j7d5O/zhS8teTJrJhMUs1QWnZaTQIf3QW6tflgYd51ud5sP1dQJcR0uk
	O+Mix3ZC+7hlUCPk28QvS3bKCtjUPV9OtPOLDatbm8ivBrTh33SOYxmhStoe0/Ho0yPQNZgs7geCA
	Z2/G6YYObKF/TOL+Jeh3iAkEgu+BbEJS0ybRxUgtpbnTo9iQVENeJV0oANsw2vXJfMTAtJFsjzYF3
	bHGG0kNQwWoYqXXBoAo2NFYbycwqouOieiGLka70sUK7FiKI6OjB9sV/jStnGtrTK89oS43gTLEHf
	h129Zt+iXKQBur1qJbZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOltZ-00DnnB-3j; Mon, 28 Feb 2022 19:41:21 +0000
Received: from mail-wr1-x434.google.com ([2a00:1450:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOlt0-00DnWV-KJ
 for linux-rockchip@lists.infradead.org; Mon, 28 Feb 2022 19:40:49 +0000
Received: by mail-wr1-x434.google.com with SMTP id d3so17135928wrf.1
 for <linux-rockchip@lists.infradead.org>; Mon, 28 Feb 2022 11:40:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B4Tf8ps8Giknxs7LQki4ZGeia2acPTQFjucag6hcCiQ=;
 b=pQfYzu5gQGvtExS8j6V0wQbX2h22JXAb4mWQmJesNVD6fgWAPw1kFTsYkVzLiIlPjR
 f64bL1c3Gx57wujouE3pi/q6ZFyeIfh9mZaDu5taM5uqrE+/hrhnYPjtUMTg6sS3KWk7
 zQlWSwvAKT0x9YyxhP74uQJnwI2tcuPC4OO3zI1W0eeHqO/JAjPZPkIVzEfVo2ewffjS
 YotD0QLOikj/Tv9v9RtkR3bS10GHMmzOaER/9W7st5PdjApjSLnKA4BFWB+o1AogRxmJ
 EmGM/V/K/4dbOlP2lq4lqt4FtBhH7c2hLG4VNVqia9cfSWk7ivxc+dRc+HYlqZhMoQrt
 t67A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B4Tf8ps8Giknxs7LQki4ZGeia2acPTQFjucag6hcCiQ=;
 b=XWkJe12igWmBWcePYaVy9zrGm2/9GjwZ1dOVgGljle9kWfa4OfwbrKKylg7ZcQOKBN
 NVKcplcLXDW5QbmRJtGh5XutGv6+rA9Uu36nr5dePcI0B7RrUNyWThADaook2EXlqLfg
 AhUe8dZTh4j5bRTh5EDGCFgnDzIDHTavo1Whod/lf7hg1cjX5RM5cE6/Ny7aSvhc2882
 POuRU24vqY8G8x05KzoPe9U303c6dA7bNe/V/aGLFpdkDnwPCUhfwUwOPPp10654WdBD
 QGqRwxmPon047Mh8v8fto32QXTT6UNAWyA32QM2hqaJ5YZ7izWqbyZzYKTqc9FFOL1Zl
 g2gw==
X-Gm-Message-State: AOAM532oPehd4z+jbvWngfmvkO28Y4L45Lv0R/Jd6Y8LxL8b7ZltscrC
 j4unfiW4QC6pLgNq8rZQoqY42w==
X-Google-Smtp-Source: ABdhPJyCQQtSseZ8J+9GAAAPOG5gkjAhg6vVntdlKc/MqESku4jC3awvJmxxKGnA8cIqcferj+ON6Q==
X-Received: by 2002:adf:fc8c:0:b0:1ed:f5af:f7c6 with SMTP id
 g12-20020adffc8c000000b001edf5aff7c6mr16818211wrr.386.1646077244429; 
 Mon, 28 Feb 2022 11:40:44 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 v25-20020a05600c215900b0038117f41728sm274143wml.43.2022.02.28.11.40.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 28 Feb 2022 11:40:44 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 01/16] crypto: rockchip: use dev_err for error message about
 interrupt
Date: Mon, 28 Feb 2022 19:40:22 +0000
Message-Id: <20220228194037.1600509-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220228194037.1600509-1-clabbe@baylibre.com>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_114046_677094_2D13E1D2 
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
