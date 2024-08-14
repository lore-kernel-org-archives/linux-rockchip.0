Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BE6DC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 09:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bkVlS/nrS6cM6RZSJLuOwdsqxk8bporVhBUfItkuYXI=; b=COcXC8ItRw4eeC
	i7WNi2RA1oMWosIBU2Caq76J4k7te9s4tbWF03IyGzqUctSzAv7HqfRffCJ9YKVyZHX9VEiAs6KkX
	CATW9Z0y3Oy5/DQIE66+jTOAf7/f4vaNDjP+bvhYLdRvgQiODDfhho0VmslWsDbu7bvkijjkCLIwp
	LdEX5nngDzpRD2hjaAQhL8Naj7HGKKF4U+gih/FuYKMG+elcbFlRrQmpAId54cFkmSEXyTsFynsop
	AIc7ziJT9ocVrIbi49CL1DCe7JUDXyy0SO23dN7GeMbboppm71W900iV/xb9Tt6gjuh3FH/vabYWq
	uQQKYmX3YV1nQj5WKBjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAlS-00000006TYr-02OC;
	Wed, 14 Aug 2024 09:57:58 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAlO-00000006TXd-2N57
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Aug 2024 09:57:56 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47E9vbuO018666;
	Wed, 14 Aug 2024 18:57:37 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v4 1/2] dt-bindings: arm: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Wed, 14 Aug 2024 18:57:26 +0900
Message-ID: <20240814095727.1662908-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_025754_834700_5697A50E 
X-CRM114-Status: UNSURE (   8.10  )
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

Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
RK3328 chip.

[1] https://radxa.com/products/rockpi/pie

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v4:
- update compatible string for OpenWrt
- drop A-b tag
Changes in v3:
- collect A-b tag
Changes in v2:
- fix typo in commit message
- add missing --- in commit message
- add new section instead of new item in rockchip.yaml
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 2ad835f4068e..1d426d4e1928 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -790,6 +790,11 @@ properties:
           - const: radxa,rockpi-e
           - const: rockchip,rk3328
 
+      - description: Radxa ROCK Pi E v3.0
+        items:
+          - const: radxa,rock-pi-e-v3
+          - const: rockchip,rk3328
+
       - description: Radxa ROCK Pi N8
         items:
           - const: radxa,rockpi-n8
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
