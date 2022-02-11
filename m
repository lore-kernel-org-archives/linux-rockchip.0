Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7C4DC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 12:16:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=elsSig+VN9lKpKnj79nXKcchoRWhSFfcIAo3/4aq/cM=; b=ZxwWc/a4jw2knT
	pOKSRLDFXsWeM4rRz7yf5P0cIbRr3mwV7NxyUlWS31IpmuJReZoVk1gyODZRPeTcxk4Irn4rrE4j4
	WV4FlwunZfCrVCTkLih4Weyzl28VUmpnRROS8gBrYMen30jQaF9WE7LSCipppxO4/93DE6GB7iDYU
	05PhUo5Qby2irDakxAw1+A4EvF2kG5/pV8jPLBvk3kSwlAyPPbiKewv5cGQCgr9a2JLEgi/8o/Ljn
	CjTVu5k21YhDkHakheROblzTFeHngEJgSXvnFEItt7PFhMcOJlgxMVt4cWQW/pp8uW+/755w3DI3b
	v4XJWjNXEF4zCRAVx9Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIUqx-0074I8-6N; Fri, 11 Feb 2022 12:16:43 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIUqg-0074C9-0Y
 for linux-rockchip@lists.infradead.org; Fri, 11 Feb 2022 12:16:27 +0000
Received: by mail-wr1-x42f.google.com with SMTP id i14so14864382wrc.10
 for <linux-rockchip@lists.infradead.org>; Fri, 11 Feb 2022 04:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mvl1wkNYm6RPkegUr/uIzjNHoyz2Xn8SussJz1Z+CdY=;
 b=lFrHfoiAMlozZfasDvYf333y10SDkdJeqArttbeQpBga/b5WxYIwUNfotHavSujnc7
 tn3F5Ayv6fiAZmUVInKh1q7eHOk5O8jEJiDHF+J/5gkxuQtPO3/PQUx9n6oYmTHvi8wq
 8eLSHCuXVF2PyqO4+3PTTtjgq+nnKQaAKoogYClq/k8AehKizJdGcnxCJrl16A5gjNd7
 q6sxU34ajDV2moYCCaJExp8sisWwH9DrrRyAqN1MBXfS8NELY1YBiwWMNnLIMKNS7dTB
 xf/8TgDbrw6gPIkfVPIchFRUZaGJyRW6BS9UyLuLto1hqVwwxJ/G7BY8e3pgA/4B5N+e
 Zi/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Mvl1wkNYm6RPkegUr/uIzjNHoyz2Xn8SussJz1Z+CdY=;
 b=Ge9AZ9qVnIJ5N7CSViGiiI0y/HukcVeC66N0wpPMUWNz55IkDlFgTa/5SyM97gLzCr
 SanXFYggWhoxmo8b8PFlG8zXdrJNLgo7GRSs2XlnzF8XAQ2FCu4csPWib3BEFKGk2cRG
 yKiWZRs+57hw4GpufNcGtGFJJ5+NzhPoxPANZs4v21KvwOoVt4Se/6QgFlvnwcCWjD+z
 frKceGABWYFgrI1Egu/Gi9+7OtOTMTTKBKdy2XA3anNoZYOArKx4FClQKxKufOLHVG3s
 fcqkK2/87u1W+rAfX5NNupZEKBa9TU8RcBJD98634/lqayBU19fsOgTVjNT1x9o2c5je
 uhAQ==
X-Gm-Message-State: AOAM530CaXcUh3VZOhyF1dmKFcPi+ztMDnVdccbgqMVwGbR/zHrR28zs
 xSxmoFzIIdoP8B4sw+FPqqTlAg==
X-Google-Smtp-Source: ABdhPJwGUQacHI4CxH9hSOZ9rIRJOkrXKFeMz7H/g9nlpl2QbK6F77vVWMHaWbmnYplFIJPlZEdJTw==
X-Received: by 2002:a5d:590d:: with SMTP id v13mr1172963wrd.274.1644581784643; 
 Fri, 11 Feb 2022 04:16:24 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id l11sm6451885wry.77.2022.02.11.04.16.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Feb 2022 04:16:24 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: herbert@gondor.apana.org.au,
	heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] crypto: rockchip: ECB does not need IV
Date: Fri, 11 Feb 2022 12:16:17 +0000
Message-Id: <20220211121617.3393068-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_041626_079386_E24A7B71 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
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

When loading rockchip crypto module, testmgr complains that ivsize of ecb-des3-ede-rk
is not the same than generic implementation.
In fact ECB does not use an IV.

Fixes: ce0183cb6464b ("crypto: rockchip - switch to skcipher API")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto_skcipher.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
index 1cece1a7d3f0..5bbf0d2722e1 100644
--- a/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
+++ b/drivers/crypto/rockchip/rk3288_crypto_skcipher.c
@@ -506,7 +506,6 @@ struct rk_crypto_tmp rk_ecb_des3_ede_alg = {
 		.exit			= rk_ablk_exit_tfm,
 		.min_keysize		= DES3_EDE_KEY_SIZE,
 		.max_keysize		= DES3_EDE_KEY_SIZE,
-		.ivsize			= DES_BLOCK_SIZE,
 		.setkey			= rk_tdes_setkey,
 		.encrypt		= rk_des3_ede_ecb_encrypt,
 		.decrypt		= rk_des3_ede_ecb_decrypt,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
