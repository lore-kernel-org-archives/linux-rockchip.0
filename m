Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8707C5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 08:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HghR9f9LpU16iUpbvqZqbBGDi4AN218/+Lmrioz99tA=; b=gLfbQ3b56CpPUa
	AKizXdIaudSU2zYp4pYRlYpUfyXDISRdBnv4eLzFlkPZsNHWUvT5GdeJSFK2ZdnaZwgAXjxJt+Wp4
	+/OxJEdAXRxZrWv1Nqb8XO9oasupizzuUfvOr46cSBeWg1vKtWgTICvbvH/Dc0zgQGAbQ8uXAUvYA
	h7dTi5txcNP5bGC9qRm7UtBWcCchx4k671VZsfbxpTn/JAmB7am7c2pkprgzgeyQzYYCCrQSmd1ot
	QQUctrrzEH9cph/V0zJ1ts3sxjOVDPEVQfjjRBNIPcktOl/LcdQ9Bs2pxYfncXbTfqWCTdSjsYHzB
	/TIMWrUkO80KseRX1SfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siUh6-00000006O2b-47Rr;
	Mon, 26 Aug 2024 08:03:20 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siUh3-00000006Nzc-1RZd
	for linux-rockchip@lists.infradead.org;
	Mon, 26 Aug 2024 08:03:19 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 497412602C9;
	Mon, 26 Aug 2024 10:03:14 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id MZJLnQJSEcah; Mon, 26 Aug 2024 10:03:12 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 91B62260898;
	Mon, 26 Aug 2024 10:03:11 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Mon, 26 Aug 2024 10:02:45 +0200
Subject: [PATCH v5 1/7] dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
MIME-Version: 1.0
Message-Id: <20240826-friendlyelec-nanopc-t6-lts-v5-1-ba33edda7f17@linaro.org>
References: <20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org>
In-Reply-To: <20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Jonas Karlman <jonas@kwiboo.se>, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_010317_581650_9427E1AB 
X-CRM114-Status: UNSURE (   7.75  )
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

Add devicetree binding for the NanoPC-T6 LTS board.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..f45c7d055a6a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -243,9 +243,11 @@ properties:
               - friendlyarm,nanopi-r6s
           - const: rockchip,rk3588s
 
-      - description: FriendlyElec NanoPC T6
+      - description: FriendlyElec NanoPC T6 series boards
         items:
-          - const: friendlyarm,nanopc-t6
+          - enum:
+              - friendlyarm,nanopc-t6
+              - friendlyarm,nanopc-t6-lts
           - const: rockchip,rk3588
 
       - description: FriendlyElec CM3588-based boards

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
