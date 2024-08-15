Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4647BC52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 16:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H8oUDlecuPmgODIlKa7TCvPiKPuQhAmP2jOEkUSqipY=; b=lzMUi6xwjQFMWK
	h0EdDbMXJ0w5yDewtfNIwcLdO2oYYTVZxV2vP62ExUosUPRMu1GyHM1UsUbXvOakzDFPjEjSEotOT
	dK4G1F7zYgNjo4CYt3VGSobxn97udZbXrmUEH1Cl6GuYg7m94pPdelSqRcrNaRWdoay/QVJEG1h+h
	tACPREcGGdkKiy9YzYbwy4RHA5Qm0++yocACqESotdRvbnQReOWqtSA2lfp7FVxw3Z1FUT2KG0QWo
	icHV66fEw6HH7URmsRyeYyKKlxs5txqDD8AXYqAEp2D4bvGzeRJ70niTr9yqlu7tMBSvHyXG2l82Y
	UV2AFi61+w3zqoXYRf5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sedJ4-0000000AVZf-0vW5;
	Thu, 15 Aug 2024 16:26:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sedHx-0000000AVNe-2U7S;
	Thu, 15 Aug 2024 16:25:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zrEFK7BocBO/Y/PqTgglKKBtGmH+ZLwsmomcACBjF7A=; b=Tnv4/hQdv/iqgmfOLx/k5lkkeT
	TH9Vyitk9usEXDzKiObvmAqaK2K4SKIpIUMvzGBrg5YA9R505rdVR0wuR/e9SA7n2WhNwyU9Gz1lb
	xGTM5Hbadv+p3ABAwQJx+CHVHDtdym20j+oRH7ZkP9CWcClaJKZ0LFaapTNOHdudYmMLBF9jhGfWN
	Vg4992ilJ/yrlnR70C82a00U7vmE3+hb01fa+mAo4iVZDTjrFMifNvaID5xFLB85B9WRIFHlzx0PA
	JsTxyF5ov3987npzuFVZxKnbujVLMtAgSeOvXLSYzjdMnfqP6Az20hmUg97uWDqEL8RUT4NbT1TXm
	sxYuge8w==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sedHs-0005Hs-P7; Thu, 15 Aug 2024 18:25:20 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: robh@kernel.org,
	aurelien@aurel32.net,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: drop obsolete reset-names from rk356x rng node
Date: Thu, 15 Aug 2024 18:25:19 +0200
Message-Id: <20240815162519.751193-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_092525_647579_30622C55 
X-CRM114-Status: GOOD (  11.60  )
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

The reset-names property is not part of the binding, so drop it.
It is also not used by the driver, so that property was likely
a leftover from some vendor-kernel node.

Fixes: afeccc408496 ("arm64: dts: rockchip: add DT entry for RNG to RK356x")
Reported-by: Rob Herring <robh@kernel.org>
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d160a23fd4959..c29b444f9b56f 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -1119,7 +1119,6 @@ rng: rng@fe388000 {
 		clocks = <&cru CLK_TRNG_NS>, <&cru HCLK_TRNG_NS>;
 		clock-names = "core", "ahb";
 		resets = <&cru SRST_TRNG_NS>;
-		reset-names = "reset";
 		status = "disabled";
 	};
 
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
