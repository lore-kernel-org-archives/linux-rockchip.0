Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 980BAC52D6F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 08:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjTsb7Uf5zGOJIv6JmRy4ew6QEYB6xPZKsK/QoNpnfM=; b=SPiEm8XA65P/jG
	XZAF6ViYyUm50cKfm7fdCqjYPoRo2YLIW+R7SJrb6E3i6frdCy+nLmQNtKS9cG/iljRPaMZw88l9Q
	MsRzZJ97uFHLz4w5vX/KJM3B1alg9JJq8ODtMu713HMAzes/AVdCZK1Og7BAxu9v77xzuggB35b7q
	Le6NOG6LX6DSUs2kBKuULyqLbGLM9KOltbbxqSyysOpeeBQxxGdHZhbxBipQAoYSKaxi1UIulShVY
	8FV45HWP/rgQL9WM9kJBxg6f/WMV/QqAptneE3oZ3xtwR/UtKMamdDnmTiQIgFP/Qr1yo8oWmGmKB
	T5Md+azyREEKRu/5eWhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggm3-0000000859o-1aMT;
	Wed, 21 Aug 2024 08:32:59 +0000
Received: from muminek.juszkiewicz.com.pl ([213.251.184.221])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sggf9-000000083JO-1yUy
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 08:25:53 +0000
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 7EEB5260983;
	Wed, 21 Aug 2024 10:25:49 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id Bl_mtQZers3B; Wed, 21 Aug 2024 10:25:47 +0200 (CEST)
Received: from puchatek.local (79.186.29.241.ipv4.supernova.orange.pl [79.186.29.241])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 200C12609DA;
	Wed, 21 Aug 2024 10:25:46 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Wed, 21 Aug 2024 10:25:31 +0200
Subject: [PATCH v2 2/6] arm64: dts: rockchip: define pinctl for SPI M1
MIME-Version: 1.0
Message-Id: <20240821-friendlyelec-nanopc-t6-lts-v2-2-e0138bb10042@linaro.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
In-Reply-To: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_012551_800230_4142B4F9 
X-CRM114-Status: UNSURE (   7.80  )
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

FriendlyELEC NanoPC-T6 has 32MB of SPI flash connected to SPI M1 lines
(always present on LTS version, optional on non-LTS one).

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
index 30db12c4fc82..75d5816b6fa4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
@@ -407,6 +407,23 @@ fspim0_cs1: fspim0-cs1 {
 				<2 RK_PD7 2 &pcfg_pull_up_drv_level_2>;
 		};
 
+		/omit-if-no-ref/
+		fspim1_pins: fspim1-pins {
+			rockchip,pins =
+				/* fspi_clk_m1 */
+				<2 RK_PB3 5 &pcfg_pull_up_drv_level_2>,
+				/* fspi_cs0n_m1 */
+				<2 RK_PB4 2 &pcfg_pull_up_drv_level_2>,
+				/* fspi_d0_m1 */
+				<2 RK_PA6 5 &pcfg_pull_up_drv_level_2>,
+				/* fspi_d1_m1 */
+				<2 RK_PA7 5 &pcfg_pull_up_drv_level_2>,
+				/* fspi_d2_m1 */
+				<2 RK_PB0 5 &pcfg_pull_up_drv_level_2>,
+				/* fspi_d3_m1 */
+				<2 RK_PB1 5 &pcfg_pull_up_drv_level_2>;
+		};
+
 		/omit-if-no-ref/
 		fspim2_pins: fspim2-pins {
 			rockchip,pins =

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
