Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E8F7C00140
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Aug 2022 09:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02KC+UhLS+sVRKUQwcoPlWBYQk5Z90HAsjRZaqbutmw=; b=M14QZqoKqG7iEo
	UfBNhVBUSHojC0jVJx3cCFgu1z9PB/mFsPabFOSJ5GxxDphPlBf23hievMeYGETU6DuAXc8ieQDzu
	8LQg3e0Q5sEZNp8nLUF82POSZJ1aT35Inu4duh7ahAXfFi4dkzaCBtGt6N5ybPMjaJU3hPF/sEZ/T
	Vh9gKzFrTxOSgS4rIo0ogI9WE2sSaAKxnLouqe854yG0lyNpnRT0M5VOi36jNqICf7jCbgPh/kYHM
	eQRziYEuSq/6IfjnT42gunF+YUcAK98gDhHmLXebETtjXO5oTJgjqQWctwdX9hRfZZV2AyZyG3pvL
	BzI6KDL9X0kXnc2fqBxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIoaw-00Cb5l-8U; Tue, 02 Aug 2022 09:53:46 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIoaZ-00CaoL-6d; Tue, 02 Aug 2022 09:53:25 +0000
Received: (Authenticated sender: foss@0leil.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 4FF8CFF808;
	Tue,  2 Aug 2022 09:53:15 +0000 (UTC)
From: Quentin Schulz <foss+kernel@0leil.net>
To: 
Cc: linus.walleij@linaro.org,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: [RFC PATCH 1/1] pinctrl: rockchip: add support for per-pinmux io-domain dependency
Date: Tue,  2 Aug 2022 11:52:52 +0200
Message-Id: <20220802095252.2486591-2-foss+kernel@0leil.net>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220802095252.2486591-1-foss+kernel@0leil.net>
References: <20220802095252.2486591-1-foss+kernel@0leil.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220802_025323_627243_C31DD89F 
X-CRM114-Status: GOOD (  18.54  )
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

On some Rockchip SoCs, some SoC pins are split in what are called IO
domains.

An IO domain is supplied power externally, by regulators from a PMIC for
example. This external power supply is then used by the IO domain as
"supply" for the IO pins if they are outputs.

Each IO domain can configure which voltage the IO pins will be operating
on (1.8V or 3.3V).

There already exists an IO domain driver for Rockchip SoCs[1]. This
driver allows to explicit the relationship between the external power
supplies and IO domains[2]. This makes sure the regulators are enabled
by the Linux kernel so the IO domains are supplied with power and
correctly configured as per the supplied voltage.
This driver is a regulator consumer and does not offer any other
interface for device dependency.

However, IO pins belonging to an IO domain need to have this IO domain
correctly configured before they are being used otherwise they do not
operate correctly (in our case, a pin configured as output clock was
oscillating between 0 and 150mV instead of the expected 1V8).

In order to make this dependency transparent to the consumer of those
pins and not add Rockchip-specific code to third party drivers (a camera
driver in our case), it is hooked into the pinctrl driver which is
Rockchip-specific obviously.

[1] drivers/soc/rockchip/io-domain.c
[2] Documentation/devicetree/bindings/power/rockchip-io-domain.yaml

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 19 +++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h |  1 +
 2 files changed, 20 insertions(+)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 32e41395fc76..c3c2801237b5 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -24,6 +24,8 @@
 #include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
+#include <linux/of_platform.h>
+#include <linux/platform_device.h>
 #include <linux/pinctrl/machine.h>
 #include <linux/pinctrl/pinconf.h>
 #include <linux/pinctrl/pinctrl.h>
@@ -2370,6 +2372,12 @@ static int rockchip_pmx_set(struct pinctrl_dev *pctldev, unsigned selector,
 	dev_dbg(dev, "enable function %s group %s\n",
 		info->functions[selector].name, info->groups[group].name);
 
+	if (info->groups[group].io_domain &&
+	    !platform_get_drvdata(info->groups[group].io_domain)) {
+		dev_err(info->dev, "IO domain device is required but not probed yet, deferring...");
+		return -EPROBE_DEFER;
+	}
+
 	/*
 	 * for each pin in the pin group selected, program the corresponding
 	 * pin function number in the config register.
@@ -2663,6 +2671,7 @@ static int rockchip_pinctrl_parse_groups(struct device_node *np,
 {
 	struct device *dev = info->dev;
 	struct rockchip_pin_bank *bank;
+	struct device_node *node;
 	int size;
 	const __be32 *list;
 	int num;
@@ -2684,6 +2693,16 @@ static int rockchip_pinctrl_parse_groups(struct device_node *np,
 	if (!size || size % 4)
 		return dev_err_probe(dev, -EINVAL, "wrong pins number or pins and configs should be by 4\n");
 
+	node = of_parse_phandle(np, "rockchip,io-domains", 0);
+	if (node) {
+		grp->io_domain = of_find_device_by_node(node);
+		of_node_put(node);
+		if (!grp->io_domain) {
+			dev_err(info->dev, "couldn't find IO domain device\n");
+			return -ENODEV;
+		}
+	}
+
 	grp->npins = size / 4;
 
 	grp->pins = devm_kcalloc(dev, grp->npins, sizeof(*grp->pins), GFP_KERNEL);
diff --git a/drivers/pinctrl/pinctrl-rockchip.h b/drivers/pinctrl/pinctrl-rockchip.h
index ec46f8815ac9..56bc008eb7df 100644
--- a/drivers/pinctrl/pinctrl-rockchip.h
+++ b/drivers/pinctrl/pinctrl-rockchip.h
@@ -434,6 +434,7 @@ struct rockchip_pin_group {
 	unsigned int			npins;
 	unsigned int			*pins;
 	struct rockchip_pin_config	*data;
+	struct platform_device		*io_domain;
 };
 
 /**
-- 
2.37.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
