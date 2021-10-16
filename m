Return-Path: <SRS0=5kjD=PE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52851C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:21:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 213F860F36
	for <linux-rockchip@archiver.kernel.org>; Sat, 16 Oct 2021 10:21:24 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 213F860F36
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YxvbBWhWjiaJNVvc4BEXUdLf5bIrrGzu+jJDmpIyhog=; b=rsXu9hpwgMvtUg
	AoyCC8Xe/RbvoN0byDyNaHsxjj4+6AhDdXA4lMfa02zuFmgU8rWFiYLbX0aZkXHGxNa3odI9iojk5
	/ziwtPQJViQJj9KbL/1uf5EulvKANR93zno/rl2Cm61b+wkn7E7LoBW4H/DXjbYWfLStD8JI6kyzH
	AJe7OKl12nvrGWYAAWT0oOc2RKRV0hp7pPb/s7FU8ADQKsnQH4RQEMcjD2PdnNeaOacjtb5Tok047
	k+RZWZrpWJNx7PzzhcnK6icsvHxLgEzo1BYlrM0+x5SDSGTgsMm2dPc1ZFtBS/pGrgb7GaBWPQVvi
	jQwteZxr8MN0OBXVMthA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mbgoa-00AJWa-RB; Sat, 16 Oct 2021 10:21:20 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mbgnu-00AJ4w-Ir; Sat, 16 Oct 2021 10:20:40 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: aferraris) with ESMTPSA id A1FDA1F44939
From: Arnaud Ferraris <arnaud.ferraris@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Martin Kepplinger <martink@posteo.de>,
 Heiko Stuebner <heiko@sntech.de>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Andy Gross <agross@kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Lucas Stach <dev@lynxeye.de>, Angus Ainslie <angus@akkea.ca>,
 Guido Gunther <agx@sigxcpu.org>, Tomasz Figa <tfiga@chromium.org>,
 Johan Jonker <jbx6244@gmail.com>, Eddie Cai <eddie.cai.linux@gmail.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Brian Norris <briannorris@chromium.org>, Dan Johansen <strit@manjaro.org>,
 Simon South <simon@simonsouth.net>, Matthias Brugger <mbrugger@suse.com>,
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
Subject: [PATCH 1/4] arm64: dts: allwinner: add 'chassis-type' property
Date: Sat, 16 Oct 2021 12:20:22 +0200
Message-Id: <20211016102025.23346-2-arnaud.ferraris@collabora.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211016102025.23346-1-arnaud.ferraris@collabora.com>
References: <20211016102025.23346-1-arnaud.ferraris@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211016_032038_780233_67F34717 
X-CRM114-Status: GOOD (  11.07  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

A new 'chassis-type' root node property has recently been approved for
the device-tree specification, in order to provide a simple way for
userspace to detect the device form factor and adjust their behavior
accordingly.

This patch fills in this property for end-user devices (such as laptops,
smartphones and tablets) based on Allwinner ARM64 processors.

Signed-off-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts   | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi | 2 ++
 arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts    | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts    | 1 +
 4 files changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
index 34e67f5f8297..63571df24da4 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinebook.dts
@@ -15,6 +15,7 @@
 / {
 	model = "Pinebook";
 	compatible = "pine64,pinebook", "allwinner,sun50i-a64";
+	chassis-type = "laptop";
 
 	aliases {
 		serial0 = &uart0;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
index 5b44a979f250..87847116ab6d 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinephone.dtsi
@@ -12,6 +12,8 @@
 #include <dt-bindings/pwm/pwm.h>
 
 / {
+	chassis-type = "handset";
+
 	aliases {
 		ethernet0 = &rtl8723cs;
 		serial0 = &uart0;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
index 6a4af14718f5..6303cd2fc398 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pinetab.dts
@@ -16,6 +16,7 @@
 / {
 	model = "PineTab, Development Sample";
 	compatible = "pine64,pinetab", "allwinner,sun50i-a64";
+	chassis-type = "tablet";
 
 	aliases {
 		serial0 = &uart0;
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
index aef571acd67f..aff0660b899c 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
@@ -14,6 +14,7 @@
 / {
 	model = "Olimex A64 Teres-I";
 	compatible = "olimex,a64-teres-i", "allwinner,sun50i-a64";
+	chassis-type = "laptop";
 
 	aliases {
 		serial0 = &uart0;
-- 
2.33.0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
