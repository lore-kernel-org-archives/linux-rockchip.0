Return-Path: <SRS0=XIeQ=IO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49565C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 13:41:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC44964DD8
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 13:41:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CC44964DD8
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=glider.be
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dlnoF9VXlpgzy2mPOfAvF5HnFynecTFu+VKjP3sd0K4=; b=Vg3K636hLzPdX3eYc7tvq6VfDG
	P0exaffvP00HQutSwkthjpvgSBCNnYcIhFocDa+RMDgJ7SNFFX8fUNWKcRYU1CD/jWJJtiHqiINzQ
	zsMLJr4BBMdYU+vFTcCTezwMcg0Ls3Ri7Q9I1ZStyF1gwUslHC0hAnl1W6mWLyeMaWXFgWWfTHcW7
	UbOas5By6cULfl6hAWcAWPiHuGHCFbs7ymbCVO4PV0/QRpGFj6MJUke0b2/hiWtilrQywO3jHrn52
	fzHKwUAErL+kprsLj5tcTfKjXARel9A+d7U/BcOPcYOJ0aX7qaPSMxfygolarMtpcTPJ5sdiTSuzW
	qEXGczrQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lM9wa-000qdR-LG; Tue, 16 Mar 2021 13:41:08 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lM9wW-000qcb-KT
 for linux-rockchip@lists.infradead.org; Tue, 16 Mar 2021 13:41:06 +0000
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed20:b1e0:9434:c5b6:aecd])
 by michel.telenet-ops.be with bizsmtp
 id h1h22400P0UTkXy061h25K; Tue, 16 Mar 2021 14:41:04 +0100
Received: from rox.of.borg ([192.168.97.57])
 by ramsan.of.borg with esmtps (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1lM9wT-0088Uu-DB; Tue, 16 Mar 2021 14:41:01 +0100
Received: from geert by rox.of.borg with local (Exim 4.93)
 (envelope-from <geert@linux-m68k.org>)
 id 1lM9wS-009yOn-MP; Tue, 16 Mar 2021 14:41:00 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jianqun Xu <jay.xu@rock-chips.com>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH] pinctrl: PINCTRL_ROCKCHIP should depend on ARCH_ROCKCHIP
Date: Tue, 16 Mar 2021 14:40:59 +0100
Message-Id: <20210316134059.2377081-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_134104_981643_C36BCAF9 
X-CRM114-Status: UNSURE (   9.06  )
X-CRM114-Notice: Please train this message.
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

The Rockchip GPIO and pin control modules are only present on Rockchip
SoCs.  Hence add a dependency on ARCH_ROCKCHIP, to prevent asking the
user about this driver when configuring a kernel without Rockchip
platform support.

Note that before, the PINCTRL_ROCKCHIP symbol was not visible, and
automatically selected when needed.  By making it tristate and
user-selectable, it became visible for everyone.

Fixes: be786ac5a6c4bf4e ("pinctrl: rockchip: make driver be tristate module")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/pinctrl/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pinctrl/Kconfig b/drivers/pinctrl/Kconfig
index cfde05914abf7260..2a30b26fb30deef5 100644
--- a/drivers/pinctrl/Kconfig
+++ b/drivers/pinctrl/Kconfig
@@ -209,6 +209,7 @@ config PINCTRL_OXNAS
 
 config PINCTRL_ROCKCHIP
 	tristate "Rockchip gpio and pinctrl driver"
+	depends on ARCH_ROCKCHIP || COMPILE_TEST
 	depends on OF
 	select GPIOLIB
 	select PINMUX
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
