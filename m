Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8BFDC001DF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Aug 2023 22:44:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kCueMXhD7syZ6e89mnINxDPNBJft08bNn/ke8AaLIWc=; b=Q/Gg2UvH/lhbLq
	lotddTdXn2NUOWIhJa3s35wItIu0B3K2tTo+Wxl10/Ku78LWeo0eWCq4sy0htW0NT4WXMQNogxxLM
	nCw8o0d72vkXOxPBl6PS9u13oYeG2tmu3ewtHcmc2Go6mYmsawjeGWaQC34Oe+FQcyDZosfamr4b+
	58ajpLZP19JNrcWOheenVJ/w/0xzTxXKpI8639NwWpYrJY4LGfshEqZyJf+2KNsqsVcxppfFK08Nx
	rjPYt96gNGqpTzELGLWMmjWdeSPHjp649JdWoll4k6d221Vgtpz7M7+9+95zG+WoyehT4l/xzrJcl
	914txj8yFBWjKJIjYFBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRh3R-00B18D-0F;
	Thu, 03 Aug 2023 22:44:25 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRh3N-00B15a-1g;
	Thu, 03 Aug 2023 22:44:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 0CC0161EEE;
	Thu,  3 Aug 2023 22:44:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1252EC433C8;
	Thu,  3 Aug 2023 22:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691102660;
	bh=prG9EyLTNfHDqOF6uZVSzYO6KHwa1ZJ65S1OeS16o4U=;
	h=From:Date:Subject:References:In-Reply-To:List-Id:To:Cc:From;
	b=draOJyVJLQBKyS4iqncW0BU01+r0cep3aYPRMDZm0f5BYhZFvK9xiQJhE8Enq5To6
	 sMUmRoj1APMm3b7dIxmepA413QzLle9nTDSYvxGTWIDJBFGtF2YHXRvTMh8FKWnt9r
	 pSEnH0y0v8oyWO/mbL7GCCn6q808jdGVZtfgCEL/zT1kRxnmG/sixqpamgLlZ2P/yj
	 fRPkfr/3L3oJqhHI5b1mBgcReCzF1dfudndFFIDO1qQopUI0Sy5MNY8jjT6eHOilvd
	 Az2PkZbLhwC60TmC2wgLyZbgMXZic9Z20SjV30/+w/4w+t3YekZtXVAfiZvw1hUc2u
	 5S5tOl7Xsd2mA==
Received: (nullmailer pid 3693756 invoked by uid 1000);
	Thu, 03 Aug 2023 22:42:55 -0000
From: Rob Herring <robh@kernel.org>
Date: Thu, 03 Aug 2023 16:42:43 -0600
Subject: [PATCH v2 03/23] ARM: alpine: Drop unused includes
MIME-Version: 1.0
Message-Id: <20230803-dt-header-cleanups-for-soc-v2-3-d8de2cc88bff@kernel.org>
References: <20230803-dt-header-cleanups-for-soc-v2-0-d8de2cc88bff@kernel.org>
In-Reply-To: <20230803-dt-header-cleanups-for-soc-v2-0-d8de2cc88bff@kernel.org>
To: soc@kernel.org, Patrice Chotard <patrice.chotard@foss.st.com>, Tsahee Zidenberg <tsahee@annapurnalabs.com>, Antoine Tenart <atenart@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Andrew Lunn <andrew@lunn.ch>, Gregory Clement <gregory.clement@bootlin.com>, Jean-Marie Verdun <verdun@hpe.com>, Nick Hawkins <nick.hawkins@hpe.com>, Lubomir Rintel <lkundrak@v3.sk>, Linus Walleij <linus.walleij@linaro.org>, Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>, Daniel Mack <daniel@zonque.org>, Haojian Zhuang <haojian.zhuang@gmail.com>, Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>, Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Viresh Kumar <vireshk@kernel.org>, Shiraz Has
 him <shiraz.linux.kernel@gmail.com>, Stuart Yoder <stuyoder@gmail.com>, Laurentiu Tudor <laurentiu.tudor@nxp.com>, Jay Fang <f.fangjian@huawei.com>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, Cristian Marussi <cristian.marussi@arm.com>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Florian Fainelli <florian.fainelli@broadcom.com>, Dinh Nguyen <dinguyen@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, Michal Simek <michal.simek@amd.com>, Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Ulf Hansson <ulf.hansson@linaro.org>, Li Yang <leoyang.li@nxp.com>, Qiang Zhao <qiang.zhao@nxp.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org, linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org, linux-aspeed@lists.ozlabs.org, linux-pm@vger.kernel.org
X-Mailer: b4 0.13-dev
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_154421_644319_1084F1CD 
X-CRM114-Status: GOOD (  11.58  )
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

of_platform.h is not needed, drop it.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/mach-alpine/alpine_machine.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mach-alpine/alpine_machine.c b/arch/arm/mach-alpine/alpine_machine.c
index d256a99e9b99..bc491bbbabf8 100644
--- a/arch/arm/mach-alpine/alpine_machine.c
+++ b/arch/arm/mach-alpine/alpine_machine.c
@@ -5,8 +5,6 @@
  * Copyright (C) 2015 Annapurna Labs Ltd.
  */
 
-#include <linux/of_platform.h>
-
 #include <asm/mach/arch.h>
 
 static const char * const al_match[] __initconst = {

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
