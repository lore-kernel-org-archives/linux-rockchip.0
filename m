Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14DDBC282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 18:11:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=neSIuRZrYtUE1SMRyRcRYIc9WNS7ETi51NB8rigNuCw=; b=3meX6mh8In2MT3
	hYNq849hd+J83rOpTkfoRqLFQAv5MCfsUbvLkXB3XqhxMA0n/e+fATJC0X7DLO1FZN4zIvw3E2Alt
	cOlxfyxSksGeFnF5uq6mAX4usqIQjkkZsKEGLzDpVPsGmwk1Y3quwH/miYqIJ8dvKZB+kPW723t5a
	Ubkk1w81GaHCKAqhcYnOUWs0BEYn0BXJleEJDvxSe1DCbDK/7w6Wry150WtdLA59n7M2SiLhz4kxo
	DFIUKwG+H5QuJn+4qoEL6pCGiWAo9gysY3kx3AYNaveXxcf4jDnGNQZu2ULBcSFIosOQoydX4FZ4o
	tMPHTazlEJl2xMiSAGHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqFgR-0000000BohX-2EVY;
	Thu, 06 Mar 2025 18:10:59 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqFdM-0000000Bnxf-2qJj;
	Thu, 06 Mar 2025 18:07:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1741284467;
	bh=d6BibUDSE0mb5iLcPsRSauFGpJaMOrregbvVx9t9eLI=;
	h=From:To:Cc:Subject:Date:From;
	b=qfJrvxPJBnSS3+4O9YX/cwRugyGiSpPEnXVe6T0GDC9kMgyrOMVzacjEXHRWcI7Cy
	 QJ4e3qo4gBS0LGaylCmHDRH4IuY264npknx/poMLGcmFUNGmiFC+dpsNorkX0p7u6U
	 n0WpBuTNcyZE67Unweiks+vFmF9N44m7zAf+aDWxBl0SYHfQI9He6wr1Y006jokVig
	 qbvDuW7eJe0Upq6EzlxX1F7hwcsQX+arQOmbTsEwTIs7IEaFBzfFHO1a7a3dsO7Vtv
	 M7dIAPBUI1qTquK4mYb4diuxvVjGTCQcwK2njdrmu/gObOGTrljyrrt5d1AvScIsVp
	 i2+vfypFI4B4Q==
Received: from trenzalore.hitronhub.home (unknown [23.233.251.139])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3596617E088C;
	Thu,  6 Mar 2025 19:07:45 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Alexey Charkov <alchark@gmail.com>,
	Andy Yan <andy.yan@rock-chips.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Stephen Chen <stephen@radxa.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@collabora.com
Subject: [PATCH v2] arm64: dts: rockchip: Add HDMI support for rock-4d
Date: Thu,  6 Mar 2025 13:06:31 -0500
Message-ID: <20250306180737.127726-1-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_100748_870821_D6185550 
X-CRM114-Status: UNSURE (   9.45  )
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

Enable HDMI and VOP nodes for the rock-4d board.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---

Changes since v1:
 - Remove extra blank line

 .../boot/dts/rockchip/rk3576-rock-4d.dts      | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index 5dc1c18a3b211..bccd77c3a906f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -26,6 +26,17 @@ chosen {
 		stdout-path = "serial0:1500000n8";
 	};
 
+	hdmi-con {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
 	leds: leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
@@ -238,6 +249,26 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi {
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_out_con: endpoint {
+		remote-endpoint = <&hdmi_con_in>;
+	};
+};
+
+&hdptxphy {
+	status = "okay";
+};
+
 &i2c1 {
 	status = "okay";
 
@@ -687,3 +718,18 @@ &usb_drd1_dwc3 {
 	dr_mode = "host";
 	status = "okay";
 };
+
+&vop {
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
