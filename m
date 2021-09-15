Return-Path: <SRS0=WjyS=OF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E921CC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 17:03:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A41F56121F
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 17:03:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A41F56121F
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIML28THprnHA2Soa5DYFPljzPaXbPMKQuHppBXTDnM=; b=0qzT4DPgywkZjK
	f0IRxiJvcZK7xFG+PDwW8VOvfjRPgOgF1Zr/jMRmzkf7v+0G/yeeOWi1fKvX8KBNaED117/WFvMmR
	Iy3mWaz6UJwoj3zVbsGv0+wp39TDIZaoiij7VyWqTdfvXrwLGyD3j8VRKDMQCgPCguRtnDWsvzZd+
	htAM/sTPs8FJcNrHgtfdFj97/BZVud/83TRo0n86Q4PvKAS4jFdjkjCy9Ce0owfRR2CYrrO5nWv8l
	6gS7VRIY/f2VLNK07wTgj4OWQOIP8t81Rb3AzVQrcArElhz6kgRhiFoq3JCkihxPvLp3rj9LR0Tuc
	ZPp8VOMmVFy7QpEg6PQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQYJd-009boe-Ec; Wed, 15 Sep 2021 17:03:21 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQYJb-009bm4-5D
 for linux-rockchip@lists.infradead.org; Wed, 15 Sep 2021 17:03:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GHhE2CEo4pQS8JzddV7B8Bwg0Y4CMLXAkJEPJ32X8mAvUm/ftvzqxR2r9IKIA2Dq5/BJYiUcFeme/oyaun3KoatEcSWAnUpy8ppz2cgg3q6bfcvu3dj63O3Ftax1JkAk+nmYrNK9uWXPf+0vBdddNw6Qe5DIAo5pZC+HQtFt2OAjLN/gPvbFFLGij2QoOCg/4yFeB5tmkNVfLP4ovTN6DKADmEQyM5j+nDeCsgm10UjkFgA8/FNfPgSKRVWOASndtHH6nLxDnXqOgyaGzjuD/8j8XgH8uuGO14vcTSQ9MR+PiatN8+n0nHZFJiSTlVyEI+AxJLLAbWKyfgOHK5L7Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=IhuXPOOyEKiboULLW0c0dJtGcYrjHHuFZvF+4rVyP+g=;
 b=ezbvOEVCPBkpVHaPM5qqKBvKMPmsCL92l8my4my8aC6Rwu5gbmeeaavi3DtBAYHrVpX+H5MLqReUN+9xL/LiyUVgTg/45KqKxe+QcaJIuTzBx//j/MB4tZhfkFJp+y8eWA3tXbsHI5cWp1snOfJtb24jLklpUwH7WmrK9XvLFOWduN4u1h9kQqz99VK048QLhuRVVsYxfVQmDJlCyMpMsxrTwL1BuNl7Msa/LCnjAu1ySCH9VYONJHyVLFf5lnJ1g1JlkDemdLFUz/9p6iwB8h/smBa7GJGCWMekL8pC1zP2cTdTjzxTKOaz3N/aO/HKJxnC9en//K4SQPkD+ZKOyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IhuXPOOyEKiboULLW0c0dJtGcYrjHHuFZvF+4rVyP+g=;
 b=QtxK/OZJ6Wle8YiwklWEak1C8zKUIbteZymlgMzKKovRUghmplv0oubuqmdU7EFPJe8PSsM/OoqFxlRbzzhnyoydhAc4ezF6dMnACZgIyh43iPWDiE7Gw3yIfAA2eRuUvZh57VSKGDD1+M5By4NT5kmq8glm5GP4s5UC/oYxOVk=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB7005.eurprd08.prod.outlook.com (2603:10a6:10:2c5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Wed, 15 Sep
 2021 17:03:11 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4523.014; Wed, 15 Sep 2021
 17:03:11 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, ivan@ivan.computer,
 punitagrawal@gmail.com, Michael Riesch <michael.riesch@wolfvision.net>
Subject: [RFC PATCH 2/3] net: stmmac: dwmac-rk: clean up includes
Date: Wed, 15 Sep 2021 19:02:54 +0200
Message-Id: <20210915170255.30561-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210915170255.30561-1-michael.riesch@wolfvision.net>
References: <20210915170255.30561-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR0102CA0008.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::21) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR0102CA0008.eurprd01.prod.exchangelabs.com (2603:10a6:802::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14 via Frontend
 Transport; Wed, 15 Sep 2021 17:03:10 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9690be6d-6d4b-48f0-8646-08d9786ab29b
X-MS-TrafficTypeDiagnostic: DB9PR08MB7005:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB700533F28B49ACF944305E99F2DB9@DB9PR08MB7005.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:324;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tB5EIOkJVRMROoWojXagtN9bUJgcnAlAzdU5E/pN4TnJzN71kuAtnDjEZEih9palXPS7emTDWC1gT9/DufkiXwYXhu9pjvB3y4SjTep0MUCY5zJMrXF0Um+59XR4u4SLcgFLVxEhiSEuoIbVPpJiMV2PWn0Arc1jKdNBROBihqkWe5npvQeNHYN/KpnX2ggUhtrcyu1bsSWhKSR7DJUMLmB3MR0pqUbpn4QPkNp571nHE85/AbCQnjwijieDf9Dk31bz5pvbGbuBq92HbP9mRY/3roJqF95KS7InYV6sin+sYdnzrZsXcMeR6pfVO0BiQpMCdxqn6Fp3nAWMIgIa6zsTVWA9y5lnpe16we9xTt79fzC/hFhp4uKybg8Fbb3a/ySdK/cYDXCG3fQiyxWwp6+0BqXak0+5FRCTACsedpjzmwjRSLhjY0Hftgkl7DFqSMGJcoE2COC9Y59/aqp/c952TFxGAHZlB3c79Bcb1hrPbbRJd7r3kK5NUSqFTMV3anrdQs2wXuwtsQBOQzICa40r4ZEzWWre2jCkRgGIqSlOvcy/kevGEdFcYkrSekMbILL1S+1iC2MBmVIpYTqo/dNUHnFE8CwSevy6j00dVPx+lk1pI3Dog3UT/Q/xZoQJerVIvhNfbkWe55igAZbUiEGIw5zVj67iCcakqmz9MPnfDhINTuFzFembDsXucPLMKSnDD2O/is3oorqPEh4xIQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(39840400004)(376002)(136003)(396003)(36756003)(956004)(66476007)(66556008)(66946007)(6666004)(4326008)(8936002)(8676002)(316002)(38350700002)(38100700002)(5660300002)(2906002)(6512007)(186003)(52116002)(86362001)(6506007)(6916009)(44832011)(1076003)(54906003)(107886003)(83380400001)(2616005)(478600001)(26005)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?o9J2d3nGL01ShefIOA7RZhBUNtr2K/eR4XFFUbjaRwjZtN63M4QlTW+StFsd?=
 =?us-ascii?Q?d6eUKMW8AeWr/kEQvJPcw2JfPUE7Hv+aNEbAlDy6Fcf7wV2pCxuzyT1bNOXn?=
 =?us-ascii?Q?O+QYjzsNKJAkOwoEvh7z7XombHedAZnoAqgRMP7ni7ZgLiBxni0mq4Pazc4p?=
 =?us-ascii?Q?wHKS6z1Qg66THKrrCYflRlChN4HXQlaev+jiXDtE2KGfS6wCQtNAlMyXWaC9?=
 =?us-ascii?Q?oNFGsRFJlcbEYf5VJqvNUt/gBd5FnU9rfYYu++ZDMtA6by9rTQBfydMTLWQW?=
 =?us-ascii?Q?INkl6Gjziv3kv/CK3/AaNGl8kyI4yUOiokhiNr5PEpl4rHtCawzDru7qrOtt?=
 =?us-ascii?Q?+A0kvy7blR+snbjKrmNs4p8XkPuZBxayuh2oDldg++OaMwOmazknDb7LWXHf?=
 =?us-ascii?Q?dzngqVn2tAoDOWR5tLBHNZawme6fkwo3en8/3HQiRALVNcBUfr9DJ9EzIznS?=
 =?us-ascii?Q?nsRsohV0vnw/djWwcTjjBALm9yP/TXXAOwe1Qbw6u1z5YTeS+Af8YG2UOGxg?=
 =?us-ascii?Q?7/kLjCy5iWtnrcM2xSgtRZI0tAiiQDEqrYa0hjQ+P6USU/CmD0D01OrqXZBK?=
 =?us-ascii?Q?bqCLlRjrqbAu4sI8O2WHF6YqB2OHCNXXXSJUvUKPxqKBXlZ+TDGeLCSkmLeI?=
 =?us-ascii?Q?lKsY7sl4wSkw4ytBV4QGwQETdLm21HmTbxmo3T4BboRS2t6rye4C2VWt8Wh2?=
 =?us-ascii?Q?apGBSezwLc3mTrZ84Xv7biEItrjGEz/OVhWR3PYnjqD8TIe41+wF8uFyUbef?=
 =?us-ascii?Q?JgYq9GkwXOcTFwB4ZwmLqfPh1Gv4t7rxs+l9POpWk55I/rYIG7hIVASVeWh2?=
 =?us-ascii?Q?joBx9i9+WOS8slJBRHcGeJE12I+nPNpf8dQxWKDe3Khj7a8bn/G1PC2TyEcU?=
 =?us-ascii?Q?ppi9dg1+L4eZFzvNosahphMjn4jVH0ZojAelZ0lsFdal7jiZjAwMUx5K7mwm?=
 =?us-ascii?Q?GZgqXdM10AIH/0H0jYE917Im8EYX3tqs+ANZijuqAa6ez691hgbt37P2sFAw?=
 =?us-ascii?Q?qPlrFcZZyW4aSfVgWnXIhvVpN6cQZpHxiIF23fKa5IEH6tb4sYBDqhIf9yGO?=
 =?us-ascii?Q?mmjd9/l/fWKY8LYKVedY+WD4GQYBnuHPS+H69kYm9cKumNVZIl0NZISW/wrO?=
 =?us-ascii?Q?I2bOpXF7Nx3VPUq75OXpqe7VMAhK7iURtkVe/JvGFcR38a58Pt3+EdWhcZVr?=
 =?us-ascii?Q?RcvKSeQ0PSBft0cfmFAKw9au9MhRfzvxUzQBNwrUWyq3xGzXVl7DDqZxyVit?=
 =?us-ascii?Q?bqnSKx3DTXd8OyajtYud1FFJymfkqkPR1qQFjb4tJtrafFjlweTaaYi/FOLy?=
 =?us-ascii?Q?gnyoB0nRzQIUcTV9UhryzcO6?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 9690be6d-6d4b-48f0-8646-08d9786ab29b
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2021 17:03:10.9518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 54jircjlzIokVjoPZnVMg1UDcekVfwTslpizUQwJxFygMitSyvW9e3r2R2aDLkxe/8nng+w07WR3LFQzyp1XIBnYSrhDB1Am3VaDvco+BFk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_100319_223993_7383698A 
X-CRM114-Status: UNSURE (   7.28  )
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

Sort includes alphabetically and remove unused includes.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 0db8be543ee1..96ec7d73a74a 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -7,20 +7,16 @@
  * Chen-Zhi (Roger Chen)  <roger.chen@rock-chips.com>
  */
 
-#include <linux/stmmac.h>
-#include <linux/bitops.h>
 #include <linux/clk.h>
-#include <linux/phy.h>
-#include <linux/of_net.h>
-#include <linux/gpio.h>
+#include <linux/mfd/syscon.h>
 #include <linux/module.h>
-#include <linux/of_gpio.h>
 #include <linux/of_device.h>
+#include <linux/of_net.h>
+#include <linux/phy.h>
 #include <linux/platform_device.h>
-#include <linux/regulator/consumer.h>
-#include <linux/delay.h>
-#include <linux/mfd/syscon.h>
 #include <linux/regmap.h>
+#include <linux/regulator/consumer.h>
+#include <linux/stmmac.h>
 
 #include "stmmac_platform.h"
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
