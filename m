Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 235A1C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 12:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7jRsCcOfOOuoJrUzRgn9ul7JuR8N8R3YTSkXNA0Ol0=; b=sOHA9LV3E4zV4Q
	KC3KrhV3uw0rRQSyPKCLETDZLuexPMu6RF7e9itjTpaVcLzbHpRGWsMPTKuTK8x9GKNKTBv5D3GeI
	pW+RHRdLt27GOq/1AVMEYR05xLVX6ntY9udrcRYXvTX+uBd6pFxwEzAHTRzePVJY8FCDEQSLGPmWB
	uIkQDOBuQqRS9NIKytF3kwHZYJLEDj9dr1dJNbLTemNCDLoLx6wnsR+p/dWu1i3936v8csuByf0NF
	ZMcCvxY4jg+irXTMD2X3aFoVOBEiQ4VanAGJIwqaGSZoITBUgvaBZLeHkQIqH4LD10DpMKnBXRJ0u
	BOSCBxZ7hBtby2Ng+f1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LAU-001Ts0-2r;
	Tue, 07 Nov 2023 12:26:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0LAR-001Tqd-2x;
	Tue, 07 Nov 2023 12:26:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 728586117F;
	Tue,  7 Nov 2023 12:26:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC413C433CA;
	Tue,  7 Nov 2023 12:26:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699360011;
	bh=jd/DPURIzBIXexjIFq3NWbyaTqbwZSsDDhq7FjwBp5E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=k9cu6n0JzFx0dQfI1WGFUOwbrz/XAaGL/wKO5FDQyHPD45MapTS+nYgLd6XzZ+uP8
	 klnu2X8bc7DqodvJKdzPQMc15d5Ah0lihIG0pchpOt+S9f3e5jc/8frrzLWw6OC4Lu
	 a64u8WhT3Gi0anMmAOXKUOxNmpGu/XIYnGMBBl3BauE4cbXvRI+s5jEz5TKTYwiVpf
	 JxqcBtSMrqSzrwGbbRPxeJqHD89iC+QciXBT0V1BjXH71GjCRl6Gql+MOnd/b+3Fa8
	 q3MpCKhJdSS/Bts5SIzVerHhm3/CyiqQQD3QoE7NpidjGpwby1DjFuUpc1GD3Wb2F3
	 YUiAF9WxCf9kw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Chris Morgan <macromorgan@hotmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jagan@edgeble.ai,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.5 34/37] arm64: dts: rockchip: add PCIe to rk3588s-indiedroid-nova
Date: Tue,  7 Nov 2023 07:21:45 -0500
Message-ID: <20231107122407.3760584-34-sashal@kernel.org>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231107122407.3760584-1-sashal@kernel.org>
References: <20231107122407.3760584-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.5.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_042651_994186_E3EC823B 
X-CRM114-Status: GOOD (  10.06  )
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

From: Chris Morgan <macromorgan@hotmail.com>

[ Upstream commit f5fb02c7125e3564aa773f54add37655d09e64f1 ]

Add the necessary nodes to the Indiedroid Nova to activate the PCI
express port that is used by the RTL8111 ethernet controller.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Link: https://lore.kernel.org/r/20230918173255.1325-2-macroalpha82@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 1a60a275ddf9b..6fecdb511061e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -109,6 +109,10 @@ vcc5v0_usbdcin: vcc5v0-usbdcin-regulator {
 	};
 };
 
+&combphy0_ps {
+	status = "okay";
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_lit_s0>;
 };
@@ -348,6 +352,12 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&pcie2x1l2 {
+	pinctrl-0 = <&rtl8111_perstb>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
 &pinctrl {
 	bluetooth-pins {
 		bt_reset: bt-reset {
@@ -366,6 +376,12 @@ bt_wake_host: bt-wake-host {
 		};
 	};
 
+	ethernet-pins {
+		rtl8111_perstb: rtl8111-perstb {
+			rockchip,pins = <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	hym8563 {
 
 		hym8563_int: hym8563-int {
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
