Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B5FE7717D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 13:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vqrlo9ICu3rdzsDLVt87wtase6dpmbDkwftPlgOtVuY=; b=LxGfAlstg2c1Uw
	3CZm9SxtRa7b3Oxtv/lSbOUELwauZHkU7Fh9aHgtxAM8BNJVkmVNpkj812TrTvj7Ob15ecOckXgSk
	DkxXOUAJxS20bzOZ6w/Cqa2dN94TIL/AJ8QncAGOEF8F4OjJQCmTjF1nHFcpFxiUnAeudy6BHeq7O
	LaUYzI9iotp1TSVYJwPmNn/lGWwkhdNPoz5lPO5SBWpQlSaALLLT05Mzt0HzTvnMAvnRb0gwGduS8
	op3pSAaowRAjxVrUhiBDnvakADbQCb/HFVwvobKv3dZig2GSOMQMT7DzdDL+4IiEG1BtTG0qZw9ZT
	G+29nHAv5w8AfilGIr+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKdNA-00000007q0s-0Kos;
	Mon, 09 Dec 2024 13:00:24 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKd0y-00000007jar-20JQ;
	Mon, 09 Dec 2024 12:37:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=oaL4vuqyJPqCzrebAYqJ4BkKXX75wUQalceWFIYVX60=; b=b
	oDnxdIyak6k6oTFpXzAmrmXKbA2F8nEQZWEJlImrUoivFyfnGozddxf8Us5jd9J4
	pQm1mG6ASENox8K5fWqasZSYnDWUqq+KhoZNvvyolOPvwfrVbBgyLJl93HktG3Jf
	fzadG2fD5OL7CbsvrHmUbNmQ8ZYIP7kzGTstiDeA98=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-102 (Coremail) ; Mon, 9 Dec 2024 20:37:16 +0800 (CST)
X-Originating-IP: [58.22.7.114]
Date: Mon, 9 Dec 2024 20:37:16 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com, krzk+dt@kernel.org, s.hauer@pengutronix.de, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com, 
	detlev.casanova@collabora.com
Subject: Re:[PATCH] arm64: dts: rockchip: Enable HDMI display for rk3588
 Cool Pi GenBook
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <20241209122943.2781431-3-andyshrk@163.com>
References: <20241209122943.2781431-1-andyshrk@163.com>
 <20241209122943.2781431-3-andyshrk@163.com>
X-NTES-SC: AL_Qu2YAfufuEAo4CWcYukZnEobh+Y5UcK2s/ki2YFXN5k0tCTI0SYQW29KGUD2y86DDiKsoAirUQVL5MpFRpJHY45Pr/VWJbfCvfnScnDgjI4d
MIME-Version: 1.0
Message-ID: <5818dffa.ba85.193ab6c868c.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: ZigvCgDXj7585FZnANI6AA--.45284W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hGwXmdW4xo5UwACsN
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_043728_813354_69AD319A 
X-CRM114-Status: UNSURE (   6.50  )
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

At 2024-12-09 20:29:12, "Andy Yan" <andyshrk@163.com> wrote:
>Enable hdmi display output on Cool Pi GenBook.
>
>Signed-off-by: Andy Yan <andyshrk@163.com>
>Link: https://lore.kernel.org/r/20241028123503.384866-4-andyshrk@163.com
>Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>---
> .../rockchip/rk3588-coolpi-cm5-genbook.dts    | 49 +++++++++++++++++++
> 1 file changed, 49 insertions(+)
>
>diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts
>index 6418286efe40d..9ec2374c6cdfa 100644
>--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts
>+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5-genbook.dts
>@@ -7,6 +7,7 @@
> /dts-v1/;
> 
> #include <dt-bindings/leds/common.h>
>+#include <dt-bindings/soc/rockchip,vop2.h>
> #include "rk3588-coolpi-cm5.dtsi"
> 
> / {
>@@ -35,6 +36,17 @@ charger: dc-charger {
> 		gpios = <&gpio1 RK_PC0 GPIO_ACTIVE_LOW>;
> 	};
> 
>+	hdmi-con {
>+		compatible = "hdmi-connector";
>+		type = "a";
>+
>+		port {
>+			hdmi_con_in: endpoint {
>+				remote-endpoint = <&hdmi0_out_con>;
>+			};
>+		};
>+	};
>+
> 	leds: leds {
> 		compatible = "gpio-leds";
> 
>@@ -136,6 +148,28 @@ vcc5v0_usb_host0: vcc5v0_usb30_host: vcc5v0-usb-host-regulator {
> 	};
> };
> 
>+/* HDMI CEC is not used */
>+&hdmi0 {
>+	pinctrl-0 = <&hdmim0_tx0_hpd &hdmim0_tx0_scl &hdmim0_tx0_sda>;
>+	status = "okay";
>+};
>+
>+&hdmi0_in {
>+	hdmi0_in_vp0: endpoint {
>+		remote-endpoint = <&vp0_out_hdmi0>;
>+	};
>+};
>+
>+&hdmi0_out {
>+	hdmi0_out_con: endpoint {
>+		remote-endpoint = <&hdmi_con_in>;
>+	};
>+};
>+
>+&hdptxphy_hdmi0 {
>+	status = "okay";
>+};
>+
> &i2c4 {
> 	status = "okay";
> 	pinctrl-names = "default";
>@@ -347,3 +381,18 @@ &usb_host1_xhci {
> 	dr_mode = "host";
> 	status = "okay";
> };
>+
>+&vop {
>+	status = "okay";
>+};
>+
>+&vop_mmu {
>+	status = "okay";
>+};
>+
>+&vp0 {
>+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
>+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
>+		remote-endpoint = <&hdmi0_in_vp0>;
>+	};
>+};
>-- 
>2.34.1
_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
