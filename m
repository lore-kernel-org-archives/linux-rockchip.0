Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F280CC369AB
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Apr 2025 05:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tCIzqn2do284AbxpNzF60zy8v60nrTvCD9Cl/ND9olM=; b=k4wk2QezRUQQi9
	HYT3ds1Gu/Sb48+BvgF3lbncwqPEok6718lhNeh4u6ZX5RKwHOQIBtzAn8L+9V+pFBUcF/9/tKo/o
	I8MHQEw1KPzHcQ0AyU62IR4o410pVAZOrdcvicMBFfVlLJmMdihKsFCF31nRSxYrOQ2aht38caoEQ
	mdU90sZXEegs72zqR9sVq47VFSzGgYvzGmPV3MK4Zn0b+giv6mgKZlrmdMBP7OliQqWsUsl05b9eq
	Y9QZFnl+8SfoYI/00yX+WpiKBHrNtPl1pECN88FIl8CznE650kobzXjja+nHmhhQZFO+Xi4PNjqDX
	X6zJiFyC+qtZ6jWYRoNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Z1I-00000004ZqD-05W9;
	Tue, 15 Apr 2025 05:39:40 +0000
Received: from mail-m3285.qiye.163.com ([220.197.32.85])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4YhX-00000004XLi-13G7;
	Tue, 15 Apr 2025 05:19:16 +0000
Received: from localhost.localdomain (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTP id 11e6d9683;
	Tue, 15 Apr 2025 13:19:11 +0800 (GMT+08:00)
From: Kever Yang <kever.yang@rock-chips.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 5/7] dt-bindings: arm: rockchip: Add rk3562 evb2 board
Date: Tue, 15 Apr 2025 13:18:53 +0800
Message-Id: <20250415051855.59740-6-kever.yang@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250415051855.59740-1-kever.yang@rock-chips.com>
References: <20250415051855.59740-1-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTkxLVh1DH09KGh5IHUNKGlYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09IVUpLS1
	VKQktLWQY+
X-HM-Tid: 0a9637e315c703afkunm11e6d9683
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ngg6CCo*ETJKLBodCgEyCikP
	OD0KCiFVSlVKTE9PTUJPSE5ISk1MVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUlLQkM3Bg++
DKIM-Signature: a=rsa-sha256;
	b=e47aDxT1kloBlZcWK7cuK59wY4peg4CzWT3p5fjlif+O1fsBWOExcG/FXNePp3XhUMC+EYFLkHGgukA9R7tl7zoAr+36KyP56vXzCq/Luot8I7zQXcgOzLNiFUhr/xSDEXhkVCPx2xaC+KKBKCg0OYfNJZwOdrZ704CoGj6fpwg=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=5Rcl544JYRQBkKjgzj1ImfOm26zzkXaJKROFu1KH30o=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_221915_438305_9FF34DD9 
X-CRM114-Status: UNSURE (   6.72  )
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

Add device tree documentation for rk3562-evb2-v10.

Signed-off-by: Kever Yang <kever.yang@rock-chips.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes in v4: None
Changes in v3:
- Collect the Acked-by tag

Changes in v2:
- Update in sort order

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 650fb833d96e..ee9f8fb93664 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1057,6 +1057,11 @@ properties:
           - const: rockchip,rk3399-sapphire-excavator
           - const: rockchip,rk3399
 
+      - description: Rockchip RK3562 Evaluation board 2
+        items:
+          - const: rockchip,rk3562-evb2-v10
+          - const: rockchip,rk3562
+
       - description: Rockchip RK3566 BOX Evaluation Demo board
         items:
           - const: rockchip,rk3566-box-demo
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
