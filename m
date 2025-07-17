Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9364C83F22
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jul 2025 11:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FC5OT9gwjDIevLDNMGgTalPbdP0UMJqm4cyPOjTBZxI=; b=bISMuHAZH0Bg08
	GAQrvmjAUngsPBSpiCdi3Z85lVEmCg9zknJY6da4xEsGLzSTVQ43Vf6ofbdNdUgI3h+GD0xhb/PY+
	X2NG2ciQL22aoq+27C1Jik3urSauOxPzsVaoFEPg1iTPy6RBJqpLYauTw+4xVv2U/IvyQfAfRpLzW
	5NLLd5jPgHB+V1y44LBVIRl42b1autiGvVhsco8aelq1t/Nf5oZH1feU5pkRstHvSjR3J0UcdT9hN
	UFeH9FTNyQ5XCmb/94/ldzcOcPP46vUgu8vTqgN42dJj0TpOZREfsjAa9MHpsJhvboqdHYYtxgz0B
	B+pDpQK/sTwOM8cJFiVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucMQf-00000009wY4-0x7D;
	Thu, 17 Jul 2025 11:05:33 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucLzt-00000009rqw-2LcR
	for linux-rockchip@lists.infradead.org;
	Thu, 17 Jul 2025 10:37:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1752748672; bh=9FSOoEwsfuL0j5eOh3+NN20FVwSxKcx9YlJVAcwj+eI=;
 b=OI2tYgbCkGHA9yeKYBKuWRh1PF+zCbaPxLUR0syMxHaPCwbQEYlJ0fGVe2laEjztnJfSHrT9Z
 IY8ctZg5ioM0itdoKnuztWTdN27a/dk5eCDoavF/InM40gHbwcN9KXEExaxSWnzBw4EWCucgpVs
 Xgw2+RWEkIw+M+20y4IBHgEQw+/5UH+ZuWyKfWtXBTJJXHpljhkgFAVgLFFXgtn17TwSvyQLC/X
 CIJrwllHBpCOtcmbS9cmMGKBFAQLGkcvJ5Kn2F9UbdmmH9TwEK5yQvhnxkxV7v+fsfZR1bIFcr7
 in5ytETmaoJCruzyPUXWcu2Uk7zWmVaLHq3pCLGlVktg==
X-Forward-Email-ID: 6878d2735e51505848fe5ffe
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.1.6
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v4 3/6] dt-bindings: arm: rockchip: Add ArmSoM Sige1
Date: Thu, 17 Jul 2025 10:37:05 +0000
Message-ID: <20250717103720.2853031-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250717103720.2853031-1-jonas@kwiboo.se>
References: <20250717103720.2853031-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_033753_635125_ECA84F92 
X-CRM114-Status: UNSURE (   7.14  )
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
Cc: devicetree@vger.kernel.org, Yao Zi <ziyao@disroot.org>, Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Chukun Pan <amadeus@jmu.edu.cn>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Sige1 is a single board computer developed by ArmSoM, based on the
Rockchip RK3528A SoC.

Add devicetree binding documentation for the ArmSoM Sige1 board.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
v4: No change
v3: Collect a-b tag
v2: No change
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c5690098f2ed..43f6403ecad6 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -54,6 +54,11 @@ properties:
           - const: ariaboard,photonicat
           - const: rockchip,rk3568
 
+      - description: ArmSoM Sige1 board
+        items:
+          - const: armsom,sige1
+          - const: rockchip,rk3528
+
       - description: ArmSoM Sige5 board
         items:
           - const: armsom,sige5
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
