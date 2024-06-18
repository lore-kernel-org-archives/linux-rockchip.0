Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86A2CC41513
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 16:14:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvRvPgrx6nOPTYX1Iay1ZtaDgleN6PQoturtJmRvuN4=; b=DjDVTEah46Njb2
	BvezkTQvmdQKbkUB33Rf+vbJ3fq2LmGhXNHwjPS14x02seN1+g0ekoHZdWOci4zY7oyIG3EMYkZzm
	TXqgHhK7gz9Pi2v+EfLvhbBbx/YGga7jyT/FGTxpe1TXli1vNh+ImZEeSQahnJf51BblXahf99S8Y
	LK7i3EnEfPCtp0irstp2t5BOYikVKHgnXvc5ULEj5aOOXX7JI6bucUg7mNsSAHe66oQfdjNs0kBjd
	f485BSjDkjqmhUlOdI5DSswkKnB7Los+4jy+6hchAqOLp/YeMGDHTdssAoEgSyKy3VEjhk9ANS7R0
	AwjB+LVTRyUAkrDJuxxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbTS-0000000Fnnd-0UXl;
	Tue, 18 Jun 2024 16:14:22 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbTO-0000000Fnlt-2Kc8;
	Tue, 18 Jun 2024 16:14:20 +0000
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-57cc1c00ba6so4978419a12.1;
        Tue, 18 Jun 2024 09:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718727257; x=1719332057; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=MHpqHwSy4KYPzb2c3Q3KXN0Mser02EbTTG6K/yRuAZs=;
        b=WFRcA2B/VYSA6SHhR267rm+LB495smv6chtWskxwTx5VKhcwVTiZojk3hLTGR1cv+k
         UXCiVbXY4xQstVbsIl0TP40ty07Ai0n0i5v58gO53PeVGvwBJ1lQtQADTmVnoNEAjXcn
         XassAcwx9dQijUYoDJ2y9+zK2Z7jWTcT4oVRAb/lznxX+JlRFq/fFBnvZgaolfj318vF
         Y5IQjRLHl3bqF/FVxt/5PojGqTO6t7I28hYQ1cHs+sN9pfuw5lXtxwuXYvapOjWAKleA
         8TjAmIKEIXW2nKuxg8pQlPZTqG24DWpeO9U5H6I1RjPVfbcUHsUcWEcSS4vPOR88nAYx
         45ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718727257; x=1719332057;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MHpqHwSy4KYPzb2c3Q3KXN0Mser02EbTTG6K/yRuAZs=;
        b=ApmysXyjEgnB5XITRfEv/lX3nbArmXTcjK/ESfgqoV0QjP96MTwXJUGjRQ804u35tm
         fEsrImS6EYtVHVO58+MUVBO+wZcff7FwLUzJYnOh3Z2VRzx48d9KS1Pw1Wus7sZuCVdF
         YJzDpnFgeUuTQFP3pgv3Njdnio1pDme6fgNJd21G20qLXIXzbFrI5E7ErUf7wYsPDFj+
         wZtRgWPL8DRFj8sjojVZsaKQkUVNSnrMqBkFr+0XNmhsLopl56cYkQw+KCCTAuCey/pJ
         ixx31+x+KuyS0UtIpFdR+nq+mEZdRkrzs7VWVuBfaoc5YINX14chk4REj05otmU1Vc5M
         JYZA==
X-Forwarded-Encrypted: i=1; AJvYcCX8e7DNwFnv7Dy6Ca2PmXGluEFpDgruAvRfU8kZCXDTLsDhnhqmSgwLX+2g+XUemNpHooksbLOiTKcxh4JW3vaybPbzs6Mrfptux08e6DOWlv+Kjq3hIsISVnP/AmrKeJsliULwG/EJXFyu6OI/bRxE4SJIREVPP1w=
X-Gm-Message-State: AOJu0YwKRui/G2mLH98O0WpZH+7vDzadxeq3MMksyVpmxnfoXRaIumNn
	HtkNDy6RzALmiqpIE72/TckjEAa/4RptnKMn/Oiv3btjkOY05+5R
X-Google-Smtp-Source: AGHT+IF4qoy4FyZNZ33sBu4xEJ8HsHgXiY6yT6ylLh0f4gldGPhBoCPwJwT5u2HAE/GzMi5jYzStSw==
X-Received: by 2002:a50:bb4b:0:b0:57c:f091:f607 with SMTP id 4fb4d7f45d1cf-57cf091f624mr3009163a12.29.1718727256750;
        Tue, 18 Jun 2024 09:14:16 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:1:32d0:42ff:fe10:6983? (2a02-a449-4071-1-32d0-42ff-fe10-6983.fixed6.kpn.net. [2a02:a449:4071:1:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57cb72e992dsm7870062a12.48.2024.06.18.09.14.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jun 2024 09:14:16 -0700 (PDT)
Message-ID: <10d8576f-a5da-4445-b841-98ceb338da0d@gmail.com>
Date: Tue, 18 Jun 2024 18:14:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/3] net: ethernet: arc: remove emac_arc driver
To: heiko@sntech.de
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
Content-Language: en-US
In-Reply-To: <0b889b87-5442-4fd4-b26f-8d5d67695c77@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_091418_626929_90BB40B6 
X-CRM114-Status: GOOD (  17.36  )
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

The last real user nSIM_700 of the "snps,arc-emac" compatible string in
a driver was removed in 2019. The use of this string in the combined DT of
rk3066a/rk3188 as place holder has also been replaced, so
remove emac_arc.c to clean up some code.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

[PATCH 8/8] ARC: nSIM_700: remove unused network options
https://lore.kernel.org/all/20191023124417.5770-9-Eugeniy.Paltsev@synopsys.com/
---
 drivers/net/ethernet/arc/Kconfig    | 10 ----
 drivers/net/ethernet/arc/Makefile   |  1 -
 drivers/net/ethernet/arc/emac_arc.c | 88 -----------------------------
 3 files changed, 99 deletions(-)
 delete mode 100644 drivers/net/ethernet/arc/emac_arc.c

diff --git a/drivers/net/ethernet/arc/Kconfig b/drivers/net/ethernet/arc/Kconfig
index 0a67612af228..0d400a7d8d91 100644
--- a/drivers/net/ethernet/arc/Kconfig
+++ b/drivers/net/ethernet/arc/Kconfig
@@ -23,16 +23,6 @@ config ARC_EMAC_CORE
 	select PHYLIB
 	select CRC32

-config ARC_EMAC
-	tristate "ARC EMAC support"
-	select ARC_EMAC_CORE
-	depends on OF_IRQ
-	depends on ARC || COMPILE_TEST
-	help
-	  On some legacy ARC (Synopsys) FPGA boards such as ARCAngel4/ML50x
-	  non-standard on-chip ethernet device ARC EMAC 10/100 is used.
-	  Say Y here if you have such a board.  If unsure, say N.
-
 config EMAC_ROCKCHIP
 	tristate "Rockchip EMAC support"
 	select ARC_EMAC_CORE
diff --git a/drivers/net/ethernet/arc/Makefile b/drivers/net/ethernet/arc/Makefile
index d63ada577c8e..23586eefec44 100644
--- a/drivers/net/ethernet/arc/Makefile
+++ b/drivers/net/ethernet/arc/Makefile
@@ -5,5 +5,4 @@

 arc_emac-objs := emac_main.o emac_mdio.o
 obj-$(CONFIG_ARC_EMAC_CORE) += arc_emac.o
-obj-$(CONFIG_ARC_EMAC) += emac_arc.o
 obj-$(CONFIG_EMAC_ROCKCHIP) += emac_rockchip.o
diff --git a/drivers/net/ethernet/arc/emac_arc.c b/drivers/net/ethernet/arc/emac_arc.c
deleted file mode 100644
index a3afddb23ee8..000000000000
--- a/drivers/net/ethernet/arc/emac_arc.c
+++ /dev/null
@@ -1,88 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/**
- * DOC: emac_arc.c - ARC EMAC specific glue layer
- *
- * Copyright (C) 2014 Romain Perier
- *
- * Romain Perier  <romain.perier@gmail.com>
- */
-
-#include <linux/etherdevice.h>
-#include <linux/module.h>
-#include <linux/of_net.h>
-#include <linux/platform_device.h>
-
-#include "emac.h"
-
-#define DRV_NAME    "emac_arc"
-
-static int emac_arc_probe(struct platform_device *pdev)
-{
-	struct device *dev = &pdev->dev;
-	struct arc_emac_priv *priv;
-	phy_interface_t interface;
-	struct net_device *ndev;
-	int err;
-
-	if (!dev->of_node)
-		return -ENODEV;
-
-	ndev = alloc_etherdev(sizeof(struct arc_emac_priv));
-	if (!ndev)
-		return -ENOMEM;
-	platform_set_drvdata(pdev, ndev);
-	SET_NETDEV_DEV(ndev, dev);
-
-	priv = netdev_priv(ndev);
-	priv->drv_name = DRV_NAME;
-
-	err = of_get_phy_mode(dev->of_node, &interface);
-	if (err) {
-		if (err == -ENODEV)
-			interface = PHY_INTERFACE_MODE_MII;
-		else
-			goto out_netdev;
-	}
-
-	priv->clk = devm_clk_get(dev, "hclk");
-	if (IS_ERR(priv->clk)) {
-		dev_err(dev, "failed to retrieve host clock from device tree\n");
-		err = -EINVAL;
-		goto out_netdev;
-	}
-
-	err = arc_emac_probe(ndev, interface);
-out_netdev:
-	if (err)
-		free_netdev(ndev);
-	return err;
-}
-
-static void emac_arc_remove(struct platform_device *pdev)
-{
-	struct net_device *ndev = platform_get_drvdata(pdev);
-
-	arc_emac_remove(ndev);
-	free_netdev(ndev);
-}
-
-static const struct of_device_id emac_arc_dt_ids[] = {
-	{ .compatible = "snps,arc-emac" },
-	{ /* Sentinel */ }
-};
-MODULE_DEVICE_TABLE(of, emac_arc_dt_ids);
-
-static struct platform_driver emac_arc_driver = {
-	.probe = emac_arc_probe,
-	.remove_new = emac_arc_remove,
-	.driver = {
-		.name = DRV_NAME,
-		.of_match_table  = emac_arc_dt_ids,
-	},
-};
-
-module_platform_driver(emac_arc_driver);
-
-MODULE_AUTHOR("Romain Perier <romain.perier@gmail.com>");
-MODULE_DESCRIPTION("ARC EMAC platform driver");
-MODULE_LICENSE("GPL");
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
