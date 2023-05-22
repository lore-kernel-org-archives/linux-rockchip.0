Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DD9AC77B73
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 May 2023 17:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DD9Y4bL7139Aeqz7tL3pdZNS6sIgEP2uM/dHPiHncCw=; b=io18k+qqScdIRv
	caxrBKoXsvAeaqdqWvM0bQp3moFPRWl9G3GmpxR+yo8ZohlCGvXW4vWMbdNVM1jtJLdyBs2cE1GG6
	2j9+j0p/nxu2qc+GIw44R5woY+gIgkWxHDcaRgJtVV2ZoeuOVt+uewBe6jdYf18ST3VOchAXwPq0j
	P8gHP2U2ZWFB42OBh9/TRouapIFNWSBopwEp3vG6hcogHrDA4ldNfUoEBi7lAcYuiuVEIbKO90Hcn
	Cu8jmyblbkaqFYoBWO16xVsCCPfU77vSEFp0WKi/YFPi+LqCVc4fBiFUT9KD7xK9u+Dywo9ZhzMB5
	i5s4KC8RS0esSXWHUJ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q19Qe-007Nsr-1T;
	Mon, 22 May 2023 17:34:40 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q19QY-007NnA-2G;
	Mon, 22 May 2023 17:34:36 +0000
Received: from jupiter.universe (dyndsl-091-248-208-162.ewe-ip-backbone.de [91.248.208.162])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 35C3A6606E6C;
	Mon, 22 May 2023 18:34:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1684776871;
	bh=BoZKga0PfOsPfbrInX0w9l4g5csiejtz4nprxL0MYaE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l6Yb8tmQvVAxBYgC8BmNK9J+p20HUxcvpJSEIQNHO8zknX6vcLYLdqzZfSh/v1khR
	 QVFH4L1q0usZrBVoVswIL2opZJ8nXACy7CbVhdAOM6l1NQNDHou8u6Xcx/ygQOzDmg
	 EpeoOsx4d8nlnhNqcogBhGVG91Yu/hhXwFcGx7Rk9QXv1GKFQKe+i+KfqRvdRJFsj+
	 zSo8HlWYhYNiUtLqCc9NuE7cEWFqLCGCOTA5Anpy/G0FDSWzVu2NkJBTPsi0FG4vBo
	 3ZKSIBgzdFqCMA1OemN20yn+PJaSf1LFI9hRQf5kBxkXFDaxi1g/I4/u4In7C/VDTB
	 4Szw/jMpV0Zig==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8F6C34807E3; Mon, 22 May 2023 19:34:29 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 4/6] dt-bindings: phy: rockchip: rk3588 has two reset lines
Date: Mon, 22 May 2023 19:34:21 +0200
Message-Id: <20230522173423.64691-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230522173423.64691-1-sebastian.reichel@collabora.com>
References: <20230522173423.64691-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_103434_876149_22F341C0 
X-CRM114-Status: UNSURE (   9.81  )
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

The RK3588 has two reset lines for the combphy. One for the
APB interface and one for the actual PHY.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../bindings/phy/phy-rockchip-naneng-combphy.yaml         | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
index 9ae514fa7533..82550a5c2ed5 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
@@ -31,8 +31,14 @@ properties:
       - const: pipe
 
   resets:
+    minItems: 1
+    maxItems: 2
+
+  reset-names:
+    minItems: 1
     items:
-      - description: exclusive PHY reset line
+      - const: phy
+      - const: apb
 
   rockchip,enable-ssc:
     type: boolean
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
