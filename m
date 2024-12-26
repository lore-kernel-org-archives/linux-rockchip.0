Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 959CEE7718E
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Dec 2024 02:47:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t5sV7Hv6x67Ws6sXt8N3CNfHFpYs5p8tP+7DmAsg4G8=; b=MAB7D67DSNuM6G
	e//+R8Jj4sghYFS2+IB+YWWHmQRvDzS6aJhOUjH1Mjy2dQ2lMPtYL1hdJ7dLf3aDcbWx2TZIr+wA6
	ki9AvXgPIrJuFQ7QmNGm8Y61zYDZfUsfykGgCyKN3VJmT76FCpROt2E9fAtVbtYbNRJ4qsPvhvmSj
	A7vPVCEsnqb3N92+Bt0DlPwGKLyRJDGbioIV+BqYGIH/F5jRxY3dqPlPp/XYPpW/CIbU9pnFVxEOV
	zhj5dcXLZLbV4M6sftAbbFaEtiiMtBJum5svfHbc3cvVTxrHrUkfJSksPV68xP/HGwTcNqpWG0lm6
	RgON7e2Uzf4wyIfEo9Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQdu9-0000000Ezpu-3Whn;
	Thu, 26 Dec 2024 02:47:17 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQdu5-0000000Ezo7-1YLv
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Dec 2024 02:47:15 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BQ2kbEL004300;
	Thu, 26 Dec 2024 11:46:39 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
Date: Thu, 26 Dec 2024 02:46:29 +0000
Message-ID: <20241226024630.13702-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241226024630.13702-1-naoki@radxa.com>
References: <20241226024630.13702-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_184713_629912_D72B75AD 
X-CRM114-Status: UNSURE (   6.86  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com, jonas@kwiboo.se, cfsworks@gmail.com, dmt.yashin@gmail.com, jbx6244@gmail.com, sebastian.reichel@collabora.com, tim@feathertop.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, michael.riesch@wolfvision.net, macromorgan@hotmail.com, krzk+dt@kernel.org, jing@jing.rocks, dsimic@manjaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add devicetree binding for the Radxa E52C.

Radxa E52C is a compact network computer based on the Rockchip RK3582
SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v3:
- Collect A-b tag
Changes in v2:
- Add "rockchip,rk3588s"
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..2152d170524a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -812,6 +812,12 @@ properties:
           - const: radxa,e20c
           - const: rockchip,rk3528
 
+      - description: Radxa E52C
+        items:
+          - const: radxa,e52c
+          - const: rockchip,rk3582
+          - const: rockchip,rk3588s
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
