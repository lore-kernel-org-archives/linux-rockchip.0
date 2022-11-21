Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DE7FC4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Nov 2022 17:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htUHL/wPY4zGckIm3qRXsefvjhEr2GR1tS5qWD15crs=; b=BnLRGUhMokY4RH
	FvYOfJTCDDmb/dEj0eDc5BR3DriZHnLkay/GllwiOfLdsvNgOrNJI8bSNQHCNrVgKTt1QbEOZxNG9
	aQCS7FBKHnwG0h7u3R3UZ7GRYvzul6eGNW577jyVUEAXnK/yWnZO/BrYYzixtT2Lt08c9qJ4Bm6aF
	sGHLDtFkknSuGWmhzEPCeU8TEh4Y+ujhG+MIc1e7ejh3w1g0Lpiz7Wj8QGMeUZuWpsyYAMbdZ+6x1
	7h42O6LiQN3kRzrHBsx5jOqFOHF6LbYJUgzjsZR6mhqXQxwRnbD0hfGqjM19/Wv1FjMMLSUOsMMWN
	J1TCjJeutDQCAVNe0sHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB3y-00GZDX-K5; Mon, 21 Nov 2022 17:58:34 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oxB3u-00GZ9V-E6
	for linux-rockchip@lists.infradead.org; Mon, 21 Nov 2022 17:58:32 +0000
Received: from jupiter.universe (dyndsl-037-138-187-016.ewe-ip-backbone.de [37.138.187.16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id A3D226602A7D;
	Mon, 21 Nov 2022 17:58:27 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1669053507;
	bh=rmr7jmOc3usxVuB8ZNLkxxWpQr+udADXnGkXF4GvmyU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=IQc3vARhhExM4JDSo8w9Z0lDBtvJ1R6pQRPeRaCeQpjfPzzENF2m8q1SFReblBMLy
	 vQwwBCN25zjURFA63Pp/oQuGJRwA1+QWeRJYZJEqF+r6WLZaSNaOwNmG8lvoDlrzqn
	 UthJSktsj9L91jkIZGigntOVUQPUpf83Key7wMZ7HdmynevaVSnZiMQYWPQ9J6q45q
	 gW9jgw2D7o7vmJZZ4ZzcYk0ORWXPhAEV8qXuYq1hHozmi3gkWA4Dd8AsgYvpztERv3
	 f7weJGRAopK/DtjFPzBoWbRm/mfw3VL6Uos3weAfCPSaxKcbY3F8uHMl5JueVTohiu
	 VrPhELYlzlPTQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 177FB48011D; Mon, 21 Nov 2022 18:58:23 +0100 (CET)
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
	kernel@collabora.com
Subject: [PATCHv3 5/9] dt-bindings: arm: rockchip: add Rock 5 Model A
Date: Mon, 21 Nov 2022 18:58:10 +0100
Message-Id: <20221121175814.68927-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221121175814.68927-1-sebastian.reichel@collabora.com>
References: <20221121175814.68927-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221121_095830_644174_8F719498 
X-CRM114-Status: UNSURE (   8.43  )
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

Add DT binding documentation for the Radxa Rock 5 Model A.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 9b7ac0903262..70aff0851ae2 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -620,6 +620,11 @@ properties:
           - const: radxa,rock3a
           - const: rockchip,rk3568
 
+      - description: Radxa Rock 5 Model A
+        items:
+          - const: radxa,rock-5a
+          - const: rockchip,rk3588s
+
       - description: Rikomagic MK808 v1
         items:
           - const: rikomagic,mk808
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
