Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0564C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Nov 2022 18:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=smfE8Vgk05l/PP4WdlJIFEoU+7fqCFTWAXe4R+elIAg=; b=aRD/KDgi6LrgSC
	G7zPN06vmW81jiIPYWtA2oBUA4fpt4aDiR/aLWRjM9wbRUZq1/iZDtB+2chf5yg2l0U222/qEpJk8
	vT2DkU6wb54eEjGlzCZD4CQoloHSBqFkfbZoMp4bemAWfXSzgM+yHBzCFIqgE6qc5Ofp6FvHH45+s
	heo0JbssKk8FqSFGgRKboFhHWGKq9EozX3m4no3gf27wqipc1UVrDL+6T4ua3RiDYn+VKEPLxkYqc
	Hq5u3f/B6wGqb1XmJyLYT9zCR29XEeeRtLyWm+ridw5M0CX+PujEwNEmf6nAW/04TFIMtfwadlI2l
	laFboBd8yOZuZ0jPaxvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozjAf-003kt0-A1; Mon, 28 Nov 2022 18:48:01 +0000
Received: from hall.aurel32.net ([2001:bc8:30d7:100::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozjAU-003kkp-0n; Mon, 28 Nov 2022 18:47:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
	; s=202004.hall; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:From:Reply-To:
	Subject:Content-ID:Content-Description:X-Debbugs-Cc;
	bh=SjEaXE1aM3sAT5W9UJJ2Ph7aLEZJwNJ56ePTNEKDEp4=; b=JZ3xP6egL8IFaecQFMD0ZYq98a
	WSandbky0gC70lDUDTuk55mDMvkKQPKjgFzNRd+9t94FWS7D/F9JAnjrrtxGGKmQQZq9/uZ5Sf7xr
	1LiQ7jaZrGODgM3ZN+V4sWPG63QVMk3DdbEAYhUzsKHsLu+QBNCyZ4PpkB06op3vkkSUVHk7Jsp+/
	r2GChUmEYRxuAfTERjUntLDl6sk+yfRZir1/i7UIKS4E7T6wi0XJw9QuDZwlkT+RX7YHt+7RGWD2d
	GonXMaGZyhFwcnJVvRVz6zgwbDXTfxHNf427/dI0aREvS6pbr+i8LwK355xc22+8P5AP1pIlfwvy1
	etqxjBBw==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
	by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <aurelien@aurel32.net>)
	id 1ozjA2-006BVA-Ij; Mon, 28 Nov 2022 19:47:22 +0100
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.96)
	(envelope-from <aurelien@aurel32.net>)
	id 1ozjA1-008Elv-29;
	Mon, 28 Nov 2022 19:47:21 +0100
From: Aurelien Jarno <aurelien@aurel32.net>
To: Olivia Mackall <olivia@selenic.com>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Lin Jinhan <troy.lin@rock-chips.com>
Cc: linux-crypto@vger.kernel.org (open list:HARDWARE RANDOM NUMBER GENERATOR CORE),
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list),
	Aurelien Jarno <aurelien@aurel32.net>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: add DT entry for RNG to RK356x
Date: Mon, 28 Nov 2022 19:47:18 +0100
Message-Id: <20221128184718.1963353-4-aurelien@aurel32.net>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221128184718.1963353-1-aurelien@aurel32.net>
References: <20221128184718.1963353-1-aurelien@aurel32.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_104750_490747_0520F4C0 
X-CRM114-Status: UNSURE (   9.44  )
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

Enable the just added Rockchip RNG driver for RK356x SoCs.

Signed-off-by: Aurelien Jarno <aurelien@aurel32.net>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 164708f1eb67..4be94ff45180 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1770,6 +1770,15 @@ usb2phy1_otg: otg-port {
 		};
 	};
 
+	rng: rng@fe388000 {
+		compatible = "rockchip,rk3568-rng";
+		reg = <0x0 0xfe388000 0x0 0x4000>;
+		clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
+		clock-names = "trng_clk", "trng_hclk";
+		resets = <&cru SRST_TRNG_NS>;
+		reset-names = "reset";
+	};
+
 	pinctrl: pinctrl {
 		compatible = "rockchip,rk3568-pinctrl";
 		rockchip,grf = <&grf>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
