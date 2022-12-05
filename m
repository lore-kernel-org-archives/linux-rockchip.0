Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C1C9C4321E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 13:42:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d5K+6r+ez/q1qV3jyUQOtE16b2E8nANdPCQEZ+XA9vc=; b=vs9D8WYTSerJTW
	2QiXxedl/5ZLCukRAjw0eYPrsyIE11MYMCCxTfc6U9HGLLALx9MDQsapS33QWSxnnT7PiNWvzEybl
	5YYM/T9WXSamzU2ck4UxVkmBHeUkaa+JMUaXYNSxhZ6I8CcSc+iofatRH+zIlcrg2Cz4cmMGW4qfJ
	xHz+vgFdvBveOnxlftTFJm8fjHuqJ4UHSsubBrT/QntNo5ky83QBaWQPRGE7ZkxU960gA0FJOqHNS
	UklTX+air0uFJl7m7zrh/Jd8KQjZJ5vMW6rX2KGDMQ6LIrVzd6xd2BwFqfA9vw5ZV1KOqiFyZyAXU
	KMzh+fZM1cL/G2/qmXcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BjK-003aLt-HC; Mon, 05 Dec 2022 13:41:58 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Bj3-003Zv6-21; Mon, 05 Dec 2022 13:41:42 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 68281FF807;
	Mon,  5 Dec 2022 13:41:26 +0000 (UTC)
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
Subject: [PATCH v3 3/9] Input: goodix - fix reset polarity
Date: Mon,  5 Dec 2022 14:40:32 +0100
Message-Id: <20221103-upstream-goodix-reset-v3-3-0975809eb183@theobroma-systems.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
References: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_054141_447168_BB295CE1 
X-CRM114-Status: GOOD (  15.75  )
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

The reset line is asserted for selecting the I2C target address and then
deasserted.

This inverted logic works because the boards using this touchscreen
controller also invert the polarity of their reset GPIO.

Instead of depending on this double-inversion of meaning, let's *assert*
the line.

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 drivers/input/touchscreen/goodix.c | 45 +++++++++++++++++++++++++++++---------
 1 file changed, 35 insertions(+), 10 deletions(-)

diff --git a/drivers/input/touchscreen/goodix.c b/drivers/input/touchscreen/goodix.c
index 1639f2f8a31e3..5fff9483640c9 100644
--- a/drivers/input/touchscreen/goodix.c
+++ b/drivers/input/touchscreen/goodix.c
@@ -742,8 +742,25 @@ int goodix_reset_no_int_sync(struct goodix_ts_data *ts)
 {
 	int error;
 
-	/* begin select I2C slave addr */
-	error = gpiod_direction_output(ts->gpiod_rst, 0);
+	/*
+	 * begin select I2C slave addr by activating/asserting RESET.
+	 *
+	 * The value passed to gpiod_direction_output is decorrelated from the
+	 * actual physical state of the line. The 1 value here is just to
+	 * specify the *assertion* of the line, its meaning being dependent on
+	 * the HW design of the system.
+	 *
+	 * DT-based systems need to specify the GPIO level in which the reset is
+	 * active. Since the touchscreen controller is in reset when its RESET
+	 * line is low, it is the level of the GPIO that results in the RESET
+	 * pin on the touchscreen controller side being low. In a HW design in
+	 * which the GPIO is directly connected to the touchscreen controller
+	 * RESET pin, this would be GPIO_ACTIVE_LOW.
+	 *
+	 * ACPI systems do not have the ability to specify the level of the GPIO
+	 * and they are therefore all assumed active low.
+	 */
+	error = gpiod_direction_output(ts->gpiod_rst, 1);
 	if (error)
 		goto error;
 
@@ -756,7 +773,8 @@ int goodix_reset_no_int_sync(struct goodix_ts_data *ts)
 
 	usleep_range(100, 2000);		/* T3: > 100us */
 
-	error = gpiod_direction_output(ts->gpiod_rst, 1);
+	/* Disable/de-assert RESET */
+	error = gpiod_direction_output(ts->gpiod_rst, 0);
 	if (error)
 		goto error;
 
@@ -806,23 +824,30 @@ static int goodix_reset(struct goodix_ts_data *ts)
 		.quirks = ACPI_GPIO_QUIRK_NO_IO_RESTRICTION, \
 	}
 
-static const struct acpi_gpio_params first_gpio = { 0, 0, false };
-static const struct acpi_gpio_params second_gpio = { 1, 0, false };
+static const struct acpi_gpio_params int_first_gpio = { 0, 0, false };
+static const struct acpi_gpio_params int_second_gpio = { 1, 0, false };
+
+/*
+ * The controller is in reset when the RESET GPIO is output low, so
+ * set acpi_gpio_params.active_low appropriately.
+ */
+static const struct acpi_gpio_params rst_first_gpio = { 0, 0, true };
+static const struct acpi_gpio_params rst_second_gpio = { 1, 0, true };
 
 static const struct acpi_gpio_mapping acpi_goodix_int_first_gpios[] = {
-	GOODIX_GPIO_MAPPING(GOODIX_GPIO_INT_NAME "-gpios", &first_gpio, 1),
-	GOODIX_GPIO_MAPPING(GOODIX_GPIO_RST_NAME "-gpios", &second_gpio, 1),
+	GOODIX_GPIO_MAPPING(GOODIX_GPIO_INT_NAME "-gpios", &int_first_gpio, 1),
+	GOODIX_GPIO_MAPPING(GOODIX_GPIO_RST_NAME "-gpios", &rst_second_gpio, 1),
 	{ },
 };
 
 static const struct acpi_gpio_mapping acpi_goodix_int_last_gpios[] = {
-	GOODIX_GPIO_MAPPING(GOODIX_GPIO_RST_NAME "-gpios", &first_gpio, 1),
-	GOODIX_GPIO_MAPPING(GOODIX_GPIO_INT_NAME "-gpios", &second_gpio, 1),
+	GOODIX_GPIO_MAPPING(GOODIX_GPIO_RST_NAME "-gpios", &rst_first_gpio, 1),
+	GOODIX_GPIO_MAPPING(GOODIX_GPIO_INT_NAME "-gpios", &int_second_gpio, 1),
 	{ },
 };
 
 static const struct acpi_gpio_mapping acpi_goodix_reset_only_gpios[] = {
-	GOODIX_GPIO_MAPPING(GOODIX_GPIO_RST_NAME "-gpios", &first_gpio, 1),
+	GOODIX_GPIO_MAPPING(GOODIX_GPIO_RST_NAME "-gpios", &rst_first_gpio, 1),
 	{ },
 };
 

-- 
b4 0.10.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
