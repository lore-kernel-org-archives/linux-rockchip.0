Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2767CC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 15:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRoOfFIT70FlzdjYF6NpKLNKPakfpVcQX8Ig+uu9IAw=; b=ejI6a2OfiDe/nG
	xjxN9erarPlo2BoGNh83pA3f6H9dX0+N+i9RoozEzjndrV7ezecpPZsCllZYuZCGaawx2tG2MrHUc
	Qtw+YZVc4GpThnQMqCgnboW4U0q2drp2ONfCTFzI3DiEv9sUzTr7SYUSVgFaaV0Kor3ETnuEhUjvC
	uV6R6XfUX+Ioa4SAy0OOQZPfusvBvVqKmhg2e3C+oKI1xTIUUTHJwjr0nZtgRT8tw101zSGMtWL6+
	gozftzljp/8zGrsrtvoKVlm7wk5LNGkmzQP5nRP1laCaQnTA/2IOx4f/Ol4ULwJCEAStpwt8yI5Ly
	7IprqUUQBXasvKOWfhrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOXd-0000000Dj0G-3Ufw;
	Thu, 04 Jul 2024 15:38:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPOXP-0000000Dixj-2aHR;
	Thu, 04 Jul 2024 15:38:24 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPOXM-0002hy-PB; Thu, 04 Jul 2024 17:38:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dsimic@manjaro.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add ROCK 5 ITX board
Date: Thu,  4 Jul 2024 17:38:14 +0200
Message-Id: <20240704153815.837392-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240704153815.837392-1-heiko@sntech.de>
References: <20240704153815.837392-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_083823_664685_2AA3A4E3 
X-CRM114-Status: UNSURE (   9.98  )
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

Add devicetree binding for the ROCK 5 ITX board, built around the rk3588.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index d2e887415d5dc..bd5c1ae2487ce 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -816,6 +816,11 @@ properties:
           - const: radxa,rock-3c
           - const: rockchip,rk3566
 
+      - description: Radxa ROCK 5 ITX
+        items:
+          - const: radxa,rock-5-itx
+          - const: rockchip,rk3588
+
       - description: Radxa ROCK 5A
         items:
           - const: radxa,rock-5a
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
