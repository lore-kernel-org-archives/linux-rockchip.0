Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 809A0EB64DD
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 10:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8CP2f0fdwG7oTszO+u4HqVjsInc/xsKMivbpOMQaNA=; b=1XV5y1t2qqu4Hv
	vc1zkb7ZnoKRrP0Lf/phNOc1a+RyP1GvU85+jjNsmtqgcFQLtoFuX9WuB4XHghu3nXFWG/H0oFPFV
	4Jgd9CdiBWnlagJ/XBN4kLXJZypxiI4kp7cJ1OaNmLniNVamjfSDT168PMG8v4jj//ERUA2ej1IYy
	qlEcPu5Lvl9nyCRSyKgCqiWL6HI0KJzlfwD+UfiPlfeFMJeMH3pwk3eNTxsdWI//qLLNX5t2y+OyS
	C51SzLAt9tiWbvz5a7lep3vGpg4fsgC3Da3i43NPJjCbGftuBqNOuWVorRgjdVzzpOMziuUs/szd8
	2PNNMBCxExU8kDEQTaBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE5ir-00CnY2-32;
	Tue, 27 Jun 2023 10:14:57 +0000
Received: from mail-sgaapc01on20715.outbound.protection.outlook.com ([2a01:111:f400:feab::715] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE5hq-00CmlJ-0m;
	Tue, 27 Jun 2023 10:13:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zp63x4tbMFhoLRrSwLIM4vQkaZRfESWmY1FL25jSccfreU7iCdBls0OONuP6itglGsWjZ8/ulBWOU2kfjzqkdOnTx04UKJ0bgiX7mdMOaoEeb+JJ1rQATAg2cTAY4ss9wBMUlaSyYoGqWhdjSf27WXUSljzPtBCfj2YKmpkjgx6/7O0vP2UxTr7jSQvQxO0gerNUWDl+ttVrd7FEtBqtmJDwLLlBIgCxqjUMYnDug+xxYhUrshoxh7yRAaEKpN1TmywxJFxfcV6kw/jXZGOamnowGGFH43/b5JMGyAUDfLKJ4/JJV4x5omeFvohZgJDkzszeqkaW5j8EMHX9gbEeVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uzTSIJYMmoLn5EIxLfmFq6obAH5S0cEnt6fbeGBq/3I=;
 b=B09ry7KoqvsU9xtenivdARiQ3nnei4wBi+iUW3ioc52f/FfERdFbYWLA8vcdILEvQ4mNVcjOyG++55EXIluLeV19kZcx3YrJNyhf1qFRSZZI1zEiTNrRxphAwcknwSU/zW4gSGzgTA0LH7/pnxTWmdfhNY0A6EpGyoDEufTHCRT5I5lAoQGCHHNFiUPU1z0j66l2PLX2XF5lMacclP9rfGP1Z5PvnsD3NgJQ88+rvaIRCHc/ZIVI1nWVufMDXym2HrBKrAR0rC9xWZjHWrJl/sfdULIwF4puHDzeHDdgGnhy+waBMW2/ALBYpUEUZMH6s9R5thUvFR0cInZY+6fRTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uzTSIJYMmoLn5EIxLfmFq6obAH5S0cEnt6fbeGBq/3I=;
 b=C/LCjQebgT1+A6XXsceWjXsh2zCZ9RKprFbAVqNWo1U+Hy4PfS5EAORNGMEJKj9edSmcJkgJSYMQ/5uMNt65LFIJ9JV5YeA1fdm3UuN3abJabk0wsh17r6/dLx4wTetJvWCHrDyCRW2ukdYVEMzJjT/BvYmbw1djGvOF8cM3cdoxtR3JRpUzyvDmRWL7ncY53odAoq3C12WxyYhQW/MQf/8l+s+mmy3DP7qoIG61LRCLtR7Nt3mnoPnOr7F3uS873x+c6+1Xa2/HYZAqTIHSk9gg/rxPLO3PXOzhmF+5MIIfa5H8Ln2Jjh/SlCwaoTrw9evoy5B9mvBj4MhuvDAbbA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by SEYPR06MB6661.apcprd06.prod.outlook.com (2603:1096:101:168::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.35; Tue, 27 Jun
 2023 10:13:47 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6521.023; Tue, 27 Jun 2023
 10:13:47 +0000
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
Subject: [PATCH v2 13/15] thermal/drivers/rockchip: remove redundant msg
Date: Tue, 27 Jun 2023 18:12:13 +0800
Message-Id: <20230627101215.58798-13-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230627101215.58798-1-frank.li@vivo.com>
References: <20230627101215.58798-1-frank.li@vivo.com>
X-ClientProxiedBy: SI1PR02CA0012.apcprd02.prod.outlook.com
 (2603:1096:4:1f7::8) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|SEYPR06MB6661:EE_
X-MS-Office365-Filtering-Correlation-Id: 5402f56f-512e-4cc1-d106-08db76f73235
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y2t0mD++ElLxRlT1696kalN1X/jn+r79rpLhP9ZV7+V/Q7h2bRxahuzGiwnmS/5ht+FtQOIAYYuIpm0xmbnf8bt9yvyA0wioGI5RjAS2IMgtFQp4JUyK/trN/FXRrEnscHF1KNZzZihQ0pgQ1Nzi9Hzbmc1vFZa4loY0ET3tQKS1SxTpu/vacsgf5laB+rYNwTK4eE3k77Ce3vAO1zj6pgi9mc0NnF55J6fNvoMK2TheIDUNJ4t06L5xtIRx0q4wXIlTYnN9Zf/hKjFTQlNYa04wZCk49JU4n+b9GDFwtBxYN4/CN/cdC5zUhpL5dfFFD1mi3rxgwIoFlGALwtdlPrrzAtZZ+ifAqH29wkrNPcp7Ezl/4QWea1edEiI/m6tFbX1piAgiCj9VKVTiEw5Q6Gjlzk99wwv7HxSwbeQaYOTy66ihFatedCf8YCtEh/UKXoZUZkw9LwUjUS8bZ0z8yVa2yhJQ3nom/Ux9xCvx7ZdcCcP/eHPM+cwHn7j1B21ChiNDhSRPRShwE60OxVNtkqPnRS6YSpkWQMUeYE93KgwMsYRWB+F00MNcdjwy2DyUoj2M+IkXx8anf8SHMFV234zhjrVjiOig1vWS5j+UbIbEpQo1qkSzO0Wuaw+8y7w7RjyNj87PIVjXCnaFZUkq3g==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(39860400002)(376002)(366004)(136003)(451199021)(7416002)(7406005)(5660300002)(66946007)(66556008)(4326008)(66476007)(478600001)(36756003)(316002)(8676002)(8936002)(4744005)(2906002)(86362001)(41300700001)(6486002)(52116002)(186003)(38350700002)(6506007)(6512007)(1076003)(26005)(6666004)(921005)(38100700002)(2616005)(83380400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NqgjzRpS15yjL39Qq69JLzfZ/znjmyiUZ8QX/WcpvUllDLHMfLwXQNOJd8LV?=
 =?us-ascii?Q?sz9U8BXvF1Ht3VYY/vVGGTw4kqyrQExbjEC0cXVT7duYKzmK2zsfp+prEaOm?=
 =?us-ascii?Q?L9gFEjg3cOql6psPkSC1VsJfNcGkIxYrqAAouMT7o6hx2Qdk7jmdHZW9pxz7?=
 =?us-ascii?Q?Cxahh9WA47i8rJUJQrVCPXyubkR/sma0SL4q5XUV/4yqQLKnSdTl0iYgFqLZ?=
 =?us-ascii?Q?tWhXZJkV96Gabz5VlSSDTrgLQgdQgSHzNeglVyoslM6LU8fXRkFSJ+Ql4a88?=
 =?us-ascii?Q?aK1TS6WdDTEWwh63lPRVLg7X2foDT1kHiaWyMacghi9pwhfntTcknG0DOAD2?=
 =?us-ascii?Q?aUv7OtF7Nhh52gOhPPKp7TkD/+QySL0kvfJw+UgAUiiYTu4SBCosTsfIY2Y8?=
 =?us-ascii?Q?hZv4Uxe0slDUxXHUDtIZ/rJ5iS6uy9lKpjw7oFjMAwefiznmx5PErgAIg6a7?=
 =?us-ascii?Q?B+8eWVtj5eZ1EAx1o9/KPfbncgSS/5tPBEcOkWlVDtbLX+SPr89n9RQ7DOXi?=
 =?us-ascii?Q?cRyptDBa2Utawu/5LAkMpbUiPj+BdB/tAuS9gUuoZ2SjpQ8SAaWWZ8lO2dDO?=
 =?us-ascii?Q?cnb6vzqWgkap0lQDidSbKACC+9JxQMai+/0FBCWOwETtnP2xl9p8Djbc1++U?=
 =?us-ascii?Q?5hxkEs1ed3QLcXe/c3toHB4FA9wHCUbhx+w71CWoTSSg/AbbyVFF0XSKUwrl?=
 =?us-ascii?Q?tl8bomSARJ2zOiCMFYcJ064kRmLt3PrmJdMEiMLzcCZjmce7K9d+rEgkmyFo?=
 =?us-ascii?Q?PahdRAGumEeXFaya0VCx6ybCfgS1YvnC2mTWTzDnaB9IeVIHA77qVh76Zhh1?=
 =?us-ascii?Q?MizWabQ7TMDYnFp33boEwvJVKc0VxzIqGq7mD4b28dvY/Pwx6cs7s5dQjSE+?=
 =?us-ascii?Q?KmqfxwNPjwMUDQsZ6YJ8t79KqGPT2T6kN0tkJvE/UrR17QHZxg9ELsJVhRhn?=
 =?us-ascii?Q?/MdsmLRyWp+FD0NEKjbIv2hQ6fpaWa2uGCYXBhfpMhLpOCb1UXpGRP7NJprc?=
 =?us-ascii?Q?vGz6V1uFaAyAmfflCM8noFCHpGfbTljIbmMy/WsDJeOWAY+tt5kM/htf/EoT?=
 =?us-ascii?Q?mcIha3xpUk5jlrtqP3Qnr5Nd4b0eZTfQhzwzlV4KPmaungN4L5FbRfL4qLT1?=
 =?us-ascii?Q?0FW06iP5unWUAtYG6NB8sUeK3W5vSs6TNzzdv9RHY9l1AXeHgCP2V3/wSaLB?=
 =?us-ascii?Q?RGpYWrXkjCJA31aaHVLuv72sj2PDRT2d7IDjl0CgzFWKYisC6gl1+UwuqHix?=
 =?us-ascii?Q?eF8V4PXf5A/OAlH1D3a/JLY630CcQ44BzYxf/q0akJf6/82yyYg3PLqGbyVp?=
 =?us-ascii?Q?rotMjRzUj45DSs5bPe6q3YqsPo5IQwZ1mVZbneVVK8dUs8flIWTFJ540pT5q?=
 =?us-ascii?Q?ev2CmCaA2ardxGy2YMw7wLITZknPcjs6kj4Y6UNUwBFUmtpFbpFg3bpY4zhl?=
 =?us-ascii?Q?ysKAPG2A3ZMPVY+em7atbBUJMqkPnmCieJYz1jXlbGf+QHb9de1TEcrILLil?=
 =?us-ascii?Q?yXYp/4p3xHdiGaeFk1FwpsPwKlGawTPEcvi1C8q2u9PHGLSwpJ64jtonw1NB?=
 =?us-ascii?Q?M8tFnsFvTD0XmkuWn7fgYZEBBxZbQqH9d9SdJ2Nc?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5402f56f-512e-4cc1-d106-08db76f73235
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 10:13:47.6100
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7xLunnQH6wpc4JCmREya/GgAekfx+GYHBiggC9ObTALYYx+VktQIp2lztf7BrT2LM9+wS6Zk5tY1ENWFzsDTHQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB6661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_031354_301035_E71715AA 
X-CRM114-Status: UNSURE (   8.17  )
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
 drivers/thermal/rockchip_thermal.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index 77231a9d28ff..e741f5539389 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1582,8 +1582,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
 					  IRQF_ONESHOT,
 					  "rockchip_thermal", thermal);
 	if (error)
-		return dev_err_probe(&pdev->dev, error,
-				     "failed to request tsadc irq.\n");
+		return error;
 
 	thermal->chip->control(thermal->regs, true);
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
