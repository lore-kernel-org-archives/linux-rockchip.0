Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1372C54EBD
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jan 2023 15:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rM5lRy2Phx9vlkSmNkL2Zlht8sZHWYBVnGrva5g3F50=; b=hGGQXTpCDurur2
	0bbwnI1PY4qrjlzkt4CWnupFSDheCha++wOnkpmyUwss0WLhAXhdpIPIQBiCH8XqUcpBO3a+f2WNq
	ZjqbhQa/1gKHg8Bmhee9z9pIysnEuCfkRETS20zcYOT0lVgnkcXo91LEiofave2apdsR97lOgcPgx
	F5LgS2Bz09c71RuPVMtNYhiicIifzf+DhrnQBTzonobxyx6mySQa9Mh0oUdwbAh3ZataMOUOw2Yny
	m7NVm2DuaIx+6RZJSNscovE6sH/avO5Up9h9PPk8wRTyzwj70uw96KugJK5nXnNxsHZoqeRUkQWqg
	TNIU4iJze36tCLEyN5+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEuXN-002RMs-1D; Mon, 09 Jan 2023 15:58:13 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEuXJ-002RJN-3B
	for linux-rockchip@lists.infradead.org; Mon, 09 Jan 2023 15:58:10 +0000
Received: from jupiter.universe (dyndsl-037-138-188-006.ewe-ip-backbone.de [37.138.188.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C65006602B2C;
	Mon,  9 Jan 2023 15:58:05 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673279885;
	bh=tM45dWy//AwoQ+2JT8c7y1nHkHLcYN3y0Y0kpp6ErLk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Xjmj2jtXbDjf4Uw0uFYRfNJ8JmNEjTECudgd6BkwjjyWUgSsFxpwfqzciorEfwO5u
	 NXebQCRGjvxjrQSgq4PyBqdHQjiQgjrtCWIG/pB1mQt11mtgC7iX7EcZypei3vM3yK
	 xkskOFJzBIBsBVjscYT4Y1iucOk63QFbwExhtFmetLMNIbh1PJISLosgcMxgfXKBLo
	 zgfhD/nGNEjlHm2cbIylHaelnwLSNhOpe0h6I/Y72Roif8HvC38GSKAWAV95KlsST/
	 855guCmDDxXN90/AqBI1eGw2Y0c5sm2L52/m8O0xwm6emEV4W8/ZSiRLdk4qSdkAU2
	 qfV/hjNtHjrTw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8940348011C; Mon,  9 Jan 2023 16:58:03 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCHv8 4/7] dt-bindings: arm: rockchip: add initial rk3588 boards
Date: Mon,  9 Jan 2023 16:57:58 +0100
Message-Id: <20230109155801.51642-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109155801.51642-1-sebastian.reichel@collabora.com>
References: <20230109155801.51642-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_075809_403912_380F2CF8 
X-CRM114-Status: UNSURE (   8.38  )
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

Add DT binding documentation for the Rockchip RK3588 EVB1,
Radxa Rock 5 Model A and B.

Co-Developed-by: Christopher Obbard <chris.obbard@collabora.com>
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/arm/rockchip.yaml         | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 88ff4422a8c1..0e818e309734 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -652,6 +652,16 @@ properties:
           - const: radxa,rock3a
           - const: rockchip,rk3568
 
+      - description: Radxa ROCK 5 Model A
+        items:
+          - const: radxa,rock-5a
+          - const: rockchip,rk3588s
+
+      - description: Radxa ROCK 5 Model B
+        items:
+          - const: radxa,rock-5b
+          - const: rockchip,rk3588
+
       - description: Rikomagic MK808 v1
         items:
           - const: rikomagic,mk808
@@ -736,6 +746,11 @@ properties:
           - const: rockchip,rk3399-sapphire-excavator
           - const: rockchip,rk3399
 
+      - description: Rockchip RK3588 Evaluation board
+        items:
+          - const: rockchip,rk3588-evb1-v10
+          - const: rockchip,rk3588
+
       - description: Rockchip RV1108 Evaluation board
         items:
           - const: rockchip,rv1108-evb
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
