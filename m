Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2070DF43689
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 09:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tjUrwQjLWGZ70PKco0R8rJpL+7n3sa7yp5NijjHFl14=; b=AjVTX4VN9Wr59H
	sJI8yCDrX59yTFh75PVvIxqh2+SNxmmItS32CN5yP/RLkx8bOOeQJXWOBXLNhrzKviRORW9R3Z3Iv
	8E4Yuyv+CAfxGpRaZuqM+S0BypADvFISDGrmvLnpwWnY2qilZ7QqKgmas7LN+ydH1h5ynHBpZaLe4
	f3NVuWOJnjacXuMiWRpY4ZWk7p79VCesvhmNCY+9NvkqDeaQpVVwDmT8be1+ayRtQguI/cqgvvtdL
	Pwy/EHw4yvmejWLoDa6HIMasgDHGmcI2mf4tc3mWiDq+YFMKwXQxYKxIdH4noH2L/75BvcKFFQgwQ
	7QIXSCLIuCOv8+8w0FNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfUZ-00000003o2C-2Mj7;
	Fri, 17 Apr 2026 09:28:03 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfSG-00000003l5n-3Bn5;
	Fri, 17 Apr 2026 09:25:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776417938;
	bh=XbzjAh5GlsBnF+UiRnVx1scusxE5jcPAWzRBxxB3EuM=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=f6vKq53W7v/i0kvHNhJ327MXUv8AsAhsIzWtnn9WPR8BgNslswqH4blyjCr5gjrjg
	 09u7X+soq3HQZn7OVoBYPSl6oUcAdQq5nBnlBRXt1Xt++gJNtr2uu1LMNNJsQs38b/
	 FS4P+2HhtKoDpU4mdIOSKcPSN8uL6ZKIREwy8l/VE6aWpXjANbWzrbGNAM3v006UM6
	 NuPOrbW3ezNc4SDXyGtQRX4IEyscnhuDg9IfrMkEXeY7UA/3nGK4BO604l0IBF0Jzq
	 FvV0LiRqXtGo4dBO3H5LVcZ6eePZOvYDkTFosajHZePMXFUn/V1CzTgkpfpa/5HA7O
	 FyfEMj5Jk1/oA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 232AA17E131B;
	Fri, 17 Apr 2026 11:25:38 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 17 Apr 2026 12:25:11 +0300
Subject: [PATCH 37/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3588s-radxa-cm5-io
MIME-Version: 1.0
Message-Id: <20260417-dts-rk-frl-enable-gpios-v1-37-a19c0dd8c9f6@collabora.com>
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
In-Reply-To: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_022541_051551_F1076AED 
X-CRM114-Status: UNSURE (   9.57  )
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

The board exposes the GPIO4_B6 line to control the voltage bias on the
HDMI0 data lines.  It must be asserted when operating in HDMI 2.1 FRL
mode and deasserted for HDMI 1.4/2.0 TMDS mode.

Wire up the HDMI0 node to the GPIO line using the frl-enable-gpios
property to allow adjusting the bias when transitioning between TMDS and
FRL operating modes.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
index f80d5a00a4bd..339df05c6d71 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
@@ -120,6 +120,9 @@ &gmac1 {
 };
 
 &hdmi0 {
+	pinctrl-0 = <&hdmim0_tx0_cec &hdmim0_tx0_hpd
+		     &hdmim0_tx0_scl &hdmim0_tx0_sda &hdmi0_frl_en>;
+	frl-enable-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
@@ -217,6 +220,12 @@ usbc0_int: usbc0-int {
 		};
 	};
 
+	hdmi {
+		hdmi0_frl_en: hdmi0-frl-en {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	usb {
 		vcc5v0_host_en: vcc5v0-host-en {
 			rockchip,pins = <1 RK_PA0 RK_FUNC_GPIO &pcfg_pull_none>;

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
