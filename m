Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EB660A3832
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 17:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=btG7v7et;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=mAYKqsm9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=pSp5yu/bZmlo/VHN6wbR6ZOlQTG4d4LK7vxSWBbytgI=; b=btG7v7ethxTQTbW3yjF0H2zt/o
	hCE3TaYjY/EGRoRPzgjk2kynsZvifT9SbsNfvem8YCowunNKfabkBrc7i1Nas4O/jMoTgQpSExv69
	Tw+D0RPLk72MGOHUbnnesOu26Ow+hIAEuY7b9GL/JfnvSu6fGjGFdaxcbKqmzZsGTh8xQrmnCyGzR
	5hV4ivgdrFLVdq5H8s8pm91jdS9JWU0M59AB5Y7gGNAePsRQYh6BTlFEH3zTPtTHsKPqzZ8oW0NLj
	xqZrPkHkok9cWHqzLhpV05AN6qL+q3v+KTfr164Kn090l/lP5FsLWOgwERyuyfGK0Sm17vqQY2f/B
	dBBU89iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQpVZ-00000004eEc-1GSu;
	Tue, 10 Nov 2026 17:19:45 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQpVW-00000004eBi-0F60;
	Tue, 10 Nov 2026 17:19:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1794331179;
	bh=cEdOypZJGYYFaGv+bcDJnJcN+5GsC8u8XziW0E9RE2s=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=mAYKqsm9ZOnzXlda1nPeTj2Ncisqjvl1U+P9t6ev7BkqUgqVqMP4DEG6xwc47tQwT
	 IMLJWyZesRDqzoTdM3aD42GPQskf3bGy5KxyrFZgzNtHNe6SDXfEZbjChbJlh+fint
	 nXPN88xEwsidV9G6u50EFeuxvpusnZw3y1wKbXyYrk3OjMSUn4IFYe7eENY1cTR/Cq
	 hz23vehC89Jkq59apl5ebU4vyJkqdQmp/iYOY6B2rhWhJjbJ1bLkgmugvfC1xrv0pC
	 LlUh2MEqxDTZ0A6rIsef0+HqzFOK9cwI96QJPE4txkfJaQnsYJBIWjPUlWC7KFrdZu
	 W5AqpIXPgWljA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 56CE117E0F7F;
	Tue, 10 Nov 2026 18:19:39 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0E4CC480031; Tue, 10 Nov 2026 18:19:39 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Tue, 10 Nov 2026 18:19:16 +0100
Subject: [PATCH v5 3/6] phy: rockchip: inno-usb2: ignore reset_control
 return codes
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261110-phy-rockchip-inno-usb2-clock-fix-v5-3-d2e24582ab22@collabora.com>
References: <20261110-phy-rockchip-inno-usb2-clock-fix-v5-0-d2e24582ab22@collabora.com>
In-Reply-To: <20261110-phy-rockchip-inno-usb2-clock-fix-v5-0-d2e24582ab22@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 William Wu <william.wu@rock-chips.com>
Cc: linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Igor Paunovic <royalnet026@gmail.com>, kernel@collabora.com, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2877;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=cEdOypZJGYYFaGv+bcDJnJcN+5GsC8u8XziW0E9RE2s=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGrzUioU83y55RoTcW5M4EslBdwW6sK1ipqKr
 dtG6ZQTX3KkjokCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJq81IqAAoJENju1/PI
 O/qapDoP/i8/CpMikDpZoqzjI0sxHyT9WjX7mRUHxuokQDn0KhQ5GF0zcPJUmmR+FCVtLVyy5t+
 mxuypXYJrmu1A2DQejqdpgKpjWy6KBTRRI+lXBI33uW0wMWafP+ZFhg63RUn16zRI+GR6XswxL3
 uclKwZRgy3+iEcsGlQ5M1nTnUyjXnMTpwZhNsyF57JYKEpFFey7minYTVXjtRBMXVeG8KV4V/Gs
 YtJ8inxOR8tyeYJZeFlrkqy9Aqpk7gMmobflFktUZJp5uncL2UaUPShU7xzFm3oNa6AZH/Hd4sp
 3SoDSyDs9RfIaqHhTENfkyCJeiASxe1PCd3Oha7hAK1Rr0yOaDMaF/BLRq3gm24vEFGlRZDbAxu
 pP4wMqZZCd4JudlNUgCUufPigJBvkhSWvWM8WellnAXLnO2Rc5d9umtDMGKRQHkea9tyaCRNkF2
 noqAVuQY+nbtpbBXLiONqOEAqw6o0jiBNZsMksD2HRXzuFECUbih4fBG816iL9YV/U+Ytd+jB9W
 mQjjYHtIZ19rMtDkKxoXQdPjfZbMFbmu4ib+/tznc0uIhWGk2EQmvwEwt0ZKxjdFQpeQm0X0yP2
 5cumy1AbUAa6OTprXTWd5LQjLsLmj2YkPLgY4wgLnmzIIzaUPXjkMie4ccA03IUW4uGFEUd2LpH
 dslJEkUf96da5jTH+tz8c0A==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261110_091942_266655_EB0279C6 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Asserting or deasserting reset lines for the Rockchip MMIO based reset
controller never fails. Drop error handling for it from the driver to
simplify the logic.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 31 ++++++---------------------
 1 file changed, 6 insertions(+), 25 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index a705c4b18bd4..6b3104901695 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -290,23 +290,12 @@ static inline bool property_enabled(struct regmap *base,
 	return tmp != reg->disable;
 }
 
-static int rockchip_usb2phy_reset(struct rockchip_usb2phy *rphy)
+static void rockchip_usb2phy_reset(struct rockchip_usb2phy *rphy)
 {
-	int ret;
-
-	ret = reset_control_assert(rphy->phy_reset);
-	if (ret)
-		return ret;
-
+	reset_control_assert(rphy->phy_reset);
 	udelay(10);
-
-	ret = reset_control_deassert(rphy->phy_reset);
-	if (ret)
-		return ret;
-
+	reset_control_deassert(rphy->phy_reset);
 	usleep_range(100, 200);
-
-	return 0;
 }
 
 static void rockchip_usb2phy_clk_bulk_disable(void *data)
@@ -559,9 +548,7 @@ static int rockchip_usb2phy_power_on(struct phy *phy)
 	 * please keep the common_on_n 1'b0 to set these blocks
 	 * remain powered.
 	 */
-	ret = rockchip_usb2phy_reset(rphy);
-	if (ret)
-		return ret;
+	rockchip_usb2phy_reset(rphy);
 
 	/* waiting for the utmi_clk to become stable */
 	usleep_range(1500, 2000);
@@ -1479,16 +1466,13 @@ static int rk3528_usb2phy_tuning(struct rockchip_usb2phy *rphy)
 
 static int rk3576_usb2phy_tuning(struct rockchip_usb2phy *rphy)
 {
-	int ret;
 	u32 reg = rphy->phy_cfg->reg;
 
 	/* Deassert SIDDQ to power on analog block */
 	regmap_write(rphy->grf, reg + 0x0010, GENMASK(29, 29) | 0x0000);
 
 	/* Do reset after exit IDDQ mode */
-	ret = rockchip_usb2phy_reset(rphy);
-	if (ret)
-		return ret;
+	rockchip_usb2phy_reset(rphy);
 
 	/* HS DC Voltage Level Adjustment 4'b1001 : +5.89% */
 	regmap_write(rphy->grf, reg + 0x000c, GENMASK(27, 24) | 0x0900);
@@ -1501,7 +1485,6 @@ static int rk3576_usb2phy_tuning(struct rockchip_usb2phy *rphy)
 
 static int rk3588_usb2phy_tuning(struct rockchip_usb2phy *rphy)
 {
-	int ret;
 	bool usb3otg = false;
 	/*
 	 * utmi_termselect = 1'b1 (en FS terminations)
@@ -1524,9 +1507,7 @@ static int rk3588_usb2phy_tuning(struct rockchip_usb2phy *rphy)
 	regmap_write(rphy->grf, 0x0008, GENMASK(29, 29) | 0x0000);
 
 	/* Do reset after exit IDDQ mode */
-	ret = rockchip_usb2phy_reset(rphy);
-	if (ret)
-		return ret;
+	rockchip_usb2phy_reset(rphy);
 
 	/* suspend configuration */
 	regmap_write(rphy->grf, 0x000c, GENMASK(20, 16) | suspend_cfg);

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
