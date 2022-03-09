Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A169C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 16:25:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=boMm93sXtkiADIrWJj3EFBRaKNCzHOSyDaR6cxkMWpI=; b=FQB7z7p71x43YR
	ddZTsgaAFm5NGrEf1yrLW+o6avipjkY5YLov0uLLG+qKDISyA60kCsEV3OOtWglqyt3wUlz8gnytM
	+YsrZqz5277fcfa/XwThgKHg+ERgvag6+qE9ICmbZCPgNT47wyI3lN4CiuLIdIdCBZiJUrY7iJM+c
	ulwysadRYIMblEkr5wFpZ3WB617c9QkKlFJujtvkgagR6XDSe1aNJcZ0ManthKhH394ZWqr674IlM
	59v7K8IkN6KaQax40wz9KCHFM08ySxuYu0aIyIRo62XtkkW8hsi6g8cx4Ss1duCgF0kE8cPXCz8ma
	fUfvjBaShdLGb6ImQX8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRz7S-009O5A-KF; Wed, 09 Mar 2022 16:24:58 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRz2y-009LUA-Tl; Wed, 09 Mar 2022 16:20:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 4CE5F615F1;
 Wed,  9 Mar 2022 16:20:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F17AC340EC;
 Wed,  9 Mar 2022 16:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646842819;
 bh=KxyRlOyUxc84zYC6QXsIDrt+eRE+gpXYHahoT4dc/go=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MqEVLOCu/YZE6XizBTgFLWjH52Zbf56SWHIDxAHuSSj7cibEfVXSZhvvZFf4pSHfn
 pToWdLQlyMx/nuDCdnU7EmdBMdWRD9p6itMPbSzOZ1Ib+dARxqfyJHNxpGUvPDwi3/
 NpOa/JSgjnWHUdws2Isoba4JNn3cH2vWjC+GZze8j3qRiZ9Wz2FKiUYnFuWdL8fTMF
 jM+YICCH2LBRtp6L3UOToewzzRBiY6cAyfeWgkJtJBluHSw8tqOOaNHS2pwUdwhIO5
 Z+3IhJo754mPP5cNCghr3PcZrOP3WiG90J0nohAPLyJabryP2ARUWKyBb7vRtp0vRN
 IjgafA7k3DgJQ==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Sasha Levin <sashal@kernel.org>,
 robh+dt@kernel.org, jbx6244@gmail.com, maccraft123mc@gmail.com,
 linus.walleij@linaro.org, paul.kocialkowski@bootlin.com,
 macromorgan@hotmail.com, zhangqing@rock-chips.com,
 benjamin.gaignard@collabora.com, cnemo@tutanota.com,
 ezequiel@vanguardiasur.com.ar, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 5.15 05/24] arm64: dts: rockchip: align pl330 node
 name with dtschema
Date: Wed,  9 Mar 2022 11:19:24 -0500
Message-Id: <20220309161946.136122-5-sashal@kernel.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309161946.136122-1-sashal@kernel.org>
References: <20220309161946.136122-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_082021_078003_37819779 
X-CRM114-Status: GOOD (  13.14  )
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

From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

[ Upstream commit 8fd9415042826c7609c588e5ef45f3e84237785f ]

Fixes dtbs_check warnings like:

  dmac@ff240000: $nodename:0: 'dmac@ff240000' does not match '^dma-controller(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Link: https://lore.kernel.org/r/20220129175429.298836-1-krzysztof.kozlowski@canonical.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi   | 2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index 248ebb61aa79..5200d0bbd9e9 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -711,7 +711,7 @@ rktimer: timer@ff210000 {
 		clock-names = "pclk", "timer";
 	};
 
-	dmac: dmac@ff240000 {
+	dmac: dma-controller@ff240000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xff240000 0x0 0x4000>;
 		interrupts = <GIC_SPI 1 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index da84be6f4715..3cbe83e6fb9a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -489,7 +489,7 @@ pwm3: pwm@ff1b0030 {
 		status = "disabled";
 	};
 
-	dmac: dmac@ff1f0000 {
+	dmac: dma-controller@ff1f0000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xff1f0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
