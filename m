Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D983C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 12:40:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CECFF6137D
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 12:40:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CECFF6137D
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=wolfvision.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Uv7IqBp//u/x7wkrAN3AGXesdzlX8XEZ+81vXBylOE=; b=gR1VTkwN5r//h6
	eZJmhvR6vawJHBXId9d2x9sqWzz6TV76XjMZlcjNYgMAh5xObeNiJ8ClQ+mg8qTq8Czwd6Nw3lsks
	Hnznva8YjdkK3E7+Sk+zVy8jZBdmGwazZAzIyOcvKQZ0TJdgBd8pIXn5l2mZH4Z+ToHVc1YxSIep2
	CNa0PaCmG9cnmp55k6lt/x08Ta2U3xo05T3EgqIDo12+2z93v0B/sIucLseBnQmlb53zV67+7enz9
	Y6xs7wJLAlKrgMFXdMLOlMWW9vgOmx6Ucp9rN/t7khCsmlJkU3vSWKNbqFYS0eQDLGbCtPqoKVBRi
	77C3kQ4nkcUab79V/sVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mI9FA-00Go2v-2x; Mon, 23 Aug 2021 12:40:00 +0000
Received: from [40.107.7.72]
 (helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mI9Em-00GnwO-BB; Mon, 23 Aug 2021 12:39:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y+cOBdKFaYfq/B040wXzUIFh+RjuxtWG0og7sHVqrzq83OVbjz2xjEX4uxOELfi2FEV/vtZWFHv8qGzNuOt+H1yxECOBmS2ydow+8RYA7FfVIl/+faqazVPZHjl/YCjvIR1iIn+amYDxNZRt/Qd6v4uNNdbysFRSrEuwDU5b5n2FCy/KOAO50nS3H8mv+ycVE8IdFdaDk7p4WZy4JOI9jJHlwT5BWbNGA+QPs6cQ1LkqDbGW92QyZ1LPR3pK+RbTeTcQfdo2kGHOlVtbhTXs5KYjaiSQJJxQS1P6tjblJ+jgJhxabSpUJK33Yktd93ZlcJ1H2DKUv3rswEBkqByRFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9nFe8bemUM9jaGnFZFRLFYQY6oXgoPwxgUoFgCGr1b0=;
 b=KCRV0WRzRkFRem1L+/UkEi5R41qKSsnyE7eY+b9VWfZTDyzDtFkev0leGImcc9n1c0FfWTbq0w/pNlx8U00LbA/zNkZVCVKEFcN9tR1o+BB6ELMdNMSxXXPtEf6i9tPb3rgVkN7prRjZFqHK5QLV3rf6pvHFA5p0/lPf/F8/nmp502ZM2pi2M0ag2MniyOCDP2K7lZHVXigs3Dao28H3vrCkj+7Si7L9Aq92f5haZNTVOlVgyOfng3+cejxq9yQuJ3MAQFdVcPrc8J67/M4a4gWb8YlZnEwc6eZlvQ9sYB1+j9qNh2cx5x0LjMYxS6lOrrGkcWe++hVkwHRrE53aqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9nFe8bemUM9jaGnFZFRLFYQY6oXgoPwxgUoFgCGr1b0=;
 b=MqgHSvV7bTff7QCxYDGYumBjCZ8yrOseMUTKgFGbMKbtEMqTaYlaIWvMdHhW5yHitLa4Fhjk//2Jprzw5mO2OJ7u1dsl0BsMOk/UH8PTHc7FGGeDRK5eVg/utB76A72MC56Bxc5+xchK45Jl5Zq5sP/caLMdfgp7PoQQ4zQCqCM=
Authentication-Results: vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB6PR0802MB2213.eurprd08.prod.outlook.com (2603:10a6:4:84::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19; Mon, 23 Aug
 2021 12:39:26 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4436.024; Mon, 23 Aug 2021
 12:39:26 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Simon Xue <xxm@rock-chips.com>,
 Michael Riesch <michael.riesch@wolfvision.net>
Subject: [PATCH 1/1] arm64: dts: rockchip: add missing rockchip,
 grf property to rk356x
Date: Mon, 23 Aug 2021 14:39:11 +0200
Message-Id: <20210823123911.12095-2-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210823123911.12095-1-michael.riesch@wolfvision.net>
References: <20210823123911.12095-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: VI1PR06CA0177.eurprd06.prod.outlook.com
 (2603:10a6:803:c8::34) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR06CA0177.eurprd06.prod.outlook.com (2603:10a6:803:c8::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4436.19 via Frontend Transport; Mon, 23 Aug 2021 12:39:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 65e7f200-21fc-4fe9-4928-08d966330aff
X-MS-TrafficTypeDiagnostic: DB6PR0802MB2213:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0802MB22137B7C71C0B4F85317F24AF2C49@DB6PR0802MB2213.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:165;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HzUzYCu8HHBXW8weZcwb2ntiHWe6gm8sTI1VNDfNKC16xAkFUJ6UkCQXj+crNmcgZhQ3KSPvXRZ7S85fLsEQfwVkTGVhnmS5amr9o/zZjDQclorDJ3w6rXa1ZDULOOs0cGhK11C+9XDfShUM6Ft7ayK0AeWa8DifsAnfEq7k2o9ye7CsvIBymqHpSWLJ6MNdnZFfw1ulvBivSqlP0CJ/YXtXzw1doGP1nKHpRNJo9c7iimCVkGIxS/rqd8GOefWt+FqhbYs8nxCRKITIdGHpOxCop0Qblpg2dFALbgWI+bOn1Awv4uird+1uMwOfxycnowfFNTtZ3aK2v0deMQCb2k8875E+DajRxv25Alz8HG/GVfOkT5rufuHfaAOv4izRfM1m5udodwcmUVpzdALEMoyk//1JfqLhLn4tLRT7UE1RDZaqMf4qUn63gblkX0AhXBHPLobVWf5pBG3SzDSUO2Tx9CPnEjY6MnU76LJhJQLBOEhazCarL3HwzjtToTdQkqlW/eCaWSREOaX5EKNrFCrBaJz50x60rLXDD83dhT21BTdP2ggQUq2WlE/33Eg8BtdHcrANtsvazS1ZBU4vK1Cs0aUgjBo4b6zKgp5wb6aB29x3u111y1+Ssyd9yUFmnciQ+5K0taSFequsUrfFzWjB6uIRv4XNXztmnyjHU5r59s12r2JJtyyaC+4d9cdY2kXCFBF/dO7cFZD7jNyx/g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(396003)(136003)(376002)(366004)(39840400004)(8936002)(38350700002)(956004)(6506007)(83380400001)(2616005)(186003)(38100700002)(26005)(8676002)(5660300002)(6486002)(36756003)(4744005)(86362001)(7416002)(1076003)(107886003)(66556008)(66946007)(316002)(66476007)(4326008)(6666004)(52116002)(6512007)(478600001)(54906003)(44832011)(2906002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nfFMjeQ1s82cOT4dmJ6qwKm/cXl3IB0pLh9S48rxjK+yuefIsPYwWIPpUpKz?=
 =?us-ascii?Q?6tzeBmSPeI20YwyAP7nuWRzQsog3VvPsXoCZs75mqaJp3f9ncUxxMzcpfg0K?=
 =?us-ascii?Q?pY1PXt+i3vE5oDkIXyWeYe0RBfiehOy4UPqwByZWeOHQoVKH9aysTL+Qu8le?=
 =?us-ascii?Q?3aWNeCUBuehNNfXYb2sPb7W6LuxLfOfW85bNYC1EaE/forbwJneC9xtnSXiC?=
 =?us-ascii?Q?iueIY4KwVJcHVaG9Pjy1z634eDeGBk4FsIZIx/qDPBSZh+8cBkuyntBQi8l2?=
 =?us-ascii?Q?qXfkcyJovP/Jd0PE/lWW0FaePbbA9r09F4275JFkAAR00MkcEU+wvUaDMdEy?=
 =?us-ascii?Q?I9ElSui5W3VfUEX8egtV+UWfod7NNzM7ocfvw1zRkvBN20IReeMLY7sFp4iN?=
 =?us-ascii?Q?hin+njXo2nGVfmeiSKmY+3SjeqDWSfONu2MJfjb00qJ9ctL+ZYsX779YW/TJ?=
 =?us-ascii?Q?tAnIij6ISScimhMshl691ekNaysUCX6esEdVBmVIkQQyj/3nDqj48qmlQTfh?=
 =?us-ascii?Q?HQXd2v8UAT0O+WW+RxnCyZo+vYQd3Nm4PqWwjG/IVnK9nT4rcbVBrndzeVj8?=
 =?us-ascii?Q?YNsz285W/jcX/dIkdSfiZjuMeawJtRiRNacY8f0M6WT7wZ7p0k67QooKRK2R?=
 =?us-ascii?Q?Ar00fBQh1rAzYwQbKV42kgcsT5LOT95DAo/US8XrDlYYunH7HvJpIPvvky2v?=
 =?us-ascii?Q?QWBsucWClmSF4fX4PclmsNoS+R2ssvZlvod51HcsEF9rUTpAr2I+Y4+q99Xi?=
 =?us-ascii?Q?pUlm6E3+Pzj1+aqfeHl2wlET4ykfZqi+Wo3YYABuPwFjU2BDHfP3HhxCaY2L?=
 =?us-ascii?Q?w/WLnceYORebuogOk6s7fxht/8k8udQXpysZJT4uIzIUm7mtB+1AAhwOJEMf?=
 =?us-ascii?Q?/6FWmQrKXjrv3K3L9AsLj2tk2b9T3SpM+jtAfnT2MRTt+7QyPLMscpR+xOzN?=
 =?us-ascii?Q?05f5zchWabzEPLvhr6Xl6rd4keVFJYj5TNp313NjVlBin/fi3u8qqE2ljmiZ?=
 =?us-ascii?Q?YC1F9AhNR24ujaqhTwBnCG/cMh2+BRZSlE/ph10Et10oD3MUe/g3nPpmIl+u?=
 =?us-ascii?Q?aawfS5/vfdV8WxH6I2QB4Ne671EcMIqaFH4aEd2F5tEq6wC9unfcZeQc+aF8?=
 =?us-ascii?Q?/+qp80so3qBYh4akc5Sg6wQz+/YSnu60wipTEaA5RkSVOVBkr5HckMLNlGf3?=
 =?us-ascii?Q?sAi74t4ZHvuMtreHGZOQV+7Qtkx5mwsW2nvqU9buQZp05IbsXOU2a9atWcJp?=
 =?us-ascii?Q?U0XdLsOsOzedOxUxydtU03aPsDyN0sSNxI0McoJEck6Sd8b5SKY5uf6IuSvI?=
 =?us-ascii?Q?mz7FUJxeInKkSlGrueWZj2yP?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 65e7f200-21fc-4fe9-4928-08d966330aff
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2021 12:39:26.5182 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vtwgcJ4HeXw1tV0sREc2MmI4+fjdXImsxjCpj/08RwSrExQb1ZqNP4egUkpNvlr5P8LzH+VAQxuNFMsvPgPFNksdO38OacQAwcDPBsdlatU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0802MB2213
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_053936_411191_B1D61DC8 
X-CRM114-Status: UNSURE (   9.07  )
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

This commit fixes the error messages

  rockchip_clk_register_muxgrf: regmap not available
  rockchip_clk_register_branches: failed to register clock clk_ddr1x: -524

during boot by providing the missing rockchip,grf property.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index 23949e79d8ce..0a1d07c96b2e 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -233,6 +233,7 @@
 		#reset-cells = <1>;
 		assigned-clocks = <&cru PLL_GPLL>, <&pmucru PLL_PPLL>;
 		assigned-clock-rates = <1200000000>, <200000000>;
+		rockchip,grf = <&grf>;
 	};
 
 	i2c0: i2c@fdd40000 {
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
