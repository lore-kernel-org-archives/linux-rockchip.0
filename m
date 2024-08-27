Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC20AC5472F
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 18:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AUfhNDwAvyh1YgMU3vamBcqwr89buISV4rsYobpJ66w=; b=gw80RjSUDPOjM7
	62+iX/CKt8/jRLiu5vl+Q6vGCyXx9ujtymeKdtkU+oZDb5X5v9JVYKTEmXjyMxvQAxUACzk5lGuIn
	4slKvvUgG7Mrmjjto2QstVO5TLDYfqiL7tK1dPZZ2llU8v0bvX/eHJHRTQul7OMH4f2yM3Q9KN/N3
	zGupx31BCOU+YUEuaEp230V7Cf+hM4r9qhLB89lGGKoTkKfzIPcgwkxNhSapJnMvnMECVBubx+lMH
	UlMNOllCqvDii8kfY5AUNEIEjlKOTHRfLZfUZxJlrYJsPsMw4ZPqGonQTLLnsBexHIiDwTxmK0S0h
	do9sKh2nbCsc8UC+TSEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj0g7-0000000CR4B-2hLT;
	Tue, 27 Aug 2024 18:12:27 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj0g4-0000000CR2z-2rL7
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 18:12:26 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724782336; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=AD8W6kAm8KPGSZgZBoT9pLykuSEEZq2RpGwBx13bnlUTsQB00sOtYARnlzVhCCabLqAME32xRJPlTMwDimdFNnO5wI63ppNqwVmugDaP96LXSBAbbUPLAdSAeJhFvyunPVv5MznK1f2WDKbk3ACE/5fwxR6VaehmkLYI5EQD/nU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724782336; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=AwEUECrk+z0V3RuQ8yKIRI9nzPk828sBA4f9z6w21Ew=; 
	b=KIR5jjy4K85EihX935WLaGNg2C/OoefSZ/9xbOR7DYcSteMF/T6B+wWgjmmh83aiKrS0KWIgCSTacb0qYHq64POh/VBhILQYdM5MXa4lMOcDvqBfkoeYpD51o3gLRqV+hOqElkFef6xZpgkYWwUkIjuVf13TfSOeRXf1Fl+QEeE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724782336;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=AwEUECrk+z0V3RuQ8yKIRI9nzPk828sBA4f9z6w21Ew=;
	b=Wm9L9vdjugz2ihLsawk1JxZOSRr2IvWjnhzlDGswP0O+r+2owa9rALlB1NufPuiF
	QKfbx2rV7liTMnAfiEigUmvEp76xjIlcMu8DdSBk9zkV61QUtEi331ZZNL8as00r+f3
	8aGc2Kp1SpLJ0L4Jo7EFXiiv0FKPcTzCryyE+DJk=
Received: by mx.zohomail.com with SMTPS id 1724782334796848.0770855338741;
	Tue, 27 Aug 2024 11:12:14 -0700 (PDT)
Received: by jupiter.universe (Postfix, from userid 1000)
	id E31E14800F4; Tue, 27 Aug 2024 20:12:10 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v8 2/2] arm64: dts: rockchip: Add VPU121 support for RK3588
Date: Tue, 27 Aug 2024 20:10:21 +0200
Message-ID: <20240827181206.147617-3-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240827181206.147617-1-sebastian.reichel@collabora.com>
References: <20240827181206.147617-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_111224_802230_8F75CD4A 
X-CRM114-Status: UNSURE (   9.09  )
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
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 595f129a2d8c..14b8d8691255 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1122,6 +1122,27 @@ power-domain@RK3588_PD_SDMMC {
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
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
