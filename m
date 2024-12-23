Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB85CE7718D
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 01:54:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jqk7ORtKjuvDWoXmbm4PETSYRxOXGRIgVdjkqfdGIg4=; b=b0iZ/+bu5As2/9
	17a6zunVOpgOWFOKFQEHzK06aiTWimOdLufBnLbVog+KrQ2/txR5hps7Jiz2xLBN1PhjxP/qDniED
	PXLZW/QiUNZjoR2TivWXCAvVEbDuARwenSXKeJeeLZqUUAKBtQuyu8g/jJlIGaiPUSEIVB3EwfpyL
	qBMVkiU7f7vxMpS7D8WYyyJTuWChoAjD+33y13oELqZJDenBBf+NPCkIa3Zostyo9Kda+cSLBdsPy
	DF3VcdmFjgdCgs6Z4J7sKDgtajJywlf2lDYMSqykSNHEdaAGcaT7zKgcKQ016HOBDAPIJyNqlCU/D
	BFEXE3KiAljl+60hwMuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPXe2-000000096oR-34iK;
	Mon, 23 Dec 2024 01:54:06 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPXdz-000000096mf-0gM6
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Dec 2024 01:54:04 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 4BN1rORg024581;
	Mon, 23 Dec 2024 10:53:27 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        dsimic@manjaro.org, jonas@kwiboo.se, macromorgan@hotmail.com,
        andyshrk@163.com, dmt.yashin@gmail.com, liujianfeng1994@gmail.com,
        tim@feathertop.org, marcin.juszkiewicz@linaro.org,
        michael.riesch@wolfvision.net, alchark@gmail.com, jbx6244@gmail.com,
        kever.yang@rock-chips.com, jing@jing.rocks, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
Date: Mon, 23 Dec 2024 01:53:17 +0000
Message-ID: <20241223015318.1999-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241223015318.1999-1-naoki@radxa.com>
References: <20241223015318.1999-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241222_175403_421735_DE7E83E0 
X-CRM114-Status: UNSURE (   6.45  )
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

Add devicetree binding for the Radxa E52C.

Radxa E52C is a compact network computer based on the Rockchip RK3582
SoC.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
Changes in v2:
- Add "rockchip,rk3588s"
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 753199a12923..2152d170524a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -812,6 +812,12 @@ properties:
           - const: radxa,e20c
           - const: rockchip,rk3528
 
+      - description: Radxa E52C
+        items:
+          - const: radxa,e52c
+          - const: rockchip,rk3582
+          - const: rockchip,rk3588s
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
