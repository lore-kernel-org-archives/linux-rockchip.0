Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0297AC10F1E
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Dec 2022 18:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aDcWpYQRO8JRt/grHYGl54VSZ9m3SNNMfTriHsbLx+0=; b=nS4y3AeVVTu8sP
	NcGWC9VYwmYgeF9lcQETHU6EQDAzFtSNfxl8WAfkDKdLsW9caXMrjzXGZq1Pv54aiXky1klvx4OZp
	LGfC28akCthgNxsUEJdYzcMkumlZk3tGNhcZVaflJJktRYQTRBcGEcSTMPHChxopte007HyS3/EIj
	1iHWwdfi8VtWtdRz7ZbFL550Zrh2kqZDms5Gl55hoR4dyE/4Kb2cNts5HTPYB65piJAuxOGJFmHPm
	rLReOurhfLiKgZ6nUxvbd8f7p4IQOt0/H3p6yQrW1RS+buOqipuiWC43UopUVT6Lj1l5PTUmmwyaa
	RCKH9S5jMcU4cfWiizhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5WPD-001ZI4-JX; Wed, 14 Dec 2022 18:22:59 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5WP9-001ZAH-V9
	for linux-rockchip@lists.infradead.org; Wed, 14 Dec 2022 18:22:57 +0000
Received: from jupiter.universe (dyndsl-095-033-169-234.ewe-ip-backbone.de [95.33.169.234])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C1FC06602C57;
	Wed, 14 Dec 2022 18:22:51 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671042172;
	bh=zYg5nCokcy866/8jKO2IF2lPkdh1Z3ovmSRbI9equCY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=laEGYynq7MxKl27taN1eFYB0S2Y8N0FnuhmXrpZzNfYzvU4QIseu9dbT/1x4RXNXl
	 rHDccf+machd7qCk3x4Ahb+XqWIPj93hX4kjRfKR9lIAQXwJH4zmvAdPl3QszrLr/Q
	 kEHTcJyqAK3PnCR9X+6e8wJB87D7gd6/wULgphwVRWtKu8chg/X6wZkvnsoTTNBaYY
	 5RF7SfOHP5k+9VTS511c6Xk9fAFDnDPeX0U0FGU7OGXzT0tK3a22oirNy2LolWsioo
	 0PMFkQ0UjNkGV2jss3IlCRzRR8MOJBwFD9MT4epwBAeOiG4uWdi7fmxtr0G0kGghn3
	 2uKvpmolOd/gg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id C357048011B; Wed, 14 Dec 2022 19:22:48 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCHv6 4/7] dt-bindings: arm: rockchip: add initial rk3588 boards
Date: Wed, 14 Dec 2022 19:22:44 +0100
Message-Id: <20221214182247.79824-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221214182247.79824-1-sebastian.reichel@collabora.com>
References: <20221214182247.79824-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221214_102256_171273_4E2CD58A 
X-CRM114-Status: UNSURE (   7.59  )
X-CRM114-Notice: Please train this message.
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

Add DT binding documentation for the Rockchip RK3588 EVB1,
Radxa Rock 5 Model A and B.

Co-Developed-by: Christopher Obbard <chris.obbard@collabora.com>
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/arm/rockchip.yaml         | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c6c69a4e3777..49d442afe67f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -620,6 +620,16 @@ properties:
           - const: radxa,rock3a
           - const: rockchip,rk3568
 
+      - description: Radxa Rock 5 Model A
+        items:
+          - const: radxa,rock-5a
+          - const: rockchip,rk3588s
+
+      - description: Radxa Rock 5 Model B
+        items:
+          - const: radxa,rock-5b
+          - const: rockchip,rk3588
+
       - description: Rikomagic MK808 v1
         items:
           - const: rikomagic,mk808
@@ -704,6 +714,11 @@ properties:
           - const: rockchip,rk3399-sapphire-excavator
           - const: rockchip,rk3399
 
+      - description: Rockchip RK3588 Evaluation board
+        items:
+          - const: rockchip,rk3588-evb1-v10
+          - const: rockchip,rk3588
+
       - description: Rockchip RV1108 Evaluation board
         items:
           - const: rockchip,rv1108-evb
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
