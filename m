Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8842D0E6D1
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 09:07:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=147MYSbxAJYrDRGavWY4e4xlD/7kLt8SxNNxUodifKI=; b=rEh1ALFr/vSnCu
	x15ZVpUaSCOWQepYF00+qOBanGWHlmZj5lIBAKf49BXUqbg28lLeNVVp/V0epnCp8umvFYQCfa9o0
	6Xy4X0QqDBDmb3BV/qL7o7FB7cpt+fCA+Nh50QPcYT9A1cYH+Ga6xiuxO/oZqlVL41GbM0fPxCTEb
	ejOx6Nls8vDZma2q1/rRdhRWjn4OdETU92BvVejmnbaKqCFe7AOVqngdrOL4QA+sGgKgKWlgPfEeK
	jVszdhYroYV9LZ84jQe4jf4Xlug2YDiaZaWkb8KO9EYge3iB83AKLm+8tD2wJbtd/RLbUx/ttd39s
	f3M6e1daIhXrynHVhrrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oNw-00000006eii-1MQ3;
	Mon, 21 Oct 2024 09:07:32 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2oNc-00000006edw-1WG3
	for linux-rockchip@lists.infradead.org;
	Mon, 21 Oct 2024 09:07:14 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 49L96G5j012440;
	Mon, 21 Oct 2024 18:06:16 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        macromorgan@hotmail.com, jonas@kwiboo.se, andyshrk@163.com,
        tim@feathertop.org, jagan@edgeble.ai, dsimic@manjaro.org,
        michael.riesch@wolfvision.net, sebastian.reichel@collabora.com,
        cfsworks@gmail.com, kever.yang@rock-chips.com, jing@jing.rocks,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 RESEND 1/3] dt-bindings: arm: rockchip: add Radxa ROCK 5C
Date: Mon, 21 Oct 2024 09:05:46 +0000
Message-ID: <20241021090548.1052-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_020712_675577_991FD296 
X-CRM114-Status: UNSURE (   6.11  )
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

Add devicetree binding for the Radxa ROCK 5C.

Radxa ROCK 5C is a 8K computer for everything[1] using the Rockchip
RK3588S2 chip.

[1] https://radxa.com/products/rock5/5c

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- none
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 70bd2e4d1195..01d03f2157e1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -890,6 +890,11 @@ properties:
           - const: radxa,rock-5b
           - const: rockchip,rk3588
 
+      - description: Radxa ROCK 5C
+        items:
+          - const: radxa,rock-5c
+          - const: rockchip,rk3588s
+
       - description: Radxa ROCK S0
         items:
           - const: radxa,rock-s0
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
