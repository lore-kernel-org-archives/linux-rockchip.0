Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7886DC54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 16:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guQ1U1a/V78U7FWPVtx/yz09zqUGgVbc228JLf1qBB4=; b=Mb+a+9dB1H//DW
	j6z+B/YBbt3n6hM1pgIeHSw8wLH4v90GX+XIOOcM6q0fyQ1zJfkeMEJctkGTXMKq1muGKPXxjjzTv
	E86oDBRJQdqqH+oGaYPOycOn8Io51SVgjfhxYqkNp8oPnabRtsxN/J9Atz4nkcvDqIRMI+RmVf2kH
	wtPEvNZrzcO2thRVyWOjG1mnJh2xx86vn+FrPULBnwU0OctBkJJtYUPwfihFY7zZd0uMRbqPnmacD
	vR/4eHnNdo/BQO1mY3XTU+s7WpGDtLZxca/FEQ8y9vVAtNhbhFTLpPuVSn3qXw4m4x4hgFtOMMiHb
	1xlcqhSg6n7MHmJJaRog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf0cA-000000063Kr-3x4Q;
	Tue, 27 Feb 2024 16:47:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rf0bs-000000063AY-2w3j;
	Tue, 27 Feb 2024 16:47:18 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rf0bk-0006qV-IF; Tue, 27 Feb 2024 17:47:08 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	quentin.schulz@theobroma-systems.com,
	heiko@sntech.de,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 1/4] arm64: dts: rockchip: drop rockchip,trcm-sync-tx-only from rk3588 i2s
Date: Tue, 27 Feb 2024 17:46:56 +0100
Message-Id: <20240227164659.705271-2-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240227164659.705271-1-heiko@sntech.de>
References: <20240227164659.705271-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_084716_774291_5A43FFEC 
X-CRM114-Status: GOOD (  12.50  )
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

The rockchip,trcm-sync-tx-only property is at this time only documented
for the tdm variant of Rockchip i2s controllers.

While there was a series [0] adding code and binding for the property,
it doesn't seem to have gone forward back in 2021.

So for now fix the devicetree check by removing the property from rk3588
i2s controllers until support for it gets merged.

[0] https://patchwork.kernel.org/project/linux-rockchip/patch/1629796734-4243-5-git-send-email-sugar.zhang@rock-chips.com/

Fixes: 8ae112a5554f ("arm64: dts: rockchip: Add rk3588s I2S nodes")
Cc: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 36b1b7acfe6a1..82350ddb262f2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1704,7 +1704,6 @@ i2s2_2ch: i2s@fe490000 {
 		dmas = <&dmac1 0>, <&dmac1 1>;
 		dma-names = "tx", "rx";
 		power-domains = <&power RK3588_PD_AUDIO>;
-		rockchip,trcm-sync-tx-only;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s2m1_lrck
 			     &i2s2m1_sclk
@@ -1725,7 +1724,6 @@ i2s3_2ch: i2s@fe4a0000 {
 		dmas = <&dmac1 2>, <&dmac1 3>;
 		dma-names = "tx", "rx";
 		power-domains = <&power RK3588_PD_AUDIO>;
-		rockchip,trcm-sync-tx-only;
 		pinctrl-names = "default";
 		pinctrl-0 = <&i2s3_lrck
 			     &i2s3_sclk
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
