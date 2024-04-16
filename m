Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BDA4C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 13:01:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KV8N4aZ4lUFit0YxJ+j7gQKPQVVyAp+WM26idFK0atw=; b=XhdvtNLsBpefdn
	qyfo9QPLKUlJhth39pL95FMa+ii8L/IZgKnd4kjMJ1OmT/r8iygElJLMziU8mkZueJ7qdstlhuUnX
	WnZ2xBBSPE0ayA7GIkvb0WMMqNqI6yvPTqBmIc/ESBE/GZGxk6625CVNFNc6wayVpZYRtPxrHH/Ne
	2C67uosLTSXGSHEhbtAC0MVYZ9GpSnFQRJMH0YOoDeohBoPaDRCmLQ6i4OV1Q2DfDpkSECqgiz1OA
	lZpOc3W8t6LAo4285ECA7e/KBCvmRI79Gdiv0Wi6xwLn7ggdouy4j0zpHhVuw8dX6fmeQqtjf7eyJ
	b5XyXHs26Ti7IFO7W2lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiQf-0000000CDf2-1yfe;
	Tue, 16 Apr 2024 13:00:53 +0000
Received: from mail-m6037.netease.com ([210.79.60.37])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwiQX-0000000CDcf-0qCd;
	Tue, 16 Apr 2024 13:00:51 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:5e10:948:ebda:821b:6681])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 437647E0101;
	Tue, 16 Apr 2024 21:00:16 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: add Radxa ROCK3 Model C
Date: Tue, 16 Apr 2024 21:00:09 +0800
Message-Id: <20240416130010.379705-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDQ0hLVhpKGR0YHh1DSB9CHlUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlPSx5BSBlIQUkYS0tBTh5KS0FCT0NBHhkfGkFDSUoZQU1NQ0pZV1kWGg8SFR0UWU
	FZT0tIVUpKS0hKQ1VKS0tVS1kG
X-HM-Tid: 0a8ee6fe68e303a2kunm437647e0101
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Oj46PTo5VjMUAQ0vLBkBPR0a
	TixPCj1VSlVKTEpISUxJT0pNQ05NVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBTh5KS0FCT0NBHhkfGkFDSUoZQU1NQ0pZV1kIAVlBSUtOTzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_060045_504639_4EF745B9 
X-CRM114-Status: UNSURE (   6.61  )
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

The Radxa ROCK3 Model C is a similar board to
the Radxa ROCK3 Model A with the RK3566 SoC.
Add devicetree binding documentation for it.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 99bd5e2c76a0..dc3847bd67fe 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -777,6 +777,11 @@ properties:
           - const: radxa,rock3a
           - const: rockchip,rk3568
 
+      - description: Radxa ROCK3 Model C
+        items:
+          - const: radxa,rock3c
+          - const: rockchip,rk3566
+
       - description: Radxa ROCK 5 Model A
         items:
           - const: radxa,rock-5a
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
