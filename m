Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADDC7D3B7E5
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Dec 2025 04:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOmpdodvDlKt6DKy62wFVg8h/M29KW/mCQnU1/t4log=; b=O916sxXbQj9jKY
	8xd6zIOEhviTruCNGRb4ovuLle+rkVNETe5jXE/KbIGJUR7jfZrpkRPu9Ionq2I4r7F1O3ULZ9RPQ
	/J42Asqg54epcqbpiPcaoA1Ey4xwH5XDJhhCeCrfML9B07Li1fDUR2qpMm/2KLS9nlJ00boWTZhnm
	2re83NbLWd70HFLsMu8UxVAZPPMBdWqkXszX9QhOUcYjgFFkZNccMi6kg7UXrb4hZq0VrNh0mZZFH
	XLOOxFmUpkXaZtkXSrygbx0+JjKoOOrSo34aSuA2sALWyVwI/20yzfFuf56W9ISunMkP/Cljkf/4/
	wAjAUwaEy79DQMWB02mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va5Li-00000003KcN-1XeO;
	Mon, 29 Dec 2025 04:59:18 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1va5Lf-00000003Kbd-38AM
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Dec 2025 04:59:17 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5BT4wkSE012448;
	Mon, 29 Dec 2025 13:58:49 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        i@next.chainsx.cn, kever.yang@rock-chips.com,
        michael.opdenacker@rootcommit.com, honyuenkwun@gmail.com,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/2] dt-bindings: arm: rockchip: fix description for Radxa CM5
Date: Mon, 29 Dec 2025 04:58:38 +0000
Message-ID: <20251229045838.2917-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251229045838.2917-1-naoki@radxa.com>
References: <20251229045838.2917-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251228_205915_999636_8A354E81 
X-CRM114-Status: UNSURE (   6.59  )
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

"Radxa CM5" is the correct name[1], so fix the description. While at
it, move the CM5 entry after the CM3I.

[1] https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 .../devicetree/bindings/arm/rockchip.yaml          | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 410a9715a0fc..59a7aed538b4 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -907,13 +907,6 @@ properties:
           - const: radxa,cm3
           - const: rockchip,rk3566
 
-      - description: Radxa Compute Module 5 (CM5)
-        items:
-          - enum:
-              - radxa,cm5-io
-          - const: radxa,cm5
-          - const: rockchip,rk3588s
-
       - description: Radxa CM3I
         items:
           - enum:
@@ -921,6 +914,13 @@ properties:
           - const: radxa,cm3i
           - const: rockchip,rk3568
 
+      - description: Radxa CM5
+        items:
+          - enum:
+              - radxa,cm5-io
+          - const: radxa,cm5
+          - const: rockchip,rk3588s
+
       - description: Radxa E20C
         items:
           - const: radxa,e20c
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
