Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70264CCFA03
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Nov 2025 23:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fjyTvrZOAsFKbBjl49+37N2WRQZu+EJWwRIJIqEcbro=; b=bW1fE/rYjB9crf
	2hppdLFliqOHNIEJBrmg/44Hgj/9c0hlmefjlFIrOdw9/A+bsa+LMzfsBjJbw0fQKuEG2GnHFc8KI
	BFNyaw5yrSpjJncU5qi19LzP5zeh8IOgc/sJ/1bx3jmVWC2lTf5jVuArptzFLxcJmlv9DQNud3cdc
	lDuXwlZHOmWJDne48KOGyWjplQn7cl04RgEuANvCxmE+Dbj7r9dalgP28xeqgN5QGvdvFj33frQNu
	vSyusDub9fRViCmhWS5R/9N+K77Ic0v1skNQ2j+M1AeRDMcaLaoC6NDvjdgNbjuHDPW6ygB0tkFGp
	1/IVw3tKmoTYC7DxmrAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG4It-0000000Anyd-0mni;
	Mon, 03 Nov 2025 23:49:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vG4Im-0000000AnuB-3pU9;
	Mon, 03 Nov 2025 23:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=6Bed2wzgyyzbCuzjQG7pgG0QKZQhz1UrIXWqdynClIA=; b=jPRaZV2Cbv2PhwnmHKuc/iD6gI
	koYH4ETx2vTXbfOikR75/Pq2MDgkgafTkehFPL7QPz+8p8oHUMZxwlBk1BgYErTeBkN5+eokdgV+k
	HUclx4q1AUiazl5Rhu0EAwJzzstoWiD3M+Ev1fFvNkT12RWwgGm76FadoEU/2UUrC1VFqWzRxApca
	F9YibWggOr0bKp3LHE/124KYsEfzdhVlaUSA5xnJh0VP7lDPAmKC79+MekW4a+lrDdYmyrNc0vjkE
	cMqxuTd/rfEItk8RB6iXKfH6rAshs1f+VBpto3EQlkGRTzI4qL1q6Pc63TXrOXUA2xShK2G6juOXY
	DC+77tgQ==;
Received: from i53875a3a.versanet.de ([83.135.90.58] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vG4Ik-0007vT-Pk; Tue, 04 Nov 2025 00:49:30 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	michael.riesch@collabora.com
Subject: [PATCH 3/3] arm64: dts: rockchip: add missing clocks for cpu cores on rk356x
Date: Tue,  4 Nov 2025 00:49:26 +0100
Message-ID: <20251103234926.416137-4-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20251103234926.416137-1-heiko@sntech.de>
References: <20251103234926.416137-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_154932_947377_5B091541 
X-CRM114-Status: GOOD (  12.12  )
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

All cpu cores are supplied by the same clock, but all except the first
core are missing that clocks reference - add the missing ones.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index d0c76401b45e..a1815f8a96e1 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -69,6 +69,7 @@ cpu1: cpu@100 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x100>;
+			clocks = <&scmi_clk SCMI_CLK_CPU>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
 			i-cache-size = <0x8000>;
@@ -84,6 +85,7 @@ cpu2: cpu@200 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x200>;
+			clocks = <&scmi_clk SCMI_CLK_CPU>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
 			i-cache-size = <0x8000>;
@@ -99,6 +101,7 @@ cpu3: cpu@300 {
 			device_type = "cpu";
 			compatible = "arm,cortex-a55";
 			reg = <0x0 0x300>;
+			clocks = <&scmi_clk SCMI_CLK_CPU>;
 			#cooling-cells = <2>;
 			enable-method = "psci";
 			i-cache-size = <0x8000>;
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
