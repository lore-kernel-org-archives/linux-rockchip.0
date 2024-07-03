Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20851C31D97
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jul 2024 21:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjh+9250jP5NPBcWcXl8OALNJTERIlZXF182FZcKtl8=; b=aDkp2gN9fXqdxS
	WWcFXa7Bjr96e3E0tRgnHEGemyOAUxSxtadUGoqI96y5seLXaxDNTFUODUxLVAz+e7OR4C9hWDAu/
	qPGelE3xWVHDpkQ/oRaBKO46+moQnKYXkCD2xMp6QDwwXsegUovzfDOro8VtNRDnTbZAr2TZ/skGL
	9JzZwIVutDxpWHk65U9rNOJCfmzb64uyF0Y7BXGKPuVyvkCCwXDYRqjv6yt5s6j1xaT9CVyg9QOq0
	9ZV0N4UpIC5+R/fQO+ghQfbN0bEMGjspWv6sfJjXFSUBFLZcwaP8xVqaF4D4LkqwnDvyRdcuItiQx
	VDwT7U/Irx/3OeoqP7fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP7As-0000000BRiH-30AU;
	Wed, 03 Jul 2024 21:05:58 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP7AV-0000000BRa0-0AT6;
	Wed, 03 Jul 2024 21:05:36 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sP7AR-0000bE-Um; Wed, 03 Jul 2024 23:05:32 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Rock 5 ITX board
Date: Wed,  3 Jul 2024 23:05:23 +0200
Message-Id: <20240703210524.776455-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240703210524.776455-1-heiko@sntech.de>
References: <20240703210524.776455-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_140535_095449_654ED57A 
X-CRM114-Status: GOOD (  10.17  )
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

Add devicetree binding for the Rock 5 ITX board, build around the rk3588.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d2e887415d5dc..7ddb008f52d1a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -826,6 +826,11 @@ properties:
           - const: radxa,rock-5b
           - const: rockchip,rk3588
 
+      - description: Radxa ROCK 5ITX
+        items:
+          - const: radxa,rock-5itx
+          - const: rockchip,rk3588
+
       - description: Radxa ROCK S0
         items:
           - const: radxa,rock-s0
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
