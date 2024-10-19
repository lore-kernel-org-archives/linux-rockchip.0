Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5CEC1D3C906
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 10:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7JCcvaR9qZtsGd1nEF8eNB2YjOsryNDWvamt8wIQkmE=; b=JzEAJM5Nx3tUee
	c1saiDo9NIfA070TdmtN3UfV5RtJwmFW8uCtA6bkP7WZaFCljBMPht705TGoh2MbEtYQbo/xLzg4p
	L9qCXE18i/15mjA0qOlSDQCno5tHjjpR4LmxJteWdHtE7BPOy+Aco0lTOEBD0ffCfSOw8dT5vdy/Q
	Zb4qBP0lwhZr/L4oz5A89/zI1SKKeCluSd3TkXeYmuLvghd5oa0eMHjqb8qqVSW8OUmpEMjaMwjBs
	ioluERdRnemyHMgV5B/Il4FWAqUqKDt6lZ9Lzi7as07CwPaXpGVm2uqfLwCSPe+j/4WdlOnYJaV5t
	7YE6L1qhF8rRNLt05dXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t26Xk-000000032rx-3Q7A;
	Sat, 19 Oct 2024 10:18:44 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t26Ry-0000000327r-2Gvn;
	Sat, 19 Oct 2024 10:12:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729332764;
	bh=dcAzLYdeTArkjRaoR6EOKg0UQYPSvk1zvu+tq9qsMAc=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=bNjxorMfMysGL14xhEmAE8aVuDIdoFEuxzvSmk4aMAFeGmVypwLXkngqWUH2MCdQR
	 PA12wmpPwFb/xBdyQxch4xFxZr4AnWOhOWqZAYM3k/PzvY/c5jPtdYVlTAqoxLMpht
	 OqEDFEfHEYwh1+pUDqJHYc3L55SvRKd7GS9sKrNvx8xmcBbBlfnEfBEBUzzaBeK7Mg
	 oWAJleP1prEn8HLeb6qKIenzPdzXeNTpQyYkpolGnTpNZk6JOvuActs0ZRCWqc1Zta
	 PlybpQlJN9W9aC1oZYAbaKvtFTvPQCytk9mlROVxMp5C3L9q4kv4ScCDh6gzTqWwGt
	 2iczws/gd7jEQ==
Received: from localhost (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C18EB17E14D7;
	Sat, 19 Oct 2024 12:12:44 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sat, 19 Oct 2024 13:12:12 +0300
Subject: [PATCH v2 3/5] arm64: dts: rockchip: Enable HDMI0 on rk3588-evb1
MIME-Version: 1.0
Message-Id: <20241019-rk3588-hdmi0-dt-v2-3-466cd80e8ff9@collabora.com>
References: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
In-Reply-To: <20241019-rk3588-hdmi0-dt-v2-0-466cd80e8ff9@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Luis de Arquer <ldearquer@gmail.com>, Alexandre ARNOUD <aarnoud@me.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241019_031246_859490_D97B62D5 
X-CRM114-Status: UNSURE (   9.48  )
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

Add the necessary DT changes to enable HDMI0 on Rockchip RK3588 EVB1.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 47 ++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index df44dbc394ca54fac61664fc3c647cf8e1189dff..863a73b0e3da73150d2874abc5762ab0c4c0ce63 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -9,6 +9,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
 #include <dt-bindings/usb/pd.h>
 #include "rk3588.dtsi"
 
@@ -120,6 +121,17 @@ backlight: backlight {
 		pwms = <&pwm2 0 25000 0>;
 	};
 
+	hdmi0-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi0_con_in: endpoint {
+				remote-endpoint = <&hdmi0_out_con>;
+			};
+		};
+	};
+
 	pcie20_avdd0v85: pcie20-avdd0v85-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "pcie20_avdd0v85";
@@ -300,6 +312,26 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0 {
+	status = "okay";
+};
+
+&hdmi0_in {
+	hdmi0_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi0>;
+	};
+};
+
+&hdmi0_out {
+	hdmi0_out_con: endpoint {
+		remote-endpoint = <&hdmi0_con_in>;
+	};
+};
+
+&hdptxphy_hdmi0 {
+	status = "okay";
+};
+
 &i2c2 {
 	status = "okay";
 
@@ -1256,3 +1288,18 @@ &usb_host1_xhci {
 	dr_mode = "host";
 	status = "okay";
 };
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vop {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi0: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi0_in_vp0>;
+	};
+};

-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
