Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BC8EC00528
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Aug 2023 22:44:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otfZIabNbcBhAjvvKTWOdVKTmc1KcKX6nTkFWYid7LY=; b=o3wfSaHEWA4gts
	Aqsk/EE3fIrA7oj9CFtLL8chpRmS+U2KpfvD4TCB8iW4qxdEWpRS08wCHZoUX8A/Gisj2upj3akli
	3WzzPctX8o8GyOSUq4FQCskEQiyoOT/G7BG0fgsgwVWQFEI61hl2pwfKfg5rpjSY537i/zFlWreY7
	FKTsj8x3c0RHM0NkDNrGUlzL7sGKp8SNHgRD01nI44EG81RWFP6XuNY/wyQndS5lsB20/mX7Ne+wR
	2pXIug5JYd1Z5gAc9SxMxokU8VaWoOOFICIHCH0CxCkXktgJlVCVYtxkNPPUpAPn1oBSX12Havpce
	H9lLvaL9Nn1eDmO/jDzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRh2z-00B0st-0b;
	Thu, 03 Aug 2023 22:43:57 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRh2u-00B0pg-1r;
	Thu, 03 Aug 2023 22:43:53 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 104EA61EE2;
	Thu,  3 Aug 2023 22:43:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA8C7C433C7;
	Thu,  3 Aug 2023 22:43:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691102631;
	bh=R76ioRk8I4DMRoQdi+plajp1uKqt2Z5mY3EQuaOmZR4=;
	h=From:Date:Subject:References:In-Reply-To:List-Id:To:Cc:From;
	b=QBNVUFI5O2z9OUqU805wd+Q0LYarSS43c3wZDp+nybANKUZmTXauY3r2eu94aWZn7
	 +jQGRu6wwrT3Dg85fiGmdMVuBt9gwsrB711ZahfXJR1I5ukhXWz4YhHFGAOO2s3Bb+
	 mgk7snY56VWEcGPqrSshdCDRhpe1gwRoXx8iDc5EBlzCy4cERwYCmJfyMYLI6GnEze
	 gXBeCG56udbc7C5pVFxcM/jy87edsuCWFuelyHeGwBA/4w+6u73wtHp+EWq2/OU8ax
	 2YRGF7GRCWtp3XuMuAQCljnXVLq7aPRJhexjPaF/hEsXSa7lSaCboKk5uN9zgIuzOZ
	 wn6l6nD6LQKvQ==
Received: (nullmailer pid 3693794 invoked by uid 1000);
	Thu, 03 Aug 2023 22:42:55 -0000
From: Rob Herring <robh@kernel.org>
Date: Thu, 03 Aug 2023 16:43:02 -0600
Subject: [PATCH v2 22/23] soc: xilinx: Explicitly include correct DT
 includes
MIME-Version: 1.0
Message-Id: <20230803-dt-header-cleanups-for-soc-v2-22-d8de2cc88bff@kernel.org>
References: <20230803-dt-header-cleanups-for-soc-v2-0-d8de2cc88bff@kernel.org>
In-Reply-To: <20230803-dt-header-cleanups-for-soc-v2-0-d8de2cc88bff@kernel.org>
To: soc@kernel.org, Patrice Chotard <patrice.chotard@foss.st.com>, Tsahee Zidenberg <tsahee@annapurnalabs.com>, Antoine Tenart <atenart@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, Jean-Marie Verdun <verdun@hpe.com>, Nick Hawkins <nick.hawkins@hpe.com>, Lubomir Rintel <lkundrak@v3.sk>, Linus Walleij <linus.walleij@linaro.org>, Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>, Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>, Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Viresh Kumar <vireshk@kernel.org>, Shiraz Has
 him <shiraz.linux.kernel@gmail.com>, Stuart Yoder <stuyoder@gmail.com>, Laurentiu Tudor <laurentiu.tudor@nxp.com>, Jay Fang <f.fangjian@huawei.com>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, Cristian Marussi <cristian.marussi@arm.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Florian Fainelli <florian.fainelli@broadcom.com>, Dinh Nguyen <dinguyen@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, Michal Simek <michal.simek@amd.com>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Ulf Hansson <ulf.hansson@linaro.org>, Li Yang <leoyang.li@nxp.com>, Qiang Zhao <qiang.zhao@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org, linux-aspeed@lists.ozlabs.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.13-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_154352_700618_13809451 
X-CRM114-Status: GOOD (  12.96  )
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

The DT of_device.h and of_platform.h date back to the separate
of_platform_bus_type before it as merged into the regular platform bus.
As part of that merge prepping Arm DT support 13 years ago, they
"temporarily" include each other. They also include platform_device.h
and of.h. As a result, there's a pretty much random mix of those include
files used throughout the tree. In order to detangle these headers and
replace the implicit includes with struct declarations, users need to
explicitly include the correct includes.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/soc/xilinx/zynqmp_power.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/soc/xilinx/zynqmp_power.c b/drivers/soc/xilinx/zynqmp_power.c
index 641dcc958911..913417506468 100644
--- a/drivers/soc/xilinx/zynqmp_power.c
+++ b/drivers/soc/xilinx/zynqmp_power.c
@@ -11,6 +11,7 @@
 
 #include <linux/mailbox_client.h>
 #include <linux/module.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/reboot.h>
 #include <linux/suspend.h>

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
