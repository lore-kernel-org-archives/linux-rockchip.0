Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06BD7C52D7B
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dahLFgv5wdfTmJ4GMD3Z+VZlg7vMl0hw+FUhG8mqTXc=; b=c6euKiVpJijzDy
	OeHRCoc4YqK4Lu/Fmoz1YhP7okcQ58IVlkG1w94cTSGavxRInLeIAd9MvCTxL/RUid8ULetaY/EBW
	ZeJ8GMHsplI6HH0M4Gv2VLSx2ijquIm1WXA9Ua1rghbl9eq3Q+tWtg4FZGyCPJhJRoUYdawlJPu87
	yp05Bo0TdqUI2IDO/oJGiTTcvzHNRWJ2HoZh744pGI7NqIJV+lGp90Y0vgOs1SSlKLznAuxx12NZw
	yex8Ra4ZjMXOE9Q0eDmSgFGGXZUQ8wm1jqC9gD2vxr2EiTTBhxyFYbv7IT7tk4/fWVfTS8EPXILcB
	er2nF5HO4yztIPEu6p/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGKo-00000007Yea-0xSx;
	Wed, 14 Aug 2024 15:54:50 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seGJa-00000007YF2-2T3q;
	Wed, 14 Aug 2024 15:53:36 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 5CC0B44D82;
	Wed, 14 Aug 2024 17:53:33 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WSyibF93yuzA; Wed, 14 Aug 2024 17:53:32 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1723650812; bh=Or1+h5BCUkQk9PcJ2qsUhycm7+RhGUIIDkuJFnz0sew=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=QrXplldwr/Tnra1yKDDP5TlOVRqGYIjbazSiBVczA1OhGaZY7rmy9Mtqwvy85nKY4
	 jRayh1NAiUZc0VmHi9Oa8GeRDtS/edZ+RPK1SZAYY3UpMCcO3gQo2601foI9SRPofS
	 kUkESsnH0K+mn1Ad0WEYT0887+YRfbC90HDU0/81z6v9KBQCVycRtCJR1r0nM4P033
	 opQUdB+VLc0fbH2Gv368ts0vaBXw85o1nt/RuuJKMEYLMGniD1IWoMCpS2W7rXdovN
	 kg4uU9pLouT3LdExp+syJ4ryA8L0sNleM83dJemyk20Yd203cfHemUgMq0OPzrtt+w
	 R5e2TUnfpOo6Q==
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>
Cc: Celeste Liu <CoelacanthusHex@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/4] dt-bindings: arm: rockchip: Add Radxa E20C board
Date: Wed, 14 Aug 2024 15:50:12 +0000
Message-ID: <20240814155014.18097-3-ziyao@disroot.org>
In-Reply-To: <20240814155014.18097-1-ziyao@disroot.org>
References: <20240814155014.18097-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_085334_799207_741CD7D8 
X-CRM114-Status: UNSURE (   7.94  )
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

Add device tree documentation for Radxa E20C board.

Link: https://docs.radxa.com/en/e/e20c
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..2b8bfc7892cb 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -753,6 +753,11 @@ properties:
           - const: radxa,cm3i
           - const: rockchip,rk3568
 
+      - description: Radxa E20C
+        items:
+          - const: radxa,e20c
+          - const: rockchip,rk3528
+
       - description: Radxa Rock
         items:
           - const: radxa,rock
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
