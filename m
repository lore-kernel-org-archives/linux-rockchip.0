Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 867E3E92FF0
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Oct 2023 06:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=k1Ip1/oJ3sxaPWj1dzb5ZlbuHTtsykJ3Sw9bbeKLvaU=; b=klBl3f/LAjH9Yp
	VHNyzkvYr48IroI8ws8oYUxnq87aLl/SotqBRcJcH5tbRRXXl4wR1MF3aVan0MrV6M5KExNbZEySk
	yNL4EbwUh8TyguFQdmpYd1U9ukQQbjTIWhgE5UlJf63QevcJ0yF+rPADL0Qe7efKpAlCgEUveUGb6
	XNFCh2FF8tkUs1nH3UYTjCkoz0Ef756uXjiJi0Z0EinLeVzRYW4kjJaBU5QP6z/DZ0WVjyUYBB6oL
	gE7CjJLZeOxtNhdHEL4Rkm3KIW7cOyCQA8XSDoG6nVFCj3hMZsY/UZnIY2pnCdE2sGQP2niwB5cvN
	sH0K1iM0Aewzl0rUOYWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qoeib-0056ZK-1b;
	Fri, 06 Oct 2023 06:53:49 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qoeiY-0056YY-0x;
	Fri, 06 Oct 2023 06:53:47 +0000
Received: from benjamin-XPS-13-9310.. (unknown [IPv6:2a01:e0a:120:3210:40dd:1541:8234:4d16])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 009216607336;
	Fri,  6 Oct 2023 07:53:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1696575221;
	bh=lxJjyV/iMvcHmNqd0VGLIe+5rW3S6hUI6UcED93hyTo=;
	h=From:To:Cc:Subject:Date:From;
	b=Ya3dxMsz3yXH4nuNnydhrYwXRinFUR/TJJYZ2h2HNQlkfeO1497C4raGKAhtEUygp
	 1H0WzPmXABuaB/OOCl58KG3MDtWRz47YsN9bFhlo7Z88GKKD2MA4ah2xRF3v9XrZDu
	 nXCMdxmWR3tMTLeF0c0qJO2HFfnStkHDRPMDAQYYdev7JE3YqiDlaOAat/f33UHLne
	 OzfKau+q0b9i00z7E29FAMIOCeyH+qIv+yL16DDOK/sPLSfrLKRacai5/65epDRj9h
	 qUyR+jntfMeXcAdmaJZMG6IAwJA7SaiThsUyv39Qy6JV0A5lFA6i7cjx6T+cY8m8Zi
	 /3UHA6pK7MkEg==
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v3] arm64: dts: rockchip: rk3588s: Add AV1 decoder node
Date: Fri,  6 Oct 2023 08:53:34 +0200
Message-Id: <20231006065334.8117-1-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_235346_509565_EDFD30AC 
X-CRM114-Status: UNSURE (   9.22  )
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

Add node for AV1 video decoder.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
version 3:
- remove status = "okay"

version 2:
- change node name to video-codec
- fix typo in commit header

 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 5544f66c6ff4..5481f59f551f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -2304,6 +2304,19 @@ gpio4: gpio@fec50000 {
 			#interrupt-cells = <2>;
 		};
 	};
+
+	av1d: video-codec@fdc70000 {
+		compatible = "rockchip,rk3588-av1-vpu";
+		reg = <0x0 0xfdc70000 0x0 0x800>;
+		interrupts = <GIC_SPI 108 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vdpu";
+		clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
+		clock-names = "aclk", "hclk";
+		assigned-clocks = <&cru ACLK_AV1>, <&cru PCLK_AV1>;
+		assigned-clock-rates = <400000000>, <400000000>;
+		resets = <&cru SRST_A_AV1>, <&cru SRST_P_AV1>, <&cru SRST_A_AV1_BIU>, <&cru SRST_P_AV1_BIU>;
+		power-domains = <&power RK3588_PD_AV1>;
+	};
 };
 
 #include "rk3588s-pinctrl.dtsi"
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
