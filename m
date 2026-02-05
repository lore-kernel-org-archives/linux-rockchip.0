Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 706B2EC1E92
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Feb 2026 10:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i+3TFZOxLwIY6E2PrgG2363d4rQnbq9aZya/1Z6/9Fk=; b=uY1lAWy7nVYRB2
	XhW7ZAQkwNQrjT5mMEkuB2GxL2J/x2XupncJmwLs+/N6QUZtJSg4nfucQYRYjDSooTRX8DtGjD8yA
	e+X8Ah9q4pZJbr8PboIzVlfDybT8Q0Y9t/TGB7RcQpGcflSS5GqxMZ5buf5J7AJjQGCI+oRRyIa/e
	UWpSlb3moO0ZfAaUXNL+ZUMhkAz1MijwKGYqvmDEvO2yb+7heVN5xFVQxea0rZ0gAmmQ8kADbvKYo
	EyE9Rp3MP7cNsVJDGGxsz/BBIG/2oocwYaACCN02PXB1Jmo1PkXDf3iftiF3J8xdRUveCd6xclvg4
	VmQoGAcmd67x2N/HG35g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnwUC-00000009ljt-2by0;
	Thu, 05 Feb 2026 10:21:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnwU8-00000009lgg-1cP4;
	Thu, 05 Feb 2026 10:21:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=P2HRF2ZHD1WJ7uTJ5H+4KPD8cHuQGGOB2lb+kwP4OjE=; b=nB6keqMmTqcjes1wcRMPcsv3YJ
	tZhqThEyFWtp2rjsPde6l4XQwkuT2I48u1si9YiNbHdo/l+4jeMIO4KvYFJLrhWKouJnitNs+zNYF
	bq7zaRasbleG73Ttp+cnEHx+4qqY0/HsK/bMBnz3zb+PWnJos6TBTQET6G9VPIyoZQ6xggY5+CIYC
	e9o89IXPsyotgYRyXb4x3brFpSbgbGbCrXu095eLGutq107PqFNCI8MSnHj5hl10IIbGy5m9RFSvl
	+ZgulElngjs6z9bwVjdLi8U2BP6sfCQJiDe2///sc5BvN76TwdHCSzXT8ciWgQjKtty/8rJHTzfa8
	CnI5SaYg==;
Received: from i53875afe.versanet.de ([83.135.90.254] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vnwU5-0075El-Hv; Thu, 05 Feb 2026 11:21:14 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: quentin.schulz@cherry.de,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH 1/3] arm64: dts: rockchip: use gated-fixed-clock for pcie-refclk on rk3588-jaguar
Date: Thu,  5 Feb 2026 11:21:02 +0100
Message-ID: <20260205102104.394991-2-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20260205102104.394991-1-heiko@sntech.de>
References: <20260205102104.394991-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_022116_734596_09D96D1F 
X-CRM114-Status: GOOD (  14.37  )
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

Using a combination of fixed clock and gpio-gate clock works but does
not describe the actual hardware. Use the gated-fixed-clock binding
to describe this in a nicer way.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 952affaf455c..6eea4e0b6ca4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -90,21 +90,16 @@ led-1 {
 	 * 100MHz reference clock for PCIe peripherals from PI6C557-05BLE
 	 * clock generator.
 	 * The clock output is gated via the OE pin on the clock generator.
-	 * This is modeled as a fixed-clock plus a gpio-gate-clock.
 	 */
-	pcie_refclk_gen: pcie-refclk-gen-clock {
-		compatible = "fixed-clock";
+	pcie_refclk: pcie-clock-generator {
+		compatible = "gated-fixed-clock";
 		#clock-cells = <0>;
 		clock-frequency = <100000000>;
-	};
-
-	pcie_refclk: pcie-refclk-clock {
-		compatible = "gpio-gate-clock";
-		clocks = <&pcie_refclk_gen>;
-		#clock-cells = <0>;
+		clock-output-names = "pcie3_refclk";
 		enable-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>; /* PCIE30X4_CLKREQN_M0 */
 		pinctrl-names = "default";
 		pinctrl-0 = <&pcie30x4_clkreqn_m0>;
+		vdd-supply = <&vcca_3v3_s0>;
 	};
 
 	pps {
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
