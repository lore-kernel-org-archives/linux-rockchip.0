Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C2E5F4368B
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Apr 2026 09:28:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iCbJEvpTbaOKfNJ/o0abecKh4n3NqNEddbeRtyZMwD4=; b=Cytc/4G5gVJNCy
	UHX4lBthfa7RV2NsAID0ufvRf3XuC+EFcwnz0sdeoz+GleL1K5kwkqEhqmSgpPzmGbPxsePDWrLlX
	mDXNcW79wuJkyGENQJn884O8Tzz4iZsnrIrXVetOmsLkZKsKhifdOeLZNZ3eeFs9r/tmxNuSj17x8
	LTp0YW6/B259dzbvsSiLabIKMrcxUuFlkp1rdXE99r8odzx9VRrNho99fYMOdwCBcRV4eqieYdZ/9
	pxpv09zbampotfl7jqN2EjO/HuBy5IkSF3SF42EhqEBvIglZCvkUrxhFTkUr+JJHZmO5MZqphHeG9
	P+fG2QPtLVb08gSNMRyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfUb-00000003o41-1atK;
	Fri, 17 Apr 2026 09:28:05 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDfSI-00000003l9P-49qs;
	Fri, 17 Apr 2026 09:25:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1776417940;
	bh=gFEJIrYziDLBP9dS1yxAoPLX4J+gmrbNB9JWEfrd7hU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=AEFPWBnMnE9Y5DILJnzY1gpb8N35IZ2HvJuDBkqTRlmTBV2qZq4BmnYexvcd/a8TS
	 sFq6KgAKXrd65JtC9DTCNH3fOH8n7AfCns64qj2dQQbi44T2RljWx2BC8o9Tuq2/sC
	 md7XGFpPwJPdXKrCXT2gKOfpXJ+YdzD5os9W94T9k4LQq9d1vw9A79USnSGMQ66x1v
	 wzg+uD/v/NcnrrS4HImN9mPrmDnKNgiiW/fun9wq3Q6kWK8XrFkEOEkglnGTcVGKF/
	 ujDlwqc1fkcYi/yYfCTB1CqawtQprV9FeVRClgtMljna8hHOqvm+82Zni54m3Ya8Hf
	 +syC8OMEsI02A==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9090217E0F7F;
	Fri, 17 Apr 2026 11:25:40 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 17 Apr 2026 12:25:14 +0300
Subject: [PATCH 40/40] arm64: dts: rockchip: Add frl-enable-gpios to
 rk3588s-rock-5c
MIME-Version: 1.0
Message-Id: <20260417-dts-rk-frl-enable-gpios-v1-40-a19c0dd8c9f6@collabora.com>
References: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
In-Reply-To: <20260417-dts-rk-frl-enable-gpios-v1-0-a19c0dd8c9f6@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_022543_284860_A24A9B64 
X-CRM114-Status: GOOD (  10.61  )
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
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
index 7fe42f4ff827..8ffbbc5f9b6c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
@@ -262,7 +262,9 @@ &hdmi0 {
 	pinctrl-0 = <&hdmim0_tx0_cec
 		     &hdmim1_tx0_hpd
 		     &hdmim0_tx0_scl
-		     &hdmim0_tx0_sda>;
+		     &hdmim0_tx0_sda
+		     &hdmi0_frl_en>;
+	frl-enable-gpios = <&gpio4 RK_PB6 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
@@ -461,6 +463,12 @@ &pd_gpu {
 };
 
 &pinctrl {
+	hdmi {
+		hdmi0_frl_en: hdmi0-frl-en {
+			rockchip,pins = <4 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	leds {
 		led_pins: led-pins {
 			rockchip,pins = <3 RK_PC4 RK_FUNC_GPIO &pcfg_pull_none>,

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
