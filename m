Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6525C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Mar 2022 22:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FRpKDF4oOINkHB0sf6SAay5d3chZ+pFL3P4AaA0P8Xs=; b=X1hwo56RYHhQob
	rfJICG++EJ7NtliQSe72axdHYg6BTxmo6Zm6xHz63YJc6QqBpv7tcHhoUW9VCUS5e5iAOcMEFDsi5
	eCxFZrHhUuHeu9+wrD1adJYvuxXuWG1LU1Kbts85kStsVhi+Rn5uz5urJRHJPS7QACC9S2go9ThR7
	ojGEJaiWJbXrYxrSKr/MTS0gUft3K/rvZzeYA4r7GHxMr9rKrbt3lY4KiswFYa8i2GdlqADguUi69
	qSNL4Q/D9mtdy/xypLQ5EvYmsK7BCBPcMHB1OVsQ9gGWs+O6vs8vcsdAnvSnElRLwEvnCLFhCfDgw
	bqkZtoojNVKS/5KqhLoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nUFL9-00Ajxz-8C; Tue, 15 Mar 2022 22:08:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nUFKx-00Ajvl-Ir; Tue, 15 Mar 2022 22:08:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E3B111474;
 Tue, 15 Mar 2022 15:08:14 -0700 (PDT)
Received: from e121345-lin.cambridge.arm.com (e121345-lin.cambridge.arm.com
 [10.1.196.40])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 4FA643F66F;
 Tue, 15 Mar 2022 15:08:14 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: heiko@sntech.de
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: dts: rockchip: Add some pins for NanoPi4
Date: Tue, 15 Mar 2022 22:08:10 +0000
Message-Id: <e870284a872567f163868b77267c01b77ed6f22a.1647381986.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.28.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220315_150815_686282_03206002 
X-CRM114-Status: GOOD (  10.32  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The NanoPi4 boards have the RK808's always-on 32KHz clock wired to the
SoC, so have it claim the relevant pinctrl to actually enable the
CLK32K_IN input. The RK808's SLEEP pin is also wired to the SoC's
AP_PWROFF output, so we may as well claim that too.

Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---

v2: Fix embarrassingly silly mixup, and thoroughly build and
boot-test the actual patch rather than an "equivalent" local
hack...

 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index 8c0ff6c96e03..248ad41a976b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -267,7 +267,7 @@ rk808: pmic@1b {
 		interrupt-parent = <&gpio1>;
 		interrupts = <21 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&pmic_int_l>;
+		pinctrl-0 = <&pmic_int_l>, <&ap_pwroff>, <&clk_32k>;
 		rockchip,system-power-controller;
 		wakeup-source;
 
-- 
2.28.0.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
