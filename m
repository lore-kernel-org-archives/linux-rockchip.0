Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B301EA3F1C
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Feb 2026 08:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jt0tDaNpT3IT8By/+HanjUTfO5Af2iZ3q7gaDY2O5WY=; b=PGHqvIrPyosWmi
	1DZ11SsiskZhl1DzUBjjeTXvziO6R51tlFtgsihYb1n5V+BVHYRwN6f+++10ULGCk/HLw18NK0hA9
	DIX56eIASlCVKLjKmqf1LeatAe9KjJcQRhXlpBRSv8dvOtsFBCAHYfIdTrcHpT8l61UdWecGb7lu8
	IcCqy0FMHLquRahPRVGdrWyTeiSMfKjgHFVwkChKod2Js97/LD6Upm9PLlNsFN7jpvzWwYoL/YXBM
	sZXcbgg3N1pYrIHzXzYU3c6OCqBKZAF/DxoJne8hHvmBMpcxCilIYwD/8POyEVz0jHbY8uVh1R6W9
	ZcSuzNgC9Ki7nZM0ouBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpiiG-0000000Gf8a-0i1a;
	Tue, 10 Feb 2026 08:03:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpiiC-0000000Gf6H-1vQz;
	Tue, 10 Feb 2026 08:03:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=lMrn2OuSs8+Po/Mt1LAP2KnbJwlgAoydGZL4dwq11Zk=; b=KfDwCRDlrRzxU6L5DGjSY2u5lt
	H8NYV5CpQJ7QOH5kxXhjhhzcJFUIZK4kMmZOoZJD6dDKPC8/eqvydDnxw26gmkPlt2fnlonI5oTlZ
	jHGebt/cS/Il+NCWVlHuV/436pBdDDs4ka3M/Z+8kVpP6fakt8OsVtJqyiyeH2voTbnNtij69k76U
	dMMpEBt5P8c0l/2ysfJMSWgIppHeg2g1Lw24mVs9ApRmnBmUVSVgpI1baoH5fdFUqZ+lF5YLHGK+I
	4B/io/p4ju1BBJzPDAWrw/OcLeOAr9nsULdD7R8t6jO2XROdnM/kCkysBRoYRktTxcKVQgui3J2hQ
	iH4gPnmg==;
Received: from i53875a81.versanet.de ([83.135.90.129] helo=phil..)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vpiiA-007v2y-1K; Tue, 10 Feb 2026 09:03:06 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Make Jaguar PCIe-refclk pin use pull-up config
Date: Tue, 10 Feb 2026 09:03:02 +0100
Message-ID: <20260210080303.680403-5-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260210080303.680403-1-heiko@sntech.de>
References: <20260210080303.680403-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_000308_520884_D8138525 
X-CRM114-Status: GOOD (  14.52  )
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

Different to RK3588-Tiger, on RK3588-Jaguar the signal enabling the
PCIe-refclk generator controls a transistor which in turn controls the
output-enable input of the PI6C557 and there's no external Pull-Up or
Pull-Down between the SoC and the transistor gate.

On Tiger the pin is directly connected to the PDn input which has an
internal pull up.

So match that behaviour on Jaguar by changing the pin config to enable
the SoC's pull-up config.

Suggested-by: Quentin Schulz <quentin.schulz@cherry.de>
Fixes: 0ec7e1096332 ("arm64: dts: rockchip: add PCIe3 support on rk3588-jaguar")
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index e21ad7575cb6..5f5d89a33a4a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -579,7 +579,7 @@ led1_pin: led1-pin {
 
 	pcie30x4 {
 		pcie30x4_clkreqn_m0: pcie30x4-clkreqn-m0 {
-			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
 		pcie30x4_perstn_m0: pcie30x4-perstn-m0 {
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
