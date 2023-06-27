Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9FC3C0015E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 10:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7DhV9mmF9twLWjCcUcxtP7EdgIdcMl0D3oUw6ZOCfg=; b=PGInDbQ9DlSI/X
	jfvCcrUtHdcd9PhhgFawqjINnRlPhFo1Qh0s+IxUHpLhHCXaVoGYQ6AlOprzeuPj2CxRSwF5n+gLs
	g0RvKkTY4cOKQljj8p/p3cUBsz0FhfHsexQE4Qp3/stKVgOf2bjcfP1uBGq7I8VvtTbg+WwgYgfEu
	moK8jp1qDfwKVAIhUZjhGTFrlVJlXx1yiam6mxseehSZEX8qGfEmiTPgLzbeyJZ3wkD8Wjuc4LxM2
	TjD1iuj+K9mWb0td53aKEZNMs1lbQV84stiZBUUhfeLR6EP9/SPA9Hw8Siu5RnwhFXG2Am2Vi7odJ
	Ka/8T3q24z0Q2AlXdFnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE5iB-00Cn47-1c;
	Tue, 27 Jun 2023 10:14:15 +0000
Received: from mail-sgaapc01on20703.outbound.protection.outlook.com ([2a01:111:f400:feab::703] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE5hN-00CmRE-2W;
	Tue, 27 Jun 2023 10:13:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VpKGrcP2zbcIFZ8uxKL0HLOM78FdvY98NeeVF1k+YrkokBMcCiAnnVqjhvufM/6bAZUvyFm1wube+thMBn5bd+z5QV+N8fbI0gk17tuM79dZgx82kQraakm3wX6quXbJooRZHDDSkPL/TFN2407nxqxsRisWByLcGOCTvNm8NrEZVSZqfncoDGKszK7SOQIi1igeD9D+5LjPgvshJJvMfkXBwOM/pbNr6pm9QCmFiqraS5dq10oi7UeOU/fWev145AK8BVjL+wVEG2aq49j/SIJ4vv5bGyNai9FDI94VQ7Cm50ezpKHhXBs+C6TIC7QBFT19YDMOaSFNTATv/whPdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A/rlOfquaMXUGdUWEb/wXMP10jxf1Axfdy34B3mLYfg=;
 b=SgkM7TPJd6g768l4lKP+hh1TGPfnbC1/q4xFGQl66ZRByoUsAnxhDlWIW4p+cr8OwrHJRdv7hTKWNZp5UjG19GE4RoDCf9jn++1K5uOwi24quf0pHWoLdcu4AG4FJ7yeWA26pQbPWmEie1TAqmy2eSwUdDNE+lYJNHoap0aFXtsAswqTCrgC+cwjBSpHT4+I5Tl247soGJYDovZ32sGGneesWGs23O6KkMBYcNndQHhZ4+0DS9ucIjUCgMWutZEDAJ8LrTtu25pLLoYVzbLS5rVcmj/S+906dnLgs4UAgJacoJc/Cvr2+guqdqFQHJ/UwmpvRQM+UIGeHU8Pe4VahQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A/rlOfquaMXUGdUWEb/wXMP10jxf1Axfdy34B3mLYfg=;
 b=Vs6G303aiOz3gasmAypJ7+xADoK0FvB5mFxU2YnFXZ9qMh57u4H37BsYwXpnBI4yaueD67cE6f5piiYjV746Q8yvPKWkotJDFBoGZMDMPzS1D9/560TMnGoLDsogmnxIMlWaZZ3NB2rZlD/lJVhw99GKt0sfMBgCnRqTLqM91FTYo3+6Pwv+Eo6SzqYh0VHpffv3ABT8n6xjIbAnmksXtgQFESxdsCAiCB1TpCUcHfqqJmGpkp2Jrrb99QPS9DppeC+27fB4DXaLygT4Ow5g12gIecsT1VzqQLS1yGuUv9ZSFiXoRaTp4CjS98Gl6GvCOH5yQDgIz3pOeUPdJN+l+g==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by SEYPR06MB6661.apcprd06.prod.outlook.com (2603:1096:101:168::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.35; Tue, 27 Jun
 2023 10:13:22 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6521.023; Tue, 27 Jun 2023
 10:13:22 +0000
From: Yangtao Li <frank.li@vivo.com>
To: miquel.raynal@bootlin.com,
	rafael@kernel.org,
	daniel.lezcano@linaro.org,
	amitk@kernel.org,
	rui.zhang@intel.com,
	mmayer@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	florian.fainelli@broadcom.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	linux-imx@nxp.com,
	agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	thara.gopinath@gmail.com,
	heiko@sntech.de,
	mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com,
	thierry.reding@gmail.com,
	jonathanh@nvidia.com,
	tglx@linutronix.de,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	srinivas.pandruvada@linux.intel.com,
	DLG-Adam.Ward.opensource@dm.renesas.com,
	frank.li@vivo.com,
	shangxiaojing@huawei.com,
	bchihi@baylibre.com,
	wenst@chromium.org,
	u.kleine-koenig@pengutronix.de,
	hayashi.kunihiko@socionext.com,
	niklas.soderlund+renesas@ragnatech.se,
	chi.minghao@zte.com.cn,
	johan+linaro@kernel.org,
	jernej.skrabec@gmail.com
Cc: linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-tegra@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 09/15] thermal/drivers/maxim: remove redundant msg
Date: Tue, 27 Jun 2023 18:12:09 +0800
Message-Id: <20230627101215.58798-9-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230627101215.58798-1-frank.li@vivo.com>
References: <20230627101215.58798-1-frank.li@vivo.com>
X-ClientProxiedBy: SI1PR02CA0012.apcprd02.prod.outlook.com
 (2603:1096:4:1f7::8) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|SEYPR06MB6661:EE_
X-MS-Office365-Filtering-Correlation-Id: e8f64403-7b3b-4767-0e82-08db76f7236a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +mM7JcDQXqn9QFU6mH6VNOol6qwQFfPYbo1CD7ZR8X/eqwIsdL5L2vPo8PKRqZ7VYHtsnZ1uTRg6j30QYH+fJ9krYhOH7+qZWgsYnYxd0pntKJpSu1fXP33r1VsLBnL87eUW5RTp5BP81Wa90NTLi3qVs1S2cSn9l8Bpq0wqERj73jrULCdqohO2yOi4kxqz4Iq5J8ZQbn7NC0dS28JmmHbMn02ga+TtXcs8f6/8X6CtxZAYc7qXcTJp4mwLjeeb5VzEvkqnyP0t/MC0q4/8UTER3zJyYVdKVhTDgZ0/doxahmu3WoWyCLsxan56ami2BjYKWK7Cev8Zb1sBhyo5s7kZR7kJyH5mhV9ebajfA0Vyt1G3y08fDhMrILUK9AU15qN+9IIkoN47T3UuuaiXTRRl3jLqeDdQ0XLPKMCMFwFTd6cBzNSCxskC66ihuCg2zqXHob5ddLZGmfmnLwvr+7Mua1lGYFi6vuhe8qqE0xiW4XQLU9Zc5JRUYRrGFmkY2ipVw+bim5k6Q9nVvP5Oi/4+jdK4bRCwDLb4dk0zCsFZcRIoLbaLromNv94bZV655ew6oIqu1Ws8zZjVvipJrWGdC3WUU8ULOLL3bYhcWP7DG8r1+nZsMFntO4yp/94JDhqwpkLZziQ474sr2ucLIw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(39860400002)(376002)(366004)(136003)(451199021)(7416002)(7406005)(5660300002)(66946007)(66556008)(4326008)(66476007)(478600001)(36756003)(316002)(8676002)(8936002)(2906002)(86362001)(41300700001)(6486002)(52116002)(186003)(38350700002)(6506007)(6512007)(1076003)(26005)(6666004)(921005)(38100700002)(2616005)(83380400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2b0/RxNi0stYjOlqFnzWHPnG7A8UnF/uigoQCEXI0IqRie8Oczg8AdWR6f5z?=
 =?us-ascii?Q?fNVxjjpTkMivNa/OHusPP5VhPjH59quSUwRHutN4wJ0eReT0m6ep6TfP4j3t?=
 =?us-ascii?Q?gnHph2vXP7FjGQN+jrlotAG26kyoBvFenpK9XXKskOGFCAsyEJcxqVX6VDjE?=
 =?us-ascii?Q?mGJW3oYk/9tNyuGD+NbsbPfQ+7gjzHlQh95PlYmNjn8WZkoG2rfHxOCvqEY6?=
 =?us-ascii?Q?iI6XLugjhaIQodqrsdq1R3lF3N3QCAsUTEgTboRnhy3XKnK/vpsQ6GctU+++?=
 =?us-ascii?Q?qXnxNUhJsIGPDRAfK7RRWcF3jev44fnXSB2N6ssq/26HN38UKC2byQgb+nrY?=
 =?us-ascii?Q?g59CqRU753pDaVdARiEMZTuBrWLb3eX04dJ6j95p9GMjn0/EUaoPRv4E3Qtu?=
 =?us-ascii?Q?lJtRgOVVlNfTy8+e+8ZDspWtFr95JyJ7ZgsKQq/KCGVEYhzN+Vyw0Xhkx+wH?=
 =?us-ascii?Q?dqXxHe6KXTA7LR9sVQBZ2LVVyG4/VyDQU6mBPwe6NZ11LQo7M8fKU7ygKXoJ?=
 =?us-ascii?Q?v9xnvNf3sYgWYBI0zyzHNeKFaVp5aPxNimoHtq9fyScZHFYfCpzth9/4Qsso?=
 =?us-ascii?Q?K8lr0pIXtIMd1V5ikgCUCjyg3Tmpp0kQlAtjt0qSR1fmRtK+whW2BgaRceG2?=
 =?us-ascii?Q?iCGCR1xcStnTGumaaOEXOksRqFj6aub13PCHZHgMuq0q/q3Ce70cv+J/kgbg?=
 =?us-ascii?Q?H5C8lLd1b7bH7zFb12r/KMsJdKVS0F4zQ7/vpgOTiTUyIDjW/TVnONnRdGQg?=
 =?us-ascii?Q?oY82Zsonkj/gGqrwWuTz+7RoAysk49g/uKcfdzuuX/yHaOfggd9lonpu+z+f?=
 =?us-ascii?Q?7vQG3oIOawLTCrShgK5lE8yUF6CZui2DyTnZtNSWGGQKsvD+k06DYUnf9MJ1?=
 =?us-ascii?Q?CYQqIIfDJ/ZzJhG7EUBdulwUVl4dj66C//H9OVutm2F6bWJdJhLHvtXK7e+C?=
 =?us-ascii?Q?P841hDecMo2kyzKVKHjZ4wd6MsOwe/1aRXWLwn60caGLORrOHWz48UoS1/nb?=
 =?us-ascii?Q?9wv8dfkV5jdiFpi+ch/ujppY5H18m5AKMMvjtDVkTU+Y34t/bHItqD+4TiaT?=
 =?us-ascii?Q?fbTfYsSTQD/Z7BbjKqgXTssh3GUxbjMz0gakApg27uk317rNbwgwiNO0hm/3?=
 =?us-ascii?Q?Zz2snXlX3+t3bYmN/XzcCPU5eZs46eWNqhF9vb6xIjt1DeaUwisREcTu9PuP?=
 =?us-ascii?Q?aNBt6nPACtt6bcERDOwRm/Vv/2MFHHz2vDh6Ox+kKkGUyEOu4KP8TXNFfobh?=
 =?us-ascii?Q?AuekmJ44vk26cRkrGRwWB+/ZK/aek6N95/uNyyQnaApkIVa/8oKvDQQt1fC5?=
 =?us-ascii?Q?0TXH9Kcg2xDp7CKh/Wtqr7XKCcm7Pt5IuJXSNri0xXXuYWQHLWfQxQyK3Y6V?=
 =?us-ascii?Q?9aoZ/WrtlorB8Ww7rEtdjyXCi7w5yBpX6IkUb84zqcNrIkODmWhHj6wcFj+c?=
 =?us-ascii?Q?QcVw098wtrBw5r4H8oSOzsVqq4vSM2bPYvoB68Xc/Eu5G/uBvx5SWExg8KeX?=
 =?us-ascii?Q?w6cl1f/MfJ5nvnky6a8bfuo4GbA1hk37+55fa/jov4Ct5HV+gvmtNec36GS7?=
 =?us-ascii?Q?spOjA7wTlKeQu4ISnY8bm4AwvXG0SDZQbMXo/SqQ?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8f64403-7b3b-4767-0e82-08db76f7236a
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 10:13:22.8007
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z+EDbV3y4YhZyahMEIWeyqXu6U/D+vZj60hwW4NZpiJExFeglzTLAfOp+I9F+MhT/grjSp8U70xqvC9uUrrG8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB6661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_031325_856762_7BB8DDA6 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
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

The upper devm_request_threaded_irq() function prints directly
error message.

Signed-off-by: Yangtao Li <frank.li@vivo.com>
---
 drivers/thermal/max77620_thermal.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/thermal/max77620_thermal.c b/drivers/thermal/max77620_thermal.c
index 61c7622d9945..73c251caa62d 100644
--- a/drivers/thermal/max77620_thermal.c
+++ b/drivers/thermal/max77620_thermal.c
@@ -125,19 +125,15 @@ static int max77620_thermal_probe(struct platform_device *pdev)
 					max77620_thermal_irq,
 					IRQF_ONESHOT | IRQF_SHARED,
 					dev_name(&pdev->dev), mtherm);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "Failed to request irq1: %d\n", ret);
+	if (ret < 0)
 		return ret;
-	}
 
 	ret = devm_request_threaded_irq(&pdev->dev, mtherm->irq_tjalarm2, NULL,
 					max77620_thermal_irq,
 					IRQF_ONESHOT | IRQF_SHARED,
 					dev_name(&pdev->dev), mtherm);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "Failed to request irq2: %d\n", ret);
+	if (ret < 0)
 		return ret;
-	}
 
 	platform_set_drvdata(pdev, mtherm);
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
