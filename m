Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0522FC3ABBC
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 17:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cJwvDz9kZd0n9Yc9+1z7pc6UxGBQpjQTgDBxz71hqg8=; b=GtUzk3ahdiPHsG
	N98R+HnR5MUqhZAwyMUOOvMjwmBc3P/agg7nDNd267AxpXXn2dWIOy2qjrkZr3+OFsp3Vf7wBgL+E
	QhdDwo0p6qerNTeUP4ayPCkre5nTwqer14487wLFGpp5sCO/fx10Q51L0z7PpTZ7jeAXJB3Q/fo5o
	G0Plg1r5SYOvpTszigGTAxJJXCzJXtd8ivYs8x8KtN+NbLYZN2yL266ObuK5bklSR3TOXsGqLvBs0
	YVUgJAslDnzmMvhyTCzoNigoKudl42cwiAbhgNI6V9k535O8m3Qi1/ns68M7WyR4y5nMbcfvTQfcQ
	/o3U3RyytJGfSX4N9lWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBzox-00000008C4n-2lQe;
	Mon, 05 May 2025 17:41:39 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBzbA-000000088xG-2qSO;
	Mon, 05 May 2025 17:27:25 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1746466030; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=WvaUuOHozLTxBreRVoRUZHIAEzPFGeRQMg4uBRsLda4UXmjGVA5cd0lSmJZVK1mmoHrEgX5EVsPj7yUqQ2VI+yFQJ1tlKUNSPbfuxsRYNx5hAN8LdngVVVcI2RbqUR5Avbw2x1279vvM49DbDT2Bx27InOsLU40h+muwSJDFVqQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1746466030; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=UXMkSRINNwBaxu50t98o2g6F0hiutN+78b6vZXXpk4k=; 
	b=i8/fed4EofhbKDyh8FRlPRZPRnvt/opLboTCojBOcJwnxBVvA6tVK2VzfmB34vzFJE+ILd8FSCRqfnGfnjW1jrSwhGEZT5XdMYHu+la1oK8Z8grseOlTVTEB9Y+x+P6k8rIyf7scxe3E/9orTlsgMiD3lhHfQkHpl4BKFaillzY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1746466030;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=UXMkSRINNwBaxu50t98o2g6F0hiutN+78b6vZXXpk4k=;
	b=I8LC2PmuD2lmjAGTQ7BwExEaZ4rARrEE+97Y4X5x4ugO4oq9Hok6tyxmSEJWTbJC
	otXtmma8ij4MUFJLrYWgzLT+5yHmOygsvCBUsBLO43pt7iUADP0hycYAmqDBL16uvam
	ae9+iAgMsYJp9QGcOv2zU1HIk2FiV8YAhvFzDm/g=
Received: by mx.zohomail.com with SMTPS id 1746466028949626.5537082120404;
	Mon, 5 May 2025 10:27:08 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 05 May 2025 19:26:39 +0200
Subject: [PATCH v2 4/5] arm64: dts: rockchip: reference u2phy1 as clock on
 RK3576
MIME-Version: 1.0
Message-Id: <20250505-rk3576-sige5-usb-v2-4-d5ba4305f3be@collabora.com>
References: <20250505-rk3576-sige5-usb-v2-0-d5ba4305f3be@collabora.com>
In-Reply-To: <20250505-rk3576-sige5-usb-v2-0-d5ba4305f3be@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Kever Yang <kever.yang@rock-chips.com>, 
 Frank Wang <frank.wang@rock-chips.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_102724_789238_59F78E50 
X-CRM114-Status: GOOD (  13.97  )
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
Cc: devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The rockchip,dwc3 binding states that the utmi clock may be referenced
by the controller. Until now, the u2phy1's clock output had no
references to it in the SoC device tree. It's not known if this caused
any real-world issues, but it may have allowed the USB controller to
potentially do operations that depend on the utmi clock while it is not
enabled, leading to hard-to-reproduce race conditions during bootup.

Reference the u2phy1 output clock in its corresponding USB controller as
an utmi clock. This effectively increases the enable count of the
usb480m_phy1 clock in Linux on my system from a deviceless 1 to a 2 with
the USB controller as a named user.

Fixes: 23ec57a32da4 ("arm64: dts: rockchip: add usb related nodes for rk3576")
Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index ddc92ccc530d6757660971f0a609b5127784bb04..fa4ff44ec48b4b8759b7d4d1c752afd3333fd43d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -480,8 +480,9 @@ usb_drd1_dwc3: usb@23400000 {
 			reg = <0x0 0x23400000 0x0 0x400000>;
 			clocks = <&cru CLK_REF_USB3OTG1>,
 				 <&cru CLK_SUSPEND_USB3OTG1>,
-				 <&cru ACLK_USB3OTG1>;
-			clock-names = "ref_clk", "suspend_clk", "bus_clk";
+				 <&cru ACLK_USB3OTG1>,
+				 <&u2phy1>;
+			clock-names = "ref_clk", "suspend_clk", "bus_clk", "utmi";
 			interrupts = <GIC_SPI 260 IRQ_TYPE_LEVEL_HIGH>;
 			power-domains = <&power RK3576_PD_PHP>;
 			resets = <&cru SRST_A_USB3OTG1>;

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
