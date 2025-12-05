Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B4FCD2F7E7
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Dec 2025 12:08:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJgqgXZPYL6fg8xv/xm/2YqvgCbGxtXqFmjz1zoFtfA=; b=f0MBFKb1UZdNZj
	vhhEiGtH8zsP1p1+JmwyHDEWU//X/RX1l60ZnK1Co/QF/ssWTZgnfrI7xcVOZTtUl4W6wBddHKzAX
	8zqBE1UHq1Nl7dmL8La+fiZJ+c4CnqI6O1CNh42LUdU4428sPvxu/1Qfdz/0MVwkUiRAde4u+ka3+
	HXXsOTXmX67T0qVyVdW24vtzUFkiklCJ4xHGS0s0t0tQ8fXcrNwwDDPF7ZxYG4k7HewxVO7aErLC+
	LtaCB7KlQD8BfY+WFWzDLylTkAKYLp5F0+XForlmIqOrXvZcLHaJJUK2sIv8PzfDOfXoXASa+eIyU
	QDDNq0Q/rdE70is9Npqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRUbM-00000009SEY-1IcQ;
	Fri, 05 Dec 2025 12:07:56 +0000
Received: from sakura.naobsd.org ([160.16.200.221] helo=mail.naobsd.org)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vRUbI-00000009SBx-1Bmd
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Dec 2025 12:07:53 +0000
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5B5C7DSI023400;
	Fri, 5 Dec 2025 21:07:17 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        quentin.schulz@cherry.de, jonas@kwiboo.se, kever.yang@rock-chips.com,
        inindev@gmail.com, michael.opdenacker@rootcommit.com,
        honyuenkwun@gmail.com, dsimic@manjaro.org, andrew@lunn.ch,
        pbrobinson@gmail.com, joseph.kogut@gmail.com, dmitriy@filchenko.org,
        shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
Date: Fri,  5 Dec 2025 12:07:01 +0000
Message-ID: <20251205120703.14721-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251205120703.14721-1-naoki@radxa.com>
References: <20251205120703.14721-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251205_040752_550772_E34294BE 
X-CRM114-Status: UNSURE (   5.70  )
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

From: Joseph Kogut <joseph.kogut@gmail.com>

Add device tree binding for the Radxa CM5 IO board.

This board is based on the rk3588s.

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d496421dbd87..79e99694577e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -907,6 +907,13 @@ properties:
           - const: radxa,cm3
           - const: rockchip,rk3566
 
+      - description: Radxa Compute Module 5 (CM5)
+        items:
+          - enum:
+              - radxa,cm5-io
+          - const: radxa,cm5
+          - const: rockchip,rk3588s
+
       - description: Radxa CM3 Industrial
         items:
           - enum:
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
