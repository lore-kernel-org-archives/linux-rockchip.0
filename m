Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75FAEC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 May 2022 20:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QY3gepp9RIg4ystRlr3QMliTvj6Kggp59Vic0gg04OA=; b=NSpTEVlqeDPG8Y
	c2Dk9uHkZOfJUomsGAWw1yVFmz18DR+pEklXbj+9rV2FutPNVjdZONi+Zhcoubc/S8wS02rO2t0DJ
	QpyuhgvcscgKYkCgLCBljVsGDDwWsvMOj8GKdOq16ORkOiAtk56KPiIQGpa3TJqTIV7RNfymOJjsU
	FgvCmPSLzpM1Z5YU6egEJy3nFv+gJwME3FBONsAh9VC2v7fzxjIi/FbR91cBzl3mlT0+d0dukYByi
	Fm44WmeywGeWEaJLYIx0zJ3PNud68sb+DQQWzBwXKJJDM+D8lA8yilkQdnebVZqvViWIFdxM5lYNb
	ArFkqeXnu35pjVsrBpXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnnhm-00BSmZ-D0; Sun, 08 May 2022 20:40:38 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnm8n-00AyXl-9I
 for linux-rockchip@lists.infradead.org; Sun, 08 May 2022 19:00:26 +0000
Received: by mail-wr1-x42a.google.com with SMTP id t6so16715399wra.4
 for <linux-rockchip@lists.infradead.org>; Sun, 08 May 2022 12:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ww46m6LdM7MaV4jgNKlRbRSwspMAPKBncRJe9WsCVsI=;
 b=PZlXUeAwiUiO0FNRB1GRfnw2g3hqzaQBu8lU8WX8S24TtOWcnuy3Ku47c1Pqo14GDz
 8btqyUYI4zjBlZEgDLF5QnNO0W72IhkV74VBq/WRw2SDzGaZZ9AhihbE2/0WV5lw2S/6
 2z4tyrPY9ycOqmmfIV82Rl6eMbfpB7pRTvWJQ+edzjzI8LjUMsmmXk2UGotHrrw2VMhe
 v4O1vZE5SJOOSvNEyBmzxhQsdjkbK3mlhfzGj8VSpQVC876erviddGDon1g4Pdx788YG
 Z3bBzEqV6MwJUGtAgsQGn0/jB4oaPYmmTfU0tH19+aUPvWb5yGUx5rarGossWFpyzhbw
 1OVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ww46m6LdM7MaV4jgNKlRbRSwspMAPKBncRJe9WsCVsI=;
 b=Hf/9ZVUjbTby/heMfYf3ksyauER0j2AhL2E+YcDMVUAGS//0UmI6vKwYm1QCxFObvX
 ItuCMNI0Ys4EMcImQxgH0VOx8xXmxIyMBJ6L9Cnyl/7ww+j6/jTKb2SGyVKATIM58Na4
 8t497NDCsDMZYliFUYqVWSP4k51tWwsEWpb0Pe75a0ofmB3MtmpGX7YehZorF5UlDccE
 vZIFb9YT18+wiDfgxr/A2Z+1ooaDbwKrkYaNNivaZRzqMsZEad5OPvdPAZpOhPgsk/Jk
 /l7JpoLeEjIaLM1c4zzLp11H4k3T0qVv+32mtsK8ET1lr2jNxLtLHBvVi188hrSFeyoJ
 AJGg==
X-Gm-Message-State: AOAM532wGDeeJIj/TIFY2oEKRbU3bgmVrUkBtA2P7AYB9DuQhbbUpDbA
 4wgtC0dhitTZjfMW3bA6y6JqGQ==
X-Google-Smtp-Source: ABdhPJz6At/nDhjD0hMxf1undhS0vkVAdQC6PQe4QWTJ1tobep3Mh9CYE4IruJiAEIYJSR5KFHNaAA==
X-Received: by 2002:adf:d1ec:0:b0:20c:6228:e2c8 with SMTP id
 g12-20020adfd1ec000000b0020c6228e2c8mr11362929wrd.328.1652036424836; 
 Sun, 08 May 2022 12:00:24 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 n16-20020a05600c3b9000b00394699f803dsm10552348wms.46.2022.05.08.12.00.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 May 2022 12:00:24 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v7 19/33] crypto: rockchip: add support for rk3328
Date: Sun,  8 May 2022 18:59:43 +0000
Message-Id: <20220508185957.3629088-20-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220508_120025_380872_18A6D126 
X-CRM114-Status: GOOD (  10.37  )
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
