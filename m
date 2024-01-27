Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC5BEC46CD2
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Jan 2024 09:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pI284NQfe3vVJN63Apk1HddYyOwlNFAN/MP9DsJqJso=; b=0jQuXMkv2UMG+z
	4t3fszDRVZQE8t5uKJ+LyXoTrtlFzkAviX7rMzOv+ic0UyaqGCr5KYBoDqBwqFJutb8oJa38roQ/k
	907XJbGkV2tPYh03q03+w2O1DhuUqUbQ3PQo/vp1CzxyNzUPPHN+6Zr6AmUMu6zcKnNLjVBHqJzXO
	0NxQ5/HhTl25DdMC6XXUVXPGChN72gJELyJJ7sjpLDL7BhyMumF7tPxBL2fj2KNU86kTKBUA1D9qM
	g/u1vvMhd//Nk99qThirmWeMDQlibTck7T3pUxR79fDZezmzv81V+5U70/M844gh0Pp4qWIID7ifQ
	W5Qmt3XEoo1yG46Ol8Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTfJ7-00000007J52-2Fvj;
	Sat, 27 Jan 2024 09:49:01 +0000
Received: from [2a01:4f8:1c1c:934f::1] (helo=mecka.net)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTfIs-00000007Its-27tp;
	Sat, 27 Jan 2024 09:48:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1706348925; bh=b8ZKwzuKSR+B8npDXbJdxQemMwTR+ciHyPfl/3VRGTg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=RYFnCmvL6bDyP9Agh9Bv7DpCTWPQjzWgT12uEJLwrSQsMkqBZC4Le1W03EsfBAgeY
	 9tvpENJ9qaQb3GaDE4CgvZw0j1Jy5vmWUGQEh7v2hRZ0+rJnAQrwxiNgzzhkAVjx6k
	 61fUc+Kdh2xkPVgqt7jxnvMJEmWtV+Y/0Gz1V/6gClN6sSfNYS9av8mRrWD18QFfNn
	 GeZmKdJ/oHIlxNTa3VvinbIvTz/X+ntqW30hNan8X+F5Tq0AZBxxxBBDm6kR2ZVDGc
	 AsMgqNXg/JtPUFfRnhspYVAPvUFMKQUaNbMVfd1DBWmEZpvHSkjTPHNsocJblmWQcY
	 F3Lc5ZS05aOjA==
Received: from arthur.fritz.box (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 0C7E63BF7A9;
	Sat, 27 Jan 2024 10:48:45 +0100 (CET)
From: Manuel Traut <manut@mecka.net>
Date: Sat, 27 Jan 2024 10:48:44 +0100
Subject: [PATCH v4 3/4] dt-bindings: arm64: rockchip: Add Pine64 PineTab2
MIME-Version: 1.0
Message-Id: <20240127-pinetab2-v4-3-37aab1c39194@mecka.net>
References: <20240127-pinetab2-v4-0-37aab1c39194@mecka.net>
In-Reply-To: <20240127-pinetab2-v4-0-37aab1c39194@mecka.net>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>, 
 Diederik de Haas <didi.debian@cknow.org>, 
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>, 
 Danct12 <danct12@riseup.net>, Ondrej Jirman <megi@xff.cz>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240127_014846_956862_8D34A663 
X-CRM114-Status: UNSURE (   8.17  )
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

Add devicvetree binding documentation for Pine64 PineTab2
which uses the Rockchip RK3566 SoC.

Signed-off-by: Manuel Traut <manut@mecka.net>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..1b9740e2f3a1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -650,6 +650,14 @@ properties:
           - const: pine64,pinenote
           - const: rockchip,rk3566
 
+      - description: Pine64 PineTab2
+        items:
+          - enum:
+              - pine64,pinetab2-v0.1
+              - pine64,pinetab2-v2.0
+          - const: pine64,pinetab2
+          - const: rockchip,rk3566
+
       - description: Pine64 PinePhonePro
         items:
           - const: pine64,pinephone-pro

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
