Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D255AC77B75
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Apr 2023 12:06:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1+f6eQ7kUy1jfQIiFtcB/te0OXmGOLoKftNXe1idLIQ=; b=jvo/pN7kBWhFI0
	up+YfKPuGE2R+JPMsANbpRpp6Krp/w+qHbpcqvGIWshMt40jOo+fJydRzGlYG5+vQpoXvSAS9E1bl
	WJV3Jm325WvAH16Hk91S0mfXwmMYnxTlUaNh57S0CD+Mziz7ovt0trJFzYJFmeemXRP67KV/2jMvt
	+DrDvWQu5DHaLkKiuH/GGCe7u6TD8NDg/QzFM7t77nVWUvCAT5OWekVIJ0wV7kcMi64rbagzX8/Jw
	WwqARlI8GnfsmmigMQMQruXIjJFCV7b6KG7UT6+LOVK6BquAfRx1kBEo+kc1pTjD3TwmSDBRxirTg
	/JFxt7fkr5OXZfvTlkcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pok6f-0023Rw-2r;
	Tue, 18 Apr 2023 12:06:45 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pok6Z-0023OR-0Q;
	Tue, 18 Apr 2023 12:06:40 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id C125E660320E;
	Tue, 18 Apr 2023 13:06:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681819598;
	bh=TQcB5X4iZIViJGyWOJ/d+KxnISkUh4MekvbHwYmTdXk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oFDWMnpZdoO3UisFSu/SMZB0jfMFuAlpH18h+bsJa8M+zrtPMfDOCYA6Whd8lcZTY
	 rRPbnp2pBY1oFfAtEi52kGJnz3moIECfOzNLDViBcUfevkKAIQCy1TLUYxw6SGwsnq
	 IFsMYYrSIy50dnRLUZoGxhbcWukNgm3/mDGe+lkKVlrWlgeo0i1asK6Se+NHdOYkMz
	 QG8aT1X/GC36M9hz+E+s0qmIVwt7pdecBa2NACIskLnH67ITi1RcsqkLcDPwxLmZCv
	 KLV8M13KYk/fo0TLTrHz9kbBmzYQ9UvItdZTtYnb0OkoFs9wv1sYjyqGDyclq9LF5b
	 2jlEX/8tWz6SQ==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Sugar Zhang <sugar.zhang@rock-chips.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>
Cc: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add rk3588 timer
Date: Tue, 18 Apr 2023 15:06:24 +0300
Message-Id: <20230418120624.284551-4-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230418120624.284551-1-cristian.ciocaltea@collabora.com>
References: <20230418120624.284551-1-cristian.ciocaltea@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_050639_297412_80A1ABFF 
X-CRM114-Status: GOOD (  10.39  )
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
index 657c019d27fa..767084a1ec43 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1400,6 +1400,14 @@ i2c5: i2c@fead0000 {
 		status = "disabled";
 	};
 
+	timer0: timer@feae0000 {
+		compatible = "rockchip,rk3588-timer", "rockchip,rk3288-timer";
+		reg = <0x0 0xfeae0000 0x0 0x20>;
+		interrupts = <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru PCLK_BUSTIMER0>, <&cru CLK_BUSTIMER0>;
+		clock-names = "pclk", "timer";
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
