Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D718C282C6
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 06:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3L88NUrkma2O/3T7rouOUCogsI2jRjLrv69wsBtrtWk=; b=CLRj5F5UAmTn4+
	Nv0jsc2sCj5es8tIhfpsDkWEn0vGJ+9CmOog9298PQkolPAXt3AZeW0AjJvgWcsqVmPLsXLOPdmLN
	sWXYCI+kfaAdO74BFi2g0AZ/SCeKe/048kzafojvbq9T+LlGCX1M2+9mTH0fslVKOtRaDIAsoQ7AA
	k5qwB2Bsh7T3I1w+KoDEFk41KOkAiJNlBpHdajR3wYaNroY62p3ZtmUzKmunguYZWpnc4uCSn1gDw
	XIvDbDOo2oD20umq3pyaDLczYM+qxKvc5YxVIpSQ0xZjAB2zmHUZL6fl/JNrKt/fdyphBj6Sjkxoy
	s0y7HPaSEqGCaABOZyng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnu6A-00000009tWu-1sTX;
	Fri, 28 Feb 2025 06:43:50 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnu34-00000009svZ-0iS4
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 06:40:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1740724836;
 bh=BBIs8NkJoffl42SoJLG5pPaO19rihcoiyN30/+HNeFU=;
 b=fYGG8F93OpKrL1X/BGsWAlOwRyM1N63qnSqHK/vvoxgHXwmPz/18THr7fU4t9fx4c6jtFgxrg
 YCsjp/9SuSVB6IMPrj1V+22DkDm2MWXARYiDi+3nklCKAmXhiTxDL8FR0sJ1nuAOhzyA7tdJH3m
 SLZ8L44B1tBhwbzoCfDEreY4z9AykZ6WCu1/mJTJVa3/SR1zrqrfB5YhplUfv0VPbdtPdBapIPu
 ZY9mW2aDUYOY6cilRu7aK88pUSOmEI9J0/Jj4kpnNZBOcALCgcP4FIA/fI0cb5Mtx1Ehe5vL6rd
 C7CAFo/xER0qEiYq/PhQproNFspD+0+LOgtkYteN1xMg==
X-Forward-Email-ID: 67c15a5ebcf1d1bd23db0191
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/7] rockchip: Add support for leds and user button on Radxa E20C
Date: Fri, 28 Feb 2025 06:40:06 +0000
Message-ID: <20250228064024.3200000-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_224038_605166_91F3B8FA 
X-CRM114-Status: GOOD (  10.65  )
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

The Radxa E20C has three gpio leds and one gpio button.

This series adds dt-binding, driver support, DT node in SoC .dtsi and
gpio-keys and gpio-leds nodes in board DT to support the leds and user
button.

This series builds on top of the "rockchip: Add support for maskrom
button on Radxa E20C" series [1].

Board schematics for Radxa E20C can be found at [2].

[1] https://lore.kernel.org/r/20250227184058.2964204-1-jonas@kwiboo.se
[2] https://dl.radxa.com/e/e20c/v1.10/radxa_e20c_v1100_schematic.pdf

Jonas Karlman (6):
  dt-bindings: soc: rockchip: Add RK3528 ioc-grf syscon
  dt-bindings: pinctrl: Add pinctrl support for RK3528
  arm64: dts: rockchip: Add pinctrl and gpio nodes for RK3528
  arm64: dts: rockchip: Add uart0 pinctrl to Radxa E20C
  arm64: dts: rockchip: Add user button to Radxa E20C
  arm64: dts: rockchip: Add gpio-leds node to Radxa E20C

Steven Liu (1):
  pinctrl: rockchip: Add support for RK3528

 .../bindings/pinctrl/rockchip,pinctrl.yaml    |    1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    1 +
 .../boot/dts/rockchip/rk3528-pinctrl.dtsi     | 1397 +++++++++++++++++
 .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |   68 +
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      |   82 +
 drivers/pinctrl/pinctrl-rockchip.c            |  160 +-
 drivers/pinctrl/pinctrl-rockchip.h            |    1 +
 7 files changed, 1709 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3528-pinctrl.dtsi

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
