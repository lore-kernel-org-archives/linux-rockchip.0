Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 123BEC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qwypH96QlkNc1TC2j/5R1WZFtWaFUl8mH+2ZUo6WZv0=; b=CIHbV/3Faiq+4O
	Zr3t2rYj4e7yPR3L9K38TxnVOFkP5ZRXO+iUsiPIuxlgjVehbV/RLbJ2TdSIA6y8z52KpRP28EBXB
	lAM3LVqUDPSmkgl5YGGQKr9lcLyQNs1XcpeXNM5qyLKm4hYj1Krj5ylkuRx/irS2+7IONS6jFf/Zu
	OK3OKZezSNUrnWOfaI4bGweCQq+PtU5MGHDMr4rb++QPezxwzHD+WSU1w9/Gb96rRYo24bAItlU87
	w+hDPhe+SGNe6dYW4zAh2kJ9M7QR0M8FdUlVsPO6tra0xhGVQC0Al6EFdM8qqEsYE2OGfct0JGhgD
	8kPcAoo6cl9H9m/t+nRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PTA-00Fq5T-Bj; Thu, 23 Jun 2022 16:14:12 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PT6-00Fq4x-RS
	for linux-rockchip@lists.infradead.org; Thu, 23 Jun 2022 16:14:10 +0000
Received: from jupiter.universe (unknown [95.33.159.255])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 233F566017F0;
	Thu, 23 Jun 2022 17:14:07 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656000847;
	bh=BoLK/IAno35nYnryxQn1707X7my90AtpDBFfONbrkTQ=;
	h=From:To:Cc:Subject:Date:From;
	b=DwYumIE1rkTohKeo4V6pXnsPSy6ah7Bn0V0bRvltGpoeY0qQK4nYrWjC5DQCm2Sij
	 TnXX9N0RWLlniAX3svPiST6r2CmqisSywceQfW7WPOoTYrRdwBayUBUq+z1sTifWyn
	 bmVa+ubGxzrDPc1NGEdIxBqjNzU2HvsE3LaqWR9y3GAeLAmVfOOcAYGqTVfQBncGgv
	 1VdsD1kw2SsA5cfHpHhMZdvMlgqVwHUsPrb5rikQCH1I73ARd0Z3whCBTltMuZDDif
	 G+CZ15MwCBemTJYmV9GdNcCaT98VFhUnINOw/9mNVR0CozK/bvlPtZJhYZHYrZKeyl
	 RmFxjpkJtS8mg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id A8F12480122; Thu, 23 Jun 2022 18:14:04 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-serial@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/1] dt-bindings: serial: snps-dw-apb-uart: Add Rockchip RK3588
Date: Thu, 23 Jun 2022 18:13:50 +0200
Message-Id: <20220623161350.242079-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_091409_058994_B3401AD0 
X-CRM114-Status: UNSURE (   9.84  )
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

Add a Rockchip RK3588 compatible.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
Note: This used to be part of a bigger series. I'm now sending things
      per subsystem. Existing serial driver is compatible with RK3588,
      so this just adds a DT compatible value in case a SoC specific
      bug needing a quirk is uncovered at a later point.
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 12137fe80acf..b5c819c5fa2c 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -33,6 +33,7 @@ properties:
               - rockchip,rk3368-uart
               - rockchip,rk3399-uart
               - rockchip,rk3568-uart
+              - rockchip,rk3588-uart
               - rockchip,rv1108-uart
           - const: snps,dw-apb-uart
       - items:
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
