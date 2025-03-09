Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F413C282D1
	for <linux-rockchip@archiver.kernel.org>; Sun,  9 Mar 2025 07:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A19sHchVu3ePu28GXcbAUnyZJjJjfMfisZM7OzGhrsU=; b=wmFJxsVbeKvv7v
	/urQjIkw95YFV+oJgAaHAzMEPXSMgo61N00KHA2PVjgorXYytuJUdbQyl2jLVBjSSzMwEqi8MJOKb
	BQrfZi3nfumWHfudHmxRpp4uTZ+AYFADf+bdGORwhPY3PBxI5Xi16wZMZB3AuEV9cqz3WtLQZRM/F
	4E/utlyeG5lkO9z60Za94EV0Bc71XI+Ra+Oe1ObDBcBlRf0xoXCh4xAPAfpiCr+ZNqA+lp9eBRdjz
	Onw1p5DAKs1z63Uz4hBvRKg8zzTjQzsTnMYsMb47H4vmxpp6oUzeyFm1QABY8afvj66IvE7Wkuz/h
	ynVSZmMZghnV+/S2aBVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trAhx-000000005rI-20UQ;
	Sun, 09 Mar 2025 07:04:21 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tr9cj-0000000Ha2f-1xkz;
	Sun, 09 Mar 2025 05:54:54 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 828F325DB4;
	Sun,  9 Mar 2025 06:54:47 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Q0W_tnWplUN; Sun,  9 Mar 2025 06:54:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1741499686; bh=hoZkBR56sD6NFx4a8yX3ETRtAM+INGPus9jC5Fe/z+o=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=ilixXpBtHHCKnyjWHRbhaNVWJGAavEiuU+qNmZ5wvKdvvhOsRy9sSKJyb0Ix79XIY
	 pg2RUPOMayMomKz4ZdICAf8JZkND6WBZQ6WJJlikvklAi/hw3gfx8PXIgrQNsGq9Ov
	 bm48DXzDwCvkecXp/Tk2ZyPM1rYIQYAnmiNiyFrnbwUxmF60h+3Va/e2x88ETziP7S
	 Za7GyUY75gPww3EGEDLM1j73umJ0AcHiI7s1kCr/eD5RRIO/ln87rKFhwUOjIjZqtC
	 UcTvXWPaZFNd5g1Nz/C5dJcjPL7nWcKxmzISJzO5CTXHe7Wew3G5WEjzW08mojo2ee
	 L1s1/tr4YhEgw==
From: Yao Zi <ziyao@disroot.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/6] dt-bindings: clock: Add GRF clock definition for RK3528
Date: Sun,  9 Mar 2025 05:53:44 +0000
Message-ID: <20250309055348.9299-3-ziyao@disroot.org>
In-Reply-To: <20250309055348.9299-1-ziyao@disroot.org>
References: <20250309055348.9299-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_215453_636033_2F141E6D 
X-CRM114-Status: UNSURE (   8.45  )
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

These clocks are for SD/SDIO tuning purpose and come with registers
in GRF syscon.

Signed-off-by: Yao Zi <ziyao@disroot.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 include/dt-bindings/clock/rockchip,rk3528-cru.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/dt-bindings/clock/rockchip,rk3528-cru.h b/include/dt-bindings/clock/rockchip,rk3528-cru.h
index 55a448f5ed6d..0245a53fc334 100644
--- a/include/dt-bindings/clock/rockchip,rk3528-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3528-cru.h
@@ -414,6 +414,12 @@
 #define MCLK_I2S2_2CH_SAI_SRC_PRE	402
 #define MCLK_I2S3_8CH_SAI_SRC_PRE	403
 #define MCLK_SDPDIF_SRC_PRE		404
+#define SCLK_SDMMC_DRV			405
+#define SCLK_SDMMC_SAMPLE		406
+#define SCLK_SDIO0_DRV			407
+#define SCLK_SDIO0_SAMPLE		408
+#define SCLK_SDIO1_DRV			409
+#define SCLK_SDIO1_SAMPLE		410
 
 /* scmi-clocks indices */
 #define SCMI_PCLK_KEYREADER		0
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
