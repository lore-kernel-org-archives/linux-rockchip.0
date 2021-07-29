Return-Path: <SRS0=cphG=MV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E41F8C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 09:40:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A598861057
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Jul 2021 09:40:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A598861057
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v8BRozaqKvzQUNTlbN1VEzyc71YdBS763h35hQhdOTw=; b=JzJKLh/7R2hufk
	lnetRfmp+fXKzjWBVrFeUxVu6RZcn4brtlNyntWTqHWb5rPzfjknXQy8xXyrHXSkDC1yaIH+IUqro
	qxcWKywviKtqsfu9ryi0jOY1fHrV2RQzMuJhxFW4S4Oi9NzxOR9aN1e8ul9K1R3aDr3OsTjBwy8l+
	PfCs5ouMtTcRfG2vVAJpRhHmNIzZ9iUZrZ7BAS+8xzXymjhWyjjCSFaLkoicYlgUutjdpJXLl4IFt
	Li3Ne7aTUVmZNL/3wbAMw3bmwysO3XDGjlmeUK2aNSb4amp6NgXycWzo3Zf0sGJLWnqQUnqV/3XuW
	+lsjG9cvaIDWXy2sqn/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m92WX-003fyQ-BU; Thu, 29 Jul 2021 09:40:17 +0000
Received: from mail-he1eur01on061a.outbound.protection.outlook.com
 ([2a01:111:f400:fe1e::61a]
 helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m92W8-003frt-Iq; Thu, 29 Jul 2021 09:39:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kFRoZ74VUwbdIEcLuYB9BDKiKA0EutbCvxjgUVb9UvfrD3OUwEzAIumRlpMDN5UQqTRHmbMv9mNwM7nbNqgbBHpqqxASMMslBG/p9PUpIpi8it+XuCh+oH6n8amqc3nIivYviKtoEEvQ8bF6BsholoEFk7fcAIcPvaPVeQ1cCKmmyn5LgXGzxyIPeANkEmxdMI8iv16DXCqcThu6tp0mbhivyK/r/Mhw6xM/uYIEHuw9bgI2P37SB2gD4UrWjU0LegeXLVr62cibIwcxtd3u07HnZbjllfwpIMTvlHhr1rQmC0Tvh5B9D7THv8TyMRtBoa1rxHsXdjbixxmyiUAGHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NDIuIB38PU4xC2xgQoi/K9TO4SYXZkiu0tudwsbcRAc=;
 b=bXnhoVLpTRZO4CkdRD/TN0A8ar4R4kOiX45WvBEp17doUB6eLYVtUfp1quethvPWJfn191N3prGBnd/dMDCPUtGToCWm63jhdpMNdeyvX6koZyjYSKoqt/Iuw5T3tMJUunJsuuTocLIlLRTR24C9AfyOqdWA/PQxdiQkU9AN4PfW2qNpoQbuz46Bo2o+bLEHD0s42X/Zi6mTvlApXBAH8eTXYRreE5Qcvu92Xg0aMVoyOTUYczMA8EDliSENiX4+jaTf3Mtlm2UfQdFbamRnSPj0nDUSNFgq2/Mfk0OXEkXfdOQ/GoJOYcfxn1oXsaUbQ8cp3ae1Gv/QM5DI6vi3fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NDIuIB38PU4xC2xgQoi/K9TO4SYXZkiu0tudwsbcRAc=;
 b=Z7jNEjuVkCeK+C5lU+j3YX5qnHmz0mNk/hNYCYNpMtfrKX0oWR8S0yifopJNe3AC3irTkkxPtjNoL9oOI0+kVpmEeov/8aB/7j7xEWSMJk/X9MCzlxrAqDRVMIBO4ZLnvK//OydNxlkz3wEwcnPOrEsOYfuhNnVHJ3rUsDuX0zY=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB7PR08MB3548.eurprd08.prod.outlook.com (2603:10a6:10:4d::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.31; Thu, 29 Jul
 2021 09:39:48 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4373.019; Thu, 29 Jul 2021
 09:39:48 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Simon Xue <xxm@rock-chips.com>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: add gmac0 node to rk3568
Date: Thu, 29 Jul 2021 11:39:12 +0200
Message-Id: <20210729093913.8917-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210729093913.8917-1-michael.riesch@wolfvision.net>
References: <20210729093913.8917-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: AM5PR0701CA0018.eurprd07.prod.outlook.com
 (2603:10a6:203:51::28) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 AM5PR0701CA0018.eurprd07.prod.outlook.com (2603:10a6:203:51::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.6 via Frontend
 Transport; Thu, 29 Jul 2021 09:39:47 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 14d2362b-2413-42b1-6911-08d95274cea4
X-MS-TrafficTypeDiagnostic: DB7PR08MB3548:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB354876BF25F349B9C0DD2D4DF2EB9@DB7PR08MB3548.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7mfO8RgoySFi66Vx11+4N1cduQ49X6AMtYKTMCLXo55ace04h6iyAvMwMk/OfNRpf7gZMMzqYaWubuT/a9F1HRlE2dRa6Ml3jTzlTHbbPPGSi/0SUUgjksSjwbGSDggRLZo07WLqa58zft56SqeNbLooyjYT3ZjmUCxGpi1U8kNtEfqk2hjNErfHpY0cPiocWrtnNDwGwIWrpD2nZ+kqaWfTJAeRB42PIy8l4xU4wLpZxxgSWe2lZFwh4hmDvP7lUTvQUaOBdhiJQJREDZWqLpgcRP8RiWPRpK6fN07k2E7JECu+uCPLBJ3jDP5LiRKXEpWMauru7Ep+MdgoVnEzOc2/dKFxK89J6UIBftO8qiW780mn01GevYypa7EIm6JnTVwzMSz4Vy0FcFZIqfPYsmTRmHISV8D73Kr5+g/iA20C5bmkUrV7WGipWmcPPFvXf2dCzMaRs/ZSyn95iivaYO3H21pQG/izzjhBEnPamx1hb0DZHwrtk9ALy1PyvTBX+e4AylBs6YyeDFxObzDFdWNFEF796ZuKls3bsHLxZBP9u0XPFv9G4ijPKgOPoh4VPClFLw45eZnsAuxULFxxdKe0UD1D/thrEbjRA7ld/glTW21VvdVaYKkLSOueYnBk81hRu/DUjInfKTq9RfOQFN+pJGXmDvirvzhP1akPCfty/nUBqErSYqpxZp99qMGlFD3xPYjYGx/ZtN264L6JGA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(39840400004)(366004)(346002)(136003)(376002)(8676002)(52116002)(5660300002)(26005)(2616005)(44832011)(316002)(6506007)(54906003)(66946007)(6666004)(66476007)(2906002)(186003)(478600001)(36756003)(6486002)(38350700002)(1076003)(38100700002)(83380400001)(8936002)(956004)(86362001)(66556008)(6512007)(4326008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wB3m3CMmyIawFL9Z+NThqrYO/g/9QH2X2nMVblQDwcPhuBEdCBiDXjogE7H+?=
 =?us-ascii?Q?/Q0OCBxQ29g6qYyYFdfv3zaXB7nrou2vL0Xrr4+Ec+0+xsNEzE3O5XLC4FB0?=
 =?us-ascii?Q?zDKP25tVxQVk+41MHYPtd+Umjd73eLfgQ5oeEnvlb9zlqd1qicendfyaoUVO?=
 =?us-ascii?Q?FesNIaJcaNjbY9Rkpwbe8hTciCPdGb0UdbYgRICempJbtAcwhIUbBmapeb1D?=
 =?us-ascii?Q?RCQlw1rvRhMRG3Nq3yio6aFcoC9EpCoS/iyKUUTUNqh4snki78079yzi0gPZ?=
 =?us-ascii?Q?FkTMklP9BSOehCXBnmQXpakLoElaUjx3nuyBJU5h/U7edA3bSvo9hlNnB61I?=
 =?us-ascii?Q?SsyJ6CKGwBaLzq4c7uOgBAO6Td9ObLGi4JJoQ76GO5/qBUxwX1UOOjZPlA+U?=
 =?us-ascii?Q?Y8LUqYcUe7DCJS02kIJctKWFRZMs2JyMYWjy5UuqGvQvO/Es+3AzhX0ahdsm?=
 =?us-ascii?Q?J+HTtYdAGK3LI/8MH2S3fCnvD0Kz5UMqWhM4lC/PHOOgZx0mYBCE1Vc6riF4?=
 =?us-ascii?Q?UzkoH+gveUcbfROGPS/SgpGrYmnfDzH9oWWQMAkAH39wpFhyae+5NBzSKZwX?=
 =?us-ascii?Q?MVtTisHkhayDtI3RXF8UvZTh8anNfcwUz/XaE7tHsYWHxhmCHrPf35Hyzp31?=
 =?us-ascii?Q?WYC6Pp/0Yy3FtxBFh4BZK6B5YcCAKyIqE01RpdTBMLxtBHsr8E8sheVKw43+?=
 =?us-ascii?Q?ETLJ3VXF+oGf2qqwL2X1d/Dy4Urxe9KOB8Bls/lu0Vg+Tekmor5uVqUItObI?=
 =?us-ascii?Q?0BpKtUEbhTjv1cf6EM84uadhthAiKCXiIRBZImOttbFnQjtxAaWH/PPEZNEQ?=
 =?us-ascii?Q?k729ELAlHD5NDQKgvnpsnWN6dr3OdRdNDkE5VZtlfDAyEJMnvTgmYNWfJLyz?=
 =?us-ascii?Q?9CzhmvlyZI/MjhFnAEMJ9pMigENRb1agUtnhtngrLwGwHsFFqoOXWyQfQtYs?=
 =?us-ascii?Q?smOMC8O3l3g4rUnpgVlnS8ei6OUO9qutCK8MeQqAq06f/bdMPD5IWwOQWCpF?=
 =?us-ascii?Q?iUI9j6qr9Tej5tCBmqU/C48nbPJonIhZYMRRzZIs7fUdbc51a+e6ytYjQLt1?=
 =?us-ascii?Q?AZeUxSVv6D45WjRqo5RymgnAB9JQrMvS2g5kBWaPzKDfi0fTfDmrAwnu5Tv9?=
 =?us-ascii?Q?gCvFNNvQAhS7JKKd4ryr/83/80KZpTqMs9ql8ZCrg4/j37pEAgequbb4bS2T?=
 =?us-ascii?Q?eFuBWHjpwZTOsoObpNGV3kjV/o27Botgo2O2+Ad9Q0iuCGK6l09BS1s4hvTr?=
 =?us-ascii?Q?MuL000mWY0RYfd45V6BIAXcYwNWdtQCziNEe9aYtG84oaLZd3kWvrLwjYHzb?=
 =?us-ascii?Q?HpMTXvIqcyq1PmJ7+a5s6MOE?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 14d2362b-2413-42b1-6911-08d95274cea4
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2021 09:39:48.7600 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1olO8a2u9xwKJucqZPsSl/8JJK+X4eNF1jPyyLaQtHhP93aOCVeSqziLAPHiOLCTjna7RIThMUR/uXqzMdlJ/aAU3vT3pKh9/5opUiRAjDU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3548
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_023952_684452_96264041 
X-CRM114-Status: UNSURE (   9.14  )
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

While both RK3566 and RK3568 feature the gmac1 node, the gmac0
node is exclusive to the RK3568.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
v2:
- sort properties alphabetically

 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 49 ++++++++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index da01a59f6f26..2fd313a295f8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -22,6 +22,55 @@
 		compatible = "rockchip,rk3568-qos", "syscon";
 		reg = <0x0 0xfe190200 0x0 0x20>;
 	};
+
+	gmac0: ethernet@fe2a0000 {
+		compatible = "rockchip,rk3568-gmac", "snps,dwmac-4.20a";
+		reg = <0x0 0xfe2a0000 0x0 0x10000>;
+		interrupts = <GIC_SPI 27 IRQ_TYPE_LEVEL_HIGH>,
+			     <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "macirq", "eth_wake_irq";
+		clocks = <&cru SCLK_GMAC0>, <&cru SCLK_GMAC0_RX_TX>,
+			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_MAC0_REFOUT>,
+			 <&cru ACLK_GMAC0>, <&cru PCLK_GMAC0>,
+			 <&cru SCLK_GMAC0_RX_TX>, <&cru CLK_GMAC0_PTP_REF>,
+			 <&cru PCLK_XPCS>;
+		clock-names = "stmmaceth", "mac_clk_rx",
+			      "mac_clk_tx", "clk_mac_refout",
+			      "aclk_mac", "pclk_mac",
+			      "clk_mac_speed", "ptp_ref",
+			      "pclk_xpcs";
+		resets = <&cru SRST_A_GMAC0>;
+		reset-names = "stmmaceth";
+		rockchip,grf = <&grf>;
+		snps,axi-config = <&gmac0_stmmac_axi_setup>;
+		snps,mixed-burst;
+		snps,mtl-rx-config = <&gmac0_mtl_rx_setup>;
+		snps,mtl-tx-config = <&gmac0_mtl_tx_setup>;
+		snps,tso;
+		status = "disabled";
+
+		mdio0: mdio {
+			compatible = "snps,dwmac-mdio";
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+		};
+
+		gmac0_stmmac_axi_setup: stmmac-axi-config {
+			snps,blen = <0 0 0 0 16 8 4>;
+			snps,rd_osr_lmt = <8>;
+			snps,wr_osr_lmt = <4>;
+		};
+
+		gmac0_mtl_rx_setup: rx-queues-config {
+			snps,rx-queues-to-use = <1>;
+			queue0 {};
+		};
+
+		gmac0_mtl_tx_setup: tx-queues-config {
+			snps,tx-queues-to-use = <1>;
+			queue0 {};
+		};
+	};
 };
 
 &cpu0_opp_table {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
