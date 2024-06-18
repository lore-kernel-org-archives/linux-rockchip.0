Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 34DF3C2BD05
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJwZx3DJJXHX20qzv7JVPgTzix0ctm7aJiH8c0hXdcQ=; b=cryDfCocKu4C/n
	ZGPRG7V6j76dwFkCThU5Pqwgr3PHJDBneSczWY8iT3HBwQDplDKGPoGlgfw8Wwk3USYlD9s7olUpD
	B+2yUU5Pr/PrJFSxKuBwVNxqLtLH08qEwV3HgZWk0Cjh9xlVZE26BYGx/hjI7zrBAg3X8PSqVY7oE
	rZ1v9NZ+dv36nhssZfhAOSfiqjXeSAVSA5xeMbzfYuXUqRYwzTQ9nndKz7M0ACPGzOsdwgF/PSv6Y
	8RAZlLgPSsUgR2HYkUDtEmQuwcTVY2G3/K/EES9aiRqQPubcEdSiiuHBGCWnteQokAQS0vqeF6Ikd
	0VrWbkGQruz4Slb7tj6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJdiv-0000000GE6P-35QS;
	Tue, 18 Jun 2024 18:38:29 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJdip-0000000GE2g-3ukO
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Jun 2024 18:38:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718735898;
	bh=cqxhYAbbW9RM1md+oyI3TV89a9uLQWQLY+gbU0lSp64=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=MEMVXWoWX6DVACd5wKvk58SUSRT7VswErtSexVBwD5U7bU8R5/5mEtQpUijEqEjQb
	 K1+8fYvfGdATRoHH+bABTPrSg8Gk9aVng8EfFfriRS1JHwidxYRyqX3KDKHsBsir0z
	 9j6kW282YGCvoN5e+9ad+1pHhu0aTpWAbG3gSruX71qvZPqNNi26KxNTzNmqPInIFp
	 QR6RABLEMcNchMblHSBKuse2WXCKjbsnQuyK+TaRZ+JY29N9JKLbnk4Gmz3tD5T802
	 Lc+ak/tk+S5TDSq1WL+R4TXRsxAakZwTFk+R7u6in3CwvMG7Ao4UyZmX6IqqerahcL
	 B9LyEVoGoWH4Q==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 11236378219F;
	Tue, 18 Jun 2024 18:38:18 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 35ED54800D1; Tue, 18 Jun 2024 20:38:17 +0200 (CEST)
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
Subject: [PATCH v7 6/6] arm64: dts: rockchip: Add VPU121 support for RK3588
Date: Tue, 18 Jun 2024 20:18:37 +0200
Message-ID: <20240618183816.77597-7-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240618183816.77597-1-sebastian.reichel@collabora.com>
References: <20240618183816.77597-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_113824_205491_344A8946 
X-CRM114-Status: UNSURE (   9.47  )
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
index dd85d4e55922..c0466982646f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -1159,6 +1159,27 @@ power-domain@RK3588_PD_SDMMC {
 		};
 	};
 
+	vpu121: video-codec@fdb50000 {
+		compatible = "rockchip,rk3588-vpu121", "rockchip,rk3568-vpu";
+		reg = <0x0 0xfdb50000 0x0 0x800>;
+		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		clock-names = "aclk", "hclk";
+		iommus = <&vpu121_mmu>;
+		power-domains = <&power RK3588_PD_VDPU>;
+	};
+
+	vpu121_mmu: iommu@fdb50800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdb50800 0x0 0x40>;
+		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
+		clock-names = "aclk", "iface";
+		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
 	vepu121_0: video-codec@fdba0000 {
 		compatible = "rockchip,rk3588-vepu121";
 		reg = <0x0 0xfdba0000 0x0 0x800>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
