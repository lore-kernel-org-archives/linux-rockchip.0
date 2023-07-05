Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C979EB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 09:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQF9hFY86Y2dkXXg8zRlHkclYXfvm29AopGrGVPj0i4=; b=KQovmDsyMzOO+8
	Pp9xTXzrTmGIVPAARisqo5YxRxdpvv/UjMJ+lRHkkUpwNcL4TKhkNhIwXu+fIppw7dFOhs3PMFXgp
	0dlCnkeHbabWoBc18v0XUjQ1Whfe45oXy97Aoprv3jQEYXjkXn6C4tXBvIa7O+oZsJdIA6LA+dvWw
	7K3CPShpnE776LwkrPhE4nTE6BD7PEXgbW0vbPYHaSvjFYYke5PITqaknbdr/EVvAi6cVoJf1vQxz
	dWBfyo0/PhmAmZ0v90rpeIeMr+cqisUGa5KqvpBWdeBWwofJPQtMyTE9PgmohNQyahfc8+Fz/Bfxy
	Zq8dIxX828hQhtIuF0UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGyOX-00FIIL-38;
	Wed, 05 Jul 2023 09:01:53 +0000
Received: from mail-tyzapc01on20708.outbound.protection.outlook.com ([2a01:111:f403:704b::708] helo=APC01-TYZ-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGyOT-00FIFK-32;
	Wed, 05 Jul 2023 09:01:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LDeBMHIOw8e2X8wsB6X0vA2WYYoxewtaL78iZeo9Hot2F/zUbut0xhgPwPPDnm7HgPL3TOt51mX36/FJyLmFIklPnKdzmibDPkwF/4RKdY58t+nKNbOkIvioMvw3MMUVYxFqfKYPnhXzN39J4qkVTLKaOS0f0YYyyzyuPE+7VzjIJvW7xPuy24Ek4ftrorajtK47hWOcREdp+0HRuTyuoVCg5jf3i9UOtnJoo1I8xAMEWHX/PQ4dWcg2OsdH6UukvvI3V0ClUWKRYSbkHTU4u84VPKaUC0qtNZzBekPpSy/EIoCW6Jr7PPlErRg4V43Cs9nUsgUSOdxfu2YX8C3/3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b7ZCb6gBF/T5dPOtRZRsisUuFmF+iIQAx5cwFLB54f0=;
 b=MLU341s1/Psi9jOMWEJKUK4d5VMaZF0oowAF1tbKFIybCXviG0Qr+UMwuvkeSrBRiRjowC6z0lI6yAB7u2iHuMxzY4tQ0g9nZ92HRv2EaZH+Ijnr/82up5fVnlRKqHo0O1kGXLHieHCV4Av58uCoq0Y8NImJnDlN8RM6FTuyVgAtf/YdiGkM6BdGMyhHu6RwjC/D87tRWLzwKM/KbJjPtrnTG1Abjxo/H6oS5xhB17/79d4R5WWLrNwfeQm/knkhELvdB8fUWFF8mTgKm/jO3AhpzqGOQGSULaKPwj98OV79ULg8WVDAtjXC6XZC+7CtgB53Gw11L/UgygpUAwKZKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=vivo.com; dmarc=pass action=none header.from=vivo.com;
 dkim=pass header.d=vivo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivo.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b7ZCb6gBF/T5dPOtRZRsisUuFmF+iIQAx5cwFLB54f0=;
 b=ddoO4X0XN2WBsfnLeovQRRMWmrT/uawbONSss5z4SUZMCZX/eJlCb69R6IVaIKlPmJwDVcu51LCbuI2p62TmU/IgiIh7e+7qTi+pYl8jJUQViFmXmrjT0vk4lVqg5icFDHo9bMBqDGSUKv9AFB+vdgqDdh/OzITQY79amfQrxZEtBgaasEmvZfF18RLyaln1buZSFpVyo3lZkJmv5vgqc0IyiBIrrlaFFoM0gdDwP7bwasugHNp2uFeonqxO26CDBJQQ9l58kfivXNxsl93XC7NLt7ypYHcL0HfOcJoBhmW7yohEgD9wippN+o6omy5oPl9/qNS1OIkPtVhqURq+7Q==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=vivo.com;
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com (2603:1096:101:78::6)
 by KL1PR0601MB4354.apcprd06.prod.outlook.com (2603:1096:820:79::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.24; Wed, 5 Jul
 2023 09:01:38 +0000
Received: from SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c]) by SEZPR06MB5269.apcprd06.prod.outlook.com
 ([fe80::fa0e:6c06:7474:285c%5]) with mapi id 15.20.6565.016; Wed, 5 Jul 2023
 09:01:38 +0000
From: Yangtao Li <frank.li@vivo.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Yangtao Li <frank.li@vivo.com>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] phy: rockchip: phy-rockchip-typec: Use devm_platform_get_and_ioremap_resource()
Date: Wed,  5 Jul 2023 17:01:24 +0800
Message-Id: <20230705090126.26854-2-frank.li@vivo.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230705090126.26854-1-frank.li@vivo.com>
References: <20230705090126.26854-1-frank.li@vivo.com>
X-ClientProxiedBy: SG2PR02CA0031.apcprd02.prod.outlook.com
 (2603:1096:3:18::19) To SEZPR06MB5269.apcprd06.prod.outlook.com
 (2603:1096:101:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SEZPR06MB5269:EE_|KL1PR0601MB4354:EE_
X-MS-Office365-Filtering-Correlation-Id: de66c3f9-59af-4460-2953-08db7d367109
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uieH5wjL6o4OqHzGnlCzwOsW47BoZFdclbPQAxdY7g2oHXaoBEww0cgtlLb0egSsym2YrfLVCb6QYZaEB8r5LK/jhLZAKFGucX3U1K7TzT5JazqkC5YnkLfNjgouWyx8Bztloz3uEErrq75LVQno4m9ZoM1hAEtrV2Fqxiyc8tt0eq6NKG8wawfzX7gQzpkajpECF0tE8nj8pnckNMgPhTluxjU5AYdEbThRc2czjblg229t2o+mr1ImIOACok47S1DVMckMswLJiZnS4LGDNoXBCqCxUgq71s6HoizuxYa/Mm85Jp5aPV0jXxC8XeIb2dGJGqJZNCyToKW6+jYMr0JBmDAv//JJdpu59cKsY/0jl/rnlStREAcOVokQ0oevsRpHFmOabyfewiL4M2nqfJY8ieKyzO5ocCHeoBn1lJHngHmspBzy7KOGdY6YlvokJyXyFMpFhh9oTwwTBzUnjSB+yOk93grfDiXmx3eb0cX0xr+LrY1sSBnDDgJWpoAedV/EOU5IaF6+HkMSIsXBJ3UvS7XNn95U51/42ClP0NT0d6O+DK7TRhtE92CDypsaP4wmkxTgZnAQc47h1hGf/Zn+xOxf6dKs/PMcEeBPNfX7lfqQr5Jx55PKTvVgafwF
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SEZPR06MB5269.apcprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(346002)(376002)(366004)(136003)(396003)(451199021)(26005)(6666004)(478600001)(1076003)(6512007)(6506007)(2616005)(186003)(38100700002)(66556008)(38350700002)(66946007)(4326008)(66476007)(83380400001)(110136005)(6486002)(52116002)(316002)(86362001)(5660300002)(8936002)(8676002)(4744005)(41300700001)(2906002)(36756003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?26z7S4EVtT6JYZvikY1yV1Mj15fRuZmQKKxVFt63W2fAYJMQcu0/0rnFHVLk?=
 =?us-ascii?Q?HzzaECOJUhGo9HCw1x1pUJSkyv2p2T+O8Gb/KWokSs95Bh2dKOzLLTgssb/F?=
 =?us-ascii?Q?EAUcXg5Kyv9nAr9gz9EIBSw+bhFacA+Pd951APIinkrEkxTuidf1xlJEZuWE?=
 =?us-ascii?Q?fCd0dsZT+G30pa9KoLL0iTmKvp9CAEYGO8q+1N/JUEbE30JGJCm7dbhCWD03?=
 =?us-ascii?Q?9oTujNyE75AVlBrN2PkqHatm+42suIDIxeumP+Rm8LqdWJk3ZMO/g46KjZ8J?=
 =?us-ascii?Q?thb9Xkt0/AZZH3t9aCRuY3Hk/+0YQIchwbaDF9ZQ0EnXwuJoTD0rm9276yn9?=
 =?us-ascii?Q?IcG/ZDSGRB15Lt0j5IanbWlNL1Kyw5HU0wMHw5x0Mmg5cQ2Bb5Nc52vXEYQA?=
 =?us-ascii?Q?uy0GVHY5LwU4m36eU7JiYb9ZTEUXdLd9tDyF8rddQfTPXotxtNEO5K4bFqr7?=
 =?us-ascii?Q?RP2eiPQTeCkifhM3Xk0T/Vy9L/42KfWPoZpB2N3wE6amP+tbgibrfkwrCDGR?=
 =?us-ascii?Q?32saoVtb5uGYfSQCAMSJ2mxV0EI6nOFgfEW9uwXdkBZJuWSD/5j0MhU9jM9E?=
 =?us-ascii?Q?qoxgNSUWh5z0jbmbyudl9bM+WAbX9YAXCiI3EQJh4BB1x28opGshTvSZ+dmr?=
 =?us-ascii?Q?TaoBjCcmMfPmKU96fifRyTu5hZslJkSg9u4pyGoZ4zyLzuPhodqrLNWzpVne?=
 =?us-ascii?Q?60O2410/TyOINB9ibVQjzl28tmeiByxUiddK/8ohwiMMU2B+XzuslIPja8SN?=
 =?us-ascii?Q?3yKJ3dX2X85Yw8AHUPY4ctQo5nRSmEyE20gYEyeY8+Smx1sO6czOG1ctx0XQ?=
 =?us-ascii?Q?Pssk1b7AXGBL6L/FeXU5P8AaisTdhw7hQBcGGFq62ItSKIg0ziUIDH7ICdct?=
 =?us-ascii?Q?WK233+wwfY+ENLwj3TxgzvXgALcucnTzsKUwwF+wTigYZzHslUpTnC2Wm2Ih?=
 =?us-ascii?Q?SGlT6dMibfOwzS//z3p9tTzI/VsmcHqk5bv269BCuLB7FJwjKm4VO66R3PyH?=
 =?us-ascii?Q?4suUCSOp619Yc5+CXFdKwDmM1tDpOsfSwmzn5uX1l82XgnIZMHtrx/BiAdGA?=
 =?us-ascii?Q?bH4qlLPmCL3h/mysoJMoeNJlZMl1TdGNud1osFjEgAD/1kOb3zGkA19IA0m2?=
 =?us-ascii?Q?YSb5UhiEwh9aYecoNZTGzOM1yKPuPF969hAZP8hqGqg7qzrcqj6NLkNGkk4m?=
 =?us-ascii?Q?J5vN4WjjQS9qpDVmV+t5/WPG7kQMawixSfqHy5FjQhYihOQWTZCEHxrJ/XWs?=
 =?us-ascii?Q?mNcemwMWkHsvKOENdjf/KPx9MfMLMStDWe3eGWYzQYPJ06gUa25c4nEtc2kh?=
 =?us-ascii?Q?6oSDtzeOtDdaow/Z6wsTVXy7Bh878GcizK+8/UT2RdPPUxfp7gNBf7oA+Jhs?=
 =?us-ascii?Q?/UIQCNkg0lTbSoy8ncnXC6Sv60kojb52EWGyPu8PwI9QzMVXjl4gCCAQ6pVH?=
 =?us-ascii?Q?EZpUI4uaMMbNwt3DQ9vLSK3wD4bqp7xx7c4Pdq/vqKsLFBJGDsuK6D7Wyl9g?=
 =?us-ascii?Q?VgDFNiUqg+8dot+7sKrPuDuv1L6Q/OqKkL4SSn8iCQn5zS5ofPfz38sV1uAy?=
 =?us-ascii?Q?eKCy62NrdQHGYkw9WKJbm9VF6UDc8u9Qd2vLNEBN?=
X-OriginatorOrg: vivo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: de66c3f9-59af-4460-2953-08db7d367109
X-MS-Exchange-CrossTenant-AuthSource: SEZPR06MB5269.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2023 09:01:38.3439
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 923e42dc-48d5-4cbe-b582-1a797a6412ed
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gLewlQxSgw+ojUdirKsO1anosoOMaP0Qi2y5JPlOcUH75r5VhyTd+8lLudUrYeRC6ufAtgk/8CwvuWzJ/iMZ1Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: KL1PR0601MB4354
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_020149_984669_B4EC6057 
X-CRM114-Status: UNSURE (   9.55  )
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

Convert platform_get_resource(), devm_ioremap_resource() to a single
call to devm_platform_get_and_ioremap_resource(), as this is exactly
what this function does.

Signed-off-by: Yangtao Li <frank.li@vivo.com>
---
 drivers/phy/rockchip/phy-rockchip-typec.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-typec.c b/drivers/phy/rockchip/phy-rockchip-typec.c
index 8b1667be4915..4efcb78b0ab1 100644
--- a/drivers/phy/rockchip/phy-rockchip-typec.c
+++ b/drivers/phy/rockchip/phy-rockchip-typec.c
@@ -1116,8 +1116,7 @@ static int rockchip_typec_phy_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	tcphy->base = devm_ioremap_resource(dev, res);
+	tcphy->base = devm_platform_get_and_ioremap_resource(pdev, 0, &res);
 	if (IS_ERR(tcphy->base))
 		return PTR_ERR(tcphy->base);
 
-- 
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
