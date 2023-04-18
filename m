Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1EF5C77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 09:54:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oDfje9ayz3sYWS/G0uQJaYcairQAsGjhMMB9Nkj8Dw=; b=RtTZAcLeKPNZd2
	O5uZvPLpJk8/dqlHwxbY5N62jiHloa/O1egebdbEBDRbAamqxNGjMXCki7oaAjunUUhhVnzU6YUkR
	uCrY755MY3OlIcXCjs3gkv1UfAT42KhW+FJIToHZIyjZbUFrXNfGUw9XeAf08X4GWZmqkGCl9ebXf
	DUEmyNXKBCQVdn8d5grVBNHkwJ/ZxTHHPux90Td59trCIqbAqeCXqmHDjUw3OowVTNeFgyQ03JSaC
	6E/v2JyHAbfyNeJFNVkjE6AU6AbNfXVa1wEOJ3TRtgElaTfxL9JGZVKSpXSYbXLzuVACFbxHCrSD1
	Ca9WqYRJN0TzRyvqU7Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poi2Q-001Xrf-10;
	Tue, 18 Apr 2023 09:54:14 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poi2C-001XhQ-2y;
	Tue, 18 Apr 2023 09:54:02 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 88EF56603244;
	Tue, 18 Apr 2023 10:53:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681811639;
	bh=v003HEWWtLqoOjeAVr+uR6+doRjgZBOm8N/Wl6TsWrw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TjbuKj8nXuULJILdNs+8F8G72jRvHDa4gO8zPUEU4rNlkRP5bnjsjhtOBPlr76fMc
	 yMSTMxxVK/CIGaetvbDHjEWFgI7l6c9JiiwEC8c4rHbBTZlpDvXbeCh5WVUGRlR5MJ
	 wmpkyybFd/mzdQTKaKblAtIVfUSHQ/8G1TPW1wn6Vlg5eY66WTKNYRea5b5wh6ND4h
	 zoRR4YGZlWF058tGkiNtBGhj3sDC/FFK5B1CXFcWeyH1KMxzSDofOtqcjtdbX9ab26
	 vmBlgLJih51IN8F0ipl/cvfOWQzCa+pLD5foqHjFBJt0cri1QOy5UubQM61k3pyCuZ
	 Jc5e4/JN/0tdA==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH 3/3] arm64: dts: rockchip: Add rk3588 timer
Date: Tue, 18 Apr 2023 12:53:44 +0300
Message-Id: <20230418095344.274025-4-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230418095344.274025-1-cristian.ciocaltea@collabora.com>
References: <20230418095344.274025-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_025401_088434_07F94B57 
X-CRM114-Status: GOOD (  10.36  )
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

Add DT node for Rockchip RK3588/RK3588S SoC timer.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 657c019d27fa..acd89a55374a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1400,6 +1400,14 @@ i2c5: i2c@fead0000 {
 		status = "disabled";
 	};
 
+	rktimer: timer@feae0000 {
+		compatible = "rockchip,rk3588-timer", "rockchip,rk3288-timer";
+		reg = <0x0 0xfeae0000 0x0 0x20>;
+		clocks = <&cru PCLK_BUSTIMER0>, <&cru CLK_BUSTIMER0>;
+		clock-names = "pclk", "timer";
+		interrupts = <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH 0>;
+	};
+
 	wdt: watchdog@feaf0000 {
 		compatible = "rockchip,rk3588-wdt", "snps,dw-wdt";
 		reg = <0x0 0xfeaf0000 0x0 0x100>;
-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
