Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19D05CD11DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 16:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H9RWKD/zKqW6hXQd8m7oLLvlof7zTRzaXPrbXPmugyQ=; b=FxE7wjLnDP1F5S
	RhBNFv0nb7QKk5yN2spOg7QxonQJoEWgNpewrFcyOa+oLO173xqrJx5MEWF8f7P0utl5GQuzK0vVZ
	2glQtTyMo+v3ae22PfT+YQApF6hf14+RC5YPiXYLu7Lz7K/66RzCqQpoMC4gfIHlyLWvda/pQTKa6
	nKcQCylBk0xc6kHZineyxOHFen0EWT1Pw3XD0Yo894rN4rE85OyiThliqV2zSYxH1ivfy7gJGZfjp
	ESZLpD+nd7AjmWWi4jyxmAfG+C/X2woAAxBAK//CIx+3V355CGoqCP85PefaO9CPOjoSYBx4sn2Se
	SsdN2a4fS4RqU0iU2QIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpA2X-00000005aHg-0pVN;
	Tue, 26 Mar 2024 16:52:45 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpA2P-00000005aDB-3EZ2
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Mar 2024 16:52:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1711471953;
	bh=bnU0rBb9ounSPduviQn9sL9EO0sU2ngM/C/AFvHMEVA=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=vxNBhGCZXpjB9GTJKtO4QIbWJeutrVm5FOMLOmgmXxO07oQiqhlLGMbbTceJNnkJ2
	 3VWaqzBSn/Wda0VQ2KqyJ4espaZEfyfNRwxh8TrlC4imoxk1DxGdlJPwz9eE2UumE3
	 HOkt3UQKn5YTkKXatZ6nMR/yo6ppCsnQN0U0HjD1xvK9T80DsQ4jI2feYmo9z+f7jh
	 8bPE55Ir7buo4MDillgSiLXuz4RhFAoSURVseKrByaan56fe8wzX1xQhOln8BOAyUU
	 aHTJo7vFAp6MLdhHbcjf9zUG6cJqCmJJIVV9s1BXALdQMWdXRQkShX9q1MJM7Z+ME+
	 NQ72+wj4dh10A==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 80A3C37820E4;
	Tue, 26 Mar 2024 16:52:33 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 170D14800D1; Tue, 26 Mar 2024 17:52:33 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: rk3588-evb1: Enable GPU
Date: Tue, 26 Mar 2024 17:52:08 +0100
Message-ID: <20240326165232.73585-5-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240326165232.73585-1-sebastian.reichel@collabora.com>
References: <20240326165232.73585-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_095238_181881_D5FBCD24 
X-CRM114-Status: GOOD (  12.52  )
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

From: Boris Brezillon <boris.brezillon@collabora.com>

Enable the Mali GPU in the RK3588 EVB1.

This marks the GPU regulators as always-on, because the generic
coupler regulator logic from the kernel can only handle them
when they are marked as always-on. Technically it's okay to
disable the regulators, when the GPU is not used.

Considering the RK3588 EVB1 is not battery powered, the slightly
increased power consumption for keeping the regulator always
enabled is not a big deal. Thus it's better to enable GPU support
than wait for a better solution.

Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index de30c2632b8e..56c019b25fa8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -281,6 +281,12 @@ &gmac0_rgmii_clk
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	sram-supply = <&vdd_gpu_mem_s0>;
+	status = "okay";
+};
+
 &i2c2 {
 	status = "okay";
 
@@ -484,12 +490,16 @@ rk806_dvs3_null: dvs3-null-pins {
 
 		regulators {
 			vdd_gpu_s0: dcdc-reg1 {
+				/* regulator coupling requires always-on */
+				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <550000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
 				regulator-name = "vdd_gpu_s0";
 				regulator-enable-ramp-delay = <400>;
+				regulator-coupled-with = <&vdd_gpu_mem_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
@@ -534,12 +544,16 @@ regulator-state-mem {
 			};
 
 			vdd_gpu_mem_s0: dcdc-reg5 {
+				/* regulator coupling requires always-on */
+				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <675000>;
 				regulator-max-microvolt = <950000>;
 				regulator-ramp-delay = <12500>;
 				regulator-enable-ramp-delay = <400>;
 				regulator-name = "vdd_gpu_mem_s0";
+				regulator-coupled-with = <&vdd_gpu_s0>;
+				regulator-coupled-max-spread = <10000>;
 				regulator-state-mem {
 					regulator-off-in-suspend;
 				};
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
