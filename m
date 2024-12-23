Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51C8FE7718D
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 11:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GoncdgFcn6tSN2IHhxgDkPbZ4MIocNh5cA3sZ4DRg0E=; b=CVGd5AnB4wqDRB
	RV8MeLhmwUSjvljdiyZsrb+GDVMRg4V+GLhZWUSxcpDllmwWqFT1KeVtya7P6PA+oBcg8oWNNonPK
	0JwnRrCwyctgpsqjm/dJCA+3T8rR/mP3bxJpnWhHO+gUNV2XSB+9dwPYHDTIreM9vlf2lntvVETWy
	TlUDu6ra47fzR9ZmuaAzhYamygbq9x8YaP6CuNI6FR2WsWLmyBlogUVac9R0nO9k9Pvv8i1aeH5Hr
	8ZD1mAfr5DBHuQUEBPAsAGeamnZwQd/WWBIxi5ODXV9wvHTyFb8jWl72kZ3lXqhiwP1V6XcysG+R8
	KMUOOKWJwvpx9oX2p31w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPgMg-00000009rpE-0ilf;
	Mon, 23 Dec 2024 11:12:46 +0000
Received: from mail-m3271.qiye.163.com ([220.197.32.71])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPgGx-00000009qYx-1j1b;
	Mon, 23 Dec 2024 11:06:52 +0000
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 68ea0150;
	Mon, 23 Dec 2024 19:06:46 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Rob Herring <robh@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-kernel@vger.kernel.org,
	Tim Lunn <tim@feathertop.org>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v3 5/7] dt-bindings: arm: rockchip: Sort for boards not in correct order
Date: Mon, 23 Dec 2024 19:06:35 +0800
Message-Id: <20241223110637.3697974-6-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241223110637.3697974-1-kever.yang@rock-chips.com>
References: <20241223110637.3697974-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkxDHVYZTB0dSkkdHhhJQhhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a93f332b4d603afkunm68ea0150
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTY6NCo6QjIXTQEVN0guGQsT
	SAEaCwtVSlVKTEhPQk5JS0tDSk1CVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIS0pNNwY+
DKIM-Signature: a=rsa-sha256;
	b=iGkxeeFCpdUTv3bKp+wW/NH4IVC6EgAjB050YMY/aswBEt2pQWHpTUPXLNF+2YaPxx4LQ+e44RR8vtTwZMltD+zAxxA4FMigEXBQZfjjT6qm0cp3JFsJeM7ujmY/6T62L7pRv7vVgb7YGXdd/ZEnWKYGsiysuaDJFmpUSq7mor8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=N1K2VnyUOqJ4B5E/eD8RKPLqp0gDhXgfq2tw0oZIl3A=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_030651_643451_A3E3A6DD 
X-CRM114-Status: UNSURE (   7.52  )
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

The board entries should be sort in correct order.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
---

Changes in v3:
- sort for all the board entries instead of two rockchip boards

Changes in v2:
- collect acked-by tag

 .../devicetree/bindings/arm/rockchip.yaml     | 54 +++++++++----------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..01439d7bbde9 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1006,6 +1006,16 @@ properties:
           - const: rockchip,rk3399-sapphire-excavator
           - const: rockchip,rk3399
 
+      - description: Rockchip RK3566 BOX Evaluation Demo board
+        items:
+          - const: rockchip,rk3566-box-demo
+          - const: rockchip,rk3566
+
+      - description: Rockchip RK3568 Evaluation board
+        items:
+          - const: rockchip,rk3568-evb1-v10
+          - const: rockchip,rk3568
+
       - description: Rockchip RK3588 Evaluation board
         items:
           - const: rockchip,rk3588-evb1-v10
@@ -1026,6 +1036,23 @@ properties:
           - const: rockchip,rk3588-toybrick-x0
           - const: rockchip,rk3588
 
+      - description: Sinovoip RK3308 Banana Pi P2 Pro
+        items:
+          - const: sinovoip,rk3308-bpi-p2pro
+          - const: rockchip,rk3308
+
+      - description: Sinovoip RK3568 Banana Pi R2 Pro
+        items:
+          - const: sinovoip,rk3568-bpi-r2pro
+          - const: rockchip,rk3568
+
+      - description: Sonoff iHost Smart Home Hub
+        items:
+          - const: itead,sonoff-ihost
+          - enum:
+              - rockchip,rv1126
+              - rockchip,rv1109
+
       - description: Theobroma Systems PX30-uQ7 with Haikou baseboard
         items:
           - const: tsd,px30-ringneck-haikou
@@ -1099,33 +1126,6 @@ properties:
           - const: zkmagic,a95x-z2
           - const: rockchip,rk3318
 
-      - description: Rockchip RK3566 BOX Evaluation Demo board
-        items:
-          - const: rockchip,rk3566-box-demo
-          - const: rockchip,rk3566
-
-      - description: Rockchip RK3568 Evaluation board
-        items:
-          - const: rockchip,rk3568-evb1-v10
-          - const: rockchip,rk3568
-
-      - description: Sinovoip RK3308 Banana Pi P2 Pro
-        items:
-          - const: sinovoip,rk3308-bpi-p2pro
-          - const: rockchip,rk3308
-
-      - description: Sinovoip RK3568 Banana Pi R2 Pro
-        items:
-          - const: sinovoip,rk3568-bpi-r2pro
-          - const: rockchip,rk3568
-
-      - description: Sonoff iHost Smart Home Hub
-        items:
-          - const: itead,sonoff-ihost
-          - enum:
-              - rockchip,rv1126
-              - rockchip,rv1109
-
 additionalProperties: true
 
 ...
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
