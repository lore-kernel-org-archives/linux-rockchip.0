Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CBCAC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XIUu6K97ax5On4xx6QCx/auxVxlxcHWhasuL92XPKPQ=; b=XvOiM9Bg0UUZEl
	JQ+u2H0cMHu2bwPANNoepR79oZiAk3EGuVt3DRcRECy8B8AXJcf4iju/HQ9Y6zqUALOZMCUjh8HBC
	CZsNn/sRXAN3vF7ffSwko5v6viGrg7CNGJTjjIpLQhXNjYwUU38BrF5dJURcyNPuMY7jQVqKvfrQw
	egtGL5++jULxrD9p4j1mTqCF9y0XU1WjZiCMQf/1RpVC84eqOG/qtYaqebhQXQtxJvNX1XhZgi3PQ
	FX5c1euoptUkDnUzV/SzYJ+DNNJa0JAzOObbo0vHBq5OTH5Olx2GLfPBriuaDiRC3Vz1esoy21lW3
	NPpTGDAJO/QjoAZL48eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNjn-0075Uu-Sa; Fri, 01 Apr 2022 20:19:15 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNiq-0074rK-J9
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:20 +0000
Received: by mail-wm1-x32f.google.com with SMTP id
 c190-20020a1c35c7000000b0038e37907b5bso4277890wma.0
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6k9bKJA41frCR0pmOk9SA+9AKNxBSbRS1tpgQTa/e4I=;
 b=MX9wcuVuqO02rmKbmTocVYNsYM3xb69qciQ45XhTTpNt6pGYkOf8zNrTlg+3ajHa26
 gx5h4tNyNiQmQtQT/4b4WRcti77DviPc1pElY+TlnEgIuiQEQqCpbi6QgzfAmyuASasy
 osO40L106DDYqfRXO42ZzyxiEXHi70159kTp/HputOkY9ofQboH2qWVAK3SoeIiIjLSn
 qu1Ws+xLQ1SK1oR6tGm/2xkYZ2Q1YkGUYNuihQSOhAxWdrGAnazJqbXmBn+nsW74+hZO
 4oc4Dgy8WuU1yb/aPQwsANCR2umfKlMgMkpqSJEJZ6yes+0mzHKLX/m4/iu3Afw8n8LP
 EGZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6k9bKJA41frCR0pmOk9SA+9AKNxBSbRS1tpgQTa/e4I=;
 b=xL5SU0Sgxn5lNrQzH8pyNOFnNIlHcvLwDph91pHEbqcg+JQWfNSoFUYc89Tkq9u2YU
 aaATn1KJhs128qSNeItcC3bFwFcU+k87J5eJ39F0Hk6H8dqRrI8de8D9drWLNeTD/ZQW
 hagOelUQQIKkVNxpmpzCA51Xc27ceyt+sVPHsI2rN2/SMcCpPmWJHG+m/+K2anugUFOw
 BCp6SDsLsBXgtF7ZElk5v5bwQUN/IUux0ttk5311xUS0CvmYH4aBfGaXSG9vPefp8jRX
 Yjt6ZInsUtcCVMANDBHiTWJFU/4XTKaGFsDxa5G8R8mJRpin+3mN5ZzimhYLyEQba/n3
 mZ9w==
X-Gm-Message-State: AOAM532ji11cTi72BsIfBYs001RCsAAzMwGKEBnU3isk+ejNQag9edDt
 0Q48CErRT6vZJUAyuL8RxnydoQ==
X-Google-Smtp-Source: ABdhPJzUg0D/clSz/CESNPrJbeUDbMBgKVJNXT5S+m7Pvd1vPyixbkGOe0zyBVtVLMpYwstHS/L51w==
X-Received: by 2002:a05:600c:1d26:b0:38e:2c97:6f19 with SMTP id
 l38-20020a05600c1d2600b0038e2c976f19mr10107691wms.89.1648844291447; 
 Fri, 01 Apr 2022 13:18:11 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:11 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 01/33] crypto: rockchip: use dev_err for error message
 about interrupt
Date: Fri,  1 Apr 2022 20:17:32 +0000
Message-Id: <20220401201804.2867154-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131816_692609_91A8AB09 
X-CRM114-Status: GOOD (  11.83  )
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
