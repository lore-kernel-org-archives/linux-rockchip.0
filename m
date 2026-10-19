Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C63F7CCF2DA
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j74cn4+5poobyvrV9KZH0Dv2d9pqwoT+mXVRkIEkEJg=; b=4Kdm/u3YIYl44+
	lFgGBKicKyo6ZJoN2a+v1N3aOO6gugvvxcycdmBDkBWW/6ZQVUXdEjh1MJzNbsUOKRD4F9Va2NbrT
	wNNP6x2+uWK+D9VALw3J6Gdm3I7Zj2fD1ecVMlg+etUVKKsLuYV2x92N5QxZKD3km4aHuzsT+/cA3
	pt3JLm9tP94gQmIW+iZmqmvQr2ZqOV/Q/0nn0R9hiJYjl2FNHKgEv9Ew6kEM9X3BEktMtL7idiO3l
	L8zkfwLkLrbNJ6R9SByRFikJB8Yw2Z/CgxlGYx36RiOBzZhI9XR3+IRxJ5R86w+BPHcXaGQ9GDFMA
	5wM3WxbejYetmDtRWZSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjbr-00000006zI9-3zll;
	Mon, 19 Oct 2026 09:24:47 +0000
Received: from mailgate01.uberspace.is ([95.143.172.20])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIjbk-00000006zDD-1E2L
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Oct 2026 09:24:44 +0000
Received: from devico.uberspace.de (devico.uberspace.de [185.26.156.185])
	by mailgate01.uberspace.is (Postfix) with ESMTPS id DE69B610FE
	for <linux-rockchip@lists.infradead.org>; Mon, 19 Oct 2026 11:24:30 +0200 (CEST)
Received: (qmail 17512 invoked by uid 990); 19 Oct 2026 09:24:30 -0000
Authentication-Results: devico.uberspace.de;
	auth=pass (plain)
Received: from unknown (HELO unknown) (::1)
	by devico.uberspace.de (Haraka/3.1.1) with ESMTPSA; Mon, 19 Oct 2026 11:24:30 +0200
From: Leonard Lausen <leonard@lausen.nl>
To: ulfh@kernel.org,
	heiko@sntech.de
Cc: leonard@lausen.nl,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	detlev.casanova@collabora.com,
	finley.xiao@rock-chips.com,
	zhangqing@rock-chips.com,
	inindev@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	gahing@gahingwoo.com
Subject: [PATCH 2/2] arm64: dts: rockchip: Fix GPU domain supply on NanoPi M5
Date: Mon, 19 Oct 2026 09:24:16 +0000
Message-ID: <20261019092417.391522-3-leonard@lausen.nl>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261019092417.391522-1-leonard@lausen.nl>
References: <20261019092417.391522-1-leonard@lausen.nl>
MIME-Version: 1.0
X-Rspamd-Bar: ----
X-Rspamd-Report: REPLY(-4) SUSPICIOUS_RECIPS(1.5) MIME_GOOD(-0.1) MID_CONTAINS_FROM(1) BAYES_HAM(-2.999999) R_MISSING_CHARSET(0.5)
X-Rspamd-Score: -4.099999
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lausen.nl; s=uberspace;
	h=from:to:cc:subject:date;
	bh=X3gkuVRX8tdhLti2WNzQTsQKzVS/D9O3ELOwUGL+GC4=;
	b=OHpzFPa9AHcbe2SSrRNebQ3tIBItFPrzk58HxTXH5GJAX8sFJr7rei2dB2X5B0kohLEyMkWi6f
	DdPVoPL85Uv0lJkCitUc/tTkuKt29G8PyT0/Fpqjx9/anhGBb4r8GQ7BMX9o+T883loTcbIQaqgV
	m3ic7YI/umBmsZETkwg5+kYvQygncU5RgicxvU8nve36v/pvOlXE644JTC7yjYoZ3s/knCUKEUUT
	4E9TktfaIQ+/4HwNyfAJUR6ozajbvGiRnK6QFaGdQDivVQvbyUvVciu4IlSd3rt7YFGhkrzdYvLk
	1mXk0SFiIdp4+un3edwAkuAHDkXdrk3RCZvYyt5GeSrc80bvnDcSvOBWshA8Dy9AuL+se38PqNoh
	mbAWRnNaq+Ewy3GgX7aUITA9Z6xdopFUjtHwrs7GBlTTjEU4KkL3yfBELqZAeI2qPpt6+lKNimMM
	yLz9V91ERp4vGqLvwB628F/mrcCx3MYkS+UAJozv7J+rG6p+9O0DRP6+NILQcVnIj/purQXsPEeV
	UtwWA9YtlhgptBWYKlY/dSCkg+4MkUadVKnlP4mccDVPXxDjcY4RpbJxoXQ5uips/OrI1pV9yB8H
	/n4uwhsxawjyAznsOpX+Enl6ZDbIxyklWncHXLR3dLcIIvd8JiGB2fy+Q9ylk8BxNF72C1mYaMu8
	Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_022440_474126_EB47AF0C 
X-CRM114-Status: GOOD (  10.01  )
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

On the NanoPi M5, boot hangs during Panfrost initialization. Before this
fix, booting required blacklisting Panfrost on the kernel command line.
Loading Panfrost after boot reports a GPU power-domain acknowledgment
timeout:

  failed to get ack on domain 'gpu', val=0x113ff

Label the GPU power domain and connect its domain-supply to vdd_gpu_s0,
so the power-domain driver can manage the GPU rail. Keep mali-supply for
Panfrost's regulator use.

Fixes: 96cbdfdd3ac2 ("arm64: dts: rockchip: Add FriendlyElec NanoPi M5 support")
Signed-off-by: Leonard Lausen <leonard@lausen.nl>

---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3576.dtsi          | 2 +-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index 227fe6f3ec7c7..c056b3eeafed3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -791,24 +791,28 @@ rgmii_phy1: phy@1 {
 		reset-gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
 	};
 };
 
 &pcie0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie0_perstn>;
 	reset-gpios = <&gpio2 RK_PB4 GPIO_ACTIVE_HIGH>;
 	vpcie3v3-supply = <&vcc3v3_m2_keym>;
 	status = "okay";
 };
 
+&pd_gpu {
+	domain-supply = <&vdd_gpu_s0>;
+};
+
 &pinctrl {
 	gmac {
 		gmac0_int: gmac0-int {
 			rockchip,pins = <2 RK_PB1 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 		gmac0_rst: gmac0-rst {
 			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 		gmac1_int: gmac1-int {
 			rockchip,pins = <3 RK_PA2 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 		gmac1_rst: gmac1-rst {
diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index b0c0d3c8b1b14..0dd7e9ca908ed 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1075,25 +1075,25 @@ power-domain@RK3576_PD_NPU0 {
 							#power-domain-cells = <0>;
 						};
 						power-domain@RK3576_PD_NPU1 {
 							reg = <RK3576_PD_NPU1>;
 							clocks = <&cru HCLK_RKNN_ROOT>,
 								 <&cru ACLK_RKNN1>;
 							pm_qos = <&qos_npu_m1>;
 							#power-domain-cells = <0>;
 						};
 					};
 				};
 
-				power-domain@RK3576_PD_GPU {
+				pd_gpu: power-domain@RK3576_PD_GPU {
 					reg = <RK3576_PD_GPU>;
 					clocks = <&cru CLK_GPU>, <&cru PCLK_GPU_ROOT>;
 					pm_qos = <&qos_gpu>;
 					#power-domain-cells = <0>;
 				};
 
 				power-domain@RK3576_PD_NVM {
 					reg = <RK3576_PD_NVM>;
 					clocks = <&cru ACLK_EMMC>, <&cru HCLK_EMMC>;
 					pm_qos = <&qos_emmc>,
 						 <&qos_fspi0>;
 					#power-domain-cells = <1>;
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
