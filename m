Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6270FC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 12:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VouNuW77ggiR/hxoDfVeEILBRxDg6oLPKZIDrH6nHoY=; b=SJFwLxZYlRkOFq
	NSnDlxR7J4cLBzREfxWg7b/SgFwX896VlaVpCCO5nelgzQpzwq6B9oczqCgt8D4TsBzJM5BgqMvh8
	yLavNxqmudyn8LS3Jjootojg1DkOWzPqJQzH7aZoNuWGYNjSqeq5XJdI8raxhIQH3RnpKuh0HVJ+H
	ZMti7xNmcUvih3ETrHcnIFzMyCrBwVhPox8RBZUJAdN3CgHWchGuYEcrpz1SwNLIhDN6QBJn/SF7v
	YUaUrAabuyhI/Fr8ZudzlLspt2Rdeq2TMeLXIiyn9BmcDXi209xpXMzh0YCO6VTTh4frfEor5JNEP
	l6D7RzG4Rak+Xsp+06Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCexb-004mZy-0X;
	Mon, 11 Dec 2023 12:00:31 +0000
Received: from m12.mail.163.com ([220.181.12.197])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCexV-004mXo-1Z
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Dec 2023 12:00:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=/sWVg
	0hNK5TP+8Pwlr8XAy4mPpuu4KgDAAEWdrDIyEA=; b=L/iFFu02+T/dzaMA6lRo1
	6nT0xMjecozCVvqTeMbZ7sQOOx4WpQmD+m4d76zSuwccTOF/CdYPGcvUG0zwL5rF
	atG0x4njtzI6CAOYFBTWsp81k3TVFC7imLVy7CckGOn9WvxCHm9qnWlfRhAxHKpk
	IuSQIZ6jyU18MMJK4jNizA=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-3 (Coremail) with SMTP id _____wC331rF+XZlxbuGFQ--.4805S2;
	Mon, 11 Dec 2023 20:00:09 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v5 15/16] arm64: dts: rockchip: Add vop on rk3588
Date: Mon, 11 Dec 2023 20:00:04 +0800
Message-Id: <20231211120004.1785616-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211115547.1784587-1-andyshrk@163.com>
References: <20231211115547.1784587-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wC331rF+XZlxbuGFQ--.4805S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxAFy3GFyUKw1xGw1rZw4UXFb_yoW5Aw45p3
	ZruFWrJr4kuF1Iqa98KryvgrWkJan5CaykGwnxAFy8tr1SvryDKrWxWryfZ3ZrXr4xZanF
	yFsrAryUtrsxXw7anT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jD-BNUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEglDXmVOA43JFQABs+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_040025_860064_C7C5C0AB 
X-CRM114-Status: UNSURE (   7.84  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Add vop dt node for rk3588.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v5:
- remove unused property
- move blank line below the status=disabled in vop dt node

 arch/arm64/boot/dts/rockchip/rk3588s.dtsi | 83 +++++++++++++++++++++++
 1 file changed, 83 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
index 8aa0499f9b03..98547642fd08 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s.dtsi
@@ -362,6 +362,11 @@ spll: clock-0 {
 		#clock-cells = <0>;
 	};
 
+	display_subsystem: display-subsystem {
+		compatible = "rockchip,display-subsystem";
+		ports = <&vop_out>;
+	};
+
 	timer {
 		compatible = "arm,armv8-timer";
 		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_HIGH 0>,
@@ -474,6 +479,16 @@ sys_grf: syscon@fd58c000 {
 		reg = <0x0 0xfd58c000 0x0 0x1000>;
 	};
 
+	vop_grf: syscon@fd5a4000 {
+		compatible = "rockchip,rk3588-vop-grf", "syscon";
+		reg = <0x0 0xfd5a4000 0x0 0x2000>;
+	};
+
+	vo1_grf: syscon@fd5a8000 {
+		compatible = "rockchip,rk3588-vo-grf", "syscon";
+		reg = <0x0 0xfd5a8000 0x0 0x100>;
+	};
+
 	php_grf: syscon@fd5b0000 {
 		compatible = "rockchip,rk3588-php-grf", "syscon";
 		reg = <0x0 0xfd5b0000 0x0 0x1000>;
@@ -593,6 +608,74 @@ i2c0: i2c@fd880000 {
 		status = "disabled";
 	};
 
+	vop: vop@fdd90000 {
+		compatible = "rockchip,rk3588-vop";
+		reg = <0x0 0xfdd90000 0x0 0x4200>, <0x0 0xfdd95000 0x0 0x1000>;
+		reg-names = "vop", "gamma_lut";
+		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_VOP>,
+			 <&cru HCLK_VOP>,
+			 <&cru DCLK_VOP0>,
+			 <&cru DCLK_VOP1>,
+			 <&cru DCLK_VOP2>,
+			 <&cru DCLK_VOP3>,
+			 <&cru PCLK_VOP_ROOT>;
+		clock-names = "aclk",
+			      "hclk",
+			      "dclk_vp0",
+			      "dclk_vp1",
+			      "dclk_vp2",
+			      "dclk_vp3",
+			      "pclk_vop";
+		iommus = <&vop_mmu>;
+		power-domains = <&power RK3588_PD_VOP>;
+		rockchip,grf = <&sys_grf>;
+		rockchip,vop-grf = <&vop_grf>;
+		rockchip,vo1-grf = <&vo1_grf>;
+		rockchip,pmu = <&pmu>;
+		status = "disabled";
+
+		vop_out: ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			vp0: port@0 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <0>;
+			};
+
+			vp1: port@1 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <1>;
+			};
+
+			vp2: port@2 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <2>;
+			};
+
+			vp3: port@3 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				reg = <3>;
+			};
+		};
+	};
+
+	vop_mmu: iommu@fdd97e00 {
+		compatible = "rockchip,rk3588-iommu", "rockchip,rk3568-iommu";
+		reg = <0x0 0xfdd97e00 0x0 0x100>, <0x0 0xfdd97f00 0x0 0x100>;
+		interrupts = <GIC_SPI 156 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
+		clock-names = "aclk", "iface";
+		#iommu-cells = <0>;
+		power-domains = <&power RK3588_PD_VOP>;
+		status = "disabled";
+	};
+
 	uart0: serial@fd890000 {
 		compatible = "rockchip,rk3588-uart", "snps,dw-apb-uart";
 		reg = <0x0 0xfd890000 0x0 0x100>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
