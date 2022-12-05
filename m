Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52DE6C4708C
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 13:44:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p6be0CO1KMxs7gs+uAeS/Lv5Qxy7kQ4HLIc49LusP1Y=; b=TTnIA8VuW9kMs4
	BDhzpygijalJIjENhHlN3tDQS2IISBNSYflBcyLruNKI/oz4Shkyz6OYyBOd8Ztww2AvJzVykzQ0j
	nwWPCF1XPtPQucg46M1T3IZGpJ//G/Mb1DXZpIZ94Bn4U0eQKgJn5OLI6rbfccsXg1M9LuC9R6ohp
	UXx4VHunshjAFK4owXesCpWgsSEUBEiWGpgH0gA44QHI6YmJY6X1F+dvn1JAZZgiERkPlyq2s7ac1
	sHLI405Y+NeBowtEQ+2hmcbftyiLP+M0P113NkfFo13RJO0GhJ/inw5lnvNTkB1ZkBia6P+Wb0Hjk
	uWf/mJODSZuRSSMgHjdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Blb-003cIy-6O; Mon, 05 Dec 2022 13:44:19 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BkE-003atP-0e; Mon, 05 Dec 2022 13:42:57 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id E6ABCFF808;
	Mon,  5 Dec 2022 13:42:40 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: Samuel Holland <samuel@sholland.org>,
	Bastien Nocera <hadess@hadess.net>,
	=?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Angus Ainslie <angus@akkea.ca>,
	Ondrej Jirman <megous@megous.com>,
	Icenowy Zheng <icenowy@aosc.io>,
	Andy Gross <agross@kernel.org>,
	Aleksei Mamlin <mamlinav@gmail.com>,
	Fabio Estevam <festevam@gmail.com>,
	David Jander <david@protonic.nl>,
	Frieder Schrempf <frieder.schrempf@kontron.de>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@somainline.org>,
	Peter Geis <pgwipeout@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Lukasz Majewski <lukma@denx.de>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Rob Herring <robh+dt@kernel.org>,
	NXP Linux Team <linux-imx@nxp.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Hans de Goede <hdegoede@redhat.com>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	linux-input@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3 8/9] arm64: dts: qcom: msm8998-fxtec: fix touchscreen reset GPIO polarity
Date: Mon,  5 Dec 2022 14:40:37 +0100
Message-Id: <20221103-upstream-goodix-reset-v3-8-0975809eb183@theobroma-systems.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
References: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_054254_249166_FCAD6B78 
X-CRM114-Status: GOOD (  10.77  )
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

From: Quentin Schulz <quentin.schulz@theobroma-systems.com>

The reset line is active low for the Goodix touchscreen controller so
let's fix the polarity in the Device Tree node.

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts b/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts
index 429ba57e20f71..8f738cade2652 100644
--- a/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts
+++ b/arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts
@@ -249,7 +249,7 @@ touchscreen@14 {
 		reg = <0x14>;
 		interrupt-parent = <&tlmm>;
 		interrupts = <125 IRQ_TYPE_LEVEL_LOW>;
-		reset-gpios = <&tlmm 89 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&tlmm 89 GPIO_ACTIVE_LOW>;
 		AVDD28-supply = <&vreg_l28_3p0>;
 		VDDIO-supply = <&ts_vio_vreg>;
 		pinctrl-names = "active";

-- 
b4 0.10.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
