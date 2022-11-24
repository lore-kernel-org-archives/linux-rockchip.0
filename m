Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07F52C46467
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Nov 2022 14:49:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mKiD6hHmrYN8Rtv9nc7jeJywlzLV55tQM1wmggUfdg0=; b=IwNJh7G/krybFY
	qYaRuqzUlAqknl/r5U3myuvYo4BGN/6DZ3YyuLGzceG1wht9lSVedzvtLuTvDmyLKN8G6seuODTrX
	ThuOeWgaqaItc6jUnmtYMjitKbThNMnI4FdNaPSXykdMcr6BsMu+ElN+e9Rg599+/oxHlYHg8Xnr1
	ycntY/WBBRt6d0ogeFAzmed0yKBIwPe0+RFSQ4rldnaI3wlz2BoHyGQeBqKJERL9zPd8n8xfQorEv
	UY08GmtG4xd3pEnMIuWlBb4cJWPENEotLBn1d2+pP/hwzJc457UwpGZx9kqY2vY9kFc+VUIeL0Zqy
	/RjIwOwy0yKRMTis69kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyDXq-009Rom-H1; Thu, 24 Nov 2022 14:49:42 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oyDXl-009RkA-5A
	for linux-rockchip@lists.infradead.org; Thu, 24 Nov 2022 14:49:40 +0000
Received: from jupiter.universe (dyndsl-095-033-156-095.ewe-ip-backbone.de [95.33.156.95])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D231B6602B38;
	Thu, 24 Nov 2022 14:49:31 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1669301372;
	bh=BwmqDVmneQkkaygfHpODIHLm/OqVPN1VU3hBQxXJHgE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CurWl86nsdpqAjqN2KLzx1vWbtdIxXNFn+sW8lb41EOAZfa9rvJXSH+grjQEy7+Et
	 vXe+95jtFvoUhJbjRjmKNaIQOR8/h5m8byRXVdR1EKo9FUXqKeTS1q8vHdI80CRrlq
	 dLIR1gIZa4KuimjPBr9FkA7YYW4/UqQrF8WVRixB/jBbBUyNSJmaY1Oh1He/Virmsy
	 3pS231S53sMiGjbOlJ0ANahz0Hbv6fs25HEoGUQ38M+F6l108h3JidrMBnAgHOHrb7
	 G3qDOqD3yAnQ8e1Lvr3OQXH6/TlO1rgGmfEOunL8NpXXp1zxRVs45iKJaeU97ullpK
	 s8JN4EC0oRnQw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 62B5648011D; Thu, 24 Nov 2022 15:49:29 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCHv4 4/7] dt-bindings: arm: rockchip: add initial rk3588 boards
Date: Thu, 24 Nov 2022 15:49:25 +0100
Message-Id: <20221124144928.35381-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221124144928.35381-1-sebastian.reichel@collabora.com>
References: <20221124144928.35381-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221124_064937_370091_C34EB928 
X-CRM114-Status: UNSURE (   8.04  )
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
index c6c69a4e3777..49d442afe67f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -620,6 +620,16 @@ properties:
           - const: radxa,rock3a
           - const: rockchip,rk3568
 
+      - description: Radxa Rock 5 Model A
+        items:
+          - const: radxa,rock-5a
+          - const: rockchip,rk3588s
+
+      - description: Radxa Rock 5 Model B
+        items:
+          - const: radxa,rock-5b
+          - const: rockchip,rk3588
+
       - description: Rikomagic MK808 v1
         items:
           - const: rikomagic,mk808
@@ -704,6 +714,11 @@ properties:
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
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
