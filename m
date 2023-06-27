Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F3A8EB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Jun 2023 10:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uoLkAPmK6hEeo8Wm2SbKhUMQJf/23RU4rnh+r1hJh3U=; b=h2qGZzgqjLSEpA
	GSBYi1zhfOhX7PsaVHSgGsuxI8aspIiHuwVpUbD1O8EbTniLqBX/VWE4uU4oS4M9lq3NUCsQDV/wg
	a0spGQSdQBo+IQc2lq7He34ujf48ipe5iCs3kpu4iPgkFpq5y1KEOdJHlG9SuQRY01KxYayhoT1ZF
	jvfkH0pe8mNSGr3wIVFebhiDP7S2IIMInytdresJ53t776dcjPpMVj17jTX7hdIFavZkABF33F7zg
	NhmhBQ8n7Ta7GLRlbX2IgDGJ5lWBC8RBuH/wOly7mTtfr8KAnex5bznXk4Ldx0akbHEj8nyXV0H5H
	VY7YRdCDAqyZs7xwaZRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE5i0-00Cmw7-1l;
	Tue, 27 Jun 2023 10:14:04 +0000
Received: from mail-sgaapc01on20703.outbound.protection.outlook.com ([2a01:111:f400:feab::703] helo=APC01-SG2-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE5hK-00CmRE-13;
	Tue, 27 Jun 2023 10:13:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OmBcx+cB3ZVxPE6HWb5S8cvsO9jfBQoo5/MSKMlHNqHqbbohrNSvU7W86UDWcaUMyZX7EH/DzDylCoVFZ+26/I0vxKkzeYs2davC+0vDz6c0vNeVmeD7DcVU/I7pg1ZVKZnqvwTkVCML2kIfjiNPyOkCJ9EKv9irflTATc8VjBA4XOO7j/AAZ2vOE397Ojqt9EtCZqEZUwa9bU8qjDIJPgbsahvy9rRAft/8kScO3iH8NzIFTTWwVr1uVqcf+K9NV5PzQwWaaVLdlPenBobTlvaXlyuxDZCawe/BV5jMnDCUzT8G7PfhwuGYBeo5siEp91JJmBSYXPo0yZWO+WeYnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OXyKZW0aj2PpLbeRv4C3L5PDEJAjRqqUh1nnbB3UbQw=;
 b=F8E5dbl6bxRyr63q0Sr0qQKGWcO4j2mMwjA5kwqVQQdK3lZhcGym5I/QdRTykGWuKTw+n7V3CXZl4Bjhfuay1ehxo3j9wHm1ZckYwCjKJBy2/lMRHl95IvezE/cSdRqi6trXK87WJMjRHORr2oHgfecD7P0H0quNibIiFpo9PVhXT7TblawxxUfJwOKutICJLIIyCSBcUPX/q5gH+8VctcSQuyD1jV29I239mRqRyu00m5oBoqsLCwdFAYymmfYReYBfpWc+yifc6XojBbZhyIhkPXRt2ErUPMFUoJdjF5544n7Ln7wSW9NjlE4N7ENbxX5G2Zw22HChGPq1TuTA2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OXyKZW0aj2PpLbeRv4C3L5PDEJAjRqqUh1nnbB3UbQw=;
 b=of9AJJLnms2UHdrCdF1h8G5gT/uXiYq7+YfhLF8XNDWzjjTFnHK4uqAIpoxehxY7uCRB1+xOcdvdHT45gD3UwsdT/TfDcVke2/YP6KljneGvqx9k3KHzhZffemv6zwUCn+Z/WSKKTOx3Mh1JGOshpKCAh5YTPwVDmB5yJx07VzaELWxozmn/8dIPfkuyEUpYiaTIzZ5bdYySr6M28qVAu3fqK8ymnsNBXcAlzUYORU04b7x3qL5osVOdvHH01uUzRFmJh5chOFVdjBNCuhXdsyp3m0UGUCpbTjuFYaUBUqeuR/r5VXB3ryr/+kj4qKVC7+TmJtgTgTZ73KPxAhKCjg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by SEYPR06MB6661.apcprd06.prod.outlook.com (2603:1096:101:168::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.35; Tue, 27 Jun
 2023 10:13:17 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6521.023; Tue, 27 Jun 2023
 10:13:16 +0000
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
Subject: [PATCH v2 08/15] thermal/drivers/tegra-soctherm: remove redundant msg
Date: Tue, 27 Jun 2023 18:12:08 +0800
Message-Id: <20230627101215.58798-8-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230627101215.58798-1-frank.li@vivo.com>
References: <20230627101215.58798-1-frank.li@vivo.com>
X-ClientProxiedBy: SI1PR02CA0012.apcprd02.prod.outlook.com
 (2603:1096:4:1f7::8) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|SEYPR06MB6661:EE_
X-MS-Office365-Filtering-Correlation-Id: c9b0deea-18f5-437c-780f-08db76f71fdb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UlTtzgRn5FXJyhAip4jwhh0Vl5cJVmJBmXhdzMjpKAILOSXLVYy9j2QeN04DfjHAHmvaPcbY/GHW0jsI0QGrZk5l/ESD6qkJyDsUuBCJPEABr+xPcaCMrkdT3ju9gf109itCZm+fnHmLlpVkpDf0yoGe7lIS8VC7Ab65KqwsLvB2KrlffNH7m1zLk9iSv5AEVVFbzoLMTqbJdh8peoIwTadBogm7SHgdJR1FQ/79vsSUrbseWI/cM9vMhfs28IOhAbDJaYsOkGZyormBmwXAu4JoVk8RGtWXLR/EmnaEtRRTQo3lZGmnFJgg2gjmveUSwpExjgNC85uk8twKGY7kfYWDUcMw5TgTI8IcKQYHY94o4MyWbLbRabIep3ecG/wtcgnzEEOFwAR6UGQFJcxy4B5E9HEDRcz6kUI8DZ7oW1YyOQjmhfFH8I6CLkKdxcuUpBkhw54g/pr7vcVJbS3oEdSSwIIGvZktwOApbmDqlj82hY4Td8vJwGfxaA4LjD/xTltfd88i/Uk6vANuOWXqPNZ3eCD4XH+hsVfU3anTfV/OUxfmHpDpypkI/Z0Kl/BYeyxL1ijDR34BDdjFE0z6BeD1Aa3+BJpSd4ak396TZYtTAoOO+AQsMilBNc4QFB1V
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(39860400002)(376002)(366004)(136003)(451199021)(7416002)(7406005)(5660300002)(66946007)(66556008)(4326008)(66476007)(478600001)(36756003)(316002)(8676002)(8936002)(4744005)(2906002)(86362001)(41300700001)(6486002)(52116002)(186003)(38350700002)(6506007)(6512007)(1076003)(26005)(6666004)(921005)(38100700002)(2616005)(83380400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+yiZLuutQmloOKNeOsCG/BUmeMiq43sB8/rrT9ujBxJ3ev5/THOQFNN+qG6+?=
 =?us-ascii?Q?aMlsqwjG6+WX0EdSeZZzt45osQgw1mqvM3EXwlaQUWzOcNIJ+mLGAOk5fU2Y?=
 =?us-ascii?Q?1XXvefpVOmzfBetNUsS5jRlVFQALrejDBS/NdRdF03U2phSEPRVZvlvMcTwB?=
 =?us-ascii?Q?tmAiZKWznKSFQtErbohuMHmP35OhXxyySTbwBoPaQbE/BL7XqLTcCdW65P/I?=
 =?us-ascii?Q?Xby57Ql/FQDRRCaE8X786KPBPbUslkWSis0GvfIIWRKrMtQQhTJ/Z4/V1PbN?=
 =?us-ascii?Q?bk2tiwQbFH4pkNhl3xPqKTo0v7otVgw0r2tTLfRzGFI9hCg6lrGfKcEAPcPf?=
 =?us-ascii?Q?lsYZtSz/6T2ph6a7ERCVxdus24bC6i98d59u2/8mTUTGyjqDSLTz5YdOW+0m?=
 =?us-ascii?Q?XbcWVAUPbdj7blL5w2RY2CUxKvGXQHN+MaumbbMfn3K1vVapKEZKRgFalTuI?=
 =?us-ascii?Q?2OSLPbBxoTgOoIzkrYUSgLybmeYNLKglxseojvhe1U8iBJ3PdlWmuGoUG1lM?=
 =?us-ascii?Q?+Y30C5h0ta+EAWgdywWEqHa+pyexXEpkRPnaMQfhwVTPBIeG2I4wqzA1C+F5?=
 =?us-ascii?Q?UaM+VNMdWED4JUFZKvtRM+wmONHx5LhyOHxH1bvpBlyG2DOa/mUQnPGZzCkD?=
 =?us-ascii?Q?DaUxdw4Ssb1Lvm+Pn2hLlQwprPBGJK6pbMrJaNBzk5+D20FnSn5wMyawzinH?=
 =?us-ascii?Q?LktDWDGtgwVTO6gTyjJsAqIAP5nTn/+MTdezl/MvNhT/9iJsyjZl8hkf7IJS?=
 =?us-ascii?Q?/Io/waiMrAMAqtBFSGHv32xUl6eC7Jwd2KqelxIV01GhcSU/AYn5J2pAfv5r?=
 =?us-ascii?Q?IuA2No10huOX4RIWYx9S5QEW0fzego7K1aHMmZ/xeWWtcLbn2tx+twMSE+xk?=
 =?us-ascii?Q?BzXwcb5tgMJzcavUkOlr/foFO65Zwwr/+XJaDfRQrrOOeCY8dltqv9uV2S1r?=
 =?us-ascii?Q?trD7hPSWwmcQuCgbecvOzRq/jfDg3n7S0dRDg0RmQWWZ7250CofVd2FJ88ih?=
 =?us-ascii?Q?2+eT2Sd7hmGnqbUs9ktKGzpnG914mvRzEehsHLzjknSUhB8NLpI3zaTOGZ4q?=
 =?us-ascii?Q?TG3LpTQwlAoUfwf4KV+q9+roTldO4JP6FTtPH98aeQVdL6eRn9dQt0MeIGEa?=
 =?us-ascii?Q?Px5nGlXxdtjdN9n3t4renyJRSkwRUA0bXFeDNK/7onchBGnVmrOarBq1WDs6?=
 =?us-ascii?Q?JC0+OKkRrY06k9XI54hErbzMATnbkKqHllTNQCxkcrI+VXk6D8MSl8webwAh?=
 =?us-ascii?Q?uxlgqaBPc2lTKA+z1HWl9F+opl3pOmOdnfciJtUASQsu9CYr8h5YK17dE2Nf?=
 =?us-ascii?Q?PSkB57exIRpePcgzVxXfjyg+46ls7GdMXOWNyCOg1VSCWVpU0eKJ9NCnSYkw?=
 =?us-ascii?Q?DPfL+Cy9mHFTLIWWtx0XBpI2gcFC0Z6vOLleWIo0zfKppaNDWu7dySwc09Ys?=
 =?us-ascii?Q?zACemEuAx4peTeSQu7gkn7elgp2UaGsh6L3f1Bw94s8pmXzSArq3/dA0c0Ic?=
 =?us-ascii?Q?n2pHfqRuBXLNovEBwSww3+NaCikplePJJ5V+II1AgWRbiYipvfNFB+5ylVg4?=
 =?us-ascii?Q?VK0wSk7yi8xe0/x6ZvnXafxhy2yxTOZtfdit6Xt/?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9b0deea-18f5-437c-780f-08db76f71fdb
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jun 2023 10:13:16.8311
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sFeWX8FAyBFS0mELnqJPYLHzhLh2wJM9ug908heNIqS8dv+JG2ulRq6bxYt13+aCtmzHvxGyNQ2ZnDOEy+22hg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SEYPR06MB6661
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230627_031322_372608_DB192081 
X-CRM114-Status: UNSURE (   8.79  )
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
