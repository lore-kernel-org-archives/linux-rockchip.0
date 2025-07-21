Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2E23C83F1A
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Jul 2025 20:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TlbgefUkCL62+MRnZHUb3PAjmGhzdVRsShDm05KyU8c=; b=ZD17MCocaX3Vcx
	5j7x33MCPGUQdloP1Vqx1DDp/TD/SFOnOBWIQGY21jLtQhgWcuMGQPwFRABvU75AvUH1wOiKxfqym
	9Kn4WahyUja5vp9NKYbcCPLASmnFq9ebgKWQGj3d5Lq6zw+TILjaNKZ9lwWDChASq5mrBACuWweKp
	9yBR/LhUfqc6dv2HQRL0wVnF/sJi3QM3AH2lSmRkGLa1C3x6PWT9eBmOLLK1S52WDFyOw3RvA8WNX
	liLEogBdNWfXW8Y5wv1GRQFvxrniR+7GkSdSNUfGuBxSYb7WBLpd5wAzGWOS8Wq5Wy5fKgfVLE+Xn
	JEpjbGwKSR8NqHLh2n4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udx00-00000000bwD-0TqA;
	Mon, 21 Jul 2025 20:20:36 +0000
Received: from chumsalmon.baetis.net ([2001:19f0:5:5b58:5400:5ff:fe17:97e8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udwro-00000000aLB-0n1V;
	Mon, 21 Jul 2025 20:12:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tahomasoft.com;
	s=default; t=1753128726;
	bh=lbNJOuD5DxygxivCxcXM0GtHg4S7UZs0gYbcGcYNsx8=;
	h=From:To:Cc:Subject:Date:From;
	b=GqMl7YqUwr2bMcVWnRstt9EW0dKJ7mD8r+MjRBxppJfSs+2S032nqdTHxnIm+u9sc
	 bTkycMMfp52xCDw9eZY//cxZgAMl4Mb1sDboQB+Oy+Sc6qkm4+oy3SCTxU8gCZ843c
	 S6eqSSq4JqcRgInWYc/VxI0HVryZQpEcGOYkR07NvHUa0QnNZo000Ujfy6TVKqfEfS
	 Fi9Z6kJA9KC2KzY8LMiT4kcwky9oYptA9bTYIvpI3Yab/gCcLTHzzLPJITrAgo57it
	 3mpjOxi67pMbtKKWynnYGcSHWX4NDfAFkMOHKVt192O/jKiGQIhbmY1DmrgkMnJYpe
	 n+p5EZT+iZHMg==
Received: from localhost (unknown [IPv6:2600:4040:50b7:b604:da10:58b0:4f02:7df4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by chumsalmon.baetis.net (Postfix) with ESMTPSA id 48A0E27E5BC;
	Mon, 21 Jul 2025 20:12:06 +0000 (UTC)
From: Erik Beck <xunil@tahomasoft.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Erik Beck <xunil@tahomasoft.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2 v2]: New board support,LinkStar-H68k-1432v1 (RK3568)
Date: Mon, 21 Jul 2025 16:11:56 -0400
Message-ID: <20250721201157.233237-1-xunil@tahomasoft.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250721_131208_285994_B32C5C3B 
X-CRM114-Status: UNSURE (   7.95  )
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

Signed-off-by: Erik Beck <xunil@tahomasoft.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5772d905f390..7f3904b69293 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1109,6 +1109,11 @@ properties:
           - const: rockchip,rk3588-toybrick-x0
           - const: rockchip,rk3588
 
+      - description: Seeed LinkStar H68K-1432v1 RK3568
+        items:
+          - const: seeed,rk3568-linkstar-h68k-1432v1
+          - const: rockchip,rk3568
+
       - description: Sinovoip RK3308 Banana Pi P2 Pro
         items:
           - const: sinovoip,rk3308-bpi-p2pro
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
