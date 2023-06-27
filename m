Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 226FBEB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 07:20:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9WUNk8+aCPaH5TE9x1v/3TbBbNZKL7HiLaGzhv9S0A=; b=i2RL5AU0mD0Xyq
	jBJt8ymgXMHCi9KqZWpgJeF539lxpJ/kcvBKRGNUhVbzoj40D3w1xaDsNzGhRcUGOlGdAk3YzXhrB
	7SLbLyclKqb1gwXnSY/vRXI80ub19l56V3yJAzMADobHJgP37pgwC3JPRISEbvDW6Q2eDIJXx7Hgo
	DQpuR5foYHOZw9E4SBomU0BmnaeNHnSrkp6MCsktqWAIb36mj3XifmXtp6/QBjnGwYM0p/VPcjlRL
	7P7lciwasZXctrQ2iI4zRnsWZIVQmbCkp08RQ3tRSp8k5VxDXrUafpbp8AWRGXn0SMGNlUZ9pPpgZ
	89Ylijf0SRPGiVOEVu8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE306-00CJGm-0q;
	Tue, 27 Jun 2023 07:20:34 +0000
Received: from mail-psaapc01on20726.outbound.protection.outlook.com ([2a01:111:f400:feae::726] helo=APC01-PSA-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE2zC-00CIXH-1R;
	Tue, 27 Jun 2023 07:19:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRsdY0iuVvC2IfjjiAE3MKNJ7yQt6uhJqyA89NQz06nczGvi+nc5p1CoUDDYAc29N4PUp0d71iy6i1sRQgrXxgDS/9g/2ux4HvaVryXLVJmeV8AQDxDjE+nSGkhbBvriefTpLV+l8V3WHIg3RQw4rTjMM+VjwXZ8KwbNSH37YtVByvckpd0vCKtZiDqWQ4+Y2z+mzdZZp00bBvwDUSLqDPkQncp3vmN9N4l8hO9P6s+nz7r0ce7NlD2AKjwGfa5ZZbn71lljDTWUpqKhyBVp6pKZndmBxUkOBJcOHiQUvq2r8t3S/E24ODnXSLYJvetetE5nX6vCg1YOU+q6hUWMpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v1gQQy2LsLzxKVpupOl7l07DODTlYKrF46Uz2jsXo6Y=;
 b=eS/tZdcq/04ZLcdu1LZj4N3T/lW+cJQeiMuPBNEpApleOoA/51gwCegJOeWvkpUYhgNxsY359KrdrAEZg5s/j8uIVhmO616CFOAQmnIfOYRgfozuql1dnQF0+gXIHBl/XpWWLIX5Nv2ez2qHcW5zSECirPHVwuHpi06i6eSjsEMI2uYY8gHTGBSrABYlttLMFFoa8Lxs2JPdi1GqQhpj00JQC8glaQhSfUTog2KeDTzpLFZoOOxfbZqOWPfoMjD+hIZLIW33QDFX+Q3fx369HrHbUSSuM2a852kcWXdDbduNa6IqMBNH1/sVRCmBgNEkM51hT3+iarOfLFcOGP+Vsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=v1gQQy2LsLzxKVpupOl7l07DODTlYKrF46Uz2jsXo6Y=;
 b=bMqOk90DQWKU2ip4prgSaIcTJ/tl0MpVeQmeBZjKCRgWBWV5WElIMiZQeCENgZQ4NmhWVcpa2NHxNuTQQtH9pWVBjogAg13FZUl2UN0ktPP3MmP/ZYIc7f/JNFrLHG4z7ipgiCkZc33/z6Uh3Z78SW02MGZfBBzhNU9jcMfK+pPNnx7jfVUtW8W3T4aPwkpu5AwJyY/ZurA4KIXV4xOUG51zfIbf811skKb/Krwoz3tPncxuCwZAm3/uUTE1Rg4nxYL+JCJcGcqXswTRrYuDPCWSblyJ3qqw4+tv5xNBNWhhQJNbcou087h1WhUxlDRF71dkv0zAVJpvqYORfLnRZg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by KL1PR0601MB4289.apcprd06.prod.outlook.com (2603:1096:820:78::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.24; Tue, 27 Jun
 2023 07:19:32 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6521.023; Tue, 27 Jun 2023
 07:19:31 +0000
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
Subject: [PATCH 11/15] thermal/drivers/intel: remove redundant msg
Date: Tue, 27 Jun 2023 15:17:02 +0800
Message-Id: <20230627071707.77659-11-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230627071707.77659-1-frank.li@vivo.com>
References: <20230627071707.77659-1-frank.li@vivo.com>
X-ClientProxiedBy: SG2PR02CA0098.apcprd02.prod.outlook.com
 (2603:1096:4:92::14) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|KL1PR0601MB4289:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f51b0d1-8011-49f6-95ec-08db76deda14
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /q6op132s8e2iGNDI4sNScDlHEvdzhKJd9QZJ4xKJvd82NEWXs60rJqb/wmenW54fxAOdP40mhuV/G2Gmz0WC/3dW1LJy3DZ7PUnefwM9XQuu4hI5NA6w2p6uD2D6haSo0RLTCd8JdLlo7C1xx+PxujMW++Smmm3pZxJq08miflQPBUaXJhrQj66dEVHdgvdOObIH0K+17TBa+9QBNN3ppzrsItoSj3T3V5BsSUmLFs84q2kiQtJ66MONq1sAqD901Pt1LGhKfYOzrzpJ1+fEEFXkZ/irTFbf1z83HH9w9pzzZBtxvOEfBerUmmB05KQYEL9Mx3hJn9PzL0eHUHgrrnGhQehT/JU9UEzOVbbgbnxPHsqytsQIOyKOqPxtHxl4f2mLInYkZg9OHpSzsDnsN1yKxF+Jg+UwaBWlsCeuYwZ/2zFHTJYx8MtSAo96hFlCD031zzYaMmgTmXOqLXuLwiZ67XUTCEjc79zZThywk4BtLqMM7Goqooum/DwzvIK7SIljEiLgp3mp0eQ+FCNUPYSZRK6bDTKmWlWBHobneCR1SlY7vb7IbQwwpy3vur081py0ZjtjgWA35987jKmVCpCfNfGQ+mqaun2kXD2TLUKfwZRav6ZJIKmxjoX3ofibLLQ4omq3J/3k9s2WmP/7w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(136003)(366004)(396003)(346002)(39860400002)(451199021)(6506007)(36756003)(6486002)(478600001)(52116002)(2616005)(6666004)(83380400001)(2906002)(1076003)(26005)(6512007)(186003)(4744005)(5660300002)(316002)(86362001)(7416002)(7406005)(921005)(66476007)(38100700002)(38350700002)(66946007)(41300700001)(8936002)(4326008)(8676002)(66556008);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BtfY/6mZ6WXpGYwHHhTJ/gy0ikfGNI8eRg6R55YNtAht9PU5/F8fLCHjdfFk?=
 =?us-ascii?Q?fBGdYVIOqDJJuPivfJtwK/iBisnDmBxavxOzBxCBmPMD0W+oKUvDgzv5MTG0?=
 =?us-ascii?Q?/MxLdLv0Qpm6jigp/2jP4VWFUFp3MDjbBuzkE2PTYn5KWEeAvfqL6wV0v4Ab?=
 =?us-ascii?Q?87FAcvEXLnrA3gDR7JF5nbIWZIFPy8a9vwERGpdHqav/1qAr1n2tZmeGSAzn?=
 =?us-ascii?Q?y0knRRun5cyJNnqpaCOJXk8YUxqycoUmP6SAyaomxRpc7K8LdiSAPqwlWtN+?=
 =?us-ascii?Q?qRAJTMKYHFzf3QNOsFr/tXKXzZOut2usRdyTJksiVZ1X9qvNPdwr7YgQHDM1?=
 =?us-ascii?Q?eG3lrdi/x0c4Qxd39SxIxVxxikeNSQzrLDfi/OojHFhQTQ0UwvAbVbW5Q4As?=
 =?us-ascii?Q?xNlZeSwEyPXh8PzB5s7roQygOXY7CWXY2idumNz150j0/jq7uQxXSCe/AXBa?=
 =?us-ascii?Q?NXc1UVY2XGFzsFCbejlooFifNjCNZZAh2o7fxWrewgpixvB2kPPzpyNwEVtY?=
 =?us-ascii?Q?FwgefKZeLUbfZNa1Pn25Zdb9gRXCWCi4hKncBBEVTvnEJW7Xq1yhKJGKdoXp?=
 =?us-ascii?Q?G9ukNe+JuUI6tFdoEXkf7UC6u6khXARPePQiL6rXgmmngI2bs47g01wWAHhM?=
 =?us-ascii?Q?o60v0sg1nXthYyQh2D7o18lEb5Z1kbtkH8Q0Fmuffd8o9pm955VHNZf5kwez?=
 =?us-ascii?Q?HGgFs0GztEdklp/ENoGjK3WAw1eHYMiNOZfU/WnYMAAHxVmL/xX53ZOadQMc?=
 =?us-ascii?Q?Uvu3e1gWbMQP//M8jrEDN7pA99xTjndB4mE/j/PMNpVS/JTPft4TyvxAyGWK?=
 =?us-ascii?Q?8WocJYoivY5ExEsbv2C557WvE7KX8PdHbqS9ol4DUhda3QRYlD2gfwffLE7g?=
 =?us-ascii?Q?/mA/yYull4G7Gs4vT8J4DRajqCmk/Lys6FnUXBBw01PlbaV6fCg1dIcng2zj?=
 =?us-ascii?Q?EtvKabWpLVYBhBy2P67OkZJZgBTHfZv9uMgLd7WJg4vanpYa9AYVZB2KKp5b?=
 =?us-ascii?Q?vKdmyoCb9sNstXZ9RprHlb1gfLGjyYfL+yHyhbxPojQmL3zO5BdtFfRKZVSx?=
 =?us-ascii?Q?evJCAczCKnph43uAVBIJix0L3HBMi1fhAywAcsehgEEhkzrkX2tkQdNtW0Ez?=
 =?us-ascii?Q?0ipqw3+/iI3hwgn5rhI8EWWQ11ajJdV4j1fomj4WZTULH9UATZpMbRuiPcew?=
 =?us-ascii?Q?JILFHIcTO7bWKGUIhnaoQ5yzFjtpxeCk84n5R1yCLnvV6uO2O5HMHyFBrck9?=
 =?us-ascii?Q?9UDOJSeDXvYkTF0EIrSp+4toBGooSmr7eHQiRw4AzTh6Zw3EyB9O7upIp31r?=
 =?us-ascii?Q?7ospW1Blx5cHMKbIaEqdO8oPHKo3hqszDk884/nORiBabKOCOVIU5lYCxplF?=
 =?us-ascii?Q?HRKpdMJ11q112e/uRgJdYC12ddwVIeZT9Aat7MfZhmGE2/FxghtS5gCRXO8w?=
 =?us-ascii?Q?dAJB4udOvZTpYsWCdBrmI0Yo7hKzyA3qvcmKsaBU8QZBqVHKr7CASgjQ+u8Y?=
 =?us-ascii?Q?eo4hSryHdxGJoWWybZX4o/Vkt7TivsR7hbYcHH79tkzkFtjNogV0+H0xtQlw?=
 =?us-ascii?Q?gzxT841zeaKQGTK055wJ8wijP3Gj9rU9jTL5ivzv?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f51b0d1-8011-49f6-95ec-08db76deda14
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 07:19:31.8321
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: X0kQjbacXc8vjEWmQf+hpKggq5nZqIXd3NJG+3P3DBAHGZawG4wBKrYwd2jEAQJLp+g/8Xl+O8v0lqvv7cVWqg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0601MB4289
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_001938_520885_0C587B5A 
X-CRM114-Status: UNSURE (   8.71  )
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
 drivers/thermal/intel/intel_bxt_pmic_thermal.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/thermal/intel/intel_bxt_pmic_thermal.c b/drivers/thermal/intel/intel_bxt_pmic_thermal.c
index 6312c6ba081f..aeaefbbd5d8f 100644
--- a/drivers/thermal/intel/intel_bxt_pmic_thermal.c
+++ b/drivers/thermal/intel/intel_bxt_pmic_thermal.c
@@ -245,10 +245,8 @@ static int pmic_thermal_probe(struct platform_device *pdev)
 				NULL, pmic_thermal_irq_handler,
 				IRQF_ONESHOT, "pmic_thermal", pdev);
 
-		if (ret) {
-			dev_err(dev, "request irq(%d) failed: %d\n", virq, ret);
+		if (ret)
 			return ret;
-		}
 		pmic_irq_count++;
 	}
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
