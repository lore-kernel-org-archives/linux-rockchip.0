Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6F31C07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 07:56:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w2ewNjuPH3tCNpBACI9xMFukG8dznlgGn9auxf/TbSQ=; b=JKVfhY0kqXqCiC
	mvmZdGsbjh1UgfE9IHwitCoZDUY9KuIhUQteCO1ae+lh9oipbcHI8Ed1N09bvI01HToks9Z3ZgWKN
	3Pg0yXo/KlF0BVFzU+FUFPZ/5nERNknu3/oodFy56R4S89uqzZDZkGXxkh9pcgrcAZRicEzOX+7mB
	Ta0kJipE4ak2aiA31MsKWBsMTj7DuJJ04BNcWDUXPVQ8npo7RE6HDoFdcesddGZlBkGrvcw8q+iAv
	Wxle/WHEZnsH7E+NGfr5hwQoRw/xZwPIBXqQ1oFgSTBT3tfp3ceFlWqV4DqBIGENvyBfDpmdB1mDq
	acLZVNIC99/96hWmaioA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5Rc-008v0n-7a; Tue, 27 Sep 2022 07:55:56 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1od5RI-008unv-Nb
	for linux-rockchip@lists.infradead.org; Tue, 27 Sep 2022 07:55:39 +0000
Received: by mail-wm1-x32a.google.com with SMTP id iv17so5974710wmb.4
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Sep 2022 00:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=2nwWkT4441Zvq5igIAOKA8C0HAjPPXDmTRADPlAyhok=;
        b=FhCg6N8IdLUqYun9zFfNxEKEFxD/HuGTkniM7ShtX24traaLVPnNCQf6esKBn0W/kg
         3yjeiHkQXXz4+27KjUI70493oisSzR9M+ECcruAfQ7DAoW3K2SxW0OPUFapVTtqi9hR5
         DEjiIryUck3YbGPpR/3H1zoaJlaK8HOPpPjJz3u1MSKuAUg07OS5wukM9QalNg/F6WQ4
         qdi5dxstPbe57InTXy89Cw1DxqZFA+D7aWz4xTTnXeUZFjvQ86dPVGGZ5n+KlcS8iQD4
         zk1b82sC3K3UwhhbL3n/c+tgU+UlqcbVBkgl9oi4xF/S1hwsKSLiTcDZ9suJmNp+ZnUi
         bUyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=2nwWkT4441Zvq5igIAOKA8C0HAjPPXDmTRADPlAyhok=;
        b=Ue6YW/lrbwJJFWOwZo541YsQMMZFcB7K9IktDuT/0W8uiOOgWRPDF79xs9/1NtIYtD
         yQQ+y3DCdTmPJbTa1uMmrXo2VPHUa1MzxAx1AZWwZSxrMgJIzyHyIRNb72HokZnPaqWZ
         o/QdwOQA/nRmnqA0yrfCHN0U0Yum/FnIonN2K7Ph62XWMoKf1JK0Iv1EUCCn9aA33VSE
         CgAA4oVHlx+ndWTyGYnBbPCFueuLfw1471FgNCm+sGoAmkdZeT33D8dQEi+v1KJJHYNZ
         2pR+jeJ6n0HAAJVt+9VElLUZX70Oy6CXxkfU7Q7kS4j0iDdvQvRRI4M6hitab+A8Sgy0
         bvHQ==
X-Gm-Message-State: ACrzQf0D3YpI5pSl1B2z75dlK245Ft1ZkesZbwjWLaYiRai3KaaE2QcH
	QAr8ttId/Oy10sX7jjdrhwdl0A==
X-Google-Smtp-Source: AMsMyM6h87WBvVreQkid4R2UnKxsEZtgzHIzUDroAKPttULMr+SwoIKne5+cNdtK+OWCySafkeOQVg==
X-Received: by 2002:a05:600c:4f89:b0:3b4:a6fc:89e5 with SMTP id n9-20020a05600c4f8900b003b4a6fc89e5mr1531348wmq.149.1664265334129;
        Tue, 27 Sep 2022 00:55:34 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id x8-20020adfdcc8000000b0022afbd02c69sm1076654wrm.56.2022.09.27.00.55.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Sep 2022 00:55:33 -0700 (PDT)
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
Subject: [PATCH v10 01/33] crypto: rockchip: use dev_err for error message about interrupt
Date: Tue, 27 Sep 2022 07:54:39 +0000
Message-Id: <20220927075511.3147847-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220927075511.3147847-1-clabbe@baylibre.com>
References: <20220927075511.3147847-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_005536_834343_D4CD3915 
X-CRM114-Status: GOOD (  12.05  )
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

Interrupt is mandatory so the message should be printed as error.

Reviewed-by: John Keeping <john@metanate.com>
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
