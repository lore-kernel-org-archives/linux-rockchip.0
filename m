Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4566DC27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 16:11:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1A9OTP+rjt/IHXKZMQg8rKw0KjmMYdcIN1UMOzQlDxA=; b=wmh6dURCVarxN+4Q/yeoILx9xa
	LwHAMemUQ5wskKWkE6+Ejeyye/rQkjE6FTMd1WTCKWQpHcoHeL6kswDXvULuMXFiixLVfNYApFrDp
	E7OzZsnrqwTO01i61XK5o52fkCB1CpFBcJdgkd51h2vkOCJONvILh5aBUSa+gi/JyF/Lr+eQhPKz5
	z11fwS9zwCEE3vZhbjPv/CjoKwkGMgvUBIxE+Bu9IDk7/cPWNLnFjt99HSh1A/nWiAzmaatl7sBWu
	9/x1gSBFOzQw/0u1pu1Oximk3C7ZybLL9ZI55CePnxFJPam4rmgF/FJ+MGcEOEc0qtKbUsAbtOQWO
	retI+KoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbQV-0000000FmGQ-1mMK;
	Tue, 18 Jun 2024 16:11:19 +0000
Received: from mail-am6eur05on2072c.outbound.protection.outlook.com ([2a01:111:f403:2612::72c] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJbPN-0000000FlMt-3vgW;
	Tue, 18 Jun 2024 16:10:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FuUDTyoo+9SNh5hGmG8CEgeHgTI7h5Sx3MOI2y2+Vh0Xng+bt/oBWXuOzaBRKYmEuSCXyWhEiN5djekTwFQS0rKpcGJCDeBR8TFXQvFKcZk3ECX+iSHo8rBoe0qZT9oloQDRt6QN17CUhvD4bIMBZ/M6JTJY1UmmGrT/rxkjCMgZdO1uVc+ecDsuRm1mNS77gtBLrPNPirf65FtNVDdBuuQtqL0O9Z3ZAdCb6ukXRz6lhLPp8hI2xxTPzYb1aTJLuYIX6Pq43O2hYEWIlNJffOAA2G7ExvLdIuNza/byZOCtSxoYqcDoeu33H7tTuaO0LY12gngLBBdoS4O1Z55Ibg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L9CVH2+nmB3hh0/FZvIcP3rpB/L5RVTm2QvU+i5LbCs=;
 b=JyYX+8cgpP33kV9CIkbIW6RyTsNsKjhK/CzEIQs9JBfeCqnkoQmSx67cCcu71jC9WDCQrdcxr1gBVQBOvq5v9tiwWIDQt8hEDQUJB3ROXWfJH9EiPl/54K+x1h3h77/lldyda+owLCjc1c2WLB3+bfNwgb06NdEJ/0y1Lcw16m1U07vS5AHksS6MtCe6D5dYM6LmNCsIg4DfGR3a2ZzuyniGFi93qQe4zFvV8/bMqywQF0fH5VgFGWfgJq29AHf16b5m9C+OlwkeHjEwihOFnDa0W0JRD92wqbApXvzbWqcrcZ1PSkfDdCbB2kRGgLPFIzT6OXZW6M9DMFOI1qrnpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=L9CVH2+nmB3hh0/FZvIcP3rpB/L5RVTm2QvU+i5LbCs=;
 b=kZ5T0B1v55Q7ugwaoRim2Admph2A6kYBWBCvXs6X2gJF2yPOMreJSTT7yvl7ZqkBXUCgKqCt+mBixO7V1qY3nybeH5zOcm0G7hEjKkMg7CRyTxIqWrw5AEXpb9XNq3akgoglHEGL4oR7uJ0TsUAntRB6rajmydaKbkuG4/EAr+g=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com (2603:10a6:803:122::31)
 by VI2PR04MB10642.eurprd04.prod.outlook.com (2603:10a6:800:27f::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.30; Tue, 18 Jun
 2024 16:09:51 +0000
Received: from VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6]) by VE1PR04MB6382.eurprd04.prod.outlook.com
 ([fe80::2a24:328:711:5cd6%5]) with mapi id 15.20.7677.030; Tue, 18 Jun 2024
 16:09:51 +0000
From: Farouk Bouabid <farouk.bouabid@cherry.de>
Date: Tue, 18 Jun 2024 18:06:50 +0200
Subject: [PATCH v4 8/9] arm64: dts: rockchip: add mule mfd (0x18) on
 rk3588-tiger
Message-Id: <20240618-dev-mule-i2c-mux-v4-8-5462d28354c8@cherry.de>
References: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
In-Reply-To: <20240618-dev-mule-i2c-mux-v4-0-5462d28354c8@cherry.de>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Farouk Bouabid <farouk.bouabid@cherry.de>, 
 Quentin Schulz <quentin.schulz@cherry.de>, Peter Rosin <peda@axentia.se>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.0
X-ClientProxiedBy: VI1PR07CA0286.eurprd07.prod.outlook.com
 (2603:10a6:800:130::14) To VE1PR04MB6382.eurprd04.prod.outlook.com
 (2603:10a6:803:122::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VE1PR04MB6382:EE_|VI2PR04MB10642:EE_
X-MS-Office365-Filtering-Correlation-Id: 8646d0ce-2640-4e0d-4ae6-08dc8fb1154a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|52116011|7416011|376011|366013|1800799021|38350700011|921017;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U2txK2txS1BqV0xaYXl3QitCdjZkcHhSSnVtRDBrTWczbkN3VGpxRWwvZVBi?=
 =?utf-8?B?V1M1NlB3ZHhNd2ZnZFpQTFlvSkl5VDU2dEg3TGM4Z3RqQU9nTVB3SzdkL0Fn?=
 =?utf-8?B?bExnYiszdGo5Rmg0d2FDK210Qk9aT2h4eE9lc2MvMzV0a2pzdUV3NnJzQm1G?=
 =?utf-8?B?ZS90bjYvTlFjMGtNTXBvb2k0alpnMCthbmZ1QWJxZ1lHdHdQK2tSRC9JdWYx?=
 =?utf-8?B?RTlwaStmWmRoNmpQOXoxZVM5Tk1hYVhkeno5eEh6eG9YRUVIZkJBWHplR1hn?=
 =?utf-8?B?RWVFMU9kY1dVU2RLSkVscmc4TlZsTHBRaXpBQWRwMUpUYVU5SkMvNWNWMm02?=
 =?utf-8?B?OEI4LzJNWk40dU5tZU80ejUzd3ByZEFOK01rOUJvMUU4TTJMV04wVENmbzRs?=
 =?utf-8?B?em92QTVoT2tFakEwOFlxR2FON0JNSyt4Z0Y3aHdUd3I5ZytENUN3ZzVGWUU1?=
 =?utf-8?B?RDBLNkFRYWRGTHdGM3UvTlJHRmFMejFtc21pZHJtTjB4Z3dVY1hvVmhoQ1Rr?=
 =?utf-8?B?Mk5ieURkQkZkc2dHMk04YTl3TFpMRTAyNnMzQ2I5bDFTK0FCc2NyaXZOM2kx?=
 =?utf-8?B?MVRVak54czkraGNiUGpWWnFCdEZ3SFJ3U2x6VlVNKzZmeFhNVE9zdVlST3E0?=
 =?utf-8?B?NTJBM0lIekhGN3N2TThaZUF4N3JVT3h5T2dwVlZjMm1xY3VXQjgvWHNxYWho?=
 =?utf-8?B?YjlBNE1BdFNtdW1DZzNxRkxvOGJoQzZLeU00MjU5OUowVlV0cVRxbWVkS1dr?=
 =?utf-8?B?TnJjMkpDaGJBV0ppb2ZweDJCSExyWFhGZXlhaVJRU0VadmlTeHlZYnJ0N3p5?=
 =?utf-8?B?Wm5qSUJUY2VOZi9OUlRKeWhtbGxqZlpmV096UjdRWUpIbkhmbUlqNFFsU2RT?=
 =?utf-8?B?YUF5UmpaTTNzTmJleXZnWDFqNS9GaWRmbkcyeHM2bnh6Z2RFY1F1WFZXQjBa?=
 =?utf-8?B?KzBSQTk3QmRzN05EenRaZERiYVhOVzZJclNiWm5uZURsL09xRFpSYVdEZldu?=
 =?utf-8?B?K3h4K0tRMjRwakc5WHpidzQxeG9GVFNPRGh0bkR2TmFaUzF3MlQxdm1WL0V2?=
 =?utf-8?B?dlJTeUJDZWMvQ2htcDBxVEJFOGxkTGhhQUxpQytJR2NIS3kxaVhKeCtXR04w?=
 =?utf-8?B?QXJOL1ZSblo5M0pxak02RURKak5uVGdLeHlPbExTNVBGOHlCVitYWlBtNkly?=
 =?utf-8?B?KzM0NUdaaDZGVHBlSGRNZmZYVjl1U0RPM0RzR1Z2bVZpRFNjYU5mT0lNM1ZN?=
 =?utf-8?B?MHlFcmp3SU1PMjdDS3E1NEtESkpFWUI3VndIR2pCMm91ZlY0UGl4T2ZEUXR6?=
 =?utf-8?B?ZU5zSHR2bDh3UUJ2ekZsTFlCb3hRVzJqRkNBdENHc0FDbWI4UVNEaUJBWFZR?=
 =?utf-8?B?SHF2dFd5UlFxTXJWaVdFR2tLR25rWnVnbEpJbDFTdXM2S3ZocHc5eUo4RkZy?=
 =?utf-8?B?NzFVL2taM3BoZXVnMXEyVDAzSWxMajBmQXZpdHg5VjRUWXdQbWJPQThkTEpQ?=
 =?utf-8?B?Z3NiKzBQVWRkdUwrVFM1c2Q1WFNlSmxUMkxSY1ltMFlhN0dleGl1YjBjeWdi?=
 =?utf-8?B?NWl5SlZTMWhLclY0NzVoVDI4NHlnYzlocTBla0hnTFczOExXY0JGYVJ1NXdJ?=
 =?utf-8?B?c2Fqc20xNHhFWHYxdFlqbWFGbGhTeFgwZUFrWUZYbUlHUjlza0UvNnI5WXdR?=
 =?utf-8?B?U3VacnRISzh5TjVET2dtcjhyL2R5aDlQb1llRENMN2VLTGlQTTdqaHdpZHFx?=
 =?utf-8?B?NVoybFhadnJoVkE3TFd5WDY1OE1MeStjYWhrRW5ENHlpbEkwaUgyMTE5eFp4?=
 =?utf-8?B?am8yYyt5MVB1aW4xczc5Z0YzNEdJalFYelFpRXVYK1A5R0ZVTWZQVTNvK1Ey?=
 =?utf-8?Q?o3ujMRHMbCW5T?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VE1PR04MB6382.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230037)(52116011)(7416011)(376011)(366013)(1800799021)(38350700011)(921017);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K05Yc294UVViSm1KQStSYXh1WEdWb0cyVWwyZ0k0VWRiUU5pVTdmdVBGYnRR?=
 =?utf-8?B?aVFYZzlxZk5MOUhTbk4xRGF6c3hyMXdRWkZUQ3VoSjlFNFM2V1ZNaXNTTWRL?=
 =?utf-8?B?cUZGN3lNN1BqTzlCRktnYnk3aGtsVVo3eUxTaUl5RW1vckZBbEpCMGloZmIr?=
 =?utf-8?B?S1Ria2w4Ym9aUWJCeGJEV3NCQ1FhenZVbm1VczhjcjhiWHRUU2kydVdKVlN4?=
 =?utf-8?B?RGhMY3JDL3BEbVJkeTZqYmpwMFVqV3RGTERXTHFnWGpnQVhuVytPNjhCTFVr?=
 =?utf-8?B?Tmovd2o0amFJMS9vZEF0VVlER250dEovT1dUTGdiWDZzVThyTzViN3M5aHd5?=
 =?utf-8?B?cEJUUUtUaCtsOWE5bFRIYUJvRkZxUklRSWtsMXJpWEswSWdaUVBTcytVQlBW?=
 =?utf-8?B?amhOVVlyZ2g5ekV0OGVFUlMxUDVkeUhKekIva3NlZGR3MVdyQVpqNWlNa3FB?=
 =?utf-8?B?VnZxdGlPVUVXMFZiOUgvYzV3elNMNHVreUZTQnhHckZFaXNHUHhZem1hMy90?=
 =?utf-8?B?eEQ3SmVGUkRNUjV6WCs5SWwwYkVaZEg5QU9wMHNiMWJLQlQ2MEplbEZ0R25t?=
 =?utf-8?B?YnV0M0RNU1pFaXl2ZUJCcUxhaTNqRm1zUzJsQW5TcDJ2bi9hK1lldUN2QkZn?=
 =?utf-8?B?SitTRnYzVFUvNDQ2V3ZBeHdwUS9PVFVtckpKdWFzRmIwT2hkTC8yT21iZDBB?=
 =?utf-8?B?aExLSGUwNmFNQVJJMkJyY0F1b2sySGtyL00vSDFtWXMySWdnZkM3VzJPM0Ft?=
 =?utf-8?B?VnE4TGdyN2xIeURkR3U4em1qbmFzd1dHY1ltZXFkQ014RlRFVmZQNFZJWW1Y?=
 =?utf-8?B?OUtSdzZxOExUaEJic29oVVEyaTA2QU4yVVl3bldjZTBudi82cFpvalQ0TktG?=
 =?utf-8?B?d2RYenJheTF4M2RYK0VpK0FoRjF0bXAyN0pZUmFqN3QyTDNtd29qOURhcDVH?=
 =?utf-8?B?WEVPLy85anpZNUN4V2tLcE9DZHBWVEVib3ZOeDVYV3dDL3gyR1RrdXZ3OTZF?=
 =?utf-8?B?U1pmWnh1bG10V1JYd0RlMFpsSmJTVmI4RU9JeWIxLzBZaS9abkJHRjlVdFpT?=
 =?utf-8?B?ejhpaDlDUWZmY2RXR2Y1cHZmdTFMUFV5bDh2RjZ2OE5kMW5rVFBHSGtuejZx?=
 =?utf-8?B?aUxPTUpPTXFFYzF2ZVN5UmZYQnkrY29RdVVpUGtRaWpFMUpWS0g0V2czeVkv?=
 =?utf-8?B?cm9pekZscDdEYjFET1AzS3FRT2tDckxDTlBaanEyV1FhbHVYeW5lRStHV3lz?=
 =?utf-8?B?aFR6d2VTQmV1dnpSakZQVUNsVU1weU80M0puVzZyZGd6anBTT01UNitWQ0p5?=
 =?utf-8?B?eXdKSTRMdXdvUG9VOEMrZkQzY1ZZT2tCRUpJREpoRHBTc1E4anNVNE9TbmRQ?=
 =?utf-8?B?WXJJcEJPOEZuaGdhUmR3S3FuanR1Z3o1TDRhL2pCcUtOaXpzQUJZRncwYUJC?=
 =?utf-8?B?Mm1IRTdISzlMTkVKYnBMYUZwbm5ObTBMQ1BuUkNvb3Zoc2lDTGxuRVBzdkJp?=
 =?utf-8?B?TVRvc2VjYU5MQXFYK1o0VzM1RmovZFpBNjRiNy91V1pZT01ycDdEVHVkVUZu?=
 =?utf-8?B?QjNvdUVsOFRlWWQ4RWliTklJM3h6MitJYlluTkpwZWRmQTJBRFB6SmlBbi9H?=
 =?utf-8?B?QlJmQ2lRVUs1MTJ3azQvblgySk5mK2ZrUS9YaEVXSjB6S3pOak9GQ1FGZzJz?=
 =?utf-8?B?NHI3WTAxZkt4dTNOUVNOU3lZc2s5dFZNWFhLOTd5WEE3bFRPWTJqakNOTFUy?=
 =?utf-8?B?aUVsRHdKcFNYUzNPMnNXRk9oMkFOdHNmTnh3a3pjQXpDRFVrV2UxTTlhenkz?=
 =?utf-8?B?WGZITjlyME5hRzFFbGFDdGNMWlIwRXJOUCsvdnFyVGxIQkc1T3o1Y1JDM3F2?=
 =?utf-8?B?QytZZXRLdXN6OTF4T0lqRlVHd1JiUjdvRGhrWlhNMUZmWXRaZCtvUDlXMDl6?=
 =?utf-8?B?eDlvbVpsSDhLY01zRTgwaU1zMEpXVjV6Q3lqdnQ5MCt2OWhmYlpvMFAzTDJz?=
 =?utf-8?B?TkhNQkhndktRWEo0RkNtT1d2c3RHUWRGU1pIRzdGUVh3OCthcWxoREEvV2Fz?=
 =?utf-8?B?dXFtMFF3QjVxem9lbVdsVFBxYU5oNVVicmVhV1VZMGNaQ2FRNEFGam92dWR6?=
 =?utf-8?B?MkxjdEREZER3UnRhRFV5aVBKcmxwaWlqbTNiMnAzaDVxQ2gzc2p0TjRCVmNG?=
 =?utf-8?B?TWc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 8646d0ce-2640-4e0d-4ae6-08dc8fb1154a
X-MS-Exchange-CrossTenant-AuthSource: VE1PR04MB6382.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2024 16:09:51.0298
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YRDcnC5tXtUc8f2Mu0pAVEWlGCe+QpMjdxsXIJCUZ0jWpQJTJ3Q2NlSs4LFs8SCP/+1Tx5XUI7t23AfNYDF/w8ifWxVnGBsSrPnyf2bCKBU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10642
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_091010_516272_7B0D1689 
X-CRM114-Status: UNSURE (   9.96  )
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

Mule emulates amc6821 and an I2C mux (mfd:0x18). The isl1208 is exposed
behind this mux.

Add the mux node and isl1208 as a default device.

Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 32 +++++++++++++++++++++-----
 1 file changed, 26 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index aebe1fedd2d8..e6d23e6d95fc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -12,6 +12,7 @@ / {
 	compatible = "tsd,rk3588-tiger", "rockchip,rk3588";
 
 	aliases {
+		i2c10 = &i2c10;
 		mmc0 = &sdhci;
 		rtc0 = &rtc_twi;
 	};
@@ -223,14 +224,33 @@ &i2c6 {
 	clock-frequency = <400000>;
 	status = "okay";
 
-	fan@18 {
-		compatible = "ti,amc6821";
+	mule@18 {
+		compatible = "tsd,mule";
 		reg = <0x18>;
-	};
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		fan: fan@18 {
+			compatible = "ti,amc6821";
+			reg = <0x18>;
+		};
+
+		i2c-mux {
+			compatible = "tsd,mule-i2c-mux";
+			#address-cells = <1>;
+			#size-cells = <0>;
 
-	rtc_twi: rtc@6f {
-		compatible = "isil,isl1208";
-		reg = <0x6f>;
+			i2c10: i2c@0 {
+				reg = <0x0>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				rtc_twi: rtc@6f {
+					compatible = "isil,isl1208";
+					reg = <0x6f>;
+				};
+			};
+		};
 	};
 };
 

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
