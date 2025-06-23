Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C9EEC7EE32
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EN7z7kzld7FMhlNti5E5VXorIwAWOKqywODJ2SpFjeM=; b=VgnDYPMGS3Gr9h
	XNnbL4i0pLzStupTE+qFwNr3MU68OOYMQt/2kSoUMyv0hnTnVuHWqtsk5plhNfDU/aJnv6o5KzIl/
	NraRpQAjNInB+C4Qh315shmZww4yJCQLxI+jueE12Cdqmm/I+GQvq8rR+ppvffrmlAh1PV8FgQOaz
	lZgZFQRMVV91QpvmTw02F5ltKo1hLFTDxqFt8nWO3tpMe4e5PZZpnqO2WE+ZagCPsplROqb0/uqyh
	dEiXXs1N7I/6x7jZU7X6qHkakmJGpaW8HugoJiRLBU9BxjS8eVwfqcHRm21n3oc5JvYJC+Knq4jbm
	wmktuCPrTrmhC1Bp4hVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTn3l-00000003pmI-2Dgt;
	Mon, 23 Jun 2025 19:42:29 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTjhO-00000003LoX-1VMh;
	Mon, 23 Jun 2025 16:07:11 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750694790; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=KrupvgEEq8EA5Efk+zon4tfMD8dRcCWPkl8ofQQXF3RgJo72poM0BwDMGpcsIu7FVIuG7sl6OpClqDzG45AHPqD5Swi+mE9Av/zGNPCIjivwq9nyBwscl43tv5grE5GZyU8t1maGtKy9lMTsEMB/9/11Z281Y6/fZb/ABCviDdc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750694790; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=91g33SR9U35SoQ9U3pgT70sritlzt4esniklSqF5dsI=; 
	b=mT+FwSODzCBxsnXV8R4xpBdo9MrEE2Sm6rg81jnWSchpqb0JQSiwpsaKHoTWRP0sC6XwWbNm5mSo+6sN9LkvlUvPLAVFGgeEIRcF1jUVCga+JjTDEtB4eT/IZPLjShtX4eMTEv0+O8FSq3o0GBxks4iug/bV/zHxagQrFVrzck0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750694790;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=91g33SR9U35SoQ9U3pgT70sritlzt4esniklSqF5dsI=;
	b=WSfWnctOlyTiQhdjZB9eJSnoPzfDoOjQjYIwjlQP6hmcrp06MZqOt4RX8L2VxcZh
	s3tgt8IOPyXd8prxkhwAU5u1Rb+xUxf4NU0q46sQcNe52I2aL48zl9o1+a8/FBMK3d7
	/pP3E0UtSLrBFutCoVWSVZV4BOZ6qpN+X5G7z4rs=
Received: by mx.zohomail.com with SMTPS id 1750694789170386.97326551729657;
	Mon, 23 Jun 2025 09:06:29 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 23 Jun 2025 18:05:31 +0200
Subject: [PATCH v2 03/20] soc: rockchip: grf: switch to
 FIELD_PREP_WM16_CONST macro
MIME-Version: 1.0
Message-Id: <20250623-byeword-update-v2-3-cf1fc08a2e1f@collabora.com>
References: <20250623-byeword-update-v2-0-cf1fc08a2e1f@collabora.com>
In-Reply-To: <20250623-byeword-update-v2-0-cf1fc08a2e1f@collabora.com>
To: Yury Norov <yury.norov@gmail.com>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shreeya Patel <shreeya.patel@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_090710_434920_920C62B4 
X-CRM114-Status: GOOD (  15.37  )
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
drivers that use constant masks.

Switch the rockchip grf driver to the FIELD_PREP_WM16_CONST macro, which
brings with it more error checking while still being able to be used in
initializers.

All HIWORD_UPDATE instances and its definition are removed from the
driver, as the conversion here is obvious, and static_asserts were used
during development to make sure the ones greater than one bit in width
were really equivalent.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/soc/rockchip/grf.c | 35 +++++++++++++++++------------------
 1 file changed, 17 insertions(+), 18 deletions(-)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 1eab4bb0eacffe19a8f0af0b71bdaa5c0b506629..344870da7675fcde38ef1d7d9dcf243fcb9711e4 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -6,13 +6,12 @@
  */
 
 #include <linux/err.h>
+#include <linux/hw_bitfield.h>
 #include <linux/mfd/syscon.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/regmap.h>
 
-#define HIWORD_UPDATE(val, mask, shift) \
-		((val) << (shift) | (mask) << ((shift) + 16))
 
 struct rockchip_grf_value {
 	const char *desc;
@@ -32,7 +31,7 @@ static const struct rockchip_grf_value rk3036_defaults[] __initconst = {
 	 * Disable auto jtag/sdmmc switching that causes issues with the
 	 * clock-framework and the mmc controllers making them unreliable.
 	 */
-	{ "jtag switching", RK3036_GRF_SOC_CON0, HIWORD_UPDATE(0, 1, 11) },
+	{ "jtag switching", RK3036_GRF_SOC_CON0, FIELD_PREP_WM16_CONST(BIT(11), 0) },
 };
 
 static const struct rockchip_grf_info rk3036_grf __initconst = {
@@ -44,8 +43,8 @@ static const struct rockchip_grf_info rk3036_grf __initconst = {
 #define RK3128_GRF_SOC_CON1		0x144
 
 static const struct rockchip_grf_value rk3128_defaults[] __initconst = {
-	{ "jtag switching", RK3128_GRF_SOC_CON0, HIWORD_UPDATE(0, 1, 8) },
-	{ "vpu main clock", RK3128_GRF_SOC_CON1, HIWORD_UPDATE(0, 1, 10) },
+	{ "jtag switching", RK3128_GRF_SOC_CON0, FIELD_PREP_WM16_CONST(BIT(8), 0) },
+	{ "vpu main clock", RK3128_GRF_SOC_CON1, FIELD_PREP_WM16_CONST(BIT(10), 0) },
 };
 
 static const struct rockchip_grf_info rk3128_grf __initconst = {
@@ -56,7 +55,7 @@ static const struct rockchip_grf_info rk3128_grf __initconst = {
 #define RK3228_GRF_SOC_CON6		0x418
 
 static const struct rockchip_grf_value rk3228_defaults[] __initconst = {
-	{ "jtag switching", RK3228_GRF_SOC_CON6, HIWORD_UPDATE(0, 1, 8) },
+	{ "jtag switching", RK3228_GRF_SOC_CON6, FIELD_PREP_WM16_CONST(BIT(8), 0) },
 };
 
 static const struct rockchip_grf_info rk3228_grf __initconst = {
@@ -68,8 +67,8 @@ static const struct rockchip_grf_info rk3228_grf __initconst = {
 #define RK3288_GRF_SOC_CON2		0x24c
 
 static const struct rockchip_grf_value rk3288_defaults[] __initconst = {
-	{ "jtag switching", RK3288_GRF_SOC_CON0, HIWORD_UPDATE(0, 1, 12) },
-	{ "pwm select", RK3288_GRF_SOC_CON2, HIWORD_UPDATE(1, 1, 0) },
+	{ "jtag switching", RK3288_GRF_SOC_CON0, FIELD_PREP_WM16_CONST(BIT(12), 0) },
+	{ "pwm select", RK3288_GRF_SOC_CON2, FIELD_PREP_WM16_CONST(BIT(0), 1) },
 };
 
 static const struct rockchip_grf_info rk3288_grf __initconst = {
@@ -80,7 +79,7 @@ static const struct rockchip_grf_info rk3288_grf __initconst = {
 #define RK3328_GRF_SOC_CON4		0x410
 
 static const struct rockchip_grf_value rk3328_defaults[] __initconst = {
-	{ "jtag switching", RK3328_GRF_SOC_CON4, HIWORD_UPDATE(0, 1, 12) },
+	{ "jtag switching", RK3328_GRF_SOC_CON4, FIELD_PREP_WM16_CONST(BIT(12), 0) },
 };
 
 static const struct rockchip_grf_info rk3328_grf __initconst = {
@@ -91,7 +90,7 @@ static const struct rockchip_grf_info rk3328_grf __initconst = {
 #define RK3368_GRF_SOC_CON15		0x43c
 
 static const struct rockchip_grf_value rk3368_defaults[] __initconst = {
-	{ "jtag switching", RK3368_GRF_SOC_CON15, HIWORD_UPDATE(0, 1, 13) },
+	{ "jtag switching", RK3368_GRF_SOC_CON15, FIELD_PREP_WM16_CONST(BIT(13), 0) },
 };
 
 static const struct rockchip_grf_info rk3368_grf __initconst = {
@@ -102,7 +101,7 @@ static const struct rockchip_grf_info rk3368_grf __initconst = {
 #define RK3399_GRF_SOC_CON7		0xe21c
 
 static const struct rockchip_grf_value rk3399_defaults[] __initconst = {
-	{ "jtag switching", RK3399_GRF_SOC_CON7, HIWORD_UPDATE(0, 1, 12) },
+	{ "jtag switching", RK3399_GRF_SOC_CON7, FIELD_PREP_WM16_CONST(BIT(12), 0) },
 };
 
 static const struct rockchip_grf_info rk3399_grf __initconst = {
@@ -113,9 +112,9 @@ static const struct rockchip_grf_info rk3399_grf __initconst = {
 #define RK3566_GRF_USB3OTG0_CON1	0x0104
 
 static const struct rockchip_grf_value rk3566_defaults[] __initconst = {
-	{ "usb3otg port switch", RK3566_GRF_USB3OTG0_CON1, HIWORD_UPDATE(0, 1, 12) },
-	{ "usb3otg clock switch", RK3566_GRF_USB3OTG0_CON1, HIWORD_UPDATE(1, 1, 7) },
-	{ "usb3otg disable usb3", RK3566_GRF_USB3OTG0_CON1, HIWORD_UPDATE(1, 1, 0) },
+	{ "usb3otg port switch", RK3566_GRF_USB3OTG0_CON1, FIELD_PREP_WM16_CONST(BIT(12), 0) },
+	{ "usb3otg clock switch", RK3566_GRF_USB3OTG0_CON1, FIELD_PREP_WM16_CONST(BIT(7), 1) },
+	{ "usb3otg disable usb3", RK3566_GRF_USB3OTG0_CON1, FIELD_PREP_WM16_CONST(BIT(0), 1) },
 };
 
 static const struct rockchip_grf_info rk3566_pipegrf __initconst = {
@@ -126,8 +125,8 @@ static const struct rockchip_grf_info rk3566_pipegrf __initconst = {
 #define RK3576_SYSGRF_SOC_CON1		0x0004
 
 static const struct rockchip_grf_value rk3576_defaults_sys_grf[] __initconst = {
-	{ "i3c0 weakpull", RK3576_SYSGRF_SOC_CON1, HIWORD_UPDATE(3, 3, 6) },
-	{ "i3c1 weakpull", RK3576_SYSGRF_SOC_CON1, HIWORD_UPDATE(3, 3, 8) },
+	{ "i3c0 weakpull", RK3576_SYSGRF_SOC_CON1, FIELD_PREP_WM16_CONST(GENMASK(7, 6), 3) },
+	{ "i3c1 weakpull", RK3576_SYSGRF_SOC_CON1, FIELD_PREP_WM16_CONST(GENMASK(9, 8), 3) },
 };
 
 static const struct rockchip_grf_info rk3576_sysgrf __initconst = {
@@ -138,7 +137,7 @@ static const struct rockchip_grf_info rk3576_sysgrf __initconst = {
 #define RK3576_IOCGRF_MISC_CON		0x04F0
 
 static const struct rockchip_grf_value rk3576_defaults_ioc_grf[] __initconst = {
-	{ "jtag switching", RK3576_IOCGRF_MISC_CON, HIWORD_UPDATE(0, 1, 1) },
+	{ "jtag switching", RK3576_IOCGRF_MISC_CON, FIELD_PREP_WM16_CONST(BIT(1), 0) },
 };
 
 static const struct rockchip_grf_info rk3576_iocgrf __initconst = {
@@ -149,7 +148,7 @@ static const struct rockchip_grf_info rk3576_iocgrf __initconst = {
 #define RK3588_GRF_SOC_CON6		0x0318
 
 static const struct rockchip_grf_value rk3588_defaults[] __initconst = {
-	{ "jtag switching", RK3588_GRF_SOC_CON6, HIWORD_UPDATE(0, 1, 14) },
+	{ "jtag switching", RK3588_GRF_SOC_CON6, FIELD_PREP_WM16_CONST(BIT(14), 0) },
 };
 
 static const struct rockchip_grf_info rk3588_sysgrf __initconst = {

-- 
2.50.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
