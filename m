Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54FCECA5FDD
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2026 14:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8DmyYgC9L70XtHdf3K5MULMJUJPiEVY9OujbV3N4pAg=; b=SAUBJ9UO3L2uDE
	qfBG0Q501moAkjTrQcdWFVIbamrPofv35QbUZU+nT72nyAi2aI1cIA1bJEMjptbtsTRh1wJVYAuhU
	IBzFvW1s1b9V6hM2y67gfki2RGlsVRRjFzIdXySQ5HEYFqO1UesILEaO3jKMycfHAS1gm+LJct67D
	lACa91sjLEtLDm6RqOaIncOcTBWvIdC2gS9JOFS0AdNRFHQ6F7F4eu736ePm/oRE7mtIBMDVKi5MP
	vsrWeS0t5TYUr0MyllqfjR/Y8tWqb3nHsjVt3GPviZwVgKT9497q5M6edLz6GdEcKqAf0KBnfTJiX
	J7AnCPYZGpi20r2KyO7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCdrO-0000000BjU1-3atU;
	Fri, 02 Oct 2026 14:03:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCdrL-0000000BjS1-3LOf;
	Fri, 02 Oct 2026 14:03:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=bvmjk8+3isiEx/PbL0NMnF+Vy0Eg5tTMHHc6McK7PbA=; b=qmqbRWZ0QowXq2Swaa/U2k2OC7
	71mnCUypmoTjQCix0mXwDK6JT31JOQDc1ouX+aOp6vhjXkDPK6W0IwKfMx292qVRgdRX2vO/23mCo
	5HBtIRaWMQ7rKofXm/JPx3i+NODHDdbQLDU2gZL1BOlnLqFccx1OdeGb8gGYpGPGUtXtNAsQMnMtr
	rpFqV2NN0WqegvvRximHTrD+NCf7QI7Ew4Seus2T/d3OSleUAzbgvobbebkdbCPE6GvUZPs5lIkD8
	EZ6nDzUfYE4mhP0xsyBsGhVtciLe3O+iOIbguwdI9QeWze4QR1ePCpuUiXZ8B1RnJvRGl21q8Ewpx
	hw3JBlVA==;
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	quentin.schulz@cherry.de,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	damon.ding@rock-chips.com,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v6 1/2] dt-bindings: arm: rockchip: add RK3588 DP carrier from Theobroma Systems
Date: Fri,  2 Oct 2026 16:03:29 +0200
Message-ID: <20261002140330.2904616-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261002140330.2904616-1-heiko@sntech.de>
References: <20261002140330.2904616-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261002_070335_833011_E6211802 
X-CRM114-Status: GOOD (  11.11  )
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

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The DisplayPort carrier is a very simple baseboard only providing serial,
ethernet and a displayport output.

But its main functionality is that it routes the Analogix eDP controller
to this DisplayPort output, which allows to test that controller simply
by hooking it up to a suitable monitor.

Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index a799bb843f74..3b270690afca 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1336,9 +1336,11 @@ properties:
           - const: tsd,rk3588-jaguar
           - const: rockchip,rk3588
 
-      - description: Theobroma Systems RK3588-Q7 with Haikou baseboard
+      - description: Theobroma Systems RK3588-Q7 with baseboards
         items:
-          - const: tsd,rk3588-tiger-haikou
+          - enum:
+              - tsd,rk3588-tiger-displayport-carrier
+              - tsd,rk3588-tiger-haikou
           - const: tsd,rk3588-tiger
           - const: rockchip,rk3588
 
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
