Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8593ECCF9EA
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 12:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xU5nWy4PyoGz8WNYtmaPlRXnu6IB4EmOXjq6MHqhcU=; b=pZETguJAwmo4AT
	N0lKoq7U5ZagBjQ4PUfvYKlC99p4FXRMjS8gU6eFZP+LqHhToR1lKIPIzStZ/kmP7wuk8LX8vFr6P
	3iax/AI0YDxm3GK8h4wJlTPyFxocZRk30j1fp2wBEG0yAH8qjWc2DXlc8rCoWEvHcxJtNsm9a3mEe
	g485NoNzmDXub+Uq4ohPjKV34r5HWIq55GtIT2ghy6u8wljm3n9F90EdL/9u14KovQuZhwCQv4OZ0
	UWDXFEAwbw5GvBqPnLpex7/eLaA/2RTd0dhuSGQoU3ZjyPkxOzTeYar3Yna3ZzsbkfpqWepOX1fMs
	0Avnk4bCaTRN1CRTA7UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJn-0000000DtQY-1y2E;
	Mon, 27 Oct 2025 12:27:23 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDMJi-0000000DtLg-2TcN
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 12:27:19 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59RCQuqa031809;
	Mon, 27 Oct 2025 21:27:01 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
        dsimic@manjaro.org, amadeus@jmu.edu.cn, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 3/5] dt-bindings: arm: rockchip: Fix description for Radxa CM3I
Date: Mon, 27 Oct 2025 12:26:39 +0000
Message-ID: <20251027122641.39396-4-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251027122641.39396-1-naoki@radxa.com>
References: <20251027122641.39396-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_052718_850566_310353F5 
X-CRM114-Status: UNSURE (   7.60  )
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

"CM3I" is the preferred name.

Fixes: ae9fbe0b1f965 ("dt-bindings: arm: rockchip: add Radxa CM3I E25")
Link: https://dl.radxa.com/cm3i/docs/hw/radxa_cm3i_product_brief.pdf
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 15153e08d3881..70be7966f4d3e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -895,7 +895,7 @@ properties:
           - const: radxa,cm3
           - const: rockchip,rk3566
 
-      - description: Radxa CM3 Industrial
+      - description: Radxa CM3I
         items:
           - enum:
               - radxa,e25
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
