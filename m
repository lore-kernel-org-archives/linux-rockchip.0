Return-Path: <SRS0=H/Xe=M2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2591C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 18:55:06 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6696460725
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 18:55:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6696460725
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cNGA0xqZ33yP/vQvPVWPIgKTtKkH5Cm4gLi9pRKDUk=; b=wAa5m7l8qcvT7h
	vxsfvkb4jh8NBS3H+K4kG5kySY8Vq1+xww0ffphhyOhauwwh/9L1aWodM5Y9c4riOUmyulofXOyH6
	Tgm7bq25dQ1EwOzW0IsI28b2+OS7PsrOWgSGr8QWYhEbobl5LVQ7DxyLtQaxYFMvIcEEFADnUsf1O
	1SAqbMeClumQoJf51gCZoqjSXp26mVT4ff24T/9uRolWHI5hmHhP2xHlvRmzJ8X0Yprh4AnakiNBp
	Ez4XrQZnf6t8rNaUJ1gonjzvs774tZMFAii/HWu0HnjFsPWnNrvlo6NFhpVxgupJptA6ziUL0mR/r
	y4fYPYxqPSn64e1zQjvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAzZ7-003wdj-Hr; Tue, 03 Aug 2021 18:55:01 +0000
Received: from mail-eopbgr60078.outbound.protection.outlook.com ([40.107.6.78]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAzYJ-003wOc-BF; Tue, 03 Aug 2021 18:54:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NQ8cAp5GwIpbxRVyobZUVMb3vwQ/v/SVnBD7XeNLtV0qji9CA5enq1uxr3Tw/NJimYpguxL5Ii0v7X9PNNrL7+seV3j2oBmsjWqq0lcwFOSAhGyZEz3fT06z9hhpwizB4kmxlJejtF5EJU7sX/OPLQGsObMLvLjiVOQdMHzLKssQMrmTOztzYmZw/wxoUhkV6PlZGizd5Sxkq8Ff51W6wOC1Fdq5SGQrAUbyWTA+Cg9MqsT8X6dtNXYDZa+vHvyNGmEoGL8dcfBDgzgKNZvbENhFtvnrgnNtbg/eUpW7v823K5UlU251zfaneGWPMUWSpDWf+0RFvmfGxdZvs7HCUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KyifdTO5/PMDn/5puv67ufI7HpyTX1q0Om/ikDpYSKo=;
 b=mG3a/mGYd1mj6LxpXFqqwYM1gNT8Qfc8har2HJLDqPArPH6K4J9VVNnKltI1gswmmtpXzJZHJeKYMn+SPvPVDn3MfIny2oOddn/OqRtA4+2W8Oj0QGluYg8zi9D0/sgb8eZYIho6JDViHhDsl+ea2DleRJLsjdr7cRHSZNKDmJJQrlvsNikZITkcDD94AxxEpQsuPExYCPJWp75tPwkLrlFTlF0j/kYqNbbh5IYpPyZ1mC8WHEDGuAhEzGFgBZLnAZZ4x0w7QdcdLud7Q2QR1Ar2iT6C0IXPijnImvGAiuwAKAn1vDLFrJ4T6Mijsjpk2R9xLilFWR6nxnqhUJnyLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KyifdTO5/PMDn/5puv67ufI7HpyTX1q0Om/ikDpYSKo=;
 b=HoNO9UKOscYrrUgih06GyX5i3i1Vm3VisgX9QInxXQzxpQONfF0mtimAXTrKAuZFtw3W9ictKUFZm5yLeiDJMACip7vVzB0uckKkucCb2QMj7sWEDFl4+VNC38BgxZeky3jovFGLkCLbppgawFbvymjQopzeEAYgWhN++kLXSMY=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6921.eurprd08.prod.outlook.com (2603:10a6:10:2a5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.24; Tue, 3 Aug
 2021 18:54:08 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4373.026; Tue, 3 Aug 2021
 18:54:08 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Simon Xue <xxm@rock-chips.com>
Subject: [PATCH 3/5] arm64: dts: rockchip: rk3568-evb1-v10: enable io domains
Date: Tue,  3 Aug 2021 20:53:07 +0200
Message-Id: <20210803185309.10013-4-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210803185309.10013-1-michael.riesch@wolfvision.net>
References: <20210803185309.10013-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: PR3P192CA0019.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:102:56::24) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 PR3P192CA0019.EURP192.PROD.OUTLOOK.COM (2603:10a6:102:56::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4352.29 via Frontend Transport; Tue, 3 Aug 2021 18:54:07 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 163fb969-46bb-40f0-2d51-08d956b012d2
X-MS-TrafficTypeDiagnostic: DB9PR08MB6921:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB6921A04E5015A284C50E44D7F2F09@DB9PR08MB6921.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B1Ozucvvyn7cqz/FF82rXuHb/TvsKOWj4RzqH6XAro0jhCUT416OMtiwCyzjVFGQJ6od+eYwjf4TtWBt13glOeEpeX4V2qXam6CP9tKLA9nRClbGRmcAi9+xgpFL9iHOZAUatxcnD95mR8ByaaDrOG+DJp9U8VDq38ZiCzxsdhKRzj7i8HElSPipXUDkMHOmFQhzSPQUkuzZpjKixkMms7cxue6OB8utiAlltEre0M7lH2JlpI6Fgbkk8PUPpC2PeneysEid24NAyB8JFRCPkT/E1hMsxW1NbB6a7F5ZyKup5jGiF8ER6BzwH7Yl+ZKCy0V0owVcX0h66yo3IhdobvvIzsyezKGQrOXKs5IKJgjBDuCH0g1nJ7lEt0RpNAeLKxvAMTSIbE3yPYHh4bxhkGJuXx/yGZmjRsy5F8lf0i8eNB89WV7U4BNpLPl4C2acK6m0HaZ5cYHnXZsew5T7C3k2P/3IP1D4Uf/83qAPT1KNyjQmwdzGkTBfKxsKnpBITkoifBk9PtCwBJDLaeA3WRBgmJqJlDuAWKDXK+tjz47x8wr7jQnqu/G8sLzVRIfdxMSvDCFTiQwekknsBSF9NupnKI0q7ObYBSxwJDisEBxzromkqRjZujN+/rhAXY75Z/qqi7muc0/81ITV3GOR7hmQz+OwL4X+AXOak4+NRoIN7DAKXuAOK6y6DIsdCJ45pHJAwQmUoz5mmhFLQhGOpA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39830400003)(346002)(396003)(136003)(376002)(478600001)(52116002)(2616005)(956004)(54906003)(86362001)(66946007)(66556008)(66476007)(316002)(7416002)(2906002)(6512007)(44832011)(6506007)(4744005)(8936002)(186003)(8676002)(36756003)(26005)(4326008)(1076003)(38100700002)(38350700002)(5660300002)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?j2MiHRBiBOnnhezODmjPv0MQpeyCN5/VVjmkjETBkTquz6jL7rtmN6iHuNYX?=
 =?us-ascii?Q?1+xl549VRuQ16y6ZnXYV6j3Q7KbclD4wPcPCeoKnC5Vi6DiiW1t263aF1VNC?=
 =?us-ascii?Q?26uGYueEPTPF/RoZOGTBRlNLlaJRwSQliWt1MA3MN6BNuIzue1nsVG03EXUU?=
 =?us-ascii?Q?8aH9pcPbFO4Xyx0FQhEHj/ZVE+/s57ujdq6PXL8A5bZUe9Eviq+XhqTOgt8/?=
 =?us-ascii?Q?JX7BjTG6g+fCbABFDryhq4nVmFAAvwtP8jS4o1FZ2cZlIzgt38IK+TYIRIB4?=
 =?us-ascii?Q?dbX0Ewz891RpLoQnRVFNQsI4PDm8nMSKQAZvBgPlTcVuljm8J+rbYs2lOni0?=
 =?us-ascii?Q?YT+c/lOdD696Pwu0m2OmSxwotT/St3KWZjPffYRMlTBnjbv2LIoM+dZQGkt5?=
 =?us-ascii?Q?kEWpz32mGwC9dqIOMdt7qbNgMk5zYh42U+xDwgxyAAgJpdZSdzmpXuOw70Gs?=
 =?us-ascii?Q?96f+ZBEjxRe/5gv2eciZywS5C4q9xQc0gNN9BEsb5UbCWU1lO9y86uFFFzER?=
 =?us-ascii?Q?rW9C69BIFTECyKwHdpwUyLlHffw8kcdgL1ZZMf8vkYjkjq6yzrpe8bCk4QES?=
 =?us-ascii?Q?Nbhu+YzpxnRl52NBj8SgwL75m7cxNGnMHdX7YAzy2V+ToTsKfI7fyB2BVa5B?=
 =?us-ascii?Q?V9M3fmF0ziKSq+xqpXsT8O2mh/e/enhftckLrz1KW0q6bm2zjHwPgmjiHdCl?=
 =?us-ascii?Q?7rOqbwN8vmaV9WQ5msctfeCwX3F7GIDr0GSc/3n0nkjVSK+kekHbe1plnKQv?=
 =?us-ascii?Q?RAQ9Gi1zdyb1QCK8txf8YDHt3QEiC5G5dU1GBvRqSeGoiPab+IgTrKl2jdYg?=
 =?us-ascii?Q?083O3Mi+UUT173Scrq3Dc5rQ6I574Y/P8/Sp4oYpb8AFVrdp7iGDKftNSHhG?=
 =?us-ascii?Q?6UYAzGQp4hok7fFKEFI5KffoCkiEGkaEN5zj4S566zT3l+Op6QP2AuAGTFol?=
 =?us-ascii?Q?T2n+5U15cyYee9Oj2dq7jDU8BolhA83knC6dRu+Lrnt9sqlzZg7a6djVUEam?=
 =?us-ascii?Q?QfM5ZbDbWVI74SlzoI4oNwSKX3llWs8lL34YnllHzY3dmSNK9aYf3XsYKtgp?=
 =?us-ascii?Q?KP8z96ESGhH/QxZb7hkTc4lwexRJu0B+1zATrw2BTGpBRbtsUQI4+aNIEZg9?=
 =?us-ascii?Q?qAhG1sotJ0zopXS+4YnKmXZoucIHtMIU+vi9ftFaBmcZ74uNgOq1/olGM1YI?=
 =?us-ascii?Q?A892jarYkheNL2z+OqOI2Te5VLhqOJFw9/5kdHH7tDo8HfB8uYLv3z427e8C?=
 =?us-ascii?Q?WodQ+i1WD9gO7pHZ7WTGADShszJaYOsUmEhwe9mxKDI3n0AqVBXyLpsI2hWu?=
 =?us-ascii?Q?qShxRo9l2FSsels3RxKHiQAv?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 163fb969-46bb-40f0-2d51-08d956b012d2
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2021 18:54:08.0991 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: izIr9acynJiNnD+5kskXBJdl3D/Q2WV0FXYNIGI5AWGkQ57ec9pdaqRLhuTHSaigcCnSFYk4wB/IpoqRmL+Cs27Prjpdf4nXLyOnoRsicOw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_115411_431033_DBA207F2 
X-CRM114-Status: UNSURE (   8.80  )
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

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
index f682144a1892..f3fd4a6813a2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
@@ -330,6 +330,19 @@
 	};
 };
 
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio2-supply = <&vcc_1v8>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_1v8>;
+	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
 &sdhci {
 	bus-width = <8>;
 	max-frequency = <200000000>;
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
