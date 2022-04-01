Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81B4DC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 20:30:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QY3gepp9RIg4ystRlr3QMliTvj6Kggp59Vic0gg04OA=; b=z04FHrHDUs7JhJ
	IXOJdvJSZ00DRi/Ejy+rO2ChxzC5f9u6tdONXCnBDMzfDTXcafo4u563rQIc7GyrbNoeoPKQFRksk
	k/Zs5tk+Cknvh//YelA3VWM+U1sa5GEHibKtYN+6CAVeNtp2yStJkrujShROMK3HdI+TFE200seo+
	5/s4r4jc/TeVcibe5Rx099vaAVJerYrgFnGeBg8Ke4J51H+++6jJcJyGJ8C/3GhA27fC9xZa/1CII
	YSyIEyTEkyTLYuXaZyHC+a+mKTg7rGJVcmSSZvda3l3u3jK7/xzgfuuJmCR4X5J1e+dZo696w0Ay9
	snd5o9IJzIy3bNxwLFsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naNue-007BNX-Qd; Fri, 01 Apr 2022 20:30:28 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naNj6-00751a-Cw
 for linux-rockchip@lists.infradead.org; Fri, 01 Apr 2022 20:18:35 +0000
Received: by mail-wr1-x432.google.com with SMTP id w21so5826994wra.2
 for <linux-rockchip@lists.infradead.org>; Fri, 01 Apr 2022 13:18:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ww46m6LdM7MaV4jgNKlRbRSwspMAPKBncRJe9WsCVsI=;
 b=RELHFC5FWmfF+AjoiKkjqiFFsOiSKjcK5ZHv43xMZ3b6+ClXsTUB/dUxqR2EhYZ0B7
 DitCTQK5oB8Zqmzc4acLq0NDJAiMv/EVmg04civzZzfxCV77hbF72gLQjLvsUa3P1gaQ
 YAZdrW4VCYvHDIXVVjaULC5Sd3Mofrw2wt5BtrLjDr4ZF0Y34ziIk6KFupiRunFC2Soo
 iSpclLza5C8IvqJ7LLB8O/KrN6vBp8gXsK4w6d8+EFWxnt2dQgvSMT74B4XBrRkHnE6/
 S+fTL74s9vhIY9JsR9hUf58ucvYTZsUt6D/8Stq82s0887jJCAZt2EYBY0K1LMtbKJk6
 Ozgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ww46m6LdM7MaV4jgNKlRbRSwspMAPKBncRJe9WsCVsI=;
 b=H7zZA1TwFQt8YNfvAfTuVw/ZZwcifGAridbMiddYNDJRuqyujnw0el65vEdSYzHKq/
 Q/UlHPWPslwYbG1lvTuO5rIOKx25go3wej/Z4KXQ+c1C4j0WaZY5I5+Kt7CAUVb3SD7o
 vPam/GnBE2KoIqtD77tDjFN+HmTzKqom8lM3xSJZvhIjaiJAJqh4DXe0almNu/KLIwkB
 VACDfkZAEd2CqMmJYPoO1q+0bWRO7X2YZdW68UcYLMRd0ZLoIksECNY2DugNWpZFpHck
 D+UzEKe6SrAiXkde2pSiJvCF4MWrZKWfsd53bThlgyIjpx4wGX5oK/kseDIPoFXB3XHl
 zoyA==
X-Gm-Message-State: AOAM531Zt77PqkAL5oO4YhfqfokIDuqTR3jU+4J0DlAaP1wUEYad9ES5
 Vk/6URfu+CbfhSOK12/gq5VEKA==
X-Google-Smtp-Source: ABdhPJz8d4mcqg7Tmry7+8UnkFbgtg923ACNX5ZxEwiUhfhMK0O09cJFC/MYtSt2QT8qvVp0UObzuQ==
X-Received: by 2002:a05:6000:1445:b0:204:1ca1:67b0 with SMTP id
 v5-20020a056000144500b002041ca167b0mr8818523wrx.507.1648844304813; 
 Fri, 01 Apr 2022 13:18:24 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 j16-20020a05600c191000b0038ca3500494sm17823838wmq.27.2022.04.01.13.18.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Apr 2022 13:18:24 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v4 19/33] crypto: rockchip: add support for rk3328
Date: Fri,  1 Apr 2022 20:17:50 +0000
Message-Id: <20220401201804.2867154-20-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220401201804.2867154-1-clabbe@baylibre.com>
References: <20220401201804.2867154-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_131832_478576_FC80AD75 
X-CRM114-Status: GOOD (  10.57  )
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
