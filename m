Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F37E3C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 16:19:49 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B08A660F23
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 16:19:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B08A660F23
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N/TG4+Pba1dBa6niC6USHwF117GpYxlrzTOg2DMgQ1c=; b=nvIL5N77CD5THV
	Iuw0IQWXYVc/dVJbyfBF41yyhoA/yYKvLW/U9imQfhAPxOstbn7ks/JlhiYNaJyXqCg6t1mjjMnZn
	VBRT3naVsCLAj7IrnPdiBN+uePoLK6DqjxoUkbmXvI/cFo6vKFfKFjv4S5GZzvQm66SvoM4h6PyTe
	0JafdIPv5EFlb8JaIfcVAnOm+ch/pljmdOoCQor4QGkYiwKSOktvOTZLJfupcG3uFhd6fqc7IKCgo
	Don5R5L/4XDAx+gLMQHnlVAHvZcTbhr64wNH03ABAsVBXgDVya/5rL15OJ4jwLkDRE1xL8qc1hHpB
	OXQzy1pKcXzO+SGQc0ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8mHZ-001ZoM-1i; Wed, 28 Jul 2021 16:19:45 +0000
Received: from mail-vi1eur05on2053.outbound.protection.outlook.com
 ([40.107.21.53] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8m9R-001W1i-PL; Wed, 28 Jul 2021 16:11:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HQsP6M15LmyPXZMAX30UZJ58MwEak9a81hDJKVzkN44qgjGKm0PWuCGoiWzHd6jUfdWornZR3IKBJ+1QU7MWKDEEQQCNoWqnz3SXnKRIofaG58e224Za91MTMGS7NfyjJUN1Up+x5R7/nYHWQ8XpJQRt52ocxFjcVRWX2owsUAfD49jJ/BeKRC8pOaq3LM22iDgOECVJePS80gcVRHZbTSj4VWlxlBDPNQMXaHbPTmt4zoLchG1HcaNvVzl8bjv8Uf6ix04+DOact49vI+Oyl3NHIn+IfrANAbjEi+ew/+e3YieRmErrZJqO7GLbO9aGKaJ9PyxygmK5NW5nAhDsMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w4A+99w74vHHvuLhnKCXvOdyjtkacxEou996/BWDRWY=;
 b=aegnItlx4IRed0ojAx/qcwm5UM4FiLdg6bQmkpWBUooDimO2z8zf1GBMvGMqyk5Qg9wfqqoh35Na/RJfRC0x1vzXY/wrRBheBdDaaIIbeTX0jywnPPKPpEL27SRT5D1oVlM2KXw6TFUvwYA27oS+9gfn9bhfvPaC6c1T4VIrPF64UZ5n3FCIIUxFQ4oAQRCOuCulTLurToYltVc6JRvsGE1TqHHERrSlbt6CdlRcXbex2UML6sKSgGqd9ZqaGgxkBqWRvDi9AoYwkKhNDFZRyY8DiRfEQiSI6nER4S0m9pBeegtwMtfiM6owF/7IN3IJcxFU1nkNBylBP56InIBsWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w4A+99w74vHHvuLhnKCXvOdyjtkacxEou996/BWDRWY=;
 b=Absh6Gi/JQ9FDYu+740hkSlAjuz7S62lNAJEHF1Vi8+R4HF9DEUD3ohra/r9gVrEhci5peUSJJPj0LFOTmKlY0WxBesUlExAKVsd3/x3C3SYMSKBmDYtnz6CM4aywYCSu9KENudXXTdQDg777/ppXMeW1l9bTKs5oxfhmQv+obw=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB7PR08MB3195.eurprd08.prod.outlook.com (2603:10a6:5:1e::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.28; Wed, 28 Jul
 2021 16:11:19 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4373.019; Wed, 28 Jul 2021
 16:11:19 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Simon Xue <xxm@rock-chips.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: add gmac0 node to rk3568
Date: Wed, 28 Jul 2021 18:10:19 +0200
Message-Id: <20210728161020.3905-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210728161020.3905-1-michael.riesch@wolfvision.net>
References: <20210728161020.3905-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: AM6PR0502CA0068.eurprd05.prod.outlook.com
 (2603:10a6:20b:56::45) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 AM6PR0502CA0068.eurprd05.prod.outlook.com (2603:10a6:20b:56::45) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend
 Transport; Wed, 28 Jul 2021 16:11:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ac6a3a32-7d0c-4da7-46d6-08d951e25585
X-MS-TrafficTypeDiagnostic: DB7PR08MB3195:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB3195633F41DEDC91008A816AF2EA9@DB7PR08MB3195.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AfmMoSzsMzm/0BaTqmXP7H07QKkthxqT0qTSWWXh8tUTqcfokbFcRo8My8lm9/o6NNSvK04x6o4rjroh4thnHwHs37ed+Dr17yFqgiP2sym4vF7W+QWFMCeoTvgYjZtGchHLrwLKBD6SX3w0+L6vNcmCxebfeC9dnC8gl7QBU2/I+PslsFyi+xg848FLRWT75Uh3yx15TdelE1rmKC1VwiNoLV85v56Zq7XeK6TDR9XutxDOj6WU9EoWvhdwo2KPVQetFesbHGP4lNaWdBBQkLfckqOTDf6+eiSk3o3PhtJNbdee+LkNEm6xJZGAhALQMeXtdP0i71c9nV55ZiqS8QCsUHXQ31aCIq6OMITTKOMO6SbLPIlyCSg8mx1Yog3pHs0wdz/g38mIsufh1gPtpYEnP+Q5vub0D6yfxc0sOyIFHrYYUmYcg/C6VZ0Rpph6H1PKqxmvELMT+qOXL1uoWT5TWpCKqFzZnkF+jCGzOgmXdzSvBIVfbu7l5t5SXuD5vbKp3zidqaGK2ZgDhVefoUMtlckQrviUB74mAwuOc4xPWv4hHZb8eEc7jke1pvRunaXX87ioEAQ6MhmtqVEChtgCd5oKTsw+JN7cnBPFKe9VC4l6lhlSDYoxX229xq+mxjBbmlB15OcOl2A6nHB67n1u/LetJQArfPnzoytua8AcApIlPc9v+rWQAMXfW34Y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(136003)(396003)(39840400004)(376002)(86362001)(6506007)(66476007)(66946007)(8676002)(186003)(6512007)(5660300002)(8936002)(6486002)(36756003)(316002)(26005)(4326008)(83380400001)(2906002)(52116002)(54906003)(38100700002)(478600001)(1076003)(44832011)(956004)(66556008)(2616005)(38350700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ureM1xIV3aRaK7sHwXE+0OFhxbr1E7tTS2Bp3K3M/ChgzxIlDnDdxYYZkkPW?=
 =?us-ascii?Q?BxTW9dodpC6/XyPZfFoaCO0uBtlolMYGtgk5Xq/oU2MWnMK23HY2sno19u33?=
 =?us-ascii?Q?vj2Xgneecz9pBM56aBjpRdROjiODJ4vI4qULux9Dk8M1Mz8gOeYXol5DQZYa?=
 =?us-ascii?Q?zZgeaSFiAJ2kH5hkQOa9kCu/+TmzxZ/Yw0TexsewMcrltfi6uGf++gozx5VK?=
 =?us-ascii?Q?wxRv7l8JBet01MgjI95Aq9zvQ5SkginHQuKf9KfXS1Sg1h+43yisPFq6v+wm?=
 =?us-ascii?Q?81ZK0IRWQU8oPlS2Mbyeal9Tbbj3XrqvedfD8/vnBBCE6OM/wCoM6EQLrHqL?=
 =?us-ascii?Q?rG7vQeRhd2mJ5CBCrVcQfKlClLtm7AIJwDAZ2Tv5NzQs/kCROe27dFajM2ZK?=
 =?us-ascii?Q?MjQkkALdpSOTB0BnTEMLTyCOY30p4sIPcHbJeGMvu8rVkka8iQWqyhyAD8aH?=
 =?us-ascii?Q?MfuRA4Oa2Fh0Z223hlBimRBjbImRQzNhkI39R8nOyRIGyyg7IF0byG8GytCL?=
 =?us-ascii?Q?Q4Fyqki4stZKOkDvBRcR+E5bh7fAjekvYhixfmRplT8TMNX9zStpWXycjPxW?=
 =?us-ascii?Q?tkT30D1aytLJvNAevxfHubnFlFLV/GkXMdUSUqssZ4AsoIHh2HwtTFzLIOVm?=
 =?us-ascii?Q?7KIFj5xnKmAJlmkBdxg2hIMHzpZTzAKthyhvMM9PReTKih3qa5LuZ0FMKCAI?=
 =?us-ascii?Q?xfdxX1EttOcC1Z8Scj/8pJeMhXrztufvIqM6X1KrCsK/LVBQcYNoDKUkmb88?=
 =?us-ascii?Q?TN7EQkGqGlk52clnFO2fjJO4nEO1tSXnToHCROqQKb5s+DkmlCsbIM2KzJ4r?=
 =?us-ascii?Q?asQghptsvV/eXFhxnM2zSWmHSkBHTaVGnCW3tf0oAUJxD++3dSj7HOvkqf5N?=
 =?us-ascii?Q?Mocypmr1+onfxKAQv2PbgTt073JFpq+fTgrxcyeO9SVzgFVlVIoWAJeKpjqO?=
 =?us-ascii?Q?/+XI6KvHgm7rGAaA9ssOjfSYfSMkBqWs415lXUKjnfUwkLQNvkRkIGU6oPMv?=
 =?us-ascii?Q?fvF9wMJv0mQ7sNZzr/u+GfNNgutA8H8VPBpkXW5dYtLeo7kcyCHWpIDBBD6q?=
 =?us-ascii?Q?BiSizoa2I+eCi4IRp0JhnO7wn6FGUM13ZZDwDvHTlQsUqvHPE1aJ19Lifsw3?=
 =?us-ascii?Q?n/9VGmLVQgQoNvvkoui8SXerdv6JFSEMT8ubJOCEkir2ygOnc9wXHM1UOdCs?=
 =?us-ascii?Q?vllNHvX3Blo0qcpsCFnB7rAgFI4YvW2FAS5p1bgMqt8HU7hB+RqmKBBTQ5pd?=
 =?us-ascii?Q?wF6EssDyPg58okQq7Huk2vzjtCWxVnqC6xkv6CEc64U2p1ztOci7OanrmFTy?=
 =?us-ascii?Q?YHjPQdZK55srCdq82OsyETUV?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: ac6a3a32-7d0c-4da7-46d6-08d951e25585
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 16:11:19.0271 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lquMnBzQmWkt3MwKRJSV5o+53mAi4KM2a2tJTLp86rGY2+B3Ck6+Lb9vfbrymfJgeQqvLIHOP3vRosZEjzb09yDl3hlUwbkxa6IiZOgGTiQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_091121_854892_26FA8EA8 
X-CRM114-Status: GOOD (  10.06  )
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
 arch/arm64/boot/dts/rockchip/rk3568.dtsi | 51 ++++++++++++++++++++++++
 1 file changed, 51 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
index da01a59f6f26..ec39a2c593b6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
@@ -22,6 +22,57 @@
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
+		rockchip,grf = <&grf>;
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
+
+		snps,mixed-burst;
+		snps,tso;
+
+		snps,axi-config = <&gmac0_stmmac_axi_setup>;
+		snps,mtl-rx-config = <&gmac0_mtl_rx_setup>;
+		snps,mtl-tx-config = <&gmac0_mtl_tx_setup>;
+		status = "disabled";
+
+		mdio0: mdio {
+			compatible = "snps,dwmac-mdio";
+			#address-cells = <0x1>;
+			#size-cells = <0x0>;
+		};
+
+		gmac0_stmmac_axi_setup: stmmac-axi-config {
+			snps,wr_osr_lmt = <4>;
+			snps,rd_osr_lmt = <8>;
+			snps,blen = <0 0 0 0 16 8 4>;
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
