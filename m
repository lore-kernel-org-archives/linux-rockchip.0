Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E901C4829A
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Feb 2024 16:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7K3XTjVOoGQYjAhFtuMdC5nncEqLgrrd9YifwgcVEAU=; b=GC3NHrNAM3Beww
	3Qbvj/EQEuiD4FcYcWN39x7oBCDi/N1qhrENh6QJvpPIjPnL5GgiMLvmIWzNtIlnPuV6XrkwAxL2U
	u3r7fmjFTbthM3s/4x1pJG5KuC+jppKb4DAnwZaPvcAdK+kFWbMxctfSYC3+2ZOMriJhlf3HLhZ7p
	Jkk6wBIkZQFbKB67olk29HfRURHwJ9ULq8uhwfr61HYiL0nxB9/E5dpt6GreAZTxteZZTkfUubMp0
	ANbuOlQ9p6py40GW31FnqP8bZE7twhRrGG+fsmrDAsGLCArrDA/J3oR0CUjD9wVHMXiQBQRAMOsh2
	Sfaadfz8iaHHJBraqIkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvlx-00000009ycD-3nOv;
	Tue, 13 Feb 2024 16:36:41 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZvla-00000009yGN-3zWl;
	Tue, 13 Feb 2024 16:36:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1707842172;
	bh=WeIVl1zwKI+IWUXLWKWVFzcLpHB4iw+lJXds4NyJ6UY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=T6IojCJQcKuaD4s03s3nHmGEWbprPDIvQX1swRdEkPFGlk5G7cfftfyiuDobL7MtX
	 Xrzf7afTZJO4aGF2GMTGI50+KbqxetsqakKAhvaHi+HXN3+IySuENymWnvrQxcF6zc
	 Bm03aSWhTC1TgSnEHLKsSPFNQTKyoJIHhNzCmjhlbypQFx+JYUye3UuE5jaVQDQOMI
	 u/pk2ni2D0NQG8r9V/J4+ZBzg6UqPDrsacxo5ckSj/h9wikeQ9F5vPBWtDSeafP6aJ
	 IPcL1RqYwg5RWpTTW2a1+Gb3PWXDELJtlH5AtB0myz8pJKP7LiIh8dZbsApBKz63XS
	 8unYd0BDo9Phw==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 28B6B3782087;
	Tue, 13 Feb 2024 16:36:12 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 0FEBD4800E1; Tue, 13 Feb 2024 17:36:11 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Wang <frank.wang@rock-chips.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v2 12/12] arm64: dts: rockchip: add lower USB3 port to rock-5b
Date: Tue, 13 Feb 2024 17:32:46 +0100
Message-ID: <20240213163609.44930-13-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240213163609.44930-1-sebastian.reichel@collabora.com>
References: <20240213163609.44930-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_083619_305487_3CCF3ED8 
X-CRM114-Status: UNSURE (   9.24  )
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

Enable full support (XHCI, EHCI, OHCI) for the lower USB3 port from
Radxa Rock 5 Model B. The upper one is already supported.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 21 +++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index a0e303c3a1dc..db6f0e91f62d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -736,6 +736,14 @@ &uart2 {
 	status = "okay";
 };
 
+&u2phy1 {
+	status = "okay";
+};
+
+&u2phy1_otg {
+	status = "okay";
+};
+
 &u2phy2 {
 	status = "okay";
 };
@@ -755,6 +763,14 @@ &u2phy3_host {
 	status = "okay";
 };
 
+&usbdp_phy1 {
+	status = "okay";
+};
+
+&usbdp_phy1_u3 {
+	status = "okay";
+};
+
 &usb_host0_ehci {
 	status = "okay";
 };
@@ -771,6 +787,11 @@ &usb_host1_ohci {
 	status = "okay";
 };
 
+&usb_host1_xhci {
+	dr_mode = "host";
+	status = "okay";
+};
+
 &usb_host2_xhci {
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
