Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 731E9C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 18:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CVVr6p5cShyAnO9fq55BdLvZQ1O4/+Ia7zlU+gL++2o=; b=mv1XKLbRXi14Jd
	4AHZ2mcGRmRWdSFM+X/vr8SonmFHxlicSjO5+BTMDPZ34Ex7RG6hCCvO5lYEYzv9XsRbeL99ENkv9
	3i8AXJwHrnHy6Mfm/dXtsKVM3shpbT3YTnMoNzS+TKzvHM5DiezuAZcv+tbKqHgUPTxKCdwUVqOb/
	5BvHLF14kA5kW/58CAYOREOFQ2lwTAmVbv1TaQU/ZMg0gALDmPWdFcsMys36SYZ4XHgl5VGlTAorB
	7vfVKfWlzNxQrc7I9IWrVfwKSE1Iw4ElcLoIfbrdzb8xN77J+7zc1KencI/a02wx/qblscROFyJD3
	4Ni7DLS6AXcI51TxWvig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5szi-00ApoA-H0; Thu, 15 Dec 2022 18:30:10 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5szf-00ApmK-Tv
	for linux-rockchip@lists.infradead.org; Thu, 15 Dec 2022 18:30:09 +0000
Received: from jupiter.universe (dyndsl-095-033-168-084.ewe-ip-backbone.de [95.33.168.84])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 66AF46602C78;
	Thu, 15 Dec 2022 18:30:06 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671129006;
	bh=JrkPCmt11vGrQFut6ULxfM8O00Zz2V87Kt2M7Bmk3uM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=de6PlJ6fBboBZwB9QAxaB8Xd5OuKjHVCVPhUjxc+uYbPtgBqbJY1t9/xPBrLS5bVC
	 io4UPJ/i0mXb3csvVkJ+rqYbGdAhK/8o9rwnBnEkB6XQvmYSY5uMJmn/p7VWc5Xgqy
	 7Rpr6Gmlq6zOQy0DXacQPfAYlddMJvf+UFm1LabwK1t/L4u9kCoasOFkW8AofHr4pF
	 WnCDA7bOKXfesGfMHSP0qene639HZn46ZgnzKESJwgLI+P5vW4TEg5goQ7b+aYSUdv
	 PPZcqDpAyIWxJh49OV2PoloL3VxR+k4ioRatdCYPSURQYInM57MXcc+ooAjbkGt2/f
	 XSs8yaVLNAHGA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 5486E48011E; Thu, 15 Dec 2022 19:30:03 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Marc Zyngier <maz@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCHv7 4/7] dt-bindings: arm: rockchip: add initial rk3588 boards
Date: Thu, 15 Dec 2022 19:29:59 +0100
Message-Id: <20221215183002.211081-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20221215183002.211081-1-sebastian.reichel@collabora.com>
References: <20221215183002.211081-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_103008_111031_95CF373F 
X-CRM114-Status: UNSURE (   7.81  )
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

Add DT binding documentation for the Rockchip RK3588 EVB1,
Radxa Rock 5 Model A and B.

Co-Developed-by: Christopher Obbard <chris.obbard@collabora.com>
Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../devicetree/bindings/arm/rockchip.yaml         | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 88ff4422a8c1..01a6a93c940d 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -652,6 +652,16 @@ properties:
           - const: radxa,rock3a
           - const: rockchip,rk3568
 
+      - description: Radxa Rock 5 Model A
+        items:
+          - const: radxa,rock-5a
+          - const: rockchip,rk3588s
+
+      - description: Radxa Rock 5 Model B
+        items:
+          - const: radxa,rock-5b
+          - const: rockchip,rk3588
+
       - description: Rikomagic MK808 v1
         items:
           - const: rikomagic,mk808
@@ -736,6 +746,11 @@ properties:
           - const: rockchip,rk3399-sapphire-excavator
           - const: rockchip,rk3399
 
+      - description: Rockchip RK3588 Evaluation board
+        items:
+          - const: rockchip,rk3588-evb1-v10
+          - const: rockchip,rk3588
+
       - description: Rockchip RV1108 Evaluation board
         items:
           - const: rockchip,rv1108-evb
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
