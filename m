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
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA2DCC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 17:03:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9831E61242
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Sep 2021 17:03:27 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 9831E61242
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I2RWLI59UsxO+q9xO88lQ1Pvmjaj9Zfi2f8u30uNpPg=; b=RNHv7n8FJMm4zG
	OLCt2cdRlCgX+RRNGY6YD29cAw6Nh3uf0liDcTnFGwbmTp9J6SP4oNV93Z8si7K1r1Spup5MUEJ9b
	DVcHHfSq6qbj5HFMj6JSuLnuagkxaHbrXUCL+n4ww1scO78cyjnKYPIT2DxtxfRNKszGIQ7q4xsCN
	zBCDcCJoqMU6g9Vt+CiR6lsrirZTUbK52UkjJF2zOGscLsbUF5qnIOV9Tl7oXKxK6m1lLISLzUq0W
	u5t4JXEO5Ih16qcSDCd10phkePKwHI/EE3e0fRyq1Zq9/iY3FgSWOWGi0Fy6bpIg5mWLj+Pz+548X
	OXe7X2m15UX5NC0i3AOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQYJf-009bpH-F6; Wed, 15 Sep 2021 17:03:23 +0000
Received: from mail-eopbgr80054.outbound.protection.outlook.com ([40.107.8.54]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQYJc-009bm4-PD
 for linux-rockchip@lists.infradead.org; Wed, 15 Sep 2021 17:03:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e0OpVPxq2aJGPiRwLDQP8pQwRqNbd2AbIS6LCNdtunhHE4XSiUro9lh23ygBGatpCSpEYSECjNgNwApHmhcTQDGwkW7x8pSyH1vEBo4P/ERBsFS8Mt7RJ1spwutEgvvCsvlKMsxqEPTxfOAjiSpQajCx35TP83QrFzjj5xFIR+5Kn9AyQpIJxf9uKEqiN6ogYan+XV+A9daFF46svwYqYcbzY0UyI/g6fcRbwdRalbxJ/+dMDUbcHlwpkCuOj5WpENk/8f8RGc3CpjV2+MbcDDsPhumM6MNnSG3Wgbmi3u7ch8oEoz8x4ghQKFL8fA/hzGwoRmVJpWE4ugOVNJ3XMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=8w03m5085gDNwYtwfBaKIFOhlBrLkB4GPqbX9KiMcCM=;
 b=ErAxdJTgSV6kJbbUuuUAHgqu56/VpN/8hhNm8ubtHIF9xnvsr8+DAU+GoZ80JsKYeDQs75PyaNaxRmHRyigG2+bzMqurwWZtw7oY5Dr86mrgKhZSuDH2fZSQ71ev9wBkRPqq5Xf3a/h4FonHFdotuiRc6+Sme8eWP2G3s82XDEAsb+t+GiNEPGRNyLEfqNwfy58a19104Z+09G21+6GuQdsX7z8icg46iP6tLdli0mSilJjxzyTmQN8MBeJie3DLSJ1PeUf9jJQYXOoyatifodb8lVjWhVfLwLuD0NpUFI4z1lYFEkH7d5WyB4+/ON+YC7FkDI5pKj6OhvV7B3+13A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8w03m5085gDNwYtwfBaKIFOhlBrLkB4GPqbX9KiMcCM=;
 b=M1YFsyij7/Wl0lwr1S48fkXYlbBDD1YPk/y4jhrAuSP5LWavtaE1j2ZaHpbHR8x2rEVdZn34JbN3zBUG6vTAliEZdLSkVJ+MAQP7Im4O3LbAh/j2nKtjO91S58y9J0zkfb8bv6/ybYdQN/J6dkhQRWD1vN5wvGiGKr68jITtS4A=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB7005.eurprd08.prod.outlook.com (2603:10a6:10:2c5::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4523.14; Wed, 15 Sep
 2021 17:03:12 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4523.014; Wed, 15 Sep 2021
 17:03:12 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, ivan@ivan.computer,
 punitagrawal@gmail.com, Michael Riesch <michael.riesch@wolfvision.net>
Subject: [RFC PATCH 3/3] net: stmmac: dwmac-rk: use stmmac helper functions
 for clock management
Date: Wed, 15 Sep 2021 19:02:55 +0200
Message-Id: <20210915170255.30561-4-michael.riesch@wolfvision.net>
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
 Transport; Wed, 15 Sep 2021 17:03:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2d5534df-c8cb-4b83-9929-08d9786ab37e
X-MS-TrafficTypeDiagnostic: DB9PR08MB7005:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB7005FEAF3BBB3912174E8407F2DB9@DB9PR08MB7005.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:175;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1MtIE4SJR0pkY8xJrA0iDtowbXyAikpEr8VJAfF547DNaMQR9BY/T7wxTjfVUtioUmkkw18/E2KN7r1DghpGZ0wkxabv6Kud5skISFO4ILDTaj9Wfmh5lE5W43OpH009wEzD4CCsTC276Jxj0bO+C4M/NCgdlnL0rlNRmvV+AqQjLFlo3Ie3ZKw2C0GwWZO3uF5sS8//gjSXfRZFmrqpB8Y9G11ACVBy+1QOA1h63vQYpxtcaymZrSopmlKSBlcyEjpHmgYYwlzgRqPS7DqV1IJTKnTInMPy6qGrIYfE19W2cwCnOPSdfP0vHFs7ReyFauNdun5PdcE4F6MDqXhdKK0CKrQ2Nl1J7HWIWJtiNUpC1Uq3/3ZoO2Re86xLqcbkhvvZW44795i1OdwjGeqvRP6EMf6RyPGZ4TPDlf07RmlK9or3cRCixidFP3kpZgljn+pbirCWKQBan5mwXoHvBRPk5bDw08hrhpFDEoISaUEtkXUIi361kmXQxc17+eTnOehmZgDGdNt2A2odm/ws1sYbGObY7xQYvEOWWViDhw6IagoSwaP6UJ5SuWD6p8wIE2kR73ofE6+oSVxSOEJFQIYSjhEDxA0ViH0Y2jjDUJV+wyu4G64xR/AY4k8SAhzu/siTQb3HemDEhR39a9ih01jhPKpCzdfwi8AMNA+SJWFVJqWT8H3d7iyz+WhecilvVrQT7n/I5ahRrKoBU+IrDg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(39840400004)(376002)(136003)(396003)(36756003)(956004)(66476007)(66556008)(66946007)(6666004)(4326008)(8936002)(8676002)(316002)(38350700002)(38100700002)(5660300002)(2906002)(6512007)(186003)(52116002)(86362001)(6506007)(6916009)(44832011)(1076003)(54906003)(107886003)(83380400001)(2616005)(478600001)(26005)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?O72eBsjxJbCeZPNi4CWB0viOf+1XiniYpgOgj94yGi39zcSsCEl9LMM/RmWI?=
 =?us-ascii?Q?1nL1IM+7vezPqq2aLJdDD9y8iY8p5xegzu2AIDl04JDcHRjjnOPyynS/yTq5?=
 =?us-ascii?Q?kKVWhpwX7X8iczN0+DszIPWMfHEFo3o6md6/UtQexO1a79GW9fXLLK1Tcy/T?=
 =?us-ascii?Q?4uj8ZY6Zcbwz8xjovFLVAA7v3WCaa+Lgw85WDx3oQjaVrsCI8W7jEfQAehHv?=
 =?us-ascii?Q?peTsnhJfczmY7V6haPwS09bZcFtU8U5tTbIEfwwEgSKjRtS6pB695yIvvwEB?=
 =?us-ascii?Q?pnmZTrNhbYSpsrtLoS3ue/mb4i4EXZgdUDFHkuLjE4u3dQTJzAB5VCoSG3yP?=
 =?us-ascii?Q?cV73CVFJh31W+yWSrDYOX00m2UmFKpC0+eFxCIC/G7HS4Df+IpJmCRvjtjFj?=
 =?us-ascii?Q?u3MbghKA1n2DU6WTXh77Ig7Q7KGHCTxKdYgx2gJrZTqEkacNfPcXm4gaIzV8?=
 =?us-ascii?Q?bwagT46hwi2tfRZQsvHW3ZTo+d2oN+QQseIv4d5R1rx903omo5l/KEG0t8W4?=
 =?us-ascii?Q?9fN9hVNJPXm3WwJtcd3aHWxdFANciS1pRZQju9kZmG7Jegk7t4W2vUh5eUMd?=
 =?us-ascii?Q?wY4s940/hGSbEam8upaiSw5HHMhjwO8tdlMuoIidnOO+fb72P5bDfpS0GXcy?=
 =?us-ascii?Q?//8tkTjPsFu8qGLnk8DnvQPuvwof3g2ZOzaepnN6R5xNRrDUCAmmgyA67jqC?=
 =?us-ascii?Q?csCGFdzoKJDrzftd587DHdFGA62/L8MzwiQmgqtcQcKQ+yxaVdozOI/g/3Ny?=
 =?us-ascii?Q?pni9iu6QA4CuOv+M5tQOYrfWGMHp3JHdgiT8gCUTPVIbSXvCMlOJ42xJ3NH3?=
 =?us-ascii?Q?GO0FLGCHFWM+IUR4iYo9yPcy9wepsYD3KOlMOsm/RJv6d8jrbfXwydEmgypW?=
 =?us-ascii?Q?z+CnxCvJ4037Bsjra6XRg/NlWFouO4jQ1KHGIhfOiIJDXZbwiF/FhhwtP0ED?=
 =?us-ascii?Q?eoRsHAwqm3X764QhP0976ZdMlpTnaq/duESf38WD9XebKuMc1FNiy/bMdZKT?=
 =?us-ascii?Q?5T4DZXUeyKQGIZe1txSZrcm88bikCk5H6R8cYvzwCmrKmy3iGUqX2eHumO16?=
 =?us-ascii?Q?gY+Sg6/8EGh7qeKfkV2kmR8q2ojs5lCZOn3QUarHObMKKEAi+VrO3oa7WiBg?=
 =?us-ascii?Q?+Um8NCfwRjdugrj+KY0M77BKRv0kkNqXCEp3UgbVHRU4cRY8CQwrHvaLTcY2?=
 =?us-ascii?Q?nPrAWE3VPXnWJ9Hb0f9oAgNno6cN3/J1AalqHcn4CNK75Ya7byrMaQFkTkyL?=
 =?us-ascii?Q?ayxCQuaqsHeSLMexMvpX+BGSRvQtTJdMfY0RpSOgVWKhdJHkbTZEwvC+2Q20?=
 =?us-ascii?Q?ookhj91vk3aOaM1UAa5HDgNY?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d5534df-c8cb-4b83-9929-08d9786ab37e
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2021 17:03:12.3850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IIUcRSJxjWJaYMp+s2g5QCTlMPE/veRPvtowMRHdKhYdOeao0gtnpt8bweNgnRNOmWQpu6r3QeJI5msAFId1u07lVU/H3lantrYPRZHC0Vg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7005
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210915_100320_861996_160CD1C3 
X-CRM114-Status: GOOD (  13.24  )
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

Make the stmmac core responsible for the management of the stmmaceth
clock (directly) and the dwmac-rk specific clocks (via a the clks_config
callback function).

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 .../net/ethernet/stmicro/stmmac/dwmac-rk.c    | 38 +++++++------------
 1 file changed, 13 insertions(+), 25 deletions(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
index 96ec7d73a74a..0a66c3b589b1 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-rk.c
@@ -42,7 +42,6 @@ struct rk_priv_data {
 	bool clock_input;
 	bool integrated_phy;
 
-	struct clk *clk_mac;
 	struct clk *gmac_clkin;
 	struct clk *mac_clk_rx;
 	struct clk *mac_clk_tx;
@@ -1217,11 +1216,6 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 		dev_err(dev, "cannot get clock %s\n",
 			"pclk_mac");
 
-	bsp_priv->clk_mac = devm_clk_get(dev, "stmmaceth");
-	if (IS_ERR(bsp_priv->clk_mac))
-		dev_err(dev, "cannot get clock %s\n",
-			"stmmaceth");
-
 	if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII) {
 		bsp_priv->clk_mac_ref = devm_clk_get(dev, "clk_mac_ref");
 		if (IS_ERR(bsp_priv->clk_mac_ref))
@@ -1245,7 +1239,7 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 		dev_info(dev, "clock input from PHY\n");
 	} else {
 		if (bsp_priv->phy_iface == PHY_INTERFACE_MODE_RMII)
-			clk_set_rate(bsp_priv->clk_mac, 50000000);
+			clk_set_rate(plat->stmmac_clk, 50000000);
 	}
 
 	if (plat->phy_node && bsp_priv->integrated_phy) {
@@ -1261,8 +1255,9 @@ static int rk_gmac_clk_init(struct plat_stmmacenet_data *plat)
 	return 0;
 }
 
-static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
+static int rk_gmac_clks_config(void *priv, bool enable)
 {
+	struct rk_priv_data *bsp_priv = priv;
 	int phy_iface = bsp_priv->phy_iface;
 
 	if (enable) {
@@ -1296,10 +1291,6 @@ static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
 			if (!IS_ERR(bsp_priv->clk_mac_speed))
 				clk_prepare_enable(bsp_priv->clk_mac_speed);
 
-			/**
-			 * if (!IS_ERR(bsp_priv->clk_mac))
-			 *	clk_prepare_enable(bsp_priv->clk_mac);
-			 */
 			mdelay(5);
 			bsp_priv->clk_enabled = true;
 		}
@@ -1322,10 +1313,7 @@ static int gmac_clk_enable(struct rk_priv_data *bsp_priv, bool enable)
 			clk_disable_unprepare(bsp_priv->mac_clk_tx);
 
 			clk_disable_unprepare(bsp_priv->clk_mac_speed);
-			/**
-			 * if (!IS_ERR(bsp_priv->clk_mac))
-			 *	clk_disable_unprepare(bsp_priv->clk_mac);
-			 */
+
 			bsp_priv->clk_enabled = false;
 		}
 	}
@@ -1487,10 +1475,6 @@ static int rk_gmac_init(struct platform_device *pdev, void *priv)
 	if (ret)
 		return ret;
 
-	ret = gmac_clk_enable(bsp_priv, true);
-	if (ret)
-		return ret;
-
 	/*rmii or rgmii*/
 	switch (bsp_priv->phy_iface) {
 	case PHY_INTERFACE_MODE_RGMII:
@@ -1519,10 +1503,8 @@ static int rk_gmac_init(struct platform_device *pdev, void *priv)
 	}
 
 	ret = phy_power_on(bsp_priv, true);
-	if (ret) {
-		gmac_clk_enable(bsp_priv, false);
+	if (ret)
 		return ret;
-	}
 
 	if (bsp_priv->integrated_phy)
 		rk_gmac_integrated_phy_powerup(bsp_priv);
@@ -1538,7 +1520,6 @@ static void rk_gmac_exit(struct platform_device *pdev, void *priv)
 		rk_gmac_integrated_phy_powerdown(bsp_priv);
 
 	phy_power_on(bsp_priv, false);
-	gmac_clk_enable(bsp_priv, false);
 }
 
 static void rk_fix_speed(void *priv, unsigned int speed)
@@ -1591,6 +1572,7 @@ static int rk_gmac_probe(struct platform_device *pdev)
 		plat_dat->has_gmac = true;
 	plat_dat->init = rk_gmac_init;
 	plat_dat->exit = rk_gmac_exit;
+	plat_dat->clks_config = rk_gmac_clks_config;
 	plat_dat->fix_mac_speed = rk_fix_speed;
 
 	plat_dat->bsp_priv = rk_gmac_setup(pdev, plat_dat, data);
@@ -1603,10 +1585,14 @@ static int rk_gmac_probe(struct platform_device *pdev)
 	if (ret)
 		goto err_remove_config_dt;
 
-	ret = rk_gmac_init(pdev, plat_dat->bsp_priv);
+	ret = rk_gmac_clks_config(plat_dat->bsp_priv, true);
 	if (ret)
 		goto err_remove_config_dt;
 
+	ret = rk_gmac_init(pdev, plat_dat->bsp_priv);
+	if (ret)
+		goto err_gmac_clks_off;
+
 	ret = stmmac_dvr_probe(&pdev->dev, plat_dat, &stmmac_res);
 	if (ret)
 		goto err_gmac_powerdown;
@@ -1615,6 +1601,8 @@ static int rk_gmac_probe(struct platform_device *pdev)
 
 err_gmac_powerdown:
 	rk_gmac_exit(pdev, plat_dat->bsp_priv);
+err_gmac_clks_off:
+	rk_gmac_clks_config(plat_dat->bsp_priv, true);
 err_remove_config_dt:
 	stmmac_remove_config_dt(pdev, plat_dat);
 
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
