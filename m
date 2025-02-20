Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B48E5C021B3
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 18:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yc8NOBEuJUP8nhXRTS06VqD1rxeZ8lBpddjmruZ8Z2U=; b=UvXtK2xJE32D5j
	oKT3KD1Pbck107L2LDnqHnUKPf4OuLNniufluve1InRNzOgY7S3KAhCyHfi0yTK230+EHeQ6aA8TK
	3Rx6EvR4vZP3jn1hE6m0qdlOJfY4RCTWwP1hBi/P/XdZBR47VG/xys0Lm3SHMM9PJ+UFdlBByHxHO
	FtDjSZ0HEbcPX9FYIA7pxeM86xN/7ql+WqpZKuERFFGvwh5xBvGQfjwTDRuQWAWBGgHJ0Hrxm7Dwp
	ngrErLcXcYlZ7fKc98lAaH9GRQg8nS+NqItfTKVt0W4xP+5LV84MtoS3oRoAw0LLFK3H/HT8g+/wZ
	Kga6iSI/zkJdHHvG5itw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBlY-00000002Ulg-37Bo;
	Thu, 20 Feb 2025 18:59:20 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBkp-00000002UaP-1sfU
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 18:58:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740077913;
	bh=b/2SnrTHVsQJ8AcXUtfVUyoN3MTuFOMma2+Z9/HxMzM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RMPQ8NxYPziX6JPCu9aJTDUQx0ZuFTKwBUJmChkhfgLM5cNI2OycXNvRoSgj9TL1n
	 rtcOuiFvTxdJahWTGQZy+xrvmH7ChG1dAIqNUVUB5lUd9F4p3E6CJGpeCGWS2WlpLO
	 x7C/vB1qzZ1Dkmx8EiQA3xxEyHi+5vYRtCSvpkWztupbYgMwJWlKsUrGlIsGyBPhHD
	 f1+OgK1aBUiI2f9eROKDA/wr7IlE32ToFuAJVAbmkIGpgnY8G6e2xiBL2ztm0HN2hm
	 Om5nDbiTnOJOl+fE6J5ZA2EbGAoG2fc1UxvZPp38IJPFa0+k6h3ZRtk183LgTurkoC
	 Ae9/2lRnfxlGQ==
Received: from jupiter.universe (dyndsl-091-248-085-196.ewe-ip-backbone.de [91.248.85.196])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 60E9117E1572;
	Thu, 20 Feb 2025 19:58:33 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0C6C4480036; Thu, 20 Feb 2025 19:58:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 20 Feb 2025 19:58:05 +0100
Subject: [PATCH v6 2/8] pmdomain: rockchip: cleanup mutex handling in
 rockchip_pd_power
MIME-Version: 1.0
Message-Id: <20250220-rk3588-gpu-pwr-domain-regulator-v6-2-a4f9c24e5b81@kernel.org>
References: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
In-Reply-To: <20250220-rk3588-gpu-pwr-domain-regulator-v6-0-a4f9c24e5b81@kernel.org>
To: Mark Brown <broonie@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>, 
 Elaine Zhang <zhangqing@rock-chips.com>, 
 =?utf-8?q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
 Boris Brezillon <boris.brezillon@collabora.com>, 
 Peter Geis <pgwipeout@gmail.com>, Tomeu Vizoso <tomeu@tomeuvizoso.net>, 
 Vignesh Raman <vignesh.raman@collabora.com>, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1396; i=sre@kernel.org;
 h=from:subject:message-id; bh=b/2SnrTHVsQJ8AcXUtfVUyoN3MTuFOMma2+Z9/HxMzM=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGe3e1gCOsfx+eKTwS4JKtRAfv6m5LqpIOJYM
 aLUJwTjS7Ey04kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJnt3tYAAoJENju1/PI
 O/qa1JkP/A/mucKd5UTnEFrBQ6IbiAE19wyc4pStxQ+CXOHXUjOOnXPq4kVO7EQ3SuXCR0GkzPu
 qD/WBwYGpNfzWqWWgDtX+8AuVklCX23Cf9IQxdHZtmtnDpUr15Avo3R6EsLsa+oBUJ4XgF0prkV
 V1BByYlG1kSyCIP+9dl+PvrAHUxvaXtklD3LekiZWf0xxAC3sc/9wOv7FKQ/zEfQT6kXfncXXWp
 9J2F0pP/jbZWf24Xzj+jurtkfhnBSj2q/FovzXjYkvN2rQjnbyTRIDTflyIqWoo1JNF7VoveD3P
 sM42Dr9u9B0sz5Qyj+KGMgoMuYn8a+V495lcauOCdEeBfNQl9vPWTCwg3DJMq08U7KHDBFY0FX+
 i0eo0DU5M9UcVZsYHQaGPaIhSR1agP3UwYW3bubAHadhKUtLNldEaZCi0iY0uphxRJ7EiW0EeSf
 00qVs38G79n4pl0VheemG3p2btRmfos+RPz0KMLWpCazlLQAO+QkOZq3EOKumSK//qgoqajd38e
 lqoeSUhvt8GTxrrVe7jt7EVldabX3cNARBTJ8sCKtQl02lSoWQMQoSdF5FI6Zvgfnrk0wHIWWTm
 SD4d5uDqnmz4ylm8p9zR5/RA956Dth8UVaGQYoxgXsiwUE+7PSjSdMF8d3LX9Rkq4YM2hkSqCpa
 TSUt/HJFOA2j9wZ5QmPQ3kw==
X-Developer-Key: i=sre@kernel.org; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_105835_664309_3C117C8E 
X-CRM114-Status: GOOD (  11.70  )
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

Use the cleanup infrastructure to handle the mutex, which
slightly improve code readability for this function.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Adrian Larumbe <adrian.larumbe@collabora.com> # On Rock 5B
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index cb0f938001382fad302ccaf6f3959f5ee4dcbb8a..a161ee13c63362ca8ee0f79090a2a8d4db18a591 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -574,13 +574,12 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 	struct rockchip_pmu *pmu = pd->pmu;
 	int ret;
 
-	mutex_lock(&pmu->mutex);
+	guard(mutex)(&pmu->mutex);
 
 	if (rockchip_pmu_domain_is_on(pd) != power_on) {
 		ret = clk_bulk_enable(pd->num_clks, pd->clks);
 		if (ret < 0) {
 			dev_err(pmu->dev, "failed to enable clocks\n");
-			mutex_unlock(&pmu->mutex);
 			return ret;
 		}
 
@@ -606,7 +605,6 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 		clk_bulk_disable(pd->num_clks, pd->clks);
 	}
 
-	mutex_unlock(&pmu->mutex);
 	return 0;
 }
 

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
