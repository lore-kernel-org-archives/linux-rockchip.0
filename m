Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3738EC4321E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 13:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I7qXQJcm/ffU8Jl5b5rAkmDDFu3D510ycC50KpOViqs=; b=QfeU7DsRdD0EMf
	kxPXS1EPTaOZ2iAOSzuRb61uEIqs+a8mpTqhjBqgHUcHSDiZQi+HnfRrQoSc13i7NCopeiC8Hhhfl
	Xh+pC84ma81qu9oqRHd6gxx7GG81xfbC32mxoJXxWHjLWPW6O2mUP6rvG3svUviD4TXdW6K4Z5BPQ
	Rj7iCJUZXHCz56y+v+Y+BKE8f/ixB/wFfYJjLqrRn3XweXz+WtiaACf3lxBitRNtvf8bV3ax+Gbrp
	WvqnZSKHb7BsTabWceAHV8ZGfRSBQbGcjqtrx3oAWicxN/xhDh+5IvL4lG08+EDhjNkGhObWlLb4w
	2dRnltMUkKq0IVtEx5DA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Biq-003ZZn-Lm; Mon, 05 Dec 2022 13:41:28 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2Bid-003ZS9-Lb; Mon, 05 Dec 2022 13:41:17 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 3D32DFF802;
	Mon,  5 Dec 2022 13:41:00 +0000 (UTC)
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
Subject: [PATCH v3 1/9] Input: goodix - add macro for gpio mapping
Date: Mon,  5 Dec 2022 14:40:30 +0100
Message-Id: <20221103-upstream-goodix-reset-v3-1-0975809eb183@theobroma-systems.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
References: <20221103-upstream-goodix-reset-v3-0-0975809eb183@theobroma-systems.com>
MIME-Version: 1.0
X-Mailer: b4 0.10.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_054115_987311_A7A6E0EB 
X-CRM114-Status: GOOD (  11.92  )
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

To prepare for the quirks member to be set for all pins, which would
make the line longer than allowed, let's move all mappings into a macro.

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 drivers/input/touchscreen/goodix.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/input/touchscreen/goodix.c b/drivers/input/touchscreen/goodix.c
index c281e49826c23..d73d4272a8ea5 100644
--- a/drivers/input/touchscreen/goodix.c
+++ b/drivers/input/touchscreen/goodix.c
@@ -797,23 +797,31 @@ static int goodix_reset(struct goodix_ts_data *ts)
 }
 
 #ifdef ACPI_GPIO_SUPPORT
+
+#define GOODIX_GPIO_MAPPING(_name, _params, _size) \
+	{ \
+		.name = _name, \
+		.data = _params, \
+		.size = _size, \
+	}
+
 static const struct acpi_gpio_params first_gpio = { 0, 0, false };
 static const struct acpi_gpio_params second_gpio = { 1, 0, false };
 
 static const struct acpi_gpio_mapping acpi_goodix_int_first_gpios[] = {
-	{ GOODIX_GPIO_INT_NAME "-gpios", &first_gpio, 1 },
-	{ GOODIX_GPIO_RST_NAME "-gpios", &second_gpio, 1 },
+	GOODIX_GPIO_MAPPING(GOODIX_GPIO_INT_NAME "-gpios", &first_gpio, 1),
+	GOODIX_GPIO_MAPPING(GOODIX_GPIO_RST_NAME "-gpios", &second_gpio, 1),
 	{ },
 };
 
 static const struct acpi_gpio_mapping acpi_goodix_int_last_gpios[] = {
-	{ GOODIX_GPIO_RST_NAME "-gpios", &first_gpio, 1 },
-	{ GOODIX_GPIO_INT_NAME "-gpios", &second_gpio, 1 },
+	GOODIX_GPIO_MAPPING(GOODIX_GPIO_RST_NAME "-gpios", &first_gpio, 1),
+	GOODIX_GPIO_MAPPING(GOODIX_GPIO_INT_NAME "-gpios", &second_gpio, 1),
 	{ },
 };
 
 static const struct acpi_gpio_mapping acpi_goodix_reset_only_gpios[] = {
-	{ GOODIX_GPIO_RST_NAME "-gpios", &first_gpio, 1 },
+	GOODIX_GPIO_MAPPING(GOODIX_GPIO_RST_NAME "-gpios", &first_gpio, 1),
 	{ },
 };
 

-- 
b4 0.10.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
