Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 024FBC0015E
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 07:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ULCa9FRRBJBndhEmUnPHrw1hBwdEtJQT37LZVO8f2XI=; b=f7Ja6xEXnbGSbj
	FKc2/f5/hf+wM7fQ+c0kXayOSlhxEnj8JwcMl6QMLbfA1e/1/8IiZFnwohPqR4YOJqu8aWU5KILjP
	00X/qBHk96RgqH3npghotlcvrOpT8rMrMxqTIMf/Zp+6dfwSERU9Q8+sbisIkujzS+i9J3TyFxQlH
	CPn1A1uQb8RTiiRLK6mU0zzVxyIkHveC+P3LD4p7FMfhwQcCh7CMZY94XXdWexbRad/zx95dL0DyA
	h2cGa/7dG2s+CwNf+RL4DF5YsGZah7EdwFw7SOtDcMtRM+RZHOJqYutspN7EjG+TSodzc8D++V3BQ
	Szyn6hsjKZKp1oKon3gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE2za-00CIrV-06;
	Tue, 27 Jun 2023 07:20:02 +0000
Received: from mail-psaapc01on20724.outbound.protection.outlook.com ([2a01:111:f400:feae::724] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE2yr-00CIHR-1B;
	Tue, 27 Jun 2023 07:19:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jlIrQsUowEfSE1W2d67znryTEuOGPPw0P/PqFUqcQkM2TnCfFaQ9M2/anJJMtwq7KTakbkYSbucPP4eenMipSFyqKLflKDP2iIU+2DLuJnYkWYgVddWA33cwsM60EO4KHIaqn1KrEQI+WixXVLHdquQxCnYosyBTdsds/aMeLIS1W08RTR4PupybE9AgxjAOxDkmEv4HB2MJAjKNaQGXWgx973118XpJmuymAFaVnRft3ZirjXMdg6FqUZau8UIeWPIURrLcUxmONwo15fFBUCH5gbEDeFFAmt6FnHxXXqXBKBxcI0vcCqmS71X+LgEkmQcDnTCCbAy+dlhsefkEzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9/6/GPomcj97CiX6Tq/X1JIri+6OnHfOyo5lzfljPCc=;
 b=bB90roR9ikCj5dTzw4HNXXMisZD6OADROX8IJj0XEoKQ6T9nNATwNWb9uJ8erNSmfr0hmiDsVLBRylUrUhJ8KjOxzKwHtvVN6G/WD1dgw5NQMrOIrA/H7QFw0wbSntmKObPhr1/5OceViE4KQHPgVJeXP09SvLB0s8KvrTO/paCbh19Zp+Jlaw4LjCvukX/8kamqWqflsD1oy4UM9yYbHs0FBsnxO0qw214bE3mowRIIMhgMpjNPezszKqkqPB79sxbrQvqiWsz0kGGv1ZgWTDXmOMQWdiEN/oZyJ8SUJXekYYQO5zVhFOaw98iyJuZ6WeAJaoJ/ShlPM7g2PcExmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9/6/GPomcj97CiX6Tq/X1JIri+6OnHfOyo5lzfljPCc=;
 b=mpAfHzLKibbJbTH6GumZVMk7WcPbaBM4XVZPhL7PBYX8HX9tuL8EW932+3QalO+SKNiocny80BMI8Bb2E4H+FsHTJKJYjlViI0E8LWrt0Y5WRQp8O1bdD4QI5aF8Ad5z1mKELaofbxY/8S/rEIibnxmFz196Qmygxi9hNB69ers6CQXcWFdGNUNNf6voa4vjHH4Tz0fzDw0lOBE5s5zm6KEKN/+eEDOLim31/J4zcozipTXnDGvIF8hZazoi5ON4JYNflQnnNJKKEF9wWxifbkv81esEo3QoxMhdRevQHZHW/w84mQkqCJCbDlDa2BV5+Rpz486iU673N0go9buubw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by SI2PR06MB5137.apcprd06.prod.outlook.com (2603:1096:4:1ac::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.27; Tue, 27 Jun
 2023 07:19:10 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6521.023; Tue, 27 Jun 2023
 07:19:10 +0000
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
Subject: [PATCH 08/15] thermal/drivers/tegra-soctherm: remove redundant msg
Date: Tue, 27 Jun 2023 15:16:59 +0800
Message-Id: <20230627071707.77659-8-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230627071707.77659-1-frank.li@vivo.com>
References: <20230627071707.77659-1-frank.li@vivo.com>
X-ClientProxiedBy: SG2PR02CA0098.apcprd02.prod.outlook.com
 (2603:1096:4:92::14) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|SI2PR06MB5137:EE_
X-MS-Office365-Filtering-Correlation-Id: 17b71bc0-d5ef-4d73-b731-08db76decd4b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KFnpnnToyKa/sU3217xLoF89878YeV5eNpIKQD/8OoYYXZOpPlLh+IAOdnD+rerirkUHurZOmBT8qtC0NmVa9xXB7KKtcc1N1DRDMhQqcvs6jydnXAlvj7VhAcTbdICeE19qaqMxN5M9MmOp8tiJHxl4CjlOMxdvhn041nLqBACK+q2Wx7ByTMDSpyPfnw7BV9QgEk+aPPsIH4bcCjveTpbZrQ2n2xst8X/HOn5ZuS+RgQK8EaIZD4i07WKSEGVYGndwICs+z8kB9HkUDeGnpJ2DhtBbwrQYcqmrY+CrKVRaAWZJwNCPav5OwB4WUGQUaCDoXaYUhlrEmj9zCZWBK64Rr+cwbrKbNIKeQowtW3TQN14LtqqTQ2V4/y2WZwksSfJ9TyGcg8ckRWawiSaIZaNB4dD9KASD5rESCaWusMCUsA2EIuUqFtxLpI3lVXePulChFGovL9BfRKZSNoQscBnTnC+dXE8NFbny9Yb2Ke+l5azbgNv9LxAxn8dLAz1G35RvQPsCnLaENJ6wnqYGF34hHRTriI5h8FbGzoQ4HhVbf/A1I73xGsFTJh1LXu5fW6quf/Pp8UjyPmsLGdS6juwF8jKo4Fungyt1lcgKMH98Vv+UwMH+zOorIy9iWnWm
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(136003)(346002)(39860400002)(396003)(366004)(451199021)(52116002)(478600001)(6666004)(6486002)(1076003)(4744005)(6506007)(2906002)(26005)(186003)(66476007)(6512007)(66556008)(5660300002)(66946007)(4326008)(7416002)(38350700002)(41300700001)(316002)(8676002)(8936002)(38100700002)(921005)(36756003)(7406005)(2616005)(86362001)(83380400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZVy8LkYR20MmowpUVfs9T5nt1fcbPsk3ZHkpw4NGalLkbtzyfOy1InjiraRa?=
 =?us-ascii?Q?pqxRC1aooxuTnYFPx1GluEa35p/LAPrq+mcUoh6++EWXOuabw6zonk5v8L2Z?=
 =?us-ascii?Q?4AGbMORfLYs+vHWl6GPjzSgdJBtmMru5Oa1l0r4sHZh6ghLrz7NOwkhnPqmT?=
 =?us-ascii?Q?/hHJd37oXIwk7SX3FqBmcXYpzAFbTZHdd04PbNCNrEwZpehA8TF5m5KbrtN6?=
 =?us-ascii?Q?hSbGnd4JC6uVf6mJO8P6QekfKGll1gl8lwRb//LalwN3LuynHEw/KyUvbsVh?=
 =?us-ascii?Q?Bl9LqppZ+40mbJdNFSOVwYs6SQ+j7wOtBeUPcSoJgfBIcNsxNovAHmrfE/gR?=
 =?us-ascii?Q?tr90EA7tJK7ZeIvHXys3+O4EmKuKecQ31kjELcn3JNXBRLx98CKhZ7YZjf8v?=
 =?us-ascii?Q?FAUsDtoEPYrRs4XTQwWyB0wuKaJhJEJHid3vIG3qwfjems8Wwf4yGsVRgGo8?=
 =?us-ascii?Q?FVfG0SNKBYr0GOr3kzNpI2/t20WlcTzaKEDFdO5WoP5vNcLDMXtzh8m8Imxm?=
 =?us-ascii?Q?GUDIfNpu6GrLdKOgkybdtRHc66h0az2L4y8ZDJ3diGYOQJcwRVsPh9WR5pUz?=
 =?us-ascii?Q?cx86W1OSedRJD/2F+iazBxgnJ65AInTSUkg+zYYJzejjd1IWQczO6ZeUssEd?=
 =?us-ascii?Q?ZW3yffseuclkYGE0iMOSpvUC+htt5hxxb6I0d/NBRx5w3Rj8mUN0QvkS0uYF?=
 =?us-ascii?Q?3t5zOl9VZZlBp7XzeOM2+wJfpRuSvYaN891FLGvGVAvOdhItDBnMx8tnRTkN?=
 =?us-ascii?Q?zYzHmfqvBD2uMDpRxzbfeNO/ZQIGNNvyCWNUiLTq1s0hJ+sBtMA3rFfrg+0Q?=
 =?us-ascii?Q?7T4evm+jILyvsI1YfroorE57BiuPMWSRdXNFWXoPNTxpUVRmENvTDnRsI1Yp?=
 =?us-ascii?Q?qdKDiDFz0tpEk+8wCO7pS4iwtkwxQsxEnKxOYHj+RE9QoB7Nhadc6Jnt/qaa?=
 =?us-ascii?Q?aS3Hr4+MrvX/bpjX8/USqdJ7Oiy95EQpgGsPPtVw/IKMWo6zhWmBWAI7vFGc?=
 =?us-ascii?Q?yR6EgpegE8adsntOKcbb7qMRx94G3/ADCU3hOQkozaKo1BooXXiJRhhPDWBs?=
 =?us-ascii?Q?gUaVS1XGY/zO64S2NMyhnB0vcER1GrdeiJbIeyeopCGieG++wy+7Rg/SExEL?=
 =?us-ascii?Q?BR8RspDGgCmzYLyNdiJvJUK7u9lRVIfWSx5WWkVSTpqRs1S1upbhMlOVAnpU?=
 =?us-ascii?Q?61W6tnVxVDGsi7TFtE+LnD2jHeMzIZhgdPbWb6ilKE6ilxn/Bx54Ru2B70AL?=
 =?us-ascii?Q?IH33YQUAVMwhONwmZTKo+r9O6wd1RML9BGbr9LuS00E1v8e4iR4nGPGAeDGh?=
 =?us-ascii?Q?38CylZIdpwMfHOaiYVPzSGyRb/Q4SS5X381bnx4aMjJAq9PRCbrUkNnlbGoZ?=
 =?us-ascii?Q?wp8VJ1MQOLGVVRDaNXpCKdw2ke0yVkY8AUcUTGMugYc2RYhPExgUz8BGiRFG?=
 =?us-ascii?Q?KssIP2EyRooBdm6ZvcOHvYwWju/o1T35T1ebpGHE9D693AZLvcVp5sZ9FT2A?=
 =?us-ascii?Q?QqOyIF4+J3uyTdWVFnwLs66ePeYPEYIlSWSgOYanqts/cHff0IlqVZ005I9Q?=
 =?us-ascii?Q?dTqTSOUIcId54i+Y46h/x3JZKNLQ9hdp24DFk0bJ?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 17b71bc0-d5ef-4d73-b731-08db76decd4b
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 07:19:10.3888
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: luYBpswzUHYjrXFuuZIsHbsqf6vFTh/FZgIOnW3rCM6SRCnjB6MSiQyEg1TrVl586JmeV82yvFnzfgUqTc38Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SI2PR06MB5137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_001917_445265_E7D3A264 
X-CRM114-Status: UNSURE (   8.95  )
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

The upper-layer devm_request_threaded_irq() function can directly
print error information.

Signed-off-by: Yangtao Li <frank.li@vivo.com>
---
 drivers/thermal/tegra/soctherm.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/thermal/tegra/soctherm.c b/drivers/thermal/tegra/soctherm.c
index ea66cba09e56..55966c0a2610 100644
--- a/drivers/thermal/tegra/soctherm.c
+++ b/drivers/thermal/tegra/soctherm.c
@@ -2000,10 +2000,8 @@ static int soctherm_interrupts_init(struct platform_device *pdev,
 					IRQF_ONESHOT,
 					dev_name(&pdev->dev),
 					tegra);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "request_irq 'thermal_irq' failed.\n");
+	if (ret < 0)
 		return ret;
-	}
 
 	ret = devm_request_threaded_irq(&pdev->dev,
 					tegra->edp_irq,
@@ -2012,10 +2010,8 @@ static int soctherm_interrupts_init(struct platform_device *pdev,
 					IRQF_ONESHOT,
 					"soctherm_edp",
 					tegra);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "request_irq 'edp_irq' failed.\n");
+	if (ret < 0)
 		return ret;
-	}
 
 	return 0;
 }
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
