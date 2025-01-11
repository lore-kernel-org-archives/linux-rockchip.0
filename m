Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20BF8E7719A
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Jan 2025 10:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y027C8uxKQCqYDzaKeu2LS1qv9qk60wvumm19q0AXjE=; b=C6c9PgChen1oyG
	dWr4clFU8r2bBm+6HhANt/dk31c5lnnWuhhWMZuWRnNPnhjTJktHkOiPTeOxx04oUw/D7QsmbHEue
	j74mdu+mMzuyQbtH4Oc1kUsrxNOJYtxCpJKzGQrRelaZGMPJMCeVRliob0t94RLIcviILHOE42Lya
	ibWQHK1hQyh+rri62vdg0Vgt2uo+wPRKONGcw/iJ9aBZapTkb4k/pIOzZC1KPrnul5GdKqeEBywW1
	3yU8kE14asmGk4RooTe+gs3cD9UGF8H0vIXbl+PN3+kECDAlfFs7SQ98Qs5ACGYI/qMrcqrTI4tcA
	lduDW2Ex0EQrd+a7n8iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWYky-00000000c9b-1t5w;
	Sat, 11 Jan 2025 10:30:16 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWYjj-00000000byX-2ViG;
	Sat, 11 Jan 2025 10:29:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=XqPooFU4lDQIMmbWwzTdUBSgmvqEZt0ZN26iMC58hk8=; b=B
	uhGhh8cdUvNxwa/3wFTY/H9m8dUUgSBofmYJ6OjdDNKDT7b7ByXbZYnKv18Um3sc
	wjGaVumw+l0jzvLYfXivhI1Mw/eURNIuoRuTffCTbcqGRtz74E5A62+XzAEmTl2Y
	Neo/XDuQYm6YigxxE8VZVxB3K2Aec4rvGQIwiitQEU=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-104 (Coremail) ; Sat, 11 Jan 2025 18:28:26 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Sat, 11 Jan 2025 18:28:26 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Damon Ding" <damon.ding@rock-chips.com>
Subject: Re:[PATCH v5 20/20] arm64: dts: rockchip: Enable eDP0 display on
 RK3588S EVB1 board
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2025 www.mailtech.cn 163com
In-Reply-To: <20250109032725.1102465-21-damon.ding@rock-chips.com>
References: <20250109032725.1102465-1-damon.ding@rock-chips.com>
 <20250109032725.1102465-21-damon.ding@rock-chips.com>
X-NTES-SC: AL_Qu2YBPmSvksr4COfY+lS7TNL56tbLqrJwL5gnvMwRNstqDDI/jkhRUZdM2DZ7MGY4ITc56TKdO2qxwviwKtO
MIME-Version: 1.0
Message-ID: <8927876.291e.19454e86e8f.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: aCgvCgDnD1XKR4Jn4k1VAA--.23943W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBjRXmeCQygHywAEs5
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250111_022900_047298_9AF89392 
X-CRM114-Status: UNSURE (   6.80  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, dmitry.baryshkov@linaro.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


Hi Damon,

At 2025-01-09 11:27:25, "Damon Ding" <damon.ding@rock-chips.com> wrote:
>Add the necessary DT changes to enable eDP0 on RK3588S EVB1 board:
>- Set pinctrl of pwm12 for backlight
>- Enable edp0/hdptxphy0/vp2
>- Add aux-bus/panel nodes
>
>Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
>
>---
>
>Changes in v2:
>- Remove brightness-levels and default-brightness-level properties in
>  backlight node.
>- Add the detail DT changes to commit message.
>
>Changes in v3:
>- Use aux-bus instead of platform bus for edp-panel.
>
>Changes in v4:
>- Add comments related to the use of panel compatible "lg,lp079qx1-sp0v"
>  in the commit message.
>
>Changes in v5:
>- Use "edp-panel" instead of "lg,lp079qx1-sp0v"
>- Remove unnecessary comments in commit message
>- Assign the parent of DCLK_VOP2_SRC to PLL_V0PLL
>---
> .../boot/dts/rockchip/rk3588s-evb1-v10.dts    | 54 +++++++++++++++++++
> 1 file changed, 54 insertions(+)
>
>diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>index bc4077575beb..a8c151b41e21 100644
>--- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>+++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
>@@ -9,6 +9,7 @@
> #include <dt-bindings/gpio/gpio.h>
> #include <dt-bindings/input/input.h>
> #include <dt-bindings/pinctrl/rockchip.h>
>+#include <dt-bindings/soc/rockchip,vop2.h>
> #include <dt-bindings/usb/pd.h>
> #include "rk3588s.dtsi"
> 
>@@ -238,6 +239,41 @@ &combphy2_psu {
> 	status = "okay";
> };
> 
>+&edp0 {
>+	force-hpd;
>+	status = "okay";
>+
>+	aux-bus {
>+		panel {
>+			compatible = "edp-panel";
>+			backlight = <&backlight>;
>+			power-supply = <&vcc3v3_lcd_edp>;
>+
>+			port {
>+				panel_in_edp: endpoint {
>+					remote-endpoint = <&edp_out_panel>;
>+				};
>+			};
>+		};
>+	};
>+};
>+
>+&edp0_in {
>+	edp0_in_vp2: endpoint {
>+		remote-endpoint = <&vp2_out_edp0>;
>+	};
>+};
>+
>+&edp0_out {
>+	edp_out_panel: endpoint {
>+		remote-endpoint = <&panel_in_edp>;
>+	};
>+};
>+
>+&hdptxphy0 {
>+	status = "okay";
>+};
>+
> &i2c3 {
> 	status = "okay";
> 
>@@ -399,6 +435,7 @@ usbc0_int: usbc0-int {
> };
> 
> &pwm12 {
>+	pinctrl-0 = <&pwm12m1_pins>;
> 	status = "okay";
> };
> 
>@@ -1168,3 +1205,20 @@ usbdp_phy0_dp_altmode_mux: endpoint@1 {
> 		};
> 	};
> };
>+
>+&vop_mmu {
>+	status = "okay";
>+};
>+
>+&vop {
>+	assigned-clocks = <&cru DCLK_VOP2_SRC>;
>+	assigned-clock-parents = <&cru PLL_V0PLL>;

It's necessary to explain why we need to  assign V0PLL for DCLK_VOP2_SRC in commit message.


>+	status = "okay";
>+};
>+
>+&vp2 {
>+	vp2_out_edp0: endpoint@ROCKCHIP_VOP2_EP_EDP0 {
>+		reg = <ROCKCHIP_VOP2_EP_EDP0>;
>+		remote-endpoint = <&edp0_in_vp2>;
>+	};
>+};
>-- 
>2.34.1
>
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
