Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4F2DC021B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Feb 2025 16:52:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HG6TWQEIs2Rw+mB4IUBeEj0kliwfeD9HQstpVI76dDA=; b=WM5EJ16g5lX07I
	Isbic5n07RaTU8ymhUPrty7S+KEiHebb7horSae2Ed0Cr6KDB3fLs5mb2uoSOqjxUh0exA+taZVJR
	V0NhNI/NRksknxy+T3FmNSBkCOQC+QoiRXD6M23uK+JaXMAR/rp8Rw+oXcfp6GK0ovCPabdUiUj32
	XSU4uFkU0mevRqnJh9MKg8XCgoMM9G3K2OtxslgYNVdAh7VYyeLvEhrXtwTuHhkPrZw6szFnpLCmv
	XG3MK85Nt4JjDY8IZFwFHRNQrpFlQtdLpAo2neoU/U0F6tMMZn4JEpwZLIOHwWQY8UTu1fV7ojV5Y
	R+lBcUWOVfMmrsX0XrSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9mr-00000001yZD-2rtZ;
	Thu, 20 Feb 2025 16:52:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tl9lM-00000001y9Y-2ykf;
	Thu, 20 Feb 2025 16:51:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0E71E5C5E04;
	Thu, 20 Feb 2025 16:50:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B80C4C4CED1;
	Thu, 20 Feb 2025 16:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740070259;
	bh=9xnTEjnQhes40qnNUz2hg5pdStiqILnkPcPo73VxwE0=;
	h=From:To:Cc:Subject:Date:From;
	b=k8tNCes7z0/TK6ne9UBLeCCHhFNFhsKBuRLRWAJuG1O59ZNUwaTILEK4WJI//9S5y
	 6t1B09kRjVBOQ0Hh6pTK5fsDXAtc1QGiCcwxYO/xC13fcKY4nPpwckLCVoUBtnmGqW
	 Wa7HQdSvnArJco/gm/jpVggrB1uFeCL1Ct+AjjkEv6vn/4w0/Ul+BPcXZM/nO800Cc
	 wwV7K1u7EIFrjLXlxkHLN/UEmtdoGzoXW5pFPRcW/BtBjxdAnJ1KEuF7DKkbyXoCuO
	 LjBGLxOnnt7Ao3hQRs7M8idp464yoHOl9Z/vGxky1/9BslO4QyrYf2cTEZBDg81gXa
	 AjILnOxviEGAg==
Received: by wens.tw (Postfix, from userid 1000)
	id 2DBAC5FB8F; Fri, 21 Feb 2025 00:50:57 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Shengyu Qu <wiagn233@outlook.com>
Subject: [PATCH] arm64: dts: rockchip: rock-3a: Remove bluetooth node
Date: Fri, 21 Feb 2025 00:50:51 +0800
Message-Id: <20250220165051.1889055-1-wens@kernel.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250220_085100_790068_66200CC8 
X-CRM114-Status: GOOD (  10.31  )
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

From: Chen-Yu Tsai <wens@csie.org>

The Bluetooth node described in the device tree is actually on an M.2
slot. What module is present depends on what the end user installed,
and should be left to an overlay.

Remove the existing bluetooth node. This gets rid of bogus timeout
errors.

Fixes: 8cf890aabd45 ("arm64: dts: rockchip: Add nodes for SDIO/UART Wi-Fi/Bluetooth modules to Radxa Rock 3A")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 14 --------------
 1 file changed, 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index ac79140a9ecd..44cfdfeed668 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -778,20 +778,6 @@ &uart1 {
 	pinctrl-0 = <&uart1m0_xfer &uart1m0_ctsn &uart1m0_rtsn>;
 	uart-has-rtscts;
 	status = "okay";
-
-	bluetooth {
-		compatible = "brcm,bcm43438-bt";
-		clocks = <&rk809 1>;
-		clock-names = "lpo";
-		device-wakeup-gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_HIGH>;
-		host-wakeup-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
-		shutdown-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&bt_host_wake &bt_wake &bt_enable>;
-		vbat-supply = <&vcc3v3_sys>;
-		vddio-supply = <&vcc_1v8>;
-		/* vddio comes from regulator on module, use IO bank voltage instead */
-	};
 };
 
 &uart2 {
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
