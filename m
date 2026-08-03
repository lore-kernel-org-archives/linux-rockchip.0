Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B71FAC5516F
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 05:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=erg1IRLmy/WuiA/Nk32ayYAv4NJoPWVKq44HSLMeXJQ=; b=fHPb9kinczuClI
	N7vxdpkAxtQjPG1JiHT449YDHresJV0bAdonUTXmzDSiX7GrHMbDPqnkP6tGmBMlmK5TY9P008yyZ
	ucGMHXVYJycgAEPGjNtf45uP4vs0I3V3jXNAKyLMy6eUYoi6yaw+4Jrz9mOdnTx2RT7AVWyXh1d7I
	3gfpS/FThZk7GpZaoUV9P7I/aLLdwbhk3JJNzQ/o3jPYh97GhKeHzq43hh9PqMV0EyUsXmDXXL7UC
	0m3kmY3DqsFFRp0KWIJ+8mHZSGhK1XuBkPhiu1vkEzqelUhfF6vNU2d5oPpY8y0m4IyVe8cFOgpUz
	XWGTYYY0fdEL1PqOY9WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql2W-0000000GMkK-2AbM;
	Mon, 03 Aug 2026 05:16:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wql2U-0000000GMgP-220G
	for linux-rockchip@bombadil.infradead.org;
	Mon, 03 Aug 2026 05:16:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=1CvTLJea6zWTpGRaWOgZzRKuhjdqcAVM/Zr8VD5aTmI=; b=p5ZD9n5WfnjuyhQezqQ/XVfwJ8
	jJxLNDAvK96LIolpuXfG8TRzJK5RSTFo01vLDjCt+MJ5827KVH3G7N1PXOZiUmBV1GBYUd3amkIeJ
	vP9+pID0UIJP5FOa3KeHy80mGKvWgkrk5QhBA1s9pmcMj0hPKYb2Pkffk/jGbpWfSATyIfuXLijUV
	9wwXwefjhUH2m22waWLP+xVT0O0eGxSlgDw8vi8+OHQOpw5TBiyBSJZf/mOJZfwwIuJf176lhB0m6
	WpVaTZykN9AG/YsQjq7N755NbmsxXxO/3l6bJ6AK+8H3qQwENAPlCH/4+Z056jcn6dyApCYUDSbTD
	LaFGRxIg==;
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wql1s-00000008hsA-2zZT
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 05:16:36 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7e6b5737bb2so2730413a34.1
        for <linux-rockchip@lists.infradead.org>; Sun, 02 Aug 2026 22:15:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785734153; x=1786338953; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=1CvTLJea6zWTpGRaWOgZzRKuhjdqcAVM/Zr8VD5aTmI=;
        b=Rky9C7t+nCwKIsNXV3+ewp5KxdOjLuITNdk+dY9/EwBEdWJqtSAzZIVIcIGjXiieWE
         2OYhUcxFeeAUuxzjzIWpOyRi8dr7GpsWrMhZBMKTP98qOxhEyvzHjtszs67Hdl9H5QRD
         uuHPkhgeIpso/Iy2Iy2lt/bHEXKPEVN7TB81OTI7VZe8c7thP2TC4mk+E1q5CA7+0oZF
         4wmHdggrY5MI5WQH3J4Pv9mL0vlN0deCvmvbdYtU00JPZ04OEqDWlOhOeDSKoJz6Gcam
         L7XQnKywXwR/bUy4hHdVTHT9csjzGOCWgSU8fpG03EZvkXDp1NC1Ow4ICxtYMsvOTzXn
         Og0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785734153; x=1786338953;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=1CvTLJea6zWTpGRaWOgZzRKuhjdqcAVM/Zr8VD5aTmI=;
        b=PxESsqd8RdcyyJU377Yhul7mLY0x8Ue3juDNhTTgedWqu82GrUG8wdj3tlLFni0XD6
         +aM8wJXeoSnMbwW7MGTxHnaG1sP9//aCnZR2IJr8lUg/0/PzLkLUcPU4k4kXSwhm7gtX
         tUUv93X0TA9wTiMoMcMeHFcZohy/E9D7yII68aJIFVFiNVonCEl5KvfeHrLbcPDYPpVn
         cojyAgv3jrjPc5KppF3LzbrapzDiSr6SGYJzfAe4J/oZp7T95+YIgKGwTkts+Bn7gsIg
         H9hhGeywH1+E5BfxvUTHQ8FNDXBHo+F37YACgXcg8A9IHCigPzSfAmu0zVlLr7hyP3Ed
         YDUQ==
X-Forwarded-Encrypted: i=1; AHgh+Rq4bZVrcg2pvJt1hR3+qGSwkI/M2bOPg2xotKALBiMCsF/2Uvn39CZvREeW0BEbX+P4aUJrLbQCwa6BibNURw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwJwXNYt/NjX8KWBPNq6UrfqtfybH5UyQ+7BBwwG6PJ95BuZRwx
	rOpVm0lrx5qgO5Fn3zlsNNdL7fMarc8/Qr1jhoAaxLa6X7C+eZ3B3N6vGfSRNge2
X-Gm-Gg: AR+sD13JfGQLWQLV+bdVSXFuKjlt842xYO6XqSmlzJLVfM5Aq9ZEzvxRolkQsNuYIE3
	+ocTamQgxiLkZRnu9qri6GlTHOG+xlGs6GYP6VUZkLkE7xba94yhdrilRxrZ+ApyDioXhr0jCe2
	KDLgwo3zsmKmpu9OrAiBpWAFedfDbnsXPo8T4BLcuMwNyoKGlC14oz3SiIOqzx+gSmHz2KYhp3E
	ngzu/TD6JPd0VwLQs+J15SzN/elvaZE3PZytU9hE8yzpD1kIEsstJHveganQCKXHrKUfeZ65Ecd
	pPy5cpj4pfuEbm1BcSM/Z/nxfAAeb1ssa3jFjtt9tx5Jwq+vYdkwRHJm8GJrfocSKiqvJzEP707
	oFJEi3eNAAc2T0HbM42jbqNKT/VfK5JVrdjX1AAO1mcWR8EcbGvy22joa8nr7YByHCOr4KFHxEe
	lj0qbhSAORUTbeYcXod0ZKrri0+YjqczS0ZlyxQfn2mtlSqaHxZ0ZGgHy/WiSmfcuVxcoVPDP4p
	AguggpyehMtBjLdYff5eZ3xQ58b1NouAH/sVsBXwsRZ1CNTro9GN6Q7PomcccaQBbroS2EregX+
	VNRyAQyzHh4iH56aufMknG0ti63t5Wr+v/k3WRJIV3q0kSg2URada2aCs/pnySdHiCR03qZFdQr
	8KulUssje347DAGCg
X-Received: by 2002:a05:6830:398d:b0:7dc:e090:68a with SMTP id 46e09a7af769-7f1969181f7mr14873339a34.0.1785734152850;
        Sun, 02 Aug 2026 22:15:52 -0700 (PDT)
Received: from [127.0.1.1] (184-96-154-59.hlrn.qwest.net. [184.96.154.59])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7f18f07a5e3sm6787108a34.15.2026.08.02.22.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Aug 2026 22:15:52 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
Date: Sun, 02 Aug 2026 23:14:30 -0600
Subject: [PATCH 20/21] arm64: dts: allwinner: h6: tanix: enable AC200 EPHY
MIME-Version: 1.0
Message-Id: <20260802-submit-acx00-of-dynamic-v1-v1-20-0a53cd9e21cc@gmail.com>
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
In-Reply-To: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>, 
 Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>, 
 Andre Przywara <andre.przywara@arm.com>, 
 Richard Genoud <richard.genoud@bootlin.com>, 
 Maxime Ripard <mripard@kernel.org>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
 Jose Abreu <joabreu@synopsys.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Heiner Kallweit <hkallweit1@gmail.com>, 
 Russell King <linux@armlinux.org.uk>, 
 Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
 mfd@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 James Hilliard <james.hilliard1@gmail.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_061628_726820_07F873E9 
X-CRM114-Status: GOOD (  11.39  )
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

Enable the AC200 control path and RMII Ethernet link on the Tanix TX6
family, and provide the board's 3.3 V rail to the AC200 function supplies.

Route the PHY interrupt through the AC200 interrupt controller and mark
it as a wakeup source for link interrupts and magic-packet wake.

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6-tanix.dtsi | 45 ++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix.dtsi
index bb7de37c0d58..6cd75961e3cc 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-tanix.dtsi
@@ -7,9 +7,11 @@
 #include "sun50i-h6-cpu-opp.dtsi"
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/mfd/x-powers,ac200.h>
 
 / {
 	aliases {
+		ethernet0 = &emac;
 		serial0 = &uart0;
 	};
 
@@ -84,6 +86,22 @@ wifi_pwrseq: wifi-pwrseq {
 	};
 };
 
+&ac200 {
+	ac-ldoin-supply = <&reg_vcc3v3>;
+	ephy-vcc-supply = <&reg_vcc3v3>;
+	rtc-vcc-supply = <&reg_vcc3v3>;
+	tv-vcc-supply = <&reg_vcc3v3>;
+	status = "okay";
+};
+
+&ac200_ephy_ctl {
+	status = "okay";
+};
+
+&ac200_pwm_clk {
+	status = "okay";
+};
+
 &cpu0 {
 	cpu-supply = <&reg_vdd_cpu_gpu>;
 };
@@ -104,6 +122,14 @@ &ehci3 {
 	status = "okay";
 };
 
+&emac {
+	pinctrl-names = "default";
+	pinctrl-0 = <&ext_rmii_pins>;
+	phy-mode = "rmii";
+	phy-handle = <&ac200_ephy>;
+	status = "okay";
+};
+
 &gpu {
 	mali-supply = <&reg_vdd_cpu_gpu>;
 	status = "okay";
@@ -119,6 +145,21 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&i2c3 {
+	status = "okay";
+};
+
+&mdio {
+	ac200_ephy: ethernet-phy@1 {
+		compatible = "ethernet-phy-id0044.1400";
+		reg = <1>;
+		interrupts-extended = <&ac200 AC200_IRQ_EPHY>;
+		wakeup-source;
+		x-powers,ac200-control = <&ac200_ephy_ctl>;
+		x-powers,xmii-rx-clock-inverted;
+	};
+};
+
 &mmc0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc0_pins>;
@@ -162,6 +203,10 @@ &pio {
 	vcc-pg-supply = <&reg_vcc1v8>;
 };
 
+&pwm {
+	status = "okay";
+};
+
 &r_ir {
 	status = "okay";
 };

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
