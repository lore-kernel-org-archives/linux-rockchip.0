Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66304CA0FE9
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Sep 2023 11:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g9758qN/gHHI7tlzH4zakhhEX0JljWNAFi8hc/s62cM=; b=0aucsqcnWuNMEa
	hR2X7+SeadcM21KwBkv1IjVpKomW7RIbbfIySN7No8PjnF7fzQB5NTLoZnbbua9eP4hwLIiApXVEc
	P7/VBkC0RvvRWwgNIRPJdAnwJuJHwpAIIvuQQT5pNO7QZFOdOf6/6uvLwhdSg78BbahiJawO7+OM/
	pk/lhmEky2k0jIFgGJprLSL8WEzQkTSxIeP0dEGs64Sk+wkUjHE2kjJcxJjhFhEOypyH4TTTdLuHJ
	W3trtKAEvc5jjojcsxPaWs9K5t/c3JtKsUqR4FKvww0EWtd3+RdRHotLQZZoFNX4QnEbVPd6W0ZJg
	k1bAlsJ8mF03w/d4FZgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd8Dv-0041sK-2S;
	Mon, 04 Sep 2023 11:58:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd8Do-0041pv-2u
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Sep 2023 11:58:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd8Dk-0003r1-RS; Mon, 04 Sep 2023 13:58:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd8Dk-003s40-0N; Mon, 04 Sep 2023 13:58:20 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd8Dj-005pOk-Ey; Mon, 04 Sep 2023 13:58:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	kernel@pengutronix.de,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/3] Make Rockchip IO domains dependency from other devices explicit
Date: Mon,  4 Sep 2023 13:58:13 +0200
Message-Id: <20230904115816.1237684-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_045824_975192_1D4816B1 
X-CRM114-Status: GOOD (  22.01  )
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

This is a continuation of the patch posted by Quentin Schulz here [1]

This series aims to solve a problem with Rockchip IO domains. On many
Rockchip SoCs the pins are driven by external supplies normally
controlled by regulators of a PMIC. There are multiple voltages allowed
for the regulators; additionally the chosen voltage has to be programmed
into SoC registers. There already is a driver [2] handling setting these
registers. The driver works by registering a notifier on the regulators.
Whenever a regulator is about to change its voltage then the notifier will
program the IO domain registers suitably for the new voltage.

The problem is that there is no dependency between pins and the IO
domain driver which means that it can happen that a pin is used before
the IO domain driver has been probed. In that case the pin can end up
being non functional as neither the regulator has been configured
correctly nor the SoC registers have been adjusted to the regulators
voltage.

One way to ensure correct probing order is to defer probing of devices
in the pinctrl driver until the IO domain driver has been probed. We
can't do this for all devices though, as that would introduce a cyclic
dependency when for example the I2C port needed to access the PMIC for
the regulators is part of a IO domain itself.

This series solves these problems similarly to Quentins patch. With
Quentins patch we would have to add rockchip,io-domain properties for
all pin group nodes we wish to honor the IO domain dependency for. We
could put these properties into the board dts files which would mean
that we either only add the properties to nodes which actually byte us,
or that we would have to add the properties to all possible pin groups
except the ones needed to access the PMIC. We could also put these
properties into the dtsi files, but that would mean a board has to add a
/delete-property/ rockchip,io-domain to the pin groups needed to access
the PMIC to avoid circular dependencies.

The approach chosen here is slightly different. First of all this series
doesn't change the current behaviour without board specific dts changes.
To activate the IO domain dependency handling, a board has to add a
rockchip,io-domains property to the pinctrl node. When this property is
present all pins are assumed to need the IO domain driver. Pin groups
needed to access the PMIC can then be given a rockchip,io-domain-boot-on
property. When this property is given then the IO domain is assumed to
be correctly configured by the boot loader. It should be added to all
pin groups needed to access the PMIC to avoid cyclic dependencies. Patch
3/3 contains a usage example for the Radxa Rock-3a.

Sascha

[1] https://lore.kernel.org/lkml/20220802095252.2486591-1-foss+kernel@0leil.net/
[2] drivers/soc/rockchip/io-domain.c

Sascha Hauer (3):
  pinctrl: rockchip: add support for io-domain dependency
  dt-bindings: pinctrl: rockchip: Add io domain properties
  arm64: dts: rockchip: rock-3a: add io domain properties

 .../bindings/pinctrl/rockchip,pinctrl.yaml    | 13 +++-
 .../boot/dts/rockchip/rk3568-rock-3a.dts      | 11 ++++
 drivers/pinctrl/pinctrl-rockchip.c            | 64 +++++++++++++++++++
 drivers/pinctrl/pinctrl-rockchip.h            |  3 +
 4 files changed, 90 insertions(+), 1 deletion(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
