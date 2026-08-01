Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCE34C5516F
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 08:01:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eu6hU0cX6dWYOH+UeceJnLJb113PSNaQNb0yG4+fK0E=; b=gYGoWlYDBJm5r3
	PVEMyx8Egt/rME+IA4IPVRapkWbFFzHm92r6lTo1NMnmf0xDP6FqGX93F2+YuMUMXlo3IK3Rxu5sT
	ARXhm3ohFRzCM261OsDdY01JaNv4Wxep74N+AD2NQUgxkb8aevc2oaWEt2+46oqsvkHZZz256vn7n
	4XXsKZGWpj4PoOXs9v8Ir6Npd2yiwFzwtXIHVVh4WyfpGuu//kvjy2VB/RPwg2PwImWXZ7MTpLMIz
	xJjTejbjXsWGXzB1kg5dlV4lZQkeLgdWxSrdPHRvFuAOwketykS6oMf7wmWQDe3OYo5N4G0UWcx+r
	W8W9t3jd+8Z576JTiGnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wq4ex-0000000E1Zq-2xDa;
	Sat, 01 Aug 2026 08:01:31 +0000
Received: from mail-m155101.qiye.163.com ([101.71.155.101])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wq4eu-0000000E1Yb-1QHY;
	Sat, 01 Aug 2026 08:01:29 +0000
Received: from Vostro-3710.. (unknown [14.220.232.116])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4866afe8e;
	Sat, 1 Aug 2026 16:01:15 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add MangoPi M28K
Date: Sat,  1 Aug 2026 16:00:17 +0800
Message-Id: <20260801080018.3220034-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260801080018.3220034-1-amadeus@jmu.edu.cn>
References: <20260801080018.3220034-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Tid: 0a9fbc57710003a2kunmbde8614f2070e8
X-HM-MType: 10
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaSB9NVk9CSh5NGRhDSRoZTVYeHw
	5VEwETFhoSFyQUDg9ZV1kYEgtZQVlKT1VJSUtVSUhJVUpKTVlXWRYaDxIVHRRZQVlLVUtVS1VLWQ
	Y+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_010128_569166_AE443F2A 
X-CRM114-Status: UNSURE (   7.57  )
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

The MangoPi M28K is a dual-gigabit SBC developed by Widora based
on the RK3528 SoC. Add devicetree binding documentation for it.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index aa66a15be233..45fee0c5076a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -803,6 +803,11 @@ properties:
               - lunzn,fastrhino-r68s
           - const: rockchip,rk3568
 
+      - description: MangoPi M28K
+        items:
+          - const: widora,mangopi-m28k
+          - const: rockchip,rk3528
+
       - description: mqmaker MiQi
         items:
           - const: mqmaker,miqi
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
