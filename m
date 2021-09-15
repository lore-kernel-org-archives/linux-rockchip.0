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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52B13C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 17:03:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0AB526121F
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 17:03:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0AB526121F
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+bnH+XSSz7XvgWHK+5YUG+P9Vy9ppgiS5PHggu5CE0=; b=w0hMr3LM9Ugh3z
	tSHu5k/Y5kl+gUArkqUEyfz0PWyPgVzWbXl3HjrAb7p5zIfPz8U5Ut4ILJi725zlvmCEggvaAesif
	j21sNQiBvIYfoJslSMvGgHcCir/hGClotoBJodgSiHGlx5o6S41HfmFNbZkD4lWE9xcFRLWuZkp5U
	L0Hvf+MGRoNoQX+MfTrmphMltb+ZGznfd9jZhIxivZSwPDVvCxBcNGDdn6hrVYSjZO3PTYi/GjX9O
	T7fuwGuBGhzmhymXVDnoyYPbpcJtPrTpE7V4K1VYa0fXA2NlXxsxQNDb6PaCy8SDXKKzSRxyYo5BP
	BhulqNq7IWZVWYlh60vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQYJc-009boL-OX; Wed, 15 Sep 2021 17:03:20 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQYJZ-009bm4-8K
 for linux-rockchip@lists.infradead.org; Wed, 15 Sep 2021 17:03:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hUicf6Oe/JKKs2moDFOhES2VMncDn5TTejkrOqWETtMqLsnGDxV4F7deGp2w6Rnx/MuyHBOfBnUIXI3btxLV4AaDUkbaholP7UU6/op/IHsRzhqjxwtNObb0Qf/kUic3yL6SI8bl+JNOhbuZQW7kDSL8WzRZbNnHn0nhFS4yqUXAID5xwt/OF9WD9AV3yWqzzcsuNBWg3RFpaH0gxBu0nLrzpPvEEfYYeFMvTPeMB7cTGZhJzExBoyxHpW5VrAAL2iz9tHESod2osABlAY7JpHPZIPvEqUG3kv7dN67hIq/tXuI/6UGY7bZXSwdywsgbbnRIkp4nvm261Bd72NIUEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=LEfteUfEDiKFVa+86lkR2BdsoVvBGOj6YoZt9fOflmo=;
 b=m8V1nzRci/93bU/hjarkldW4yNOUtth41y69qypSm7fgyDnppEsVCM89M8aqBJN2QdOZNkRTK/7Kmp/C19FNnGP3jn1dG6oCJ/HulV+MxD7epUwK+Tt3Kzf0iTZiilHHhrHOIW+L76cmntJTdp3mcD2VCHU2VMapj+hzrrGf0+8Qr5EBryEw7kMjlYyBGUGc7Vi72uDccz3BoRMBpnUuMgPbybTPW0rVR9huvC8c3X6TWbaUHcKbs/AMYPOu4ATh5Faudq10h4Gjat5BAh7PLLHlkRME6J9OBzmrKVroPj9ixtR2W1ZJabSRJhd2IFIgN5Biwha9WC7g931Ku+sa7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LEfteUfEDiKFVa+86lkR2BdsoVvBGOj6YoZt9fOflmo=;
 b=XGxtgzPo2XovR91T+RMV/nF+HTzETWtbpJ+1NuMxKhYF5saHsk7ing20ZfOTjTvJKbJ6tqz6ZkYPXMywJ1kgQtFhg67oVMh8ZMmMDgNyppDEEAeWomCbcV6zDx3gVpVKfO3Cwa3jdLG0RaFJOMuKTtFGS5XZyMpq3QOS1jcrQck=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB7005.eurprd08.prod.outlook.com (2603:10a6:10:2c5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Wed, 15 Sep
 2021 17:03:09 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4523.014; Wed, 15 Sep 2021
 17:03:09 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, ivan@ivan.computer,
 punitagrawal@gmail.com, Michael Riesch <michael.riesch@wolfvision.net>
Subject: [RFC PATCH 1/3] net: stmmac: dwmac-rk: use stmmac helper functions
 for pm ops and remove
Date: Wed, 15 Sep 2021 19:02:53 +0200
Message-Id: <20210915170255.30561-2-michael.riesch@wolfvision.net>
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
 Transport; Wed, 15 Sep 2021 17:03:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 58b3636b-3996-4427-592a-08d9786ab1bb
X-MS-TrafficTypeDiagnostic: DB9PR08MB7005:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB700584D4ED164157156C5966F2DB9@DB9PR08MB7005.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2gSzzvB47Xkx8hfgK7LMhj1l2DAd0hsPoq7tbqiv50qkB4650Dg3NYuKisJTkBnUPCCAZaplxYG7rbiduCWLatrocDtGQPyS4tX6t8wJgWBH2mp+k4TEOi41y+fF3MZznd+L/xZIzoyiXJuwX7Adb13xWwLk2B7ls1hUKhE0fbGn8Z4ee8zNgylWmVaIFQ+am7tYl27bF67gmHFmI3KwSnFqYNTaSebUkWHzMvzh7mZvbitqNvnMHaR+a11EUhtc3LAwNmDMtEt46BPCRj8jAcviYdCymCbkhq/eqUQOvFOJz5pMjxCXRA9ZqVOQod4kWw9Q8Lwjc4F4ZV6C/OlWtIg8aVCCV35wBQeBZbA26/OneiZWXXjp0JMYG+lrTJc6gjQBkt9LDYp5exs9eNQtpH6UvQI44/e5n0pizzJg5UiACWyZyfB4EJaEwVehR4sSbfFkoKjdnqfFA6b9p/SRzrBD35A08LfaY6HCr8AzoCOadaf4s+1NJGuV/UqRXB4ZjD2lDcZbkwSw7u9gOqgjoHxSRBQT5T+SILnUAOkbDYPBvDMyhCIbDi2LlS3/1TbJ8vvULYzLRtxFTpThhjCrtPVlbBmtEVsjkeKIvn1Az2V+fRo3JdVHbiM9DKM681WBBp2VwXmbU3IXn/MNMuptWHSBpdG2rFvEpnKLWwQ15GNWFSASBxoUxri3FOxwLMhiii2Czl08VJysI7iw1jdG8g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(39840400004)(376002)(136003)(396003)(36756003)(956004)(66476007)(66556008)(66946007)(6666004)(4326008)(8936002)(8676002)(316002)(38350700002)(38100700002)(5660300002)(2906002)(6512007)(186003)(52116002)(86362001)(6506007)(6916009)(44832011)(1076003)(54906003)(107886003)(83380400001)(2616005)(478600001)(26005)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9FdZiWwIbYgwjNQTVrQADCxEgoqbjJgv23f5WP3QAg5Tg1O5jxqRpaV2R3pQ?=
 =?us-ascii?Q?8YtsfwoEypPh3m9yM2wH7NTQZmY/DveflEz+HfwFEEon+pArOO8vqAIa+3Tj?=
 =?us-ascii?Q?UfTYOrGWaVMbQfznRsd3fE3QqrHd4V5jzTYrg98bTgwlt24/OCvPfgZ8JNph?=
 =?us-ascii?Q?kD03rrln/JiBs6SbEFpwrllVmWuSq++R+WQO6sFhGQGo/Cry2G7TRBqhWbzf?=
 =?us-ascii?Q?PGqGIhO2EuQJOIOMaTpGIAA2pWnWbqLbIO5JJGQUyatvxl2Px4Ifti4hQq54?=
 =?us-ascii?Q?tVmDRo/ydRALT3uWlapTU0IGVw2N9dJi3qA+PnL5W33PGZZgIWksjnYpP4ve?=
 =?us-ascii?Q?fTYLhnPLGXX1SWFriWQBidu7Uus3+k/YEbGQZsUMabWLvTFwwxIARSe19jPY?=
 =?us-ascii?Q?d5GLhNcQCg2h+/LvueDvejLts8nORglsXMbLeH5hCTMHrGWKSLR508OyjIbT?=
 =?us-ascii?Q?LfZGmEXJ/4EtvzNyOQeSp7S8u9uMbLjZzIqaABcoHak99AjNFBwJqfJgrlUS?=
 =?us-ascii?Q?n82O3pBqUwS2smGmN+/Yr0vmm937PGZW9XKtCku8FttvYjhPISNBIXaZ1iQ/?=
 =?us-ascii?Q?NdBhSCrT6o6Gwi1tYjgTGc4zMFvxcmkGCKcEI+Xs9UlqGYebJZMxIXWtodep?=
 =?us-ascii?Q?cquxqtD65XGIYRTwXHwuNsaIhO4r3Ld17RpcqZVccFmoKm24UTaSwgRjfzzA?=
 =?us-ascii?Q?01d0XoPXB564ooJDuDO/M2i0yOkpNU21fYVbCYUk6xGLtsCTnWA25MFkf1RM?=
 =?us-ascii?Q?tL3vtQuJ1OSd2Q1cQOwi06ZxNrAeeBt/49u2ICtuV3to9D7/08bL0SFoT7Gn?=
 =?us-ascii?Q?lhts0m0Yu43Y+GshMyH8uiz/9xfkWpUWYdrFByUj1B89If6hxYt469BcxWb+?=
 =?us-ascii?Q?aJT8SGlGY70Huky1w+2QjGs9ujXpNw2rmm6F8O360BKfuV05bF91dNICrenD?=
 =?us-ascii?Q?igj6Sh+NZcE10TFQ1CDv/05vrBMIEas8AHLT6kZbInSaVXl0co0fqRxY+FMy?=
 =?us-ascii?Q?UU4LPHb3VBY7/LgarNsQ+0yN5JGuLhdeQekvHLfc2ca+ECNAisGeccSpMg+R?=
 =?us-ascii?Q?pj63ce7HIqypX3IixZVT6FpEDin0goV6+pfH1yzaHGUWUjc1JqOQOcEDhgyc?=
 =?us-ascii?Q?VqDb4dgZdqs9blRY1D3QiE8s/iz0+j2B9HeGhbxsnyvRAbSSoFNgMnfrj3mq?=
 =?us-ascii?Q?146kKWkEJw+haYmxYhIp6NeYOJOT4BdRuvFtkqiBY8jRoVeCKgBTT5vUedoz?=
 =?us-ascii?Q?XXIgx4O+XGOqnvGvVEdQYrGLdfVcUO67OVTD+JxZubtt/80/dZKwPhjnR4cC?=
 =?us-ascii?Q?9/WCPHIRWsGb5Ie3mLR9VE1Y?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 58b3636b-3996-4427-592a-08d9786ab1bb
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2021 17:03:09.4387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Hw8Zcj4dsAIsYLUIw1o4I7C5Lq3FfNDs3AglBifmpp3GHVlDJcPUPTii1tSP8fKG7SnENJdlOBq5bu4g1ZxDU0xZPvGFWMKsLaxFKEtSYE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_100317_325872_37D1E7CE 
X-CRM114-Status: GOOD (  16.14  )
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

Make the stmmac core responsible for suspend, resume and remove by
providing callbacks and using helper functions.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 69 +++++--------------
 1 file changed, 16 insertions(+), 53 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index ed817011a94a..0db8be543ee1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -40,7 +40,6 @@ struct rk_priv_data {
 	phy_interface_t phy_iface;
 	int id;
 	struct regulator *regulator;
-	bool suspended;
 	const struct rk_gmac_ops *ops;
 
 	bool clk_enabled;
@@ -1482,10 +1481,11 @@ static int rk_gmac_check_ops(struct rk_priv_data *bsp_priv)
 	return 0;
 }
 
-static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
+static int rk_gmac_init(struct platform_device *pdev, void *priv)
 {
 	int ret;
-	struct device *dev = &bsp_priv->pdev->dev;
+	struct device *dev = &pdev->dev;
+	struct rk_priv_data *bsp_priv = priv;
 
 	ret = rk_gmac_check_ops(bsp_priv);
 	if (ret)
@@ -1534,13 +1534,15 @@ static int rk_gmac_powerup(struct rk_priv_data *bsp_priv)
 	return 0;
 }
 
-static void rk_gmac_powerdown(struct rk_priv_data *gmac)
+static void rk_gmac_exit(struct platform_device *pdev, void *priv)
 {
-	if (gmac->integrated_phy)
-		rk_gmac_integrated_phy_powerdown(gmac);
+	struct rk_priv_data *bsp_priv = priv;
 
-	phy_power_on(gmac, false);
-	gmac_clk_enable(gmac, false);
+	if (bsp_priv->integrated_phy)
+		rk_gmac_integrated_phy_powerdown(bsp_priv);
+
+	phy_power_on(bsp_priv, false);
+	gmac_clk_enable(bsp_priv, false);
 }
 
 static void rk_fix_speed(void *priv, unsigned int speed)
@@ -1591,6 +1593,8 @@ static int rk_gmac_probe(struct platform_device *pdev)
 	 */
 	if (!plat_dat->has_gmac4)
 		plat_dat->has_gmac = true;
+	plat_dat->init = rk_gmac_init;
+	plat_dat->exit = rk_gmac_exit;
 	plat_dat->fix_mac_speed = rk_fix_speed;
 
 	plat_dat->bsp_priv = rk_gmac_setup(pdev, plat_dat, data);
@@ -1603,7 +1607,7 @@ static int rk_gmac_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_remove_config_dt;
 
-	ret = rk_gmac_powerup(plat_dat->bsp_priv);
+	ret = rk_gmac_init(pdev, plat_dat->bsp_priv);
 	if (ret)
 		goto err_remove_config_dt;
 
@@ -1614,54 +1618,13 @@ static int rk_gmac_probe(struct platform_device *pdev)
 	return 0;
 
 err_gmac_powerdown:
-	rk_gmac_powerdown(plat_dat->bsp_priv);
+	rk_gmac_exit(pdev, plat_dat->bsp_priv);
 err_remove_config_dt:
 	stmmac_remove_config_dt(pdev, plat_dat);
 
 	return ret;
 }
 
-static int rk_gmac_remove(struct platform_device *pdev)
-{
-	struct rk_priv_data *bsp_priv = get_stmmac_bsp_priv(&pdev->dev);
-	int ret = stmmac_dvr_remove(&pdev->dev);
-
-	rk_gmac_powerdown(bsp_priv);
-
-	return ret;
-}
-
-#ifdef CONFIG_PM_SLEEP
-static int rk_gmac_suspend(struct device *dev)
-{
-	struct rk_priv_data *bsp_priv = get_stmmac_bsp_priv(dev);
-	int ret = stmmac_suspend(dev);
-
-	/* Keep the PHY up if we use Wake-on-Lan. */
-	if (!device_may_wakeup(dev)) {
-		rk_gmac_powerdown(bsp_priv);
-		bsp_priv->suspended = true;
-	}
-
-	return ret;
-}
-
-static int rk_gmac_resume(struct device *dev)
-{
-	struct rk_priv_data *bsp_priv = get_stmmac_bsp_priv(dev);
-
-	/* The PHY was up for Wake-on-Lan. */
-	if (bsp_priv->suspended) {
-		rk_gmac_powerup(bsp_priv);
-		bsp_priv->suspended = false;
-	}
-
-	return stmmac_resume(dev);
-}
-#endif /* CONFIG_PM_SLEEP */
-
-static SIMPLE_DEV_PM_OPS(rk_gmac_pm_ops, rk_gmac_suspend, rk_gmac_resume);
-
 static const struct of_device_id rk_gmac_dwmac_match[] = {
 	{ .compatible = "rockchip,px30-gmac",	.data = &px30_ops   },
 	{ .compatible = "rockchip,rk3128-gmac", .data = &rk3128_ops },
@@ -1680,10 +1643,10 @@ MODULE_DEVICE_TABLE(of, rk_gmac_dwmac_match);
 
 static struct platform_driver rk_gmac_dwmac_driver = {
 	.probe  = rk_gmac_probe,
-	.remove = rk_gmac_remove,
+	.remove = stmmac_pltfr_remove,
 	.driver = {
 		.name           = "rk_gmac-dwmac",
-		.pm		= &rk_gmac_pm_ops,
+		.pm		= &stmmac_pltfr_pm_ops,
 		.of_match_table = rk_gmac_dwmac_match,
 	},
 };
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
