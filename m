Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B192D185DA
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Jan 2026 11:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HRujGgAguKGqiM9zfuEifpqGMl30fN6V2nZYMFNwUnk=; b=FjHcgmkyOz0KYh
	V4Cq/pLIRXKMKR93jxwwEgkRe9hNv2bU2rr8cb0tJ7PR/m41+P1Da9BmfEOAhINXqdeX2dP9PWwwy
	JrZ6BQaVnE/zj6pZfBTnXZYqx++jFqSkmhrhRCWN7LUAHKFlKI3ZfgIetbDG5grCBe9ZMSIoCgLap
	UmBSYoD9YhgYa3SKv3qT6kZOrzfAdgm89cESEzIwIr9Gh7wOff7dLAnXdXZ3AdB8Vlwpx5SOeWJAg
	3jI0ooQEBPXcvsV4KHQfF/W1mBCT6fAvBCNgH1owN9iU9lo7jhbyqu++4nitZDuJJ8i+jTNfZQi/i
	af/v3sPz9kKR7b3+E6sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdoHV-0000000Gran-2UFS;
	Thu, 08 Jan 2026 11:34:21 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdoHS-0000000GrYf-2GZc
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Jan 2026 11:34:20 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 608BXjVW009034;
	Thu, 8 Jan 2026 20:33:45 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, jonas@kwiboo.se,
        honyuenkwun@gmail.com, inindev@gmail.com,
        michael.opdenacker@rootcommit.com, chaoyi.chen@rock-chips.com,
        quentin.schulz@cherry.de, dsimic@manjaro.org, andrew@lunn.ch,
        alchark@gmail.com, pbrobinson@gmail.com, ziyao@disroot.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Radxa CM3J on RPi CM4 IO Board
Date: Thu,  8 Jan 2026 11:33:39 +0000
Message-ID: <20260108113341.14037-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260108_033418_793048_7F7E7466 
X-CRM114-Status: UNSURE (   5.41  )
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
Acked-by: Rob Herring (Arm) <robh@kernel.org>
---
Changes in v2:
- Collect A-b tag
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
