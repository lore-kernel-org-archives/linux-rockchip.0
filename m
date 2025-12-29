Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FF98E8FDB1
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 07:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aU+4k44te2ydcy01hhXNVoBY9BLahQwP2xshJ0DBWL8=; b=vH6EaxeGrVf61I
	CJWSUAsbVOFuY/Cqxzq/qWFepzt7lZ6XkbVlzF3pwRP9H4QE5zi1EMHrsCWpFapq6Y3m0OMrwl6pb
	7uln411Ouxpkdd3HNLRnj8w0W6ZE1p1DqDy/w3sliywFdXt29fVw3gksOUOdNMbQDWlQHSatRf8Sd
	nBiXm531IM3/BQA6RpefhdDF0xFsRJ9litkqmYQ6zi1uS02yzW8GphZfJWWhNyQduBklqdMBoL80t
	qcVscdnTer7xz7DAZEyHQH34eRGrR3qzU2m7Mznc56pWpYMI3tXRkNPgX9pyxrIlZ5l4w9ds6TKCz
	Y+fILci51Oumn53hbniQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va7qb-00000003RKG-0Ca1;
	Mon, 29 Dec 2025 07:39:21 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va7qY-00000003RJA-15eB
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 07:39:19 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5BT7cluQ012783;
	Mon, 29 Dec 2025 16:38:47 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, kever.yang@rock-chips.com,
        jonas@kwiboo.se, michael.opdenacker@rootcommit.com,
        honyuenkwun@gmail.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
        alchark@gmail.com, pbrobinson@gmail.com, ziyao@disroot.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [RFC PATCH 1/3] dt-bindings: arm: rockchip: Add Radxa CM3J on RPi CM4 IO Board
Date: Mon, 29 Dec 2025 07:38:38 +0000
Message-ID: <20251229073840.25516-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251228_233918_521121_9A4F5B47 
X-CRM114-Status: UNSURE (   5.16  )
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

The Radxa CM3J is a feature rich industrial compute module developed
by Radxa, based on the Rockchip RK3568 SoC. [1]

Add devicetree binding documentation for the Radxa CM3J on RPi CM4 IO
Board.

[1] https://dl.radxa.com/cm3j/docs/hw/radxa_cm3j_product_brief_Revision_1.0.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 59a7aed538b4..d344a284e538 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -914,6 +914,13 @@ properties:
           - const: radxa,cm3i
           - const: rockchip,rk3568
 
+      - description: Radxa CM3J
+        items:
+          - enum:
+              - radxa,cm3j-rpi-cm4
+          - const: radxa,cm3j
+          - const: rockchip,rk3568
+
       - description: Radxa CM5
         items:
           - enum:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
