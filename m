Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AF345CDE001
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jun 2026 17:40:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uH/DnXgjq9GDLhPtAqJDGTSzCxqau7C5/KZd9vYic0=; b=HmKQ3YdPHQyL7N
	F1AA9oT8KwwgaW4ignpPFGs7tD0HvUMLrbL+s2ZH+NUBOlzlaBELPkThs7JcXR5+c2G3GR5jPmRoC
	UI+C7MPo/hWlYJgiruTwvr6S6VINB1+PocSctaySfTtDl0IwGS1f5BdYfW9eNNxEJuyG6pxwjrh6G
	6f0I/kI9hiKmLyucEuxBfwrDGC1rcnQJ7X9klhGtOIAvDveASP9Gzc1pjckLFHj0skDdtAtwrnA1R
	FEvxiN4747UeCVk+EYHypeAL67ihw/ZiTBY0QJUTOU9VUfp+p8eVeURpWSZdb8gH1LK5huCEoGMRs
	D1Og5+4tzlqzDsYUu/CQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wco47-00000009aRT-0UaX;
	Thu, 25 Jun 2026 17:40:39 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wco3H-00000009ZUi-1mF8;
	Thu, 25 Jun 2026 17:39:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1782409180;
	bh=GddMKGozg9gwmZ5S+Q3mmfUg3GzcQJNKOpZTsWGf7kM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=qzsD2AMrjRZOCIrAhap+0Bxu5YKa+aVqR0nz93cBMGHPdugsswcbdKW/RZ9jyC/el
	 lyMYvNi7X2rntpvziUy2sFqB9avfVRJkVFO8+OAfTXqomwCapHC4DMDV0zox5yjOoE
	 aDVumBj/mUjdy+uGEmV5cOaZDse+9GG0KTFMPGopJTYaR6uAEJ79rGyBYXBVO5/0A5
	 bgvqhXrX5cxsIBxWpU4uGVesK33WJIFcyP0cRNoxCBnkGiwzsVEZi2SNEA9e13LiNR
	 tvQpN2mQLh26o6N0OVWdRffZXUg470A4dggQlZUVWrru/j9KyTrE/QGzAlyZ7tPQ7v
	 WE27oZSCQavrw==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A43D217E120F;
	Thu, 25 Jun 2026 19:39:40 +0200 (CEST)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 03906480035; Thu, 25 Jun 2026 19:39:40 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Thu, 25 Jun 2026 19:39:34 +0200
Subject: [PATCH v7 07/27] phy: rockchip: usbdp: Handle
 rk_udphy_reset_deassert_all errors in init check
MIME-Version: 1.0
Message-Id: <20260625-rockchip-usbdp-cleanup-v7-7-38eb3cf654fd@collabora.com>
References: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
In-Reply-To: <20260625-rockchip-usbdp-cleanup-v7-0-38eb3cf654fd@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Frank Wang <frank.wang@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Andy Yan <andy.yan@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, 
 Yubing Zhang <yubing.zhang@rock-chips.com>, 
 Alexey Charkov <alchark@gmail.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, kernel@collabora.com, 
 devicetree@vger.kernel.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Sashiko <sashiko-bot@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1503;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=GddMKGozg9gwmZ5S+Q3mmfUg3GzcQJNKOpZTsWGf7kM=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGo9Z9tbEOmsLqXmD84ICXbdkCNDeviYBp6rB
 JAVGokozVj2k4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJqPWfbAAoJENju1/PI
 O/qaOgUP/jWwehlH0XXSCqRCqRXJXm3ri3zYUrawrNoLFIEsOfkvMbQEZ/8WLcNjam4+1YCVcaR
 y9ksf8zLEPjTLXXg2Lzs5QSijanHBJUqFlE26sIrcC9vQSH5iBc+ZTwY1yyMWDUFBrdWKsEfWtc
 lIeTC32MWV3H/IpgGWjuHW9RhpbckmIfXptxjYX0Vj2Nq7N0hpfOPteBHbb2Oi76sQ+7cAUgsYZ
 w5PGlAxZdABJYFsf9mNK7bvCQ021BC20pvgZ/9JHvwl/I/jISoOWF34HrsDavwRK67cGKybKD+8
 yegeyV1OlMGrznzkczZRXyQaTRJd6xNXOXVt1Ft1lvMlXAegiE6XvsV2iBd6YPj6bi9EUHvxjNo
 +U/sJKog4ac/yvHnLmnRMBsjnD5ivkLz19GRA62SPC+EZrhS5fku/80kk4IoUcvn0xc56Orddv5
 2E+/KDf6VDBA3BVvvLBop21XBEXj2Fx+8jGZ0hd8Q54vUfAOsslDtmhFum6ke4C4QU7a+Hw+n0q
 P3xqUlBMUFFhBSX5a5TCnj74ECdAmTTXG4p08///gtnEPGcXFZL6/39q0toQJfih5XS4LovllN7
 6dAX6E8mUDPNriFnZ9l60q95MY1bwgnnrq/kjSyYbyhNmWs2FHWMVo8SqTb46+CK41E0A5+ZwOy
 jmcRDd1FyNGqDb22EuXEslQ==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260625_103947_641941_B152DE19 
X-CRM114-Status: GOOD (  10.71  )
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

Fix theoretical issue, that failure to deassert the reset lines would
result in an SError in follow-up register access. Note, that this cannot
happen with current code, since the Rockchip reset driver never returns
any errors for (de)asserting reset lines.

Fixes: 2f70bbddeb45 ("phy: rockchip: add usbdp combo phy driver")
Reported-by: Sashiko <sashiko-bot@kernel.org>
Closes: https://sashiko.dev/#/message/20260619154903.2225A1F000E9%40smtp.kernel.org
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/phy/rockchip/phy-rockchip-usbdp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-usbdp.c b/drivers/phy/rockchip/phy-rockchip-usbdp.c
index 7fa3cd519577..121dd78d8c16 100644
--- a/drivers/phy/rockchip/phy-rockchip-usbdp.c
+++ b/drivers/phy/rockchip/phy-rockchip-usbdp.c
@@ -935,15 +935,18 @@ static int rk_udphy_get_initial_status(struct rk_udphy *udphy)
 		return ret;
 	}
 
-	rk_udphy_reset_deassert_all(udphy);
+	ret = rk_udphy_reset_deassert_all(udphy);
+	if (ret)
+		goto exit;
 
 	regmap_read(udphy->pma_regmap, CMN_LANE_MUX_AND_EN_OFFSET, &value);
 	if (FIELD_GET(CMN_DP_LANE_MUX_ALL, value) && FIELD_GET(CMN_DP_LANE_EN_ALL, value))
 		dev_dbg(udphy->dev, "Started with DP PHY pre-enabled; seamless takeover unsupported\n");
 
+exit:
 	rk_udphy_disable(udphy);
 
-	return 0;
+	return ret;
 }
 
 static int rk_udphy_parse_dt(struct rk_udphy *udphy)

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
