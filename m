Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 025BEC433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Nov 2022 16:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XAwWORgjQHooxR6w7U6PSUUSFbwR0yitV8bleh3hblg=; b=GmsCfgW/YtSXHk
	Q8+NSDMrJwy7w3lstLgLYq2QHvL1l6e9MsDCYObvNHoI4vy6+S6NhamkbZT+wX5T65db3bn/sDhcY
	/cydfgyZX3e2aZFQ7Tc9+6/+v4dZQcBuxNJInP8wnbMZLLN2MSPP754S3Zfz6Fftr97J3Kn8oez6G
	mpk3l9gWhkr/2oNZtRkr5kCkRsIVccNk/MHCwEv42z1Q3qT3hEWn74L4mG1UbM8cWUu6sIoVkXlHF
	aGP2rR7P/SlkW+CaSpx+DcsyrVyJOTyv0CP1wVWIg2uoaGEeOzwWDt/4+VLeuOF9D9I2l7OEsxv95
	ScLcCvDY8f95goJEtLQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oriJ0-008luq-6n; Sun, 06 Nov 2022 16:15:30 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oriIq-008lsQ-EH; Sun, 06 Nov 2022 16:15:21 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 91FB160C98;
	Sun,  6 Nov 2022 16:15:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DECD0C433D6;
	Sun,  6 Nov 2022 16:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667751319;
	bh=FbLISYc+tCx9bORuK7HTC44fJsuZf4FUlfuVM5oFnB0=;
	h=From:To:Cc:Subject:Date:From;
	b=An+Fvj3T4KVMz0MzSpXzyc3HtdizksxaU7d1CrP97neOo84uokPuoDTV8UGyQ2Z5b
	 NPKLtKoze+mdNGmszyy2b707IdE3GSusYukPdK3gIUQ9tzn4kLQqYHLQb7o6puMMS/
	 yl4FtsGrqwO8qhLd5IZNvsThy2vVcdfr8DvrxlUWn7dgzpZRxJkXX3/UJdtq6gyhcp
	 FF8LQpXbEMKrfQKQ6clI1zU+ndgD5poP25KVPdMUbWmx34VivqCFGWvQEFaqJz3K+b
	 ICOoXxUEOzAPZ75HY/AWHuogoWyb6w2DHefu/jhiNmZ7kKsHLPJWO5XJStaMFoIQRM
	 jRZCoCP+zXv/A==
Received: by wens.tw (Postfix, from userid 1000)
	id 1E8735FB95; Mon,  7 Nov 2022 00:15:16 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@csie.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Fix Pine64 Quartz4-B PMIC interrupt
Date: Mon,  7 Nov 2022 00:15:13 +0800
Message-Id: <20221106161513.4140-1-wens@kernel.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221106_081520_544234_06881EE1 
X-CRM114-Status: GOOD (  13.23  )
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

Ths PMIC's interrupt line is tied to GPIO0_A3. This is described
correctly for the pinmux setting, but incorrectly for the interrupt.

Correct the interrupt setting so that interrupts from the PMIC get
delivered.

Fixes: dcc8c66bef79 ("arm64: dts: rockchip: add Pine64 Quartz64-B device tree")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
index 77b179cd20e7..b276eb0810c7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
@@ -246,7 +246,7 @@ rk809: pmic@20 {
 		compatible = "rockchip,rk809";
 		reg = <0x20>;
 		interrupt-parent = <&gpio0>;
-		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
 		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
 		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
 		clock-names = "mclk";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
