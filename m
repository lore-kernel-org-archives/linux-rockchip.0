Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48716C27C53
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Jun 2024 17:32:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lcm+KgjAvj2a3OrkJZJhGjQFxNtSc++uHwFXKBCREoQ=; b=YLcwaYPV616X1T
	58O4mKowEpDw479UMRbnHSBmdYYKmpJhrHFPpODR527X9AdkmMKMQBeM2FloJyF8evFeIpmRdh9Hf
	I3/VrowYHhfVETJRQTM9MJvDVATxt9o6XRkMbpL5yhQe7N29Q8nMgg+lH65IWjgs/2KhZElFcEmt8
	3I7BQ6EmMqwiobddwpjMzE0DHh6lp5pcLeJygPdcc/LAR1kwyIzOmtnqiCeq9LefJh5iDR/ryN2OH
	D9QST2S8CetHBEabXjqTZ3BBOg4BgxQh8kKMKOO+0ybuOVURRrvLXUcrr0+bOWwuwd7d+xNz9gym1
	tUGVyVAP7qYqI88pcKtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRpq-0000000DaTo-2w9t;
	Wed, 12 Jun 2024 17:32:34 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHRpk-0000000DaOM-1YyS
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Jun 2024 17:32:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718213542;
	bh=09CuY792gYzujtrKgRSq5WilLJwPVg6zDs+yUzN6Tus=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ChRObb4cGRQZCu7ko5Pmmb3VO70BNnD1QJBg+PJckCN1aDpi+ABBzjsl+VfAIPrwx
	 miEp470WoHAj1pEiLwbGAbZTta0smRqyjwEZOXkazG55sUZctz+17lKJQ3qQqxsUlU
	 n7ogL6s/897T+61wHIKarYCgKscaPcw1tC7ENA4UMR8Lz5XwbxoNTrehhmMJvaEkfs
	 mrA47oip4cdMHnNF+Nf1prOzycQIpC5fSAYnCOHBPrXTUw7HLC1GA53ZAiR3IqSALq
	 uOF3fGKByuDD9q88p93qgoL51GRmjqHR1mMs7MCcskL3Vnh662CmRnr5+vXjodEk8B
	 m/AgKX1gDZW1A==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 3260037821A3;
	Wed, 12 Jun 2024 17:32:22 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 624CA4800D0; Wed, 12 Jun 2024 19:32:21 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	Nicolas Dufresne <nicolas.dufresne@collabora.com>,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v5 5/5] arm64: dts: rockchip: Add VPU121 support for RK3588
Date: Wed, 12 Jun 2024 19:15:45 +0200
Message-ID: <20240612173213.42827-6-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240612173213.42827-1-sebastian.reichel@collabora.com>
References: <20240612173213.42827-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240612_103228_748366_2A5A7570 
X-CRM114-Status: UNSURE (   9.16  )
X-CRM114-Notice: Please train this message.
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

From: Jianfeng Liu <liujianfeng1994@gmail.com>

Enable Hantro G1 video decoder in RK3588's devicetree.

Tested with FFmpeg v4l2_request code taken from [1]
with MPEG2, H.264 and VP8 samples.

[1] https://github.com/LibreELEC/LibreELEC.tv/blob/master/packages/multimedia/ffmpeg/patches/v4l2-request/ffmpeg-001-v4l2-request.patch

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
Tested-by: Hugh Cole-Baker <sigmaris@gmail.com>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 9edbcfe778ca..e7e1b456b9b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1239,6 +1239,27 @@ jpeg_enc3_mmu: iommu@fdbac800 {
 		#iommu-cells = <0>;
 	};
 
+	vpu: video-codec@fdb50000 {
+		compatible = "rockchip,rk3588-vpu121", "rockchip,rk3568-vpu";
+		reg = <0x0 0xfdb50000 0x0 0x800>;
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vpu_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	vpu_mmu: iommu@fdb50800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdb50800 0x0 0x40>;
+		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
+		clock-names = "aclk", "iface";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
 	av1d: video-codec@fdc70000 {
 		compatible = "rockchip,rk3588-av1-vpu";
 		reg = <0x0 0xfdc70000 0x0 0x800>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
