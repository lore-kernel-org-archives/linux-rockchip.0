Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A839C5AE5D
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Aug 2026 12:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2KGnzUpBpdrRxfvOmXBE8ZhDFqE4/IWZ43khiTMkjM=; b=f1myHD1hJyXQay
	Z2lw1NWpc+zerd1NSyBqCmgtlZ882oIKsmM+ALZvAsgrZe99n+j0Lf3IIiA4Amgp4Dy0RwAVDCqRQ
	3bOxbjVcwjJ8IFO2gOvh+JRSn1kXK4GlNWDDVRCEYfNHs1yUNm2Qd2jQZL1X3Djiiy1viraSHS/vm
	0saIQ2NGy7LgpCHXeMeBTQohLwCJeRZGDk+g46n6UYBVJHiiLYcFk/esfQO1IwTA/vfE1E1MGhSdy
	J5MfJJDEyQB7N1VhjuI+CLGnwKOoVjrlXPAzXxvwazsEBhhcE4DOvEq4w9UsZHJHSZTFzcRemxgnZ
	L3bNS9b8Hg1K5oSDzusA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOvu-0000000BjyG-3dO2;
	Mon, 10 Aug 2026 12:16:47 +0000
Received: from mail.zlab.su ([109.73.193.145])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtOvf-0000000BjTc-1IAx;
	Mon, 10 Aug 2026 12:16:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id E46DEC0519;
	Mon, 10 Aug 2026 15:16:27 +0300 (MSK)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zlab.su; s=dkim;
	t=1786364189; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=zmEzOagfD/gxsGiGWHAJSJv8bTNucnmIbKN5W/YS2eo=;
	b=pyg4r4ZOIP9A/e3kdcpDnIlTXtmyR5dwMrmgno9ZP5ew3iEcFwaZVfRNk7YOiaZyLQtYCb
	rzNSDfG6tyrz/kCInE5gSG2ccLOdw2WGGZAEdIAkCJ+c3kI9H18aLFHKl54NtX0xijNA/R
	JosPeXsGO+0aMDEM99TwER0f+2rH8oiPgEq8eYfH0lFCFxYXI4WVKtkmdqwDFv/FmJg6Gf
	LFhaImskTfnvKKDQZuAfBsT9Lf194h04ZYTMnultP+paLeSH2zIA+rCJy11tNsVKQro8wR
	I5E22s/S55vXFpAjM/+smuqrwfBnBuc8hiSYRQX/BnSFiBTUkbW4Px0p8uujIg==
From: Vladislav Leonov <vlad@zlab.su>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Vladislav Leonov <vlad@zlab.su>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH 21/25] ARM: dts: rockchip: Add RNG node for RV1106
Date: Mon, 10 Aug 2026 15:11:12 +0300
Message-ID: <20260810121121.210040-22-vlad@zlab.su>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260810121121.210040-1-vlad@zlab.su>
References: <20260810121121.210040-1-vlad@zlab.su>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_051631_597282_6823F770 
X-CRM114-Status: GOOD (  10.38  )
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

Add the true random number generator (TRNG) node for RV1106,
compatible with rockchip,rk3588-rng. The node is left disabled
by default and can be enabled in board dts files.

Signed-off-by: Vladislav Leonov <vlad@zlab.su>
---

 arch/arm/boot/dts/rockchip/rv1106.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1106.dtsi b/arch/arm/boot/dts/rockchip/rv1106.dtsi
index ce2f169b1acd..5db640a6ba90 100644
--- a/arch/arm/boot/dts/rockchip/rv1106.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1106.dtsi
@@ -255,6 +255,15 @@ dmac: dma-controller@ff420000 {
 			arm,pl330-periph-burst;
 		};
 
+		rng: rng@ff448000 {
+			compatible = "rockchip,rv1106-rng", "rockchip,rk3588-rng";
+			reg = <0xff448000 0x200>;
+			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru HCLK_TRNG_NS>;
+			resets = <&cru SRST_H_TRNG_NS>;
+			status = "disabled";
+		};
+
 		i2c2: i2c@ff450000 {
 			compatible = "rockchip,rv1106-i2c", "rockchip,rk3399-i2c";
 			reg = <0xff450000 0x1000>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
