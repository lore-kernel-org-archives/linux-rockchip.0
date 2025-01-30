Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D2B9C0218A
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jan 2025 15:14:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4BFI9U8FcBNWztkD7J2dpkGPQ7NBWtHhIc29TYC42x8=; b=gdGAo00MYhzsjX
	TjUZhu75Ce40QqrycfWZfYAo5OeEkoWtJZmZz9ewodzlvqPrTi20wv7nIfKTLFoaZ5pvvQG+Nvvcb
	YNVjKo2tw/sWFTdp3FXIFMA+oNLQpdx7qrXIsdut/ZHlB90l7bnE2nmsKYLgf+tOFOZDQNRj1MkfY
	s27zLQQZ7igF2t3kX/4YydPD9csPHugiMHwfNoPlG0eF/yZvZ9cyiGCSZBWvLVA2kwMFS9MWZPq42
	jDy1ZIbfAALgbrH8IGDSKI8mznyQsfU8wRVmGyXoah55aEOJNe+z+q6BNazYVRMmrWijMB5nvYjMS
	XArsw3A9l/91sEnn+V0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tdWFg-0000000930c-2d4u;
	Thu, 30 Jan 2025 15:14:44 +0000
Received: from smtp-190b.mail.infomaniak.ch ([2001:1600:7:10::190b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tdWFc-000000092yl-2XYG
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jan 2025 15:14:42 +0000
Received: from smtp-4-0001.mail.infomaniak.ch (smtp-4-0001.mail.infomaniak.ch [10.7.10.108])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YkMy33hq4zgqy;
	Thu, 30 Jan 2025 16:14:35 +0100 (CET)
Received: from unknown by smtp-4-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4YkMy25swpzvPg;
	Thu, 30 Jan 2025 16:14:34 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Thu, 30 Jan 2025 16:14:25 +0100
Subject: [PATCH] arm64: dts: rockchip: add support for sound output over
 HDMI on RK3399 Puma Haikou
MIME-Version: 1.0
Message-Id: <20250130-rk3399-hdmi-audio-v1-1-406244333111@cherry.de>
X-B4-Tracking: v=1; b=H4sIAFCXm2cC/x2MWwqAIBAAryL73YIPguoq0UfqVkukoRSBdPekz
 xmYKZApMWUYRIFEN2eOoYJqBLhtDish+8qgpW6lMhLTbkzf4+YPxvnyHNFW7bT1resU1O5MtPD
 zP8fpfT9W/cVVYwAAAA==
X-Change-ID: 20250130-rk3399-hdmi-audio-b130c2bd5c81
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250130_071440_776778_499967CA 
X-CRM114-Status: UNSURE (   7.60  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

The Haikou carrierboard exposes an HDMI connector and audio can also
be output, therefore let's enable it on RK3399 Puma.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index 947bbd62a6b09ce55320d0889ee8cf50ca59dfd4..a60779bbbaaa54ebc5060907ab876a4d679f7da3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -154,6 +154,10 @@ &hdmi {
 	status = "okay";
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &i2c1 {
 	status = "okay";
 	clock-frequency = <400000>;
@@ -191,6 +195,10 @@ &i2c6 {
 	clock-frequency = <400000>;
 };
 
+&i2s2 {
+	status = "okay";
+};
+
 &pcie_phy {
 	status = "okay";
 };

---
base-commit: 72deda0abee6e705ae71a93f69f55e33be5bca5c
change-id: 20250130-rk3399-hdmi-audio-b130c2bd5c81

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
