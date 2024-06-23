Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C209C2BD05
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 12:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oOWz6AUZX6HbiJala1sLKVrURmmhITBcQ0JLjAJcF8w=; b=y9EibcjknyqKZ5
	wEEnJODOnyL6EsUDWAZo3BPkxYrYtu84YSdgICKhWrDPzV2XD5XfxcsHNtP8wzj/A5MapULqffReC
	8fOmyHomEN+wQFcTmF6g01O2T4ioUcabMX3yCnuJoK0MbtDLvG26znejty1hVc2iayP723DACE43p
	zvFxl8FzsZ5zvA+1bFmkCnqMlM14BVzQe0XGn434pKKStIZYJi7n3yYqcOGXNnvfb7ztlBGhT3rM6
	5m2joelFwuZE77tXhJQVCFTZ2QOFY2yjOihLZY0NZWiEhCQCcTKSZisRWx8AZ3x5BOO9QEyTrkISI
	ZUosv+W6p1eNWx9BV0Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLMJV-0000000Dz2G-4ACf;
	Sun, 23 Jun 2024 12:27:21 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLMJS-0000000Dz1t-48WN
	for linux-rockchip@bombadil.infradead.org;
	Sun, 23 Jun 2024 12:27:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=gN3Dg62SQ7INZtsDgZVV8Qp9cRspB0aYDnAV8fsmnBE=; b=f7DH6RrgMrhSN4DY077ay1VH4y
	FM7197lOsg85w+iZtrkWsMEv+sJ5XeemSaAioDwcNIR5dLD+cu2uhpsUet/ajmpY2yx2BECbJCZCX
	LqoW1dDfk68jdmgwCkG2urmp2F+8PpNQYzHTWcgJcocAJZIWU0wdypn3DI426ujQu5tiT9d5s+r5/
	8BLX6/s+FS/hLfZHTr7bs9YzNT8CspnpEQyIt9aQRwIw/de8wZF5uqQmuRR8mh5gsrO05U/vrHh/b
	DMyE/MiExo7gZcUKQu9MOnGJIPnx1zUakvopHZyJLc67IOywEmIciOrH7wI31OWyEaLYtvcKV/Bs9
	7agoAl4w==;
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by casper.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLMJM-000000096UZ-17sH
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Jun 2024 12:27:17 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45NCNik3006105;
	Sun, 23 Jun 2024 21:23:45 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/3] dt-bindings: arm: rockchip: Add Radxa ROCK Pi E v3.0
Date: Sun, 23 Jun 2024 21:23:35 +0900
Message-ID: <20240623122337.91914-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_132712_778784_66644C9B 
X-CRM114-Status: UNSURE (   5.71  )
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

Add devicetree binding for the Radxa ROCK Pi E v3.0 board.

Radxa ROCK Pi E v3.0 is a single-board computer based on the Rockchip
RK3328 SoC with a compact form factor.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Changes in v2:
- none
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index eca0a42eb384..53ca61c47b76 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -779,6 +779,11 @@ properties:
           - const: radxa,rockpi-e
           - const: rockchip,rk3328
 
+      - description: Radxa ROCK Pi E v3.0
+        items:
+          - const: radxa,rockpi-e-v3
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
