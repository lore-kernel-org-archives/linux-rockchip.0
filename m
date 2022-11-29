Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC08EC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 07:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5yWHDqccz5Z9oA+7EM/CuQmp3LF+f24QJTERGIFBYhs=; b=lfnMP00wA7FmTd
	vDentJpx3BKqoSw4qMWrCWEIWOqyQ0lCCg0I0GUzQeg5pLqwN/5Nsau2z3lXGaTnOWRuKEAxfHBWc
	I2KqSiOKqx39hEKMmbNS3wNcsO02jLrnEZ8pwDypzz+zfGCZLyocHnZo+qiVqvsZaIfquWrjci45K
	w6pBa1/f+tLiHYclYZbjbCTITZnzFKsiOoUs/FpSQ2wsQNqqzRVCw2qaqELe4VPIpPi79P+bo1oeu
	GQ+vxUsgtGKndqkBy8+fayIP8UxXVUR8nlIl6Ya3QHpnEHVHJsCMuLzUNmq3/yU18fl4w6X2wv/Cn
	ABzHZm0HV0ZXyx8cPLBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozuhl-006mtR-BM; Tue, 29 Nov 2022 07:06:57 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozuhU-006mmP-7h; Tue, 29 Nov 2022 07:06:41 +0000
Received: from amadeus-VLT-WX0.lan (unknown [112.48.80.27])
	by mail-m121145.qiye.163.com (Hmail) with ESMTPA id D715D80021B;
	Tue, 29 Nov 2022 15:06:36 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Peter Geis <pgwipeout@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 1/2] dt-bindings: Add doc for Radxa ROCK Pi E25
Date: Tue, 29 Nov 2022 15:06:13 +0800
Message-Id: <20221129070614.19720-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCSh0eVktNQx1IS0hKGRlPT1UTARMWGhIXJBQOD1
	lXWRgSC1lBWUpKSVVPQ1VDS1VJTFlXWRYaDxIVHRRZQVlPS0hVSkpLSEpDVUpLS1VLWQY+
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Py46TQw4Qz0fLBwiNSwYI0M9
	KTlPChlVSlVKTU1CTEtOTkJMTU9OVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	SVVPQ1VDS1VJTFlXWQgBWUFJS0tLNwY+
X-HM-Tid: 0a84c2358145b03akuuud715d80021b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_230640_429685_71941258 
X-CRM114-Status: UNSURE (   6.44  )
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

Add devicetree binding documentation for the Radxa ROCK Pi E25.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 88ff4422a8c1..4087ae87f61f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -625,6 +625,11 @@ properties:
           - const: radxa,rockpi-e
           - const: rockchip,rk3328
 
+      - description: Radxa ROCK Pi E25
+        items:
+          - const: radxa,rockpi-e25
+          - const: rockchip,rk3568
+
       - description: Radxa ROCK Pi N8
         items:
           - const: radxa,rockpi-n8
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
