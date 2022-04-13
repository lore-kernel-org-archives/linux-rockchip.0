Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0E2DC4321E
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z/DdqJ1PpgPaNKNxg06VQGjtl/NDNx6YxjK6X4kUMww=; b=EtmIohEYzDMfY+
	JUNf0vcQmqDxdgXK3/Qd3lzA2YReCFJ0NNyrmcgGdg+541m9/w3x4Tdkl4/H2vEg7w2/exRLQghXx
	mgjyK+XF4wvJNc07W0KXJVMqInkSYZZAJltkBhWM7epCr0eC2eSkNJZ3DTh0MIkB+xPDEan5zQOZ2
	3o4vH++SRQtSee/ctwfCKHZXhrJZTjgMAfFAAF7sfpIZZwKB8ageZwkp/qZRBE5dQqRHzFhZH9R/H
	uMk8wGzVB8dgfYoz6rZ2vTyfEdxLosM4uN/cGCKnxeTtnHaFb7MdJO2sDnGrjLbACOaU332jyzBMx
	HdlVdL55eDmQ3WqdAN6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiLA-002IC8-Dg; Wed, 13 Apr 2022 19:07:44 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiKr-002Hyr-IP
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:29 +0000
Received: by mail-wm1-x336.google.com with SMTP id q20so1693750wmq.1
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yV669w6ThAcunb2ptGEHL08NqOMgexsX7UsYGNNFxgw=;
 b=0+C6Qtec0B3cxtI8hQ7+5AaUwzZpKeedDIxHRwF6kg26C6z5E0gQg5fzxViZaXWWr0
 LpKCYiZx9zOnCr073zRxmkE9adjWpuBQUT3gFIoOFljLl7uwaTd2u5qVi1uhD4dve56I
 XFpmauVUwU0ui+/bi1s26wYA/KKin38UZO1pca6AYJlesBKqq9LeZLLtx7u/c1e+Ve4V
 3r73e52rOJ9RRfEXzhHTV9vGNCVOy0/bzpNhSRqg5gxQZMtSvBNPDpy8S5YkD2AZqWeJ
 zZVxrxDU37WfINUNkiCvOJHaoR824Ta6zLOQbiWLzCOfO5BDMOgdDBdRaGfVg10SosMZ
 XkCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yV669w6ThAcunb2ptGEHL08NqOMgexsX7UsYGNNFxgw=;
 b=IO+4EjXlEC9fMMlyY5kYCw5ejrb6CgUVYp45xf/FMacn6+AMbUhp6ZxZok9B37KYix
 fKSi8hscKr3EWhL+xcST7R9CdCQXiGHWT6r0UVfpYKX2hPiikfC5BYAu+r/n3huxTasb
 W4aEZBpyAOl1d8u8hkkHluHtFtByW/qWdhRk5Isq0SzFmyg/hX+5Y1AlmpF6iOwg6NFy
 Zc1BesjX+NzLFKA2cewmFoiuS8Zx+fHKpgRHTQX1kDbvypPC9c1GlNxPEXOTF0yJ0ALA
 ha3OjE/7UW4OuZKMj0UaHfUkM9gCEmMfd+W/GCih5YRv+yE88WX0UdKSICQD0UqpVw3X
 +RcA==
X-Gm-Message-State: AOAM531zla0MtGNHit4HGeNorqweA2uCInyUIVW7Zp7W+7wPij/ZQbaP
 D8IGEFzEWcAlKCLr5hi7pVlCXA==
X-Google-Smtp-Source: ABdhPJx1Gjtc8izayGqu0sc2TncLxcVz1bg9m/bNlpID/7ijNYiFAxDc3MO/z1/WPyNVBlTUDwaRUQ==
X-Received: by 2002:a05:600c:3493:b0:38e:bbbb:26f7 with SMTP id
 a19-20020a05600c349300b0038ebbbb26f7mr167635wmq.114.1649876843673; 
 Wed, 13 Apr 2022 12:07:23 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:23 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 02/33] crypto: rockchip: do not use uninitialized variable
Date: Wed, 13 Apr 2022 19:06:42 +0000
Message-Id: <20220413190713.1427956-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120725_639714_79AC8CFC 
X-CRM114-Status: GOOD (  10.90  )
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
