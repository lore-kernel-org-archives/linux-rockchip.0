Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70711FF8867
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 21:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0BsV52Dr8dF9T4GYY9PRRjdTfqRpik2sI97iqENk2Ow=; b=WMuKW9tBiYYkau
	23H2PYw+95uoHVbsDpcLMuS2yqsDwQDu8tGUL8R/kPm6AAO3M9n5H8igJ8M07JwtfSHIo31B+Cuiz
	n8j+r/Bvh2Ew/8fPi1LNqjTaG3jtTR8dX/pstpxd+7l8epHoUuma7sEE5vE/uihrprWLpqtBWNmHi
	fGO3q2kyF1ioRWm7bv+JNfhIdE3v3Rbqh0xcpNaAKXfCazyoSw7jyroqJWxYSpKMs9VtwevVxJioU
	ifxxZfOy6eaPoe0HPc4CuwF/c3vF5r6mi95oBE5ywGE1j1GUwZ2NCoF0hWDfQE/07XmT7/3/tVSWR
	w1LcmsaFkMOeY3Lm76Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTxq-00000000DZE-3RLJ;
	Mon, 27 Apr 2026 21:58:02 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHTxf-00000000DH2-1Jh1;
	Mon, 27 Apr 2026 21:57:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1777327069;
	bh=FDI0D3bF0d00cd9rT9aq23OMLT8xla/yOJVEQWe89oI=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=kSWeEJsrKMkD9pCuqJEh+s1UCk4WrgkXADAHiNMbNBuMjfo7MoSETThMr1osw9IF8
	 zN+xPN8IiDXeNPJu3uHYQZFfFtJBryvKOSDcDM+Bd/xmRKgvfKFlKOw0w63qvu64Ie
	 SlLnFlPgftLZY64d1dfuA8HwwTqYxvqwPYdIpvSpWdlr4RtSNaUW/Gg1Ba40uCIo2a
	 +aKKW3JCQUKH7Xvikx7Bkaueqn4+62i+v9ns6gKWFBOOoufo4xf9od2TcYFCR0mtRQ
	 fGf6pqJmsxGcIY3779v1uAA2w7NoW5XZWUURnveY5+6R0n2RdAY0dwxQcVnuiNXo3G
	 Mhf+EFAMk7Kow==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 37CAA17E154C;
	Mon, 27 Apr 2026 23:57:49 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 28 Apr 2026 00:57:26 +0300
Subject: [PATCH v2 08/13] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3588s-orangepi-cm5-base
MIME-Version: 1.0
Message-Id: <20260428-dts-rk-frl-enable-gpios-v2-8-924df9db884a@collabora.com>
References: <20260428-dts-rk-frl-enable-gpios-v2-0-924df9db884a@collabora.com>
In-Reply-To: <20260428-dts-rk-frl-enable-gpios-v2-0-924df9db884a@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_145751_544710_6A3297D6 
X-CRM114-Status: GOOD (  10.14  )
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

The board exposes the GPIO4_B5 pin to control the voltage bias on the
HDMI0 data lines.  It must be asserted when operating in HDMI 2.1 FRL
mode and deasserted for HDMI 1.4/2.0 TMDS mode.

Wire up the hdmi0 node to its dedicated GPIO via frl-enable-gpios to
allow adjusting the bias when transitioning between TMDS and FRL modes.

While at it, rename the hdmi_frl_pin pinmux to hdmi0_tx_on_h, in line
with the naming commonly used in RK3588s-bassed board schematics.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts
index 06120b2db690..20da0c2b3d92 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-cm5-base.dts
@@ -143,10 +143,11 @@ &gmac1_rgmii_clk
 };
 
 &hdmi0 {
-	pinctrl-names = "default";
+	frl-enable-gpios = <&gpio4 RK_PB5 GPIO_ACTIVE_LOW>;
 	pinctrl-0 = <&hdmim0_tx0_cec &hdmim0_tx0_hpd
 		     &hdmim0_tx0_scl &hdmim0_tx0_sda
-		     &hdmi_frl_pin>;
+		     &hdmi0_tx_on_h>;
+	pinctrl-names = "default";
 	status = "okay";
 };
 
@@ -245,8 +246,8 @@ key1_pin: key1-pin {
 	};
 
 	hdmi {
-		hdmi_frl_pin: hdmi-frl-pin {
-			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_up>;
+		hdmi0_tx_on_h: hdmi0-tx-on-h {
+			rockchip,pins = <4 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
