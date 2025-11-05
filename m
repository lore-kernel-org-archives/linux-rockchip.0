Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 61622CCFA07
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 05:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=67Zeqq1rhIYdSEu5QFJbakS7wbi9+U5w41Kt03ZM5eU=; b=J43KO5TFYSAfob
	+/n0MRW0XLYmydes/M9yM91SHO6vfI4NX6gyt+tcUKkm9WvjGqIuYSBfVm9oqBJa/+pFLnMTwpNmv
	+TzPvDC6zb+osapmSvyNUgE5FDk/QsLWjB6Ohz8tzYVGrH8H+bzbkexVbl6l3D4cC0jQ0ihmmfbjP
	wtMJ/2i6H/yG88XsZszJawtvn/ts6nYv7focIlFlVC3EDt+M4ETbE5ZJOFpwrGFcROlUryutQpWo6
	o6MNQZaUbJoWod568VqYNSDNotOX13a5nf7yBXxQorE8jglm2gu4xXt85wNJelHwLLZD8F+jhV84B
	BnKJ+8A+Xevt1x9m/TXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGVqb-0000000D1l4-0J34;
	Wed, 05 Nov 2025 05:14:17 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGVqV-0000000D1je-4ApZ
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Nov 2025 05:14:15 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A55DfSs031533;
	Wed, 5 Nov 2025 14:13:48 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
        i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
        dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
Date: Wed,  5 Nov 2025 05:13:33 +0000
Message-ID: <20251105051335.17652-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251105051335.17652-1-naoki@radxa.com>
References: <20251105051335.17652-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_211412_257384_25EBAE17 
X-CRM114-Status: UNSURE (   5.53  )
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

Add device tree binding documentation for the Radxa CM5 IO Board.

Link: https://dl.radxa.com/cm5/radxa_cm5_product_brief.pdf
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ba61ea7436132..1829daad88ab5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -902,6 +902,13 @@ properties:
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
