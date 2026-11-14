Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78558606A8B7
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 00:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=LREMnaF/;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=UK4YRzX7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OC4CdZXU9CRK8kQAy0nQjPYknOfiTY40zqHN1ybAegk=; b=LREMnaF/yh/bATIamnmDAq5ccp
	kgFFTcLWww0md3m7tHI2WGWq1zq1DHRwSz3hIxayILUxusdZfeTKUaVsXFy5c9Jygiv/NoMKiLrq8
	D7YVfXxlNSFot8+KJr1CHOr3Hs9pwCD80z9QznE4d+Q2TTr654W8DSl20VpqNiCCE72+EUSYjwZSj
	bdySqU8zUYm/FTKEL0XZ/vxHvwJmmh+G8UbDKYG119zUVnsaH68E20ZJ6UCox6PRbXl8e3sQNJFcD
	NTkdokAQ24F3cY3HcAzO5hduXZHnWqSrqAcbz55+01404LHQ3Ci4ayvggPI/n4jnApSLYwuKMEIKB
	BtGmKbCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS1P1-0000000Erys-1b39;
	Sat, 14 Nov 2026 00:13:55 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS1Oy-0000000ErxF-3lFz;
	Sat, 14 Nov 2026 00:13:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 933E742A83;
	Sat, 14 Nov 2026 00:13:52 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1794615232;
	b=rDT4QYgG/0mXnV1sGaio42y3s78CYtv2s2wYve0rpbyodSl8w7jqrLnRr2hzKwayRjO3
	 oNug+WFq/gpznwM8Am+ldVsj60Ttk/LR/N3zApQl8VSWQjT25/bp+rLxt6AjqmEcYnoDr
	 LiiTFrv3BTExBCwZ/fi8rm8UHLHdgbtcqa+YA8G/jLJad9RXwz++T43rDVY6a5Y3iV1cP
	 JoCwP3s6XJOvioUoFnNsYXQeE8g+8qiEeOLRTL/tHcmiCQkzNla6NYgKu3M6ulrJqfqku
	 cyffeDuyqRqaaqn98oiScLk7DXErthJsDrj+FD7UGyj+a3zo/pqKyepnluXEBGQ7Tiw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1794615232;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=YJIqsMHXUd36NytjdySw+FUQZNq6eqzvdp3DyLOfBec=;
	b=YOxLIqc9YAl4WHvnu33Ih51WogbwyDiggSoJvnH6Kuw2tFUbGLd1niMiK00y2rEDkDrK
	 CrtrJS6cLeHCIEdcb9AIApMvw5KndYuF92LlJ1RVe2WVJjwpdBHkNA40LTSbkskVv9Ca0
	 JOeJNOcEwFiMg61heYbsDhSyCIQgnPowhvtYZ19lzUQQqHz47SZoT7BDmFyiN69mmtKyP
	 LbkIiZAv5VI4Nnt45WLv3MSVvOfqMi4RKK3oLiUl4fHofgEzuk2NbBR0S3yiDAE8wBoxI
	 WW+g4mREJwbjXn87jbEPgcZDytrwbGvcyOZFuxta+TU3pRKNqpT7dH47nPUt0MmzUxA==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 20CF11F000C7;
	Sat, 14 Nov 2026 00:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794615232;
	bh=YJIqsMHXUd36NytjdySw+FUQZNq6eqzvdp3DyLOfBec=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=UK4YRzX7Vyj7XxYAQmb/5XT8ft2ohXSHUZawNeIeuR0ILDdr9HtBxgWwUKBk2Jwpd
	 LAmF1VBLPxwWKfxxYA3LA5fwmJ4sSRlDrmf11oI9mrdl33kuoB4xqla8SIOCXAh0aH
	 ZkmRPFJJuYLLs6g3MIq3L5edUYRZuIQsN5kXKQMM/Am97wlYTXk/IYHl7BHCNxjwL8
	 8XlKBZfAZEBR9KyXIEjXHAdfAYjVq2aDOBZ16mN3Pd48ieKhES/rRQn5hh/5Q2D+9R
	 RDtoUsFlTCyT61vehsaSbiFAtelqbX2Eri8MowtOr2l/+rJUExbAOJddd++u6rsYWf
	 7JdkCltii3Ggw==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 9DB9949BBB;
	Sat, 14 Nov 2026 00:13:50 +0000 (UTC)
From: Arun Iyengar via B4 Relay <devnull+aiyengar1990.gmail.com@kernel.org>
Date: Sat, 14 Nov 2026 00:13:52 +0000
Subject: [PATCH 3/3] arm64: dts: rockchip: Add IEP2 deinterlacer to RK3588
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261114-iep2-v1-3-a8edde5a21e1@gmail.com>
References: <20261114-iep2-v1-0-a8edde5a21e1@gmail.com>
In-Reply-To: <20261114-iep2-v1-0-a8edde5a21e1@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Hans Verkuil <hverkuil@kernel.org>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Alex Bee <knaerzche@gmail.com>, Arun Iyengar <aiyengar1990@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794615229; l=1739;
 i=aiyengar1990@gmail.com; s=20261110; h=from:subject:message-id;
 bh=WgCd6FsHVVdbiiKnG9YJDyBq5Nk8EKW+LFZEF7P5gec=;
 b=ZDkYJl5rlhy4ikFsVvxMmPNwylnSlks+4jVcGClUXWdaR5HiEWXTskWM/CQq764zS2h/UVIv+
 UFc2pkGlrtTCeQeHdCvKdqHns76LCR1Oz5Rerec4vd/2zx0jWdwHCJT
X-Developer-Key: i=aiyengar1990@gmail.com; a=ed25519;
 pk=zXpRgUTrhaFe6jLyPqbBy3ccfkj04w0g2690Wv3mg+0=
X-Endpoint-Received: by B4 Relay for aiyengar1990@gmail.com/20261110 with
 auth_id=1480
X-Original-From: Arun Iyengar <aiyengar1990@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: aiyengar1990@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-14.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Arun Iyengar <aiyengar1990@gmail.com>

Add the IEP2 deinterlacer and its IOMMU to the RK3588 base dtsi. Both
share GIC SPI 117 and sit in the VDPU power domain.

Addresses, clocks, resets and the interrupt are taken from the Rockchip
BSP rk3588s.dtsi (develop-6.1).

Signed-off-by: Arun Iyengar <aiyengar1990@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index aa69fd3793fd..5297519bd251 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1397,6 +1397,28 @@ vepu121_3_mmu: iommu@fdbac800 {
 		#iommu-cells = <0>;
 	};
 
+	iep: deinterlace@fdbb0000 {
+		compatible = "rockchip,rk3588-iep2", "rockchip,rk3568-iep2";
+		reg = <0x0 0xfdbb0000 0x0 0x500>;
+		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_IEP2P0>, <&cru HCLK_IEP2P0>, <&cru CLK_IEP2P0_CORE>;
+		clock-names = "aclk", "hclk", "sclk";
+		resets = <&cru SRST_A_IEP2P0>, <&cru SRST_H_IEP2P0>, <&cru SRST_IEP2P0_CORE>;
+		reset-names = "axi", "ahb", "core";
+		power-domains = <&power RK3588_PD_VDPU>;
+		iommus = <&iep_mmu>;
+	};
+
+	iep_mmu: iommu@fdbb0800 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdbb0800 0x0 0x100>;
+		interrupts = <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_IEP2P0>, <&cru HCLK_IEP2P0>;
+		clock-names = "aclk", "iface";
+		power-domains = <&power RK3588_PD_VDPU>;
+		#iommu-cells = <0>;
+	};
+
 	vdec0: video-codec@fdc38000 {
 		compatible = "rockchip,rk3588-vdec";
 		reg = <0x0 0xfdc38000 0x0 0x100>,

-- 
2.55.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
