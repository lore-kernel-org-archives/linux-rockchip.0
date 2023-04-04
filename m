Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58403C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 11:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Pk4vdbmUmTIdBVR1bpb35uTG2M6danJUvAEqHFW3/f4=; b=mnNVUJcM/xhfdV
	iplAwFSqDaCzX/bJ1OKVt9CFMtRXsDlB/7Po82eFgRz7pFN7pcewRCaXwTrF3uV9Hm+XuFAvh7i3I
	rNJcMwJOniGn5XITDvbz5c2Ud1gOOYqo1hduqcxPXYrgnvUJliiaQIW29xiyzQuRa6b8++MQe2mAL
	IN8qPLQWqoy4UHES1VAw/6ow1s2theGuWJea+pvsxeIKP5Tijcl47/+esvmMdzsqDXMXosEwZXIBl
	VLv8rY40zo4/8WWeVdlHZHpuw52vFzRmlfxN4gGyCXEx6MFmK1Yb2k0z1Si73KwIFD5vhtqXXBkHD
	DAUOc1fsDw/dBHH/DB3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfJC-001B1B-2U;
	Tue, 04 Apr 2023 11:58:42 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjfJ9-001AyV-0q;
	Tue, 04 Apr 2023 11:58:40 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:73f6:2283:f432:3936])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 93EA46603158;
	Tue,  4 Apr 2023 12:58:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1680609513;
	bh=CsUF6Di6DyBAFY8sgAr6L6XZ0o8G3dhq5m+UPRstjME=;
	h=From:To:Cc:Subject:Date:From;
	b=TesMwdzRzzf6fcpSAa3Sg9YYsy8wAVY5ezwOZ4oIoymyT4MuN9+RrouxJIB689zmC
	 +wuXJtesapsTSQFz8xAVDwoiOJs20KmjTThjGNCLXg2T3Hcs5XEqvMUT0WNwyNnzZF
	 llAw+wOxEeztJf18pHnFE4XMa+zzsoELTQEBzqL5KeXb0ZZvlDBIF/enS2LCgQpfX/
	 EGFnUER2J/Cl9bn75UMTJHjyN8iyJGAOE7Pb1XNtJ82Gb/+RHqFkXnh1ciCu0jlW+N
	 O/FGqKF7GQAcDrs5YeDeelHZWfmm0Ixa/nQ8FZP2VMTZSab2XeFPTmERVsjy0N5cD7
	 VkWP2lpUMzkZg==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>
Subject: [PATCH] arm64: dts: rockchip: Add RTC support for RK3588
Date: Tue,  4 Apr 2023 17:28:02 +0530
Message-Id: <20230404115802.33693-1-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_045839_513960_1633E5F9 
X-CRM114-Status: GOOD (  10.17  )
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

Add DT node to enable RTC support on RK3588 board.

Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 95805cb0adfa..a32bfa8d914a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -27,6 +27,31 @@ vcc5v0_sys: vcc5v0-sys-regulator {
 	};
 };
 
+&i2c6 {
+	status = "okay";
+
+	hym8563: hym8563@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-frequency = <32768>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
@@ -42,3 +67,5 @@ &uart2 {
 	pinctrl-0 = <&uart2m0_xfer>;
 	status = "okay";
 };
+
+
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
