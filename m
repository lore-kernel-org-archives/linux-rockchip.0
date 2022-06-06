Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D394C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Akdl0QckJEiB9PPNMpjFsYlAFgwtpzVaBCvbR5ihqZE=; b=CuaKg+zT5iXjXd
	TSPImnuq1aNbyNfId1JRfX/OKL631G/F7noBwlCSbKGhiU0r3etnwgUPIaK5KVGyLJZt/iQDRut+v
	Lk3IsBo+27aZloYKykt7VZOkeZ/iohi3bWwuItdq5foSitjfhW1XGUBu3g3VCMRnYqNwrNnXanQR5
	xDQZ2cKBiYdJRQBHZ2AHrPz5SsG+PeGQhoSihFgao8rboZQq1P2jbXfwOG8Uu+nkdsyUNYr4ouY7J
	8n1310FaC60wRMQiWxWAO4/X08Lsva9aRnhCcyPGHiIe5IUIx+aDg1c1KlgptwYMQb7NsKnRvhzRV
	ZMYlni0Yi+Nz0YOLY65Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny84f-0007H3-LR; Mon, 06 Jun 2022 08:26:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny84L-0007C5-O3; Mon, 06 Jun 2022 08:26:39 +0000
Received: from beast.luon.net (unknown [IPv6:2a10:3781:2531:0:973d:c368:8ed:ffaa])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D5273660204F;
	Mon,  6 Jun 2022 09:26:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654503992;
	bh=0pFWHr8nZPd/x652n6ie2quX6dlxkCbVAMeZopa6ow0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=a4X1xRcx8+R0YQxN6+31nvR+V8gHeRJ4dP7pnf6AWEmsdu4OL1qEF997WL7376ywd
	 Acp3Bsv/gWFubmtBSPDyVjPHYjBhB6doASnOiwzMlOmIbR6IKbyEfUUKIH9rLAdflx
	 ibryNiRLita0P4JkJUEegdigX9+ltBjqSVDlMkZtlRR5Te1D1pFf8pLU7pekCWPb19
	 58QFfNeZfOoTBWQ2PePTDiiNSZCZpPQLpfwDzNvjwFHSKC0uOkh3Z7vYtO4VYxJelE
	 i0mlPynGU8VbsgxkJqjbDK2+cJxQxO56O67BziR7RLLG4wbjonI0lmYJ1JUn2ElGD1
	 OfW7zUqk7LsXg==
Received: by beast.luon.net (Postfix, from userid 1000)
	id A6DFE404D08F; Mon,  6 Jun 2022 10:26:30 +0200 (CEST)
From: Sjoerd Simons <sjoerd@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Akash Gajjar <akash@openedev.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: rockchip: rock-pi-s add more peripherals
Date: Mon,  6 Jun 2022 10:26:28 +0200
Message-Id: <20220606082629.79682-3-sjoerd@collabora.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220606082629.79682-1-sjoerd@collabora.com>
References: <20220606082629.79682-1-sjoerd@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_012638_013904_C874195E 
X-CRM114-Status: GOOD (  11.45  )
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

This enables the following peripherals:
* Onboard ethernet support
* Bluetooth
* USB 2 port
* OTG port via type-c connector
* Hardware watchog

Also add aliases for the mmc devices and the ethernet interface

Signed-off-by: Sjoerd Simons <sjoerd@collabora.com>

---

 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 52 +++++++++++++++++++
 1 file changed, 52 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index 9095efe25ccd..46ba48b843c5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -11,6 +11,12 @@ / {
 	model = "Radxa ROCK Pi S";
 	compatible = "radxa,rockpis", "rockchip,rk3308";
 
+	aliases {
+		ethernet0 = &gmac;
+		mmc0 = &emmc;
+		mmc1 = &sdmmc;
+	};
+
 	chosen {
 		stdout-path = "serial0:1500000n8";
 	};
@@ -132,6 +138,15 @@ &emmc {
 	status = "okay";
 };
 
+&gmac {
+	clock_in_out = "output";
+	phy-supply = <&vcc_io>;
+	snps,reset-gpio = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
+	snps,reset-active-low;
+	snps,reset-delays-us = <0 50000 50000>;
+	status = "okay";
+};
+
 &i2c1 {
 	status = "okay";
 };
@@ -195,10 +210,47 @@ &sdmmc {
 	status = "okay";
 };
 
+&u2phy {
+	status = "okay";
+
+	u2phy_host: host-port {
+		phy-supply = <&vcc5v0_otg>;
+		status = "okay";
+	};
+
+	u2phy_otg: otg-port {
+		phy-supply = <&vcc5v0_otg>;
+		status = "okay";
+	};
+};
+
 &uart0 {
 	status = "okay";
 };
 
 &uart4 {
 	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8723bs-bt";
+		device-wake-gpios = <&gpio4 RK_PB3 GPIO_ACTIVE_HIGH>;
+		host-wake-gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
+	};
+};
+
+&usb_host_ehci {
+	status = "okay";
+};
+
+&usb_host_ohci {
+	status = "okay";
+};
+
+&usb20_otg {
+	dr_mode = "peripheral";
+	status = "okay";
+};
+
+&wdt {
+	status = "okay";
 };
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
