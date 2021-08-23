Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60CAFC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 14:38:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C37260FDC
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 14:38:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 2C37260FDC
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i9Tynn8OPz0qupg2EDoziKnDs3RlAyQM1zPQDnXjevw=; b=PQNunijHfIvZz/
	oxEP6WqJhDe1vk5JspHE0k7LvIaFDPrEh2lx0+hElhMF9Ns+SPYhJ1bceT/bxIvql5OtH3Tp2yynt
	fFzWbx4JbqfyA4J1JnCB60k/1s5tyxl/shl+/YC8gnn2G0DezqnMkSQEUcGnM3tZxoMYesdXfMOZQ
	kxiw5c0pDXNEnTo+IxKkWyr/+Bdl8F1eI7fG1cQiKAnKMy9I90c4+OqXFwzdE3VEnNtZLEb3TtdD2
	6kaAvX3praJDb0g4ioI7gFl6KztCLITPpZ799SGLTEI/P1DYdkj84PSJgNx1wOdNee9txlJVYZwoo
	ziWHc/47/9fsVXBeIsGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIB5b-00HGa1-IY; Mon, 23 Aug 2021 14:38:15 +0000
Received: from mail-eopbgr140050.outbound.protection.outlook.com
 ([40.107.14.50] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIB5W-00HGXy-Id; Mon, 23 Aug 2021 14:38:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nQ/bc0bT7sFG848lQ9zrb2GYGABu/wkPtU39SUADNiD0KRegQNe58pBVOdB95CsuFBEH8GE/MSGrHUx130GtdKSUPb6zmllxY6JP8E/inc+gb0Jj11SB84/pjnK3qxuwnB0lAzv4rHR+ETuGmW5wlGIUT1EuyE4SALJTPu6BQLRw7r8cUGEqDc3z6rMPWLEg7R5wexahjGylCZbgntRO/kGSYkoo39E2/qAashxBiP7b88knx/0jhBU2FQudM+bgu+nbiso2O91Kja4eprBLd9zrFe/G5Ta96n/FuX9RifkKTGldtUScYM54kjy0fM6ZYpf4Z/pKSE3S6wmDPYlTKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R8cpMIoWHwSDzb4iIqYAoq5D5VsP30B/G1kHippQ/vA=;
 b=kwxmKiuYgbwm6/RHPyTl5LHuDDY0KdS4EoBK5MyhVcVAeY762b7IOZQmsf0bgWj6RYinr5KO1CAUnKX4fl1kF8YO2nzlcSNunU+GBp7GGFFNo6AP1XRfoVTJD7hM178Cbc1buvqps08vE+QHRcrARkgtdY3JeY7oPFJzsRKUNo0KdNNME1W6NapLxeePMu521YsHCmK25XOhDHbneboZ1Uhr26vbxQjegUQfgI2giJJpOigu8Q7QCqESMiyoDguREujTxLRyvGNHWFZKMDTX85TcxJwjuyzT2QOun2As4B+fKqpcQglpdawUBkm9Q9N4GbO0LRVLSqq8XR4sAfxlWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R8cpMIoWHwSDzb4iIqYAoq5D5VsP30B/G1kHippQ/vA=;
 b=yrAVXQdUbRGB7LT0yWV1h6WMe9Ls4YHZtqQi+oKDeX32NAzAbOGuxMHcnkXYPx9v93+lZXO3pr16mebgl1d3SG9elNtMCtrhruKsxz46pJK1eaYo/BXG0IoFWjuF/91XoxsfAtqaWQlgBTrqEU4dVroMCiTvlojKk2yBoLcU9to=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB6PR0801MB1942.eurprd08.prod.outlook.com (2603:10a6:4:75::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.22; Mon, 23 Aug
 2021 14:38:06 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 14:38:06 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH] net: stmmac: dwmac-rk: fix unbalanced pm_runtime_enable
 warnings
Date: Mon, 23 Aug 2021 16:37:54 +0200
Message-Id: <20210823143754.14294-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: VI1P18901CA0009.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:801::19) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1P18901CA0009.EURP189.PROD.OUTLOOK.COM (2603:10a6:801::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Mon, 23 Aug 2021 14:38:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b8155f33-7fd3-4e40-d0c2-08d966439e85
X-MS-TrafficTypeDiagnostic: DB6PR0801MB1942:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0801MB19420633FCE4C1C531F81CCCF2C49@DB6PR0801MB1942.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1775;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: flD+FgqoLMgLGBC/FSRxPEOFy0eoMhoPE7IP+jqwFgTHmyUJlb5OV7MjtNpNf3hrLg98ZDDhOFbeKQT/VmV2XZj8K92m3zW03R6uXbRMdDH0ImBVcXAKxwc1o6T1ebvXdq7EMxjc3iTRJxwreH+BN2ip8TIyeeuCGEVGqxuq2IoCWBGAtY9cur3TX9BPqNFveYL3cmgXbtSGBf7Pan8TYW8XuvXUobqmMNeKAiZF56cCgKd8Ta+VZaiDOcyFf0kwCYZ8NXmY4TwIH63lyQmQP7bLIlV/c9xbLBkq1cH0zVfw6+0Wufxo2JAO0TkSErfkPUpn/vegwrFBB7FjF9lanc75SRMk3mpki9r53o+ArIBOjOcyyTsrZ3KaMLduqaQ8LbmTpNe2JHnl3BtS8EorbiVvoCFzwlaDEIY+sk0JAxkoI7hfQPL4MV06FqrSXBcjaL5eMuEQsNxXhNfoJlze2fGIfloHXp6Bn3/YZZIk3UBjKFkVAyIIud+iZ3Jnpu4yoEX2GvAEiRz7sVzyktg8dkI3XH3ARUpGer+A4Ns/vRF9SsUKmat3/MSgFLW6tO2NuhkR+dwXwNmpxD3ZlXgd7Q50nKz6utNE+z6BJWBfQ4pRyMC0tfFjSodJCxv/OUMaYOIKWqU6BxoYtwH2WNX3fJ0yQqiZOkK+H87qG2Ns6wx+4Kmhif7NPChR8iZ4G46dHQVNyk0bEqNp1zYIXKBTwQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(366004)(396003)(136003)(39840400004)(346002)(107886003)(44832011)(5660300002)(6666004)(4326008)(83380400001)(6506007)(6486002)(8936002)(956004)(2616005)(2906002)(66946007)(66556008)(66476007)(8676002)(36756003)(26005)(186003)(478600001)(316002)(86362001)(52116002)(38100700002)(38350700002)(1076003)(54906003)(7416002)(6512007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?s4zJOn4uBWQEpx6uqDLMRXUGzDtFaYWxpCggpO0X3WgqdQbPhTj66HgIMpiQ?=
 =?us-ascii?Q?EKCsxmPJspcUEv8VOc4B5AQuouARoG1EtzGbyeDlatNpQdfpTF8JGZVsU3tB?=
 =?us-ascii?Q?v5EyZxEhJhmiAN9AeibMzwaxG/Bl13OgxHUihG/ERy/ANfWjBuLQEp/7TC4C?=
 =?us-ascii?Q?MmwSEjSiNeX5zsuSU2P+pKnnTNSxQ/OMABzffS497dbcO5juIHkHoaXtFL2+?=
 =?us-ascii?Q?xSoxNReffsuTYJGCHaGyevkucmgQ/XwAKvCxx9K5DFb6r4LcHIl0ygISu+8E?=
 =?us-ascii?Q?mEmS9n2o8pRumjDOqrI0NN1BWvewhB0hFFTLtXCsKP9XLEWziL/OhcBYGMaU?=
 =?us-ascii?Q?mte+P7yc69iRo/t4CqfY6eMW9APyGyB573SYL6DXXp9sBvmaBypl5hnhMK5A?=
 =?us-ascii?Q?WF/zKMKOHotbg3fKGvo6VGhByUtmgY4iHQ9b1SCdeL87LylGlnrDZyrN6uQy?=
 =?us-ascii?Q?/JPpymfxrR4wFxLQQ9MfaFCcoYHrCxdBejxXmLCzUF9PJo7LtdV7ao1BkC8c?=
 =?us-ascii?Q?++qSS3ew1rYQeH3Nl4MHxYV3As4ztVkesBn6Np9X64XKOFSPgCAG8MVPJBam?=
 =?us-ascii?Q?BenCIApe2ARmae6u9Si+b6L27rPIsKbmcu27SnjHVgKDgtPe0N60t8NN1JJu?=
 =?us-ascii?Q?XORCqbtoiKA+i9CTib3zmR68ONCS6iVB5pzwRUhaXipCjdnd38TCXuu4yqPG?=
 =?us-ascii?Q?XB5seYxEhaDWK0uITadLv7c/vCf9Vcz2zUbjgxVb57YRatglQtW0pgTB8R7j?=
 =?us-ascii?Q?oLwHZ16UWIc4/Q4WXChXdWps2Or+TNljJOfMM1xdzZEygiHVGUfVdH+GPL4O?=
 =?us-ascii?Q?+EVumfCfrfbS4q1kIIz3GXa9YBg4vzUslXkyAYeqtzmNPo1pw0Bp002zSUdd?=
 =?us-ascii?Q?7NZ8qJmOI02WNWvRVT5OToeKIw5UCquXkbOknCe4yB5EeM55v3M+TSlIPNIL?=
 =?us-ascii?Q?AQGqrzIndKV3awsHHlBJT3oOUcI4rV7pkSUKgvoK77DnYQJ9Z4PgblXU0RX6?=
 =?us-ascii?Q?m9cGBe8V7x4R9JkiG5+5tON/db7Y+MnNoTIrjOijLsrSYbeoj9ezhx2SG/v7?=
 =?us-ascii?Q?q0kJkWE1odLt/nBUDagmtj5T+TFlWJSiG94qhxNNNAxggJOlqRgt/xk/VB/W?=
 =?us-ascii?Q?05hT1DdGHkKUtEoIOW+jwMYlNOIkJfGfpLBsqIheOxePlrsqXlaoZDeQ5Ffx?=
 =?us-ascii?Q?gnfoe7USbKBLwwGq06SAk6v1y/v/IRlCgyHyrLMolhulp8qiI519Mbp7J93Z?=
 =?us-ascii?Q?KQ7NXFFNs6XZsyL5LvHH6fmu64J8EamyGMJ8S46sdUOBHL8MGbqBOiEiYTkn?=
 =?us-ascii?Q?Zky1w6Cq21JnnYcj3vwSDhNn?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: b8155f33-7fd3-4e40-d0c2-08d966439e85
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 14:38:05.9526 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zPVRJdB/gC3dH8isJrlJliw+tLmKxTBi1lEpauM/1sNn9/HSbJzSzis5GqSxMLRKWSomRDj3em99Rt/Zt7BptxTSyaNhSBS67rKBiTcGtLs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0801MB1942
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_073810_665440_584284A8 
X-CRM114-Status: UNSURE (   7.65  )
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

This reverts commit 2c896fb02e7f65299646f295a007bda043e0f382
"net: stmmac: dwmac-rk: add pd_gmac support for rk3399" and fixes
unbalanced pm_runtime_enable warnings.

In the commit to be reverted, support for power management was
introduced to the Rockchip glue code. Later, power management support
was introduced to the stmmac core code, resulting in multiple
invocations of pm_runtime_{enable,disable,get_sync,put_sync}.

The multiple invocations happen in rk_gmac_powerup and
stmmac_{dvr_probe, resume} as well as in rk_gmac_powerdown and
stmmac_{dvr_remove, suspend}, respectively, which are always called
in conjunction.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 280ac0129572..ed817011a94a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -21,7 +21,6 @@
 #include <linux/delay.h>
 #include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
-#include <linux/pm_runtime.h>
 
 #include "stmmac_platform.h"
 
@@ -1529,9 +1528,6 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 		return ret;
 	}
 
-	pm_runtime_enable(dev);
-	pm_runtime_get_sync(dev);
-
 	if (bsp_priv->integrated_phy)
 		rk_gmac_integrated_phy_powerup(bsp_priv);
 
@@ -1540,14 +1536,9 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 
 static void rk_gmac_powerdown(struct rk_priv_data *gmac)
 {
-	struct device *dev = &gmac->pdev->dev;
-
 	if (gmac->integrated_phy)
 		rk_gmac_integrated_phy_powerdown(gmac);
 
-	pm_runtime_put_sync(dev);
-	pm_runtime_disable(dev);
-
 	phy_power_on(gmac, false);
 	gmac_clk_enable(gmac, false);
 }
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
