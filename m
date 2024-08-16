Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC737C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 21:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qF4h8kxYyVw2PJYrKlQ6S2Fc6t0hRNPHn+get1TWbZM=; b=ZvWx4XhMlGZ+Ld
	SQXIX4+UpBPblOlLX5TYH5cLP2i4CE7svKuIYcX31X58bhetmUauTKYaJZocxeCjXAapBiCMcLi8L
	fpAxGkvGNzzJHIg+BUb23pAsUp+yeYqjEEmTKvmeFrasE4NT9L3BiwPmCp8UCrMJ325G3HKtDBZ5H
	tOzjRc9T1szw/NKDOf9zOPOutl+LBl6CY92yNPiC/LhHBR+kz6bsLBbvlUUkAfOmbI0Uf+WuKIW6T
	XTcH7rG+5cdFa8QT6Y7WSnxhCqCFL2VG4/8sce6fydjecCgof+G7DNoRirLPN6MwvpH+QcHxIhBG/
	ab8MFN5M7O58oh1E4jcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf4ax-0000000E6Wo-0El6;
	Fri, 16 Aug 2024 21:34:51 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sf4ar-0000000E6Vs-2wYT
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 21:34:48 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 47GLYaon026590;
	Sat, 17 Aug 2024 06:34:36 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v5 1/2] dt-bindings: arm: rockchip: add support for Radxa ROCK Pi E v3.0
Date: Sat, 17 Aug 2024 06:34:28 +0900
Message-ID: <20240816213429.1093-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240816_143445_973467_4A2D82F5 
X-CRM114-Status: UNSURE (   8.74  )
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
Changes in v5:
- revert compatible string
- describe rockchip.yaml properly
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
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1f23b8b05a8f..684b779b2a40 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -795,7 +795,9 @@ properties:
 
       - description: Radxa ROCK Pi E
         items:
-          - const: radxa,rockpi-e
+          - enum:
+              - radxa,rockpi-e
+              - radxa,rockpi-e-v3
           - const: rockchip,rk3328
 
       - description: Radxa ROCK Pi N8
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
