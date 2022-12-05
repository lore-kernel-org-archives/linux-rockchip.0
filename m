Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B7B0C4708C
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 13:42:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YF6Oa2k0/gsMH9pU/1Tb2Fxt3gzocFN1Zeskw1PBf1A=; b=rvrmNJ4NuDQZ+9
	WyIxYXzMI6/WfuY1qJbzpcf3pDeXH6y+4fnyeQx6h2M245H0j9B9+s/CMVyfGZkOto97sGjCCdzt7
	vT0kre3ySUy83mGHox6pHMbjdHoa17wPUdyuPw4JZB3XE0B5+q09h6yaS6a/IhZwNnAeo34ARbCcY
	LJNpE9kTn3gFLRHzpZOJsscycTz39k/ffFva94ynUXgjQD6myk/rZzqAB8ByTH3YU2yErZDPnO3fg
	QXpz8tDJ0w5+wfWfv5ecEmlDMnThHLroz9zOE30hmG0lkiJV+LGit+hHs800XxuYioRcl9ia2jeVm
	b9MKm2Cki5IJjUHMRt6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Bjk-003aaa-U6; Mon, 05 Dec 2022 13:42:24 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BjE-003aE7-2y; Mon, 05 Dec 2022 13:41:53 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id B3B56FF802;
	Mon,  5 Dec 2022 13:41:37 +0000 (UTC)
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
Subject: [PATCH v3 4/9] ARM: dts: imx: fix touchscreen reset GPIO polarity
Date: Mon,  5 Dec 2022 14:40:33 +0100
Message-Id: <20221103-upstream-goodix-reset-v3-4-0975809eb183@theobroma-systems.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
References: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_054152_301246_7152C5AF 
X-CRM114-Status: GOOD (  11.05  )
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
 arch/arm/boot/dts/imx6q-kp.dtsi            | 2 +-
 arch/arm/boot/dts/imx6ul-kontron-bl-43.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-kp.dtsi b/arch/arm/boot/dts/imx6q-kp.dtsi
index 1ade0bff681d6..dae14aaf803a8 100644
--- a/arch/arm/boot/dts/imx6q-kp.dtsi
+++ b/arch/arm/boot/dts/imx6q-kp.dtsi
@@ -188,7 +188,7 @@ touchscreen@5d {
 		interrupt-parent = <&gpio1>;
 		interrupts = <9 IRQ_TYPE_EDGE_FALLING>;
 		irq-gpios = <&gpio1 9 GPIO_ACTIVE_HIGH>;
-		reset-gpios = <&gpio5 2 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio5 2 GPIO_ACTIVE_LOW>;
 	};
 
 	ds1307: rtc@32 {
diff --git a/arch/arm/boot/dts/imx6ul-kontron-bl-43.dts b/arch/arm/boot/dts/imx6ul-kontron-bl-43.dts
index 0c643706a158b..767ef5da76136 100644
--- a/arch/arm/boot/dts/imx6ul-kontron-bl-43.dts
+++ b/arch/arm/boot/dts/imx6ul-kontron-bl-43.dts
@@ -29,7 +29,7 @@ touchscreen@5d {
 		pinctrl-0 = <&pinctrl_cap_touch>;
 		interrupt-parent = <&gpio5>;
 		interrupts = <6 IRQ_TYPE_LEVEL_LOW>;
-		reset-gpios = <&gpio5 8 GPIO_ACTIVE_HIGH>;
+		reset-gpios = <&gpio5 8 GPIO_ACTIVE_LOW>;
 		irq-gpios = <&gpio5 6 GPIO_ACTIVE_HIGH>;
 	};
 };

-- 
b4 0.10.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
