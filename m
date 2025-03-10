Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1199CC28B2E
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Mar 2025 11:03:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ya8ocP57ypGHOpvZYnqPJl/RYh4x4dIRO7OWoVHaZV0=; b=OG94tZLD6miXB3
	35yx7Jl5v9Zp6P6RfMCjoGMJuY3Si7/SB3cAAi8dPdgBGhF6ObJdBVcOeHjWdgBqy/eV68haqLdov
	TMBGwBPLGmzyFGmluFVfTtV51/TjdVqo7+bVjq3mU/ytpoiJ7vYTmlB+0wZYRrdqzVO5/z0aVzPuR
	a3SP0Zk/F2wPKza6Z83h0M8vBdNy6WmF9/H83j4VhGnpMbJQeFNnMw2/WxgggGU/HBKrLxVrxPZNf
	od91gAXE9ejGUX8/nt2vkZJg8fo1baI9S2uPhjQY/UfUJ+usajRWpfBJzhlk8clvRnkXLQP9drUJl
	DLQ2+huD7dEn8oKqrSXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1travE-00000002Mm6-2HvM;
	Mon, 10 Mar 2025 11:03:48 +0000
Received: from mail-m155115.qiye.163.com ([101.71.155.115])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1traac-00000002HrU-3BDZ;
	Mon, 10 Mar 2025 10:42:32 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id dc1882b2;
	Mon, 10 Mar 2025 18:42:26 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: heiko@sntech.de
Subject: [PATCH v8 12/13] arm64: dts: rockchip: Add eDP0 node for RK3588
Date: Mon, 10 Mar 2025 18:41:13 +0800
Message-Id: <20250310104114.2608063-13-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250310104114.2608063-1-damon.ding@rock-chips.com>
References: <20250310104114.2608063-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx4YSVZPS0pCQ08dQkhJTxlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	5VSktLVUpCS0tZBg++
X-HM-Tid: 0a957fa617b703a3kunmdc1882b2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NxA6Pxw6MTJRKiM1FTgzPREh
	Mk4aCQxVSlVKTE9KTUtISE9DSE1MVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFKT0xONwY+
DKIM-Signature: a=rsa-sha256;
	b=MCZEVnWekdOZ+BrvUkhP7HxFa5gB5GZ4E1apDoLHUutC8e7KVwcLGHiKhOuiNIte6zQOIJtYR5dzn248Ugkp29aMkh+5taF7UgQSjM/UsORwFvDcE5JCTsxM1YOGRMMDQa+YqldoxpwWa5Mf13tdODTpRxMkbOogvJVoPvM8lf4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=0FGcNJWIvGFWgnAJXPV53XsegYYbwW5nYaQTOeqtjiw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250310_034230_980413_45D46FF6 
X-CRM114-Status: UNSURE (   9.08  )
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
Cc: dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, dmitry.baryshkov@linaro.org, Damon Ding <damon.ding@rock-chips.com>, linux-arm-kernel@lists.infradead.org, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, boris.brezillon@collabora.com, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add support for the eDP0 output on RK3588 SoC.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>

---

Changes in v3:
- Remove currently unsupported property '#sound-dai-cells'

Changes in v4:
- Remove currently unsupported clock 'spdif'
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 2403a3950128..7e089422c947 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1410,6 +1410,34 @@ hdmi0_out: port@1 {
 		};
 	};
 
+	edp0: edp@fdec0000 {
+		compatible = "rockchip,rk3588-edp";
+		reg = <0x0 0xfdec0000 0x0 0x1000>;
+		clocks = <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>;
+		clock-names = "dp", "pclk";
+		interrupts = <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH 0>;
+		phys = <&hdptxphy0>;
+		phy-names = "dp";
+		power-domains = <&power RK3588_PD_VO1>;
+		resets = <&cru SRST_EDP0_24M>, <&cru SRST_P_EDP0>;
+		reset-names = "dp", "apb";
+		rockchip,grf = <&vo1_grf>;
+		status = "disabled";
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			edp0_in: port@0 {
+				reg = <0>;
+			};
+
+			edp0_out: port@1 {
+				reg = <1>;
+			};
+		};
+	};
+
 	qos_gpu_m0: qos@fdf35000 {
 		compatible = "rockchip,rk3588-qos", "syscon";
 		reg = <0x0 0xfdf35000 0x0 0x20>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
