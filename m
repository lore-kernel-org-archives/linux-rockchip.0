Return-Path: <SRS0=A0J0=PY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2841FC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:51:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DC75D611EE
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Nov 2021 12:51:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DC75D611EE
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linux.intel.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnEM6ieOrCWojeZcAWWsN750PV1dTaMR8csP4lHZeC0=; b=1jVvEIIq+86Asj
	qRdX6EfsUjSUei7K5tU7ZgwMkL0VfCv6A8ilKGlba9khjpx9BGxI7rGdaXYirw2t2i5mcq+OTgaYk
	ohm7j/obMCCwWx39T7wo8sqpVcb8/e+Hd4J3jd3LkJGrxcMnkJEun6xrmBkXgH0vL8LWi570KbMmY
	UcWy7BtuH9/oGww0MROX2UnZSrIm4ZWPn804GjmXVuRIbEj27oAXo63YrdYhcF2xcqgME9V9hryrS
	6ptnHC4cBMLnwA5Lla8Ih1AceLzi+ZJW9+t5vSuqt25oLy2uSAGfdKxawceU4isiqPL7nilRmLASf
	kaD9oDwE8cmsE09IGuxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miygx-00BL7z-MW; Fri, 05 Nov 2021 12:51:35 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miyYt-00BGak-V5; Fri, 05 Nov 2021 12:43:17 +0000
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="255539437"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="255539437"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 05:43:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="490310853"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga007.jf.intel.com with ESMTP; 05 Nov 2021 05:43:10 -0700
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id E7B6EB02; Fri,  5 Nov 2021 14:43:01 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Jianqun Xu <jay.xu@rock-chips.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Sai Krishna Potthuri <lakshmi.sai.krishna.potthuri@xilinx.com>,
 Andrew Morton <akpm@linux-foundation.org>, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: Bamvor Jian Zhang <bamv2005@gmail.com>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Patrice Chotard <patrice.chotard@foss.st.com>,
 Michal Simek <michal.simek@xilinx.com>, Andy Shevchenko <andy@kernel.org>
Subject: [PATCH v1 18/19] pinctrl: zynqmp: Unify pin naming
Date: Fri,  5 Nov 2021 14:42:41 +0200
Message-Id: <20211105124242.27288-18-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
References: <20211105124242.27288-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_054316_037757_1BF6AC18 
X-CRM114-Status: GOOD (  14.79  )
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

Since we have devm_kasprintf_strarray() helper, which is used in
the rest of pin control drivers, it makes sense to switch this
driver to it. The pin names are not part of any ABI and hence
there will be no regression based on that. Otherwise all generated
pin names will follow the same schema in the pin control subsystem.

Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/pinctrl/pinctrl-zynqmp.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-zynqmp.c b/drivers/pinctrl/pinctrl-zynqmp.c
index e14012209992..6cc307595783 100644
--- a/drivers/pinctrl/pinctrl-zynqmp.c
+++ b/drivers/pinctrl/pinctrl-zynqmp.c
@@ -809,6 +809,7 @@ static int zynqmp_pinctrl_prepare_pin_desc(struct device *dev,
 					   unsigned int *npins)
 {
 	struct pinctrl_pin_desc *pins, *pin;
+	char **pin_names;
 	int ret;
 	int i;
 
@@ -820,13 +821,14 @@ static int zynqmp_pinctrl_prepare_pin_desc(struct device *dev,
 	if (!pins)
 		return -ENOMEM;
 
+	pin_names = devm_kasprintf_strarray(dev, ZYNQMP_PIN_PREFIX, *npins);
+	if (IS_ERR(pin->name))
+		return PTR_ERR(pin_names);
+
 	for (i = 0; i < *npins; i++) {
 		pin = &pins[i];
 		pin->number = i;
-		pin->name = devm_kasprintf(dev, GFP_KERNEL, "%s%d",
-					   ZYNQMP_PIN_PREFIX, i);
-		if (!pin->name)
-			return -ENOMEM;
+		pin->name = pin_names[i];
 	}
 
 	*zynqmp_pins = pins;
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
