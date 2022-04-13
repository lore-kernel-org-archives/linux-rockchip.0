Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB214C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 19:20:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QY3gepp9RIg4ystRlr3QMliTvj6Kggp59Vic0gg04OA=; b=Shxz0FOmjJ2bUi
	K2ETrTJPRns5ByIjrQM3LxnSGyqpZkEuYfXs02X50ORkAYD+ySaZzOYb5gNDjzJNPcHGbkNAzCbKF
	nyjWFAzzqhtSTwEn9ntwbYQqFUrnzUnH0GJSqfymfB3NETh4lLbhe5dItKyzV3XWTDLTLnyrwDTFg
	iMdDkWeL1/4z6R3XptYmDZYqKlJYXUWEyVaGbHpwKLSWMlTa7YHiCGDy4VBx8dfyduWFMkDhE+QBU
	knr3ssKwsBpuCmciIQ1GyCbLQANkfddu/uFAeGI/y2BLNE5khdJX3WBI6hW+9eD06uT3I/PZktko0
	P3y3EuFgWhcQRR0OHlPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1neiX9-002O85-Q6; Wed, 13 Apr 2022 19:20:07 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1neiL9-002IAX-QD
 for linux-rockchip@lists.infradead.org; Wed, 13 Apr 2022 19:07:46 +0000
Received: by mail-wm1-x32a.google.com with SMTP id q20so1694123wmq.1
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Apr 2022 12:07:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ww46m6LdM7MaV4jgNKlRbRSwspMAPKBncRJe9WsCVsI=;
 b=n4GxM+7nsuxsI+1bGcB5rLwa+X6GSggqVjENOqQyONbq7w/m8M5vULAHabZHUaOfI0
 yrGXFlSZ6/xTW4bEIDG74iTDKKtkFl5IouRROOgn+l7gyc1H+SRRImGzZHyrLUg1bR2g
 D5itmvThqm5esfDcz+3UULE7zNmNWRa/gxb4oVPhjDJZIiAUySCYh5+jzyk/hMTdqP4N
 mSYFtR+OODyxrWgjVMDeaKECZH1M+ZKiqFcWtMZMZVALTWSPe2NgG7NL06hU29c93Kli
 CbmCLaHHyqPdNkawQoM8UfbBDQrTDhPNqov2IYHyMHvnTcr6sEHfp1lRrVtqet85eAmI
 hXTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ww46m6LdM7MaV4jgNKlRbRSwspMAPKBncRJe9WsCVsI=;
 b=KvGa3JTm7Awmr3ZyRdMJuSGkN2nK9Ju6YN6WO0n3D0ks1+7gykzCDPa1KRirzoAVL+
 1o5tmwUjOD39kWhRXIG6CI4tizZLUZy4MMOnJgsvMA95y50Mj6pmE0UbVf7sdP1JQ23I
 4L91A2FmA9p3tAz+NOdz51sXoWbSEZWl8XSTSYyZH0dEl1lCS3m1LIhQEOZLyVG5MAvr
 FtJKg0mAA/mdrgAgBMc8H2/Zx1p7uomC0+e0o31PeWMLs35jtlEgNS7WQ7ZUyiWzWAFp
 CNmB5eefqOExpw4UGLtOEqlIAWfnHnyBMhOah99zKvBDtK6kHeUA5aHDydTSIzUF42Yi
 7cxA==
X-Gm-Message-State: AOAM530rsiS6HBzWG5yveksrNxuIdwHucWLcF1n02sjymp8wv2ImBEqb
 D1HWCq3zb8ZVOv3rQdef6Jhseg==
X-Google-Smtp-Source: ABdhPJy6gHqrDJOTPbB96a63VKnYt0J7Z0B01+Lngql6b4+Dh4LGSSPlMrcvgax9jGWuIz5xph+3Ww==
X-Received: by 2002:a1c:7518:0:b0:381:c77:ceec with SMTP id
 o24-20020a1c7518000000b003810c77ceecmr146115wmc.57.1649876862022; 
 Wed, 13 Apr 2022 12:07:42 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 o29-20020a05600c511d00b0038e3532b23csm3551852wms.15.2022.04.13.12.07.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Apr 2022 12:07:41 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v5 19/33] crypto: rockchip: add support for rk3328
Date: Wed, 13 Apr 2022 19:06:59 +0000
Message-Id: <20220413190713.1427956-20-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220413190713.1427956-1-clabbe@baylibre.com>
References: <20220413190713.1427956-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_120743_891084_28B4FC50 
X-CRM114-Status: GOOD (  10.15  )
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

The rk3328 could be used as-is by the rockchip driver.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/rockchip/rk3288_crypto.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/crypto/rockchip/rk3288_crypto.c b/drivers/crypto/rockchip/rk3288_crypto.c
index 97ef59a36be6..6147ce44f757 100644
--- a/drivers/crypto/rockchip/rk3288_crypto.c
+++ b/drivers/crypto/rockchip/rk3288_crypto.c
@@ -197,6 +197,7 @@ static void rk_crypto_unregister(void)
 
 static const struct of_device_id crypto_of_id_table[] = {
 	{ .compatible = "rockchip,rk3288-crypto" },
+	{ .compatible = "rockchip,rk3328-crypto" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, crypto_of_id_table);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
