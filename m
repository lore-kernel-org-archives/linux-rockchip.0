Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74646CCF9E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 12:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3QKQVMON15PyUAVmJVQqalNPZdRX0fMBInHrROpJcOA=; b=TEoYA9AA4rKOPD
	vlNU5se1sGmYKGStHp/BnIGK8iE2F5d7DTaNgPKUdhvtpPd4n1F5FcJPZQWVIL0kxTa3xxPXOGuG7
	7UaaZdpGGN2m0FbmovT/ji164zSJ3Ku2CWv+ZcLON6X08M4AkiyOR6vENeUQdBhR97XrSU1leQOh1
	iVAYQAMKNRUTPuNv0SXlyGkUHRiFJZ2yd+njcG1id8wo7uAs4JX3pZaDjbRjc8pGc/r9Dqf5g5N9l
	N0RwBL3MGJb6thDGbQABgjoPkbQ+x4vFBHv8CiA0RFeKp6eDrHQ3wpO85mYLZC1/3oCiydCKT/WOb
	Fv+mrZ7QyBUET4BiieLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJi-0000000DtM5-0bOw;
	Mon, 27 Oct 2025 12:27:18 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJe-0000000DtJq-3bcl
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 12:27:16 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqY031809;
	Mon, 27 Oct 2025 21:27:00 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/5] dt-bindings: arm: rockchip: Fix description for Radxa Rock2 Square
Date: Mon, 27 Oct 2025 12:26:37 +0000
Message-ID: <20251027122641.39396-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027122641.39396-1-naoki@radxa.com>
References: <20251027122641.39396-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_052715_115705_4CEDEDD5 
X-CRM114-Status: UNSURE (   7.69  )
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

The name 'Rock 2' is incorrect; 'Rock2' is correct. Fix this.

Fixes: d78084cdb5a95 ("dt-bindings: arm: rockchip: Correct the descriptions for Radxa boards")
Link: https://wiki.radxa.com/Rock2
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ba61ea7436132..6ef377e66b1fb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -973,7 +973,7 @@ properties:
           - const: radxa,rockpis
           - const: rockchip,rk3308
 
-      - description: Radxa Rock 2 Square
+      - description: Radxa Rock2 Square
         items:
           - const: radxa,rock2-square
           - const: rockchip,rk3288
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
