Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 920BAE7717D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 12:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/HUsAQW1B08L+4AbEkuXh2QYYVXKUwCNtLUGT8OyFE=; b=itl4LxUzM0ApuX
	xA/Pt1dWNf76eHZHFFMthvTznoGj2hX9O95WFiRZYsNSn+Y+bV0OptPnSGaAohImwzAuyhtbfoYHh
	eVj4ziYIknPfF9Aazt97K3ZNhTVtiZQQ+Z/yuqAYWyhKGPO8BsarSTd4wPqk4tFIglO45rmDCUni9
	rjkrNFFfKlc9zXc48Qx0/Vun+QJ3/La/Pgyz1jzWLjlIAABJjFc0XYER4sY5SBjkv34wrkTMfGGYj
	Z/h76HniSVkzQ67w891F6QlzxevD00Wa8HAWmjWoKAbfMYubZPcjmFNIEDnobFCSKzxcUOBFNRxsv
	YKc4WoNAInCApOpi2MLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdL7-00000007pTR-236V;
	Mon, 09 Dec 2024 12:58:17 +0000
Received: from m16.mail.163.com ([117.135.210.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKd0K-00000007jLt-3wYe;
	Mon, 09 Dec 2024 12:36:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=LaOYKVDmrqOKFM0qeCpR4W8+8hRK1FIfAU8Js6TT/Hc=; b=I
	Vrn3OA544FhRcBAUJW68eJRfwgaqKYV99oG+2rBqLw+7IMie74PL1IUNzj++jOXw
	NIhD6nvAetCqghYUqM/rS7mAeVJxeywbwikxF6pAGMHv9rWYaa0fPH0qUTDdHBNG
	4tJ/qUurvq5e9IJwWPnHvnQC5I5q/IKKJQZsau7/9Y=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-102 (Coremail) ; Mon, 9 Dec 2024 20:36:34 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Mon, 9 Dec 2024 20:36:34 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com, krzk+dt@kernel.org, s.hauer@pengutronix.de, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com, 
	detlev.casanova@collabora.com, "Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:[PATCH] arm64: dts: rockchip: Add vop for rk3576
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20241209122943.2781431-2-andyshrk@163.com>
References: <20241209122943.2781431-1-andyshrk@163.com>
 <20241209122943.2781431-2-andyshrk@163.com>
X-NTES-SC: AL_Qu2YAfufuE8i4iibZ+kZnEobh+Y5UcK2s/ki2YFXN5k0tCTI0SYQW29KGUD2y86DDiKsoAirUQVL5MpFRpJHY46t/2HedzTsYgGujvXayff0
MIME-Version: 1.0
Message-ID: <34ce9ef5.ba77.193ab6be398.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZigvCgAXlJxT5FZn69E6AA--.43103W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMw6wXmdW3sfiXQADsH
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_043649_361039_F1388C09 
X-CRM114-Status: UNSURE (   5.87  )
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


Sorry, please ignore this patch.

At 2024-12-09 20:29:11, "Andy Yan" <andyshrk@163.com> wrote:
>From: Andy Yan <andy.yan@rock-chips.com>
>
>Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
>---
> arch/arm64/boot/dts/rockchip/rk3576.dtsi | 70 +++++++++++++++++++++++-
> 1 file changed, 69 insertions(+), 1 deletion(-)
>
>diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>index 70ddedb0c890..45823a758b6e 100644
>--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>@@ -393,6 +393,11 @@ opp-950000000 {
> 		};
> 	};
> 
>+	display_subsystem: display-subsystem {
>+		compatible = "rockchip,display-subsystem";
>+		ports = <&vop_out>;
>+	};
>+
> 	firmware {
> 		scmi: scmi {
> 			compatible = "arm,scmi-smc";
>@@ -832,6 +837,70 @@ gpu: gpu@27800000 {
> 			status = "disabled";
> 		};
> 
>+		vop: vop@27d00000 {
>+			compatible = "rockchip,rk3576-vop";
>+			reg = <0x0 0x27d00000 0x0 0x3000>, <0x0 0x27d05000 0x0 0x1000>;
>+			reg-names = "vop", "gamma-lut";
>+			interrupts = <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH>,
>+				     <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH>,
>+				     <GIC_SPI 380 IRQ_TYPE_LEVEL_HIGH>,
>+				     <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH>;
>+			interrupt-names = "vop-sys",
>+					  "vop-vp0",
>+					  "vop-vp1",
>+					  "vop-vp2";
>+			clocks = <&cru ACLK_VOP>,
>+				 <&cru HCLK_VOP>,
>+				 <&cru DCLK_VP0>,
>+				 <&cru DCLK_VP1>,
>+				 <&cru DCLK_VP2>;
>+			clock-names = "aclk",
>+				      "hclk",
>+				      "dclk_vp0",
>+				      "dclk_vp1",
>+				      "dclk_vp2";
>+			iommus = <&vop_mmu>;
>+			power-domains = <&power RK3576_PD_VOP>;
>+			rockchip,grf = <&sys_grf>;
>+			rockchip,pmu = <&pmu>;
>+			status = "disabled";
>+
>+			vop_out: ports {
>+				#address-cells = <1>;
>+				#size-cells = <0>;
>+
>+				vp0: port@0 {
>+					#address-cells = <1>;
>+					#size-cells = <0>;
>+					reg = <0>;
>+				};
>+
>+				vp1: port@1 {
>+					#address-cells = <1>;
>+					#size-cells = <0>;
>+					reg = <1>;
>+				};
>+
>+				vp2: port@2 {
>+					#address-cells = <1>;
>+					#size-cells = <0>;
>+					reg = <2>;
>+				};
>+			};
>+		};
>+
>+		vop_mmu: iommu@27d07e00 {
>+			compatible = "rockchip,rk3576-iommu", "rockchip,rk3568-iommu";
>+			reg = <0x0 0x27d07e00 0x0 0x100>, <0x0 0x27d07f00 0x0 0x100>;
>+			interrupts = <GIC_SPI 342 IRQ_TYPE_LEVEL_HIGH>;
>+			interrupt-names = "vop_mmu";
>+			clocks = <&cru ACLK_VOP>, <&cru HCLK_VOP>;
>+			clock-names = "aclk", "iface";
>+			#iommu-cells = <0>;
>+			power-domains = <&power RK3576_PD_VOP>;
>+			status = "disabled";
>+		};
>+
> 		hdmi: hdmi@27da0000 {
> 			compatible = "rockchip,rk3576-dw-hdmi-qp";
> 			reg = <0x0 0x27da0000 0x0 0x20000>;
>@@ -873,7 +942,6 @@ hdmi_out: port@1 {
> 			};
> 		};
> 
>->>>>>>> 2b62c69b3a4c (arm64: dts: rockchip: Add hdmi for rk3576)
> 		qos_hdcp1: qos@27f02000 {
> 			compatible = "rockchip,rk3576-qos", "syscon";
> 			reg = <0x0 0x27f02000 0x0 0x20>;
>-- 
>2.34.1
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
