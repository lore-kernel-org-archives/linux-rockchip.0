Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9897FA3743
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Oct 2022 16:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HymrVYT94Cjo0y9cxcHWOSWsufOzCm3XoQGu/YGdxXU=; b=qM2y91JYY74A/S
	tarFiVqcgZTiNDj0pLEb9uOTGpMM2GHRTCMzO9RbEFFq92vbMxHjPVeghO78bv8XttsqAuIiDmI76
	vg6zrFzZJP2HYQgtOIlzt2KHJB8o9hgE/06THaKFIEVuACSJK6eBZhOjSkq9kM2qV9G2KQOYj3cdA
	O5GC9VSp03sVPMUDPvcS67ahzOVgaCqeMInJsUsLKmYKVZZMMnwYR1ROCVRz7RhHpuJyBE87VBOX5
	KYtCsl/05vlayjxgdSWED2juEz8YwmO3hI5UANZsdPfc2sMHWzv/92CYVXwxEL7yqSN34AenjPJf5
	IG1uWfjLK+S010tkWPqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on0kB-002OFp-BJ; Mon, 24 Oct 2022 16:56:07 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1on0k3-002NzC-95; Mon, 24 Oct 2022 16:56:00 +0000
Received: from jupiter.universe (dyndsl-091-096-059-109.ewe-ip-backbone.de [91.96.59.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id ED5036602828;
	Mon, 24 Oct 2022 17:55:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1666630556;
	bh=HU749k14wBgophc3xmDH50FIm+iQZG25YYvKB+nUCpE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mfwWYscAgusRuyhpcO3rR54KVJFh7ChUmFaRu67n4wEUA54uLFG6a38N+5q2YimuJ
	 RmZtq2a/pfMCCNZICokagxHYZpwxzeUpY3xOSy/8M9jBVscUTMkC3Rs5HJX1Kt0EJj
	 vlxixn1NTn7pnDqLPD5OzSqupmqWaNx3btjTH3I6HhkJerFBz/AikNnd/QEUs+w6Wf
	 UtpzDP4ubAG0ym3kzFQFm4mrV9czCF8dnAiMQM/pO5C+VpPSjTyUNeaVt3es0j6/U2
	 DTH+fqamYoA02f7wJaWBPFysKTrmQqJzDsGvdNyMciYKXaHrh4N2p50kUCyua4S+nY
	 YA+YqzMD/TsSQ==
Received: by jupiter.universe (Postfix, from userid 1000)
	id F0A0A480AED; Mon, 24 Oct 2022 18:55:53 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv2 1/6] arm64: dts: rockchip: fix node name for hym8563 rtc
Date: Mon, 24 Oct 2022 18:55:44 +0200
Message-Id: <20221024165549.74574-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221024165549.74574-1-sebastian.reichel@collabora.com>
References: <20221024165549.74574-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_095559_488985_4DDE15E3 
X-CRM114-Status: GOOD (  11.26  )
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

Fix the node name for hym8563 in all arm64 rockchip devicetrees.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3368-r88.dts            | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts    | 2 +-
 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi  | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
index 7f5bba0c6001..0e88e9592c1c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-orion-r68-meta.dts
@@ -208,7 +208,7 @@ vdd_cpu: syr827@40 {
 		vin-supply = <&vcc_sys>;
 	};
 
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
index 38d757c00548..e147d6f8b43e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3368-r88.dts
@@ -192,7 +192,7 @@ vdd_cpu: syr827@40 {
 		vin-supply = <&vcc_sys>;
 	};
 
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
index 5a2661ae0131..18b5050c6cd3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts
@@ -98,7 +98,7 @@ &fusb0 {
 };
 
 &i2c0 {
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		interrupt-parent = <&gpio0>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
index 935b8c68a71d..6c168566321b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi
@@ -297,7 +297,7 @@ &i2c2 {
 	clock-frequency = <400000>;
 	status = "okay";
 
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
