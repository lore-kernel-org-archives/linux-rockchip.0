Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4B74CCF9EC
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 12:27:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F/yITIpX8KRdsJhCg2QJxMT6UGKqp7qNRZKVI8oIMWo=; b=MQmP7wDSGtoBaQ
	XZKL3/uLtSZDiFVbWJpuX3o8WV66f+eNAPL5kmZHMxqEsKnha5DUK5f7c+lXIRFjiIuGoUta7rjCN
	bDivr/E+5OqbSJWwAgF0xBQTwXFUvLgFZglIAx/1NseXAc9Bbpe88ikXeZzNkvvN2zDcoiXKSZI8t
	DIn3GWyPnMjM4BiWRkPNbSVj5zn4mf+aB6mhy4Smvp41Ewt4MdwAWXxqCYV7Wu08Bh3uoIYUiDIva
	1M4jd4macmz0LsKLJKbXgxa7giKsqdJCJED5063twxJLxTy4D0eArOlzFyMIfHTxyJYr0kDPipUMr
	Kynpp3CX0l3+uhvRSJTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJk-0000000DtNY-1fAH;
	Mon, 27 Oct 2025 12:27:20 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJe-0000000DtJp-3bfG
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 12:27:17 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqb031809;
	Mon, 27 Oct 2025 21:27:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 4/5] dt-bindings: arm: rockchip: Reorder the Radxa board entries
Date: Mon, 27 Oct 2025 12:26:40 +0000
Message-ID: <20251027122641.39396-5-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027122641.39396-1-naoki@radxa.com>
References: <20251027122641.39396-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_052715_117535_86AC23B3 
X-CRM114-Status: UNSURE (   5.91  )
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

Reorder the Radxa board entries alphanumerically, with the following
exceptions:

- Place "Rock2 Square" immediately after "Rock".
- Place "ROCK Pi N10" immediately after "ROCK Pi N8".
- Treat "Compute Module 3" as "CM3" for sorting purposes.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../devicetree/bindings/arm/rockchip.yaml     | 112 +++++++++---------
 1 file changed, 56 insertions(+), 56 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 70be7966f4d3e..eef2b8061101b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -918,6 +918,11 @@ properties:
           - const: radxa,rock
           - const: rockchip,rk3188
 
+      - description: Radxa Rock2 Square
+        items:
+          - const: radxa,rock2-square
+          - const: rockchip,rk3288
+
       - description: Radxa ROCK 2A/2F
         items:
           - enum:
@@ -925,16 +930,20 @@ properties:
               - radxa,rock-2f
           - const: rockchip,rk3528
 
-      - description: Radxa ROCK Pi 4A/A+/B/B+/C
+      - description: Radxa ROCK 3A
         items:
-          - enum:
-              - radxa,rockpi4a
-              - radxa,rockpi4a-plus
-              - radxa,rockpi4b
-              - radxa,rockpi4b-plus
-              - radxa,rockpi4c
-          - const: radxa,rockpi4
-          - const: rockchip,rk3399
+          - const: radxa,rock3a
+          - const: rockchip,rk3568
+
+      - description: Radxa ROCK 3B
+        items:
+          - const: radxa,rock-3b
+          - const: rockchip,rk3568
+
+      - description: Radxa ROCK 3C
+        items:
+          - const: radxa,rock-3c
+          - const: rockchip,rk3566
 
       - description: Radxa ROCK 4C+
         items:
@@ -951,48 +960,6 @@ properties:
           - const: radxa,rock-4se
           - const: rockchip,rk3399
 
-      - description: Radxa ROCK Pi E
-        items:
-          - const: radxa,rockpi-e
-          - const: rockchip,rk3328
-
-      - description: Radxa ROCK Pi N8
-        items:
-          - const: radxa,rockpi-n8
-          - const: vamrs,rk3288-vmarc-som
-          - const: rockchip,rk3288
-
-      - description: Radxa ROCK Pi N10
-        items:
-          - const: radxa,rockpi-n10
-          - const: vamrs,rk3399pro-vmarc-som
-          - const: rockchip,rk3399pro
-
-      - description: Radxa ROCK Pi S
-        items:
-          - const: radxa,rockpis
-          - const: rockchip,rk3308
-
-      - description: Radxa Rock2 Square
-        items:
-          - const: radxa,rock2-square
-          - const: rockchip,rk3288
-
-      - description: Radxa ROCK 3A
-        items:
-          - const: radxa,rock3a
-          - const: rockchip,rk3568
-
-      - description: Radxa ROCK 3B
-        items:
-          - const: radxa,rock-3b
-          - const: rockchip,rk3568
-
-      - description: Radxa ROCK 3C
-        items:
-          - const: radxa,rock-3c
-          - const: rockchip,rk3566
-
       - description: Radxa ROCK 5 ITX
         items:
           - const: radxa,rock-5-itx
@@ -1018,16 +985,49 @@ properties:
           - const: radxa,rock-5c
           - const: rockchip,rk3588s
 
-      - description: Radxa ROCK S0
-        items:
-          - const: radxa,rock-s0
-          - const: rockchip,rk3308
-
       - description: Radxa ROCK 5T
         items:
           - const: radxa,rock-5t
           - const: rockchip,rk3588
 
+      - description: Radxa ROCK Pi 4A/A+/B/B+/C
+        items:
+          - enum:
+              - radxa,rockpi4a
+              - radxa,rockpi4a-plus
+              - radxa,rockpi4b
+              - radxa,rockpi4b-plus
+              - radxa,rockpi4c
+          - const: radxa,rockpi4
+          - const: rockchip,rk3399
+
+      - description: Radxa ROCK Pi E
+        items:
+          - const: radxa,rockpi-e
+          - const: rockchip,rk3328
+
+      - description: Radxa ROCK Pi N8
+        items:
+          - const: radxa,rockpi-n8
+          - const: vamrs,rk3288-vmarc-som
+          - const: rockchip,rk3288
+
+      - description: Radxa ROCK Pi N10
+        items:
+          - const: radxa,rockpi-n10
+          - const: vamrs,rk3399pro-vmarc-som
+          - const: rockchip,rk3399pro
+
+      - description: Radxa ROCK Pi S
+        items:
+          - const: radxa,rockpis
+          - const: rockchip,rk3308
+
+      - description: Radxa ROCK S0
+        items:
+          - const: radxa,rock-s0
+          - const: rockchip,rk3308
+
       - description: Radxa ZERO 3E/3W
         items:
           - enum:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
