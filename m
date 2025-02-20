Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 773E7C021B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 18:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7rdLRK8dSzhPXOzuc+WqrWMwYOoKGQDAbLHaTPdBts=; b=1SokO+vLPXJ3cq
	rBst+fx/P5ofPf+mLPfZKgdxoXLSAAAXKqCIdDRSc4VC3wvtGpEKvs3ZHGScA1GNqqgNeNTsZBaaW
	zmNcK1QDurRVc+ONEv4eRhn7x2EHtQT0StxWRQZMbHkSrYgw7KIBSBpHa1eQQ21hPM5SySoW8w3nn
	J1YZBNojFlDtYXGUTjO4MMgYrHz6tNapD5K1uHwdWd7nBU3YKHyrxsVBJrXUp+PGkE/mQsy9qpS31
	wnlUx03lXy/Jyd6xOl1SXWSW0G7cTCq/c/wRjhBCctbTv3ne+0pbo/+Cfdf92VOWnw0C8/N4lYL0f
	qEK+yXE2+wpkfExCcsKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBlZ-00000002Ulz-2BzB;
	Thu, 20 Feb 2025 18:59:21 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tlBkp-00000002UaM-1sYE
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Feb 2025 18:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740077913;
	bh=GLMHpN3R06jn1QGPa+raIrP/SKC8LazQwv+Nx7GIz9s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=H3oO+Axc9hvxQvhxEIChQlZ61ETywsprmiC6eBV5e3RHhFYI17kCS2xY9kZlcoin9
	 jjlyHuws5xUkpcxEoFvQa0T9+i7FY7zw4PjEosMic4QM88SCIkN/sUWGTpCYjsQj5f
	 1ZKrpTFgVwW8ZHkDLRTkdqUumgZhmRQXg3mM01ywU/+77u2O7xyI4RjdLso35S1YFZ
	 /JEMRYO4ot1LqBQu26k21KnjcNBGqB4EOeqGf+AnCHSwQo+zRorQZ6RL6QN5Gk+vRc
	 tKVabWbEhJfKCdcaQYA68qCJlu32UPMP/iIaLnYP93pTxqDu+UGemRZMqhH51T5uwb
	 Wf9zAlcEvldKg==
Received: from jupiter.universe (dyndsl-091-248-085-196.ewe-ip-backbone.de [91.248.85.196])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5E8A017E1247;
	Thu, 20 Feb 2025 19:58:33 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0ED0A480039; Thu, 20 Feb 2025 19:58:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 20 Feb 2025 19:58:07 +0100
Subject: [PATCH v6 4/8] pmdomain: rockchip: reduce indentation in
 rockchip_pd_power
MIME-Version: 1.0
Message-Id: <20250220-rk3588-gpu-pwr-domain-regulator-v6-4-a4f9c24e5b81@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2565; i=sre@kernel.org;
 h=from:subject:message-id; bh=GLMHpN3R06jn1QGPa+raIrP/SKC8LazQwv+Nx7GIz9s=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGe3e1jX6bntbKZnlXudz868/4HS7CWVnKWDX
 zPOcSFzKUJjfokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJnt3tYAAoJENju1/PI
 O/qa+aAP/0w7Dh1H1KG7hiCI2fYqXKZTGa2+QNuFvRplr+fZh1cGbWobeRgTgLb25eJmRsgO8Pb
 5w8Z2pEU9T9DToKksuX0YAlkskVIpG5251hCvnb4tVH+3bFpOtGba/FnE5c3U6LMnUvewz38P6f
 K8jqqIH1l9aFf6JdAX0QY/Jf0Pj3G738V0g0wIoBt81bSIZ7JcWdBomFoKBpXE50+bAGOeU9NFF
 gXLttpi10rv16x+GfabM+bTuA1AAlBTtTw5pS/naqyyVUc0khBM1acTGJKr1Ndm2Q414miMsmZI
 vMssY7YG1SBMuhl7GjJOmdRZP/EjqIePelm/QQf71zdVMwfTFpxyQsueyJ/pwygL6z/5Hul8tBZ
 Wvu2gz1ZOJrR3OHFzBRJHe3qWNPDke/eOyHFRphpDKCRPkeAN1NK324h/+e5EEjMlI1yXShAQAU
 7LfQOTSldxhg7xw//+5hp8RkIARzpshqTzBftpJtNY1pzOHdoZF9b5JwKiazME37tacaUMw6486
 aindSNzLvGwrmv6XhWQolScXkI1CX9pU13122+3YISUjhsqu9pSkX6benUCObFmbgrof9/BZF6A
 qoSnEBfMiaR4MbCEZEZpZfIPpdhqwCW9h2fUGjAYBIKuxIdX7k67yZqSrMog+toLJ/dyVLviGaU
 i77kDzGpOCAtEoqR4e5gsvg==
X-Developer-Key: i=sre@kernel.org; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_105835_665130_E143FC76 
X-CRM114-Status: GOOD (  14.67  )
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

Rework the logic, so that the function exits early when the
power domain state is already correct to reduce code indentation.

No functional change intended.

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Heiko Stuebner <heiko@sntech.de>
Tested-by: Adrian Larumbe <adrian.larumbe@collabora.com> # On Rock 5B
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pmdomain/rockchip/pm-domains.c | 49 +++++++++++++++++-----------------
 1 file changed, 25 insertions(+), 24 deletions(-)

diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
index 8f440f2883db88e22fde7ed9b235982d3030416e..f4e555dac20a32978d71092dbe66cdd1226b8ac1 100644
--- a/drivers/pmdomain/rockchip/pm-domains.c
+++ b/drivers/pmdomain/rockchip/pm-domains.c
@@ -582,39 +582,40 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
 
 	guard(mutex)(&pmu->mutex);
 
-	if (rockchip_pmu_domain_is_on(pd) != power_on) {
-		ret = clk_bulk_enable(pd->num_clks, pd->clks);
-		if (ret < 0) {
-			dev_err(pmu->dev, "failed to enable clocks\n");
-			return ret;
-		}
+	if (rockchip_pmu_domain_is_on(pd) == power_on)
+		return 0;
 
-		rockchip_pmu_ungate_clk(pd, true);
+	ret = clk_bulk_enable(pd->num_clks, pd->clks);
+	if (ret < 0) {
+		dev_err(pmu->dev, "failed to enable clocks\n");
+		return ret;
+	}
 
-		if (!power_on) {
-			rockchip_pmu_save_qos(pd);
+	rockchip_pmu_ungate_clk(pd, true);
 
-			/* if powering down, idle request to NIU first */
-			rockchip_pmu_set_idle_request(pd, true);
-		}
+	if (!power_on) {
+		rockchip_pmu_save_qos(pd);
 
-		ret = rockchip_do_pmu_set_power_domain(pd, power_on);
-		if (ret < 0) {
-			clk_bulk_disable(pd->num_clks, pd->clks);
-			return ret;
-		}
+		/* if powering down, idle request to NIU first */
+		rockchip_pmu_set_idle_request(pd, true);
+	}
 
-		if (power_on) {
-			/* if powering up, leave idle mode */
-			rockchip_pmu_set_idle_request(pd, false);
+	ret = rockchip_do_pmu_set_power_domain(pd, power_on);
+	if (ret < 0) {
+		clk_bulk_disable(pd->num_clks, pd->clks);
+		return ret;
+	}
 
-			rockchip_pmu_restore_qos(pd);
-		}
+	if (power_on) {
+		/* if powering up, leave idle mode */
+		rockchip_pmu_set_idle_request(pd, false);
 
-		rockchip_pmu_ungate_clk(pd, false);
-		clk_bulk_disable(pd->num_clks, pd->clks);
+		rockchip_pmu_restore_qos(pd);
 	}
 
+	rockchip_pmu_ungate_clk(pd, false);
+	clk_bulk_disable(pd->num_clks, pd->clks);
+
 	return 0;
 }
 

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
