Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0915FF43689
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 09:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kVBwSEB1AUkw3IcFspsujXU9YDmftESvboEvUc53bgU=; b=b+3RnKh8rrR7Pe
	Y9tx8PY75/t+b8YcShM37bH5MjUbuMvPKVRM/lQux9lyWPguvl0bYA1GxYZ+7lYbDXmPZolo7uF1k
	2EYQ78Ob3DBc46Q75bnaKIbeJgSr4QkdLXjVqN9ewoUs3j02FPnDK5B/tDCX8XCKpVeNNFnvuxTwx
	VZpYtnkMtGZ4Afj7py5SIFd3/KUzcCtEoDxAZgaB8n01BpPwYyMy3ZRwKy5bSLUrZNO55ifqxA+Jl
	H/UpAxA/VY4u9fMvt0brO7Vg5+IcppLku7ryJxsM+kv1TME/P02yz0R6UUhx7UdXojFk52y1adOFw
	ebrRIgK1CA3vtSsyYDGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfSI-00000003lAg-1Fh6;
	Fri, 17 Apr 2026 09:25:42 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfRt-00000003kc6-1cJe;
	Fri, 17 Apr 2026 09:25:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776417913;
	bh=rDeLASuf6S/38jdj7aN4u4jd/aPT+H0uZg6VSl5OLJ0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=oNRkQAD16ZOokCkSZUBvSPJfobAw5NCe+t0VcZhVzAieoEP6q6Ptj9MS2RzzfSef5
	 1+PlEjKf/LKpneBV6TSqskkbT9HtZCTJxK+D/5Q1W3UAuBVj+y7mj9rnZ+6Dy4656E
	 xlWcsUK5VptG8QJ+HKQUqOMxuPFTJKGrWZvnGyU+5XgQmTb5/EsrLL7zJa8BVyVIWp
	 VmsSuCHUl2Wu7SyfZ0CHarS/0iTl9yZhHWBUfkJv47Rty4XtrPfuBRZ2I6cm/zoaMW
	 xXaspjYzMdZvaBTNloK8yPWVf6o1pmMwBXqfiYKwx+2qR071hvR37ZstjmfgDJbatS
	 meEUdfz0k3bvQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8CE0417E1412;
	Fri, 17 Apr 2026 11:25:13 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 17 Apr 2026 12:24:41 +0300
Subject: [PATCH 07/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3576-nanopi-r76s
MIME-Version: 1.0
Message-Id: <20260417-dts-rk-frl-enable-gpios-v1-7-a19c0dd8c9f6@collabora.com>
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
In-Reply-To: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_022517_626283_78979D59 
X-CRM114-Status: GOOD (  11.22  )
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

The board exposes the GPIO4_C6 line to control the voltage bias on the
HDMI data lines.  It must be asserted when operating in HDMI 2.1 FRL
mode and deasserted for HDMI 1.4/2.0 TMDS mode.

Wire up the HDMI node to the GPIO line using the frl-enable-gpios
property and drop the line from the vcc5v_hdmi_tx regulator to allow
adjusting the bias when transitioning between TMDS and FRL operating
modes.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts
index 7ec27b05ff10..21ef369c478c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-r76s.dts
@@ -111,10 +111,7 @@ vcc5v_dcin: regulator-vcc5v-dcin {
 
 	vcc5v_hdmi_tx: regulator-vcc5v-hdmi-tx {
 		compatible = "regulator-fixed";
-		enable-active-high;
-		gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&hdmi_tx_on_h>;
+		regulator-always-on;
 		regulator-min-microvolt = <5000000>;
 		regulator-max-microvolt = <5000000>;
 		regulator-name = "vcc5v_hdmi_tx";
@@ -252,6 +249,8 @@ &gpu {
 };
 
 &hdmi {
+	pinctrl-0 = <&hdmi_txm0_pins &hdmi_tx_scl &hdmi_tx_sda &hdmi_frl_en>;
+	frl-enable-gpios = <&gpio4 RK_PC6 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
@@ -717,7 +716,7 @@ led2_h: led2-h {
 	};
 
 	hdmi {
-		hdmi_tx_on_h: hdmi-tx-on-h {
+		hdmi_frl_en: hdmi-frl-en {
 			rockchip,pins = <4 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
