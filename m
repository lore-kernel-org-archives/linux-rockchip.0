Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E639BC001DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jul 2023 06:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z4WGeheGfnLb+N6PDd/cyZ28Hn2Lwui2AlP+IadgBzE=; b=ogPQt9DNCdoyKl
	IJq4tebVRygpLEquSef2PxHKlwpDvzUXdhLkjItqM2bnD4PK3C9krVMSjnUO9IGw5JsWrhK2rUVNz
	YDUWVvuN3AfHfTj6Mnsu572/oshCRJKxr5v4Ga4YGixEmyRWNtCEpPxt3hhjt442ahTS9HLDqT9Fo
	ULQrxQx6KNBMFpAZ8r2GoOaZ/nLbcoLuXZJNrZUo2Kruao7XZa92ZxcBxT6VfoB451PkYkgu24+hF
	rVARzszU2PlQJ+/DqoiusOWj6eFWwHtytJM4KnqasPfCqU30jmFnoLwaeGbL8xEbbuWLqd60hfSkO
	Q1h7AAWV/GyeCpw+/T4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0aT-005hC6-2S;
	Wed, 19 Jul 2023 06:23:01 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0aQ-005h8a-09;
	Wed, 19 Jul 2023 06:22:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=tXTx2RXlR8EQA67U0RkTrhef+oB+Uz2sXfrApLgduns=; b=JPDcUIqWtxTJ85S+vWEjUTsdQZ
	6V08Rax/Eep7Eh3lHcoV8PgT4fCl+rzFVKNr4goKqyPwCrUiCLgEOiqY3pQssXIGnN6DtPOaNa+zF
	evEU66ukcl2BFoRjT3CuCWe3kbkrBmvx92jLT9ceyeuCYK38jHNTkirxxrvGhXv/xLRXWHjeORnIo
	o9Q/v5DmY6/ObkpsQggrCCcn8BH0xHvqcH+Ll4PqLmW6CvpIrxgqJi8Qp0q4ucwkPBwhrdvFOuAmr
	QyKd9zz52Ow29alDoIcGYpwAauQ2WBTVVm9hO9zWELlDHFPIKkLdblp0wZPYQO056sc2IjcHz+KDg
	uV3dIIDA==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLXCp-009R8S-0g;
	Mon, 17 Jul 2023 23:03:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id D75C2612F3;
	Mon, 17 Jul 2023 22:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F8D3C433C7;
	Mon, 17 Jul 2023 22:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689634746;
	bh=OdfI1DsT8msOhtbHO035wIhdW6mDtm8twU0kdrGcESk=;
	h=From:To:Cc:Subject:Date:From;
	b=otKz7JjeuYLIipQRHWMjThEjxKJ8WNODYFYooplOTgboeiGyeR3S30A6wp/3vZt6r
	 BuVhg1f6CUWrYahR66aCYjWqRWqNX7yXjimmGVCVJMdtRX5QCmv/kym0vSIW8bHSvs
	 I21pscMlxgSIChfASJoJjwLXHyS5UqVLkivgijPtzg3U3jba2zEPcz7U4Okh8AifYl
	 lNJKi4ZVQjjEMCh4CbHpJqqTbTdmN7dIUU3Ryz4WuDqV06Y/ViMVO4VDO05be0Spn6
	 SDPeDl0o+a2zS9Rpdq3DYW3U7yPoNwHaFx+Ctm7sSo4Gift8iCt14TqCL8P3K1WJ3v
	 rVzXLAGGCfCTQ==
Received: (nullmailer pid 3212975 invoked by uid 1000);
	Mon, 17 Jul 2023 22:55:31 -0000
From: Rob Herring <robh@kernel.org>
To: Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: rockchip: Drop unused includes
Date: Mon, 17 Jul 2023 16:55:28 -0600
Message-Id: <20230717225528.3212881-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
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

Several includes are not needed, so drop them.

of_platform.h is not needed, but it implicitly includes of.h which is
needed.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm/mach-rockchip/rockchip.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/arm/mach-rockchip/rockchip.c b/arch/arm/mach-rockchip/rockchip.c
index beea4564eed4..82102fbabf92 100644
--- a/arch/arm/mach-rockchip/rockchip.c
+++ b/arch/arm/mach-rockchip/rockchip.c
@@ -9,15 +9,11 @@
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/io.h>
+#include <linux/of.h>
 #include <linux/of_clk.h>
-#include <linux/of_platform.h>
-#include <linux/irqchip.h>
 #include <linux/clocksource.h>
-#include <linux/mfd/syscon.h>
-#include <linux/regmap.h>
 #include <asm/mach/arch.h>
 #include <asm/mach/map.h>
-#include <asm/hardware/cache-l2x0.h>
 #include "core.h"
 #include "pm.h"
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
