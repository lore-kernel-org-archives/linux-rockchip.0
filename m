Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15673C19776
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 15:03:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/s422DGabJ0zqSi5kzE1C5I38toibGc3RTpox4vMb80=; b=W5YCL6lLpwftNU
	FxB5Y/YTdbWWE54uytEx0dmKhRoWRrlA32YCILAcplrRkQDuNIVGjyffXLbYj4FZWS83b0yK/2Yvx
	N0q3tQQKtpOQg3FtxqPG4ogfSOk8pHOTcQLUpYh6p0mggFIPj1pVj5znZbGeNZO7A/hlgGionYLnt
	cyBTVAideGS1jY1txHtzSLPwSvN26igJ2jxcFUbiWAzzeOsLpsEp0e/VY2yi0H6EEvwA0XZjJPLji
	/H+vL2ToHmAvH7JvUfz/c0m6ZH51YmbxIrWJrxslhwnf7vtXbRPkch6zkNo1gBn/ga/i0f91k8vDp
	llG0k7j33ymVqzVId+OA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1to1tS-0000000BNXw-2ZQS;
	Fri, 28 Feb 2025 15:03:14 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1to1ju-0000000BLCI-0H1V;
	Fri, 28 Feb 2025 14:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1740754400;
	bh=oRoY54GYwkZqq9qz+2JJWuc/yHiIM4DNvPGXJPJIl98=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=UPxUa2FfP22b2Q5Tc0r9oojcibLXvIhkoJ69hI6gNj1TgUqDnNsmgur2QydWvjkjw
	 iijx9pKiKRtvPsPpGenohoWIfmtyy8tRRQr4rc4HP4C6S55AnjJCYRo4ytdmyg0nGA
	 +3Bbh/Om/G7w9Sb/oKKqHwoed7Nsjvvib6C3LdN+nqTkz+4V3Dcy+Z7w7vSFFENazi
	 0zZYWH7E6pklX8tuViuCxrWhgMbL4GAGRETmhtFy1+zRpOO4q3kMkMOdVzfaw4djU6
	 Jv3ivI8GVejufqyjpRo22GkVdou9bys+ax1tkrG39jrqUkUu4MHk6qP+VSJ9FPo/d4
	 02Wa0V6ZZm7uQ==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3675217E0B64;
	Fri, 28 Feb 2025 15:53:18 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Alexey Charkov <alchark@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Stephen Chen <stephen@radxa.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Frank Wang <frank.wang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 2/2] arm64: dts: rockchip: Add SPI NOR device on the ROCK 4D
Date: Fri, 28 Feb 2025 09:50:48 -0500
Message-ID: <20250228145304.581349-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250228145304.581349-1-detlev.casanova@collabora.com>
References: <20250228145304.581349-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250228_065322_246858_FE206FE9 
X-CRM114-Status: GOOD (  10.34  )
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

The SPI NOR chip is connected on the FSPI0 core, so enable the sfc0 node
and add the flash device to it.

The SPI NOR won't work at higher speed than 50 MHz, specify the limit.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index 5dc1c18a3b211..09977dc191fe1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -670,6 +670,22 @@ &sdmmc {
 	status = "okay";
 };
 
+
+&sfc0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspi0_pins &fspi0_csn0>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <50000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+		vcc-supply = <&vcc_1v8_s3>;
+	};
+};
+
 &u2phy0 {
 	status = "okay";
 };
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
