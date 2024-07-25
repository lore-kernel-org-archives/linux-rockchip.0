Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2736C3DA5D
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 13:29:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IhXFL0Zr6D8gBzOz/mu6jbVirqyYI5xS65gtAFrwONY=; b=1EeDlzpWrtARy6N9bkF07VU4s/
	bqPGiCTUM2xYbV1PZ2zZNnZ92MnzZUV41pcP2WxEKHmi1ybM+Zt7VbvolFY7yHvlE8tTDsHrg6618
	mQpV3xZdK7YRtQ+3tZQb8PrNihNE268B5NUsYHWVKx7//8kj3Lsw2BIgEWuQUuIAJN/eQVC0YbIVg
	pCx03iLzmX4/dC+OCpN4tjZF9gbqzBWlMjVJHQ/W1IN7AVBgQZtX/KWYpycVeZ5hxKe5ncpOqrm36
	157yvpG6rpycnk7e8RCvQlINhJi9N1FxYcbR0VeVVKorga+hSngOu/m8I6dZgNpFxHMEcbTBnxdjF
	TOB/8UJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWyWx-000000014uF-3hBO;
	Thu, 25 Jul 2024 13:29:15 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWyW9-000000014Vt-2quy;
	Thu, 25 Jul 2024 13:28:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RvWSqEbAflcZdoLz3IdsIjvrxPSyTVUS7HZkdXREvykRCs7/yfkL4yJ+GSYpgDLVwfTqVlyUEEJUjhozYE4AaHBoTN8PlnRMA55Dw0/2q4bGdqNpFQdUP9mfSKAbZ55S7ghgW6hozwaamb3wzL4QrjWm7vFMA68WgxjGAySO17VnzrjuenA+2rqSQMq1ns+OdKecYs1fykJCRIu47Gis/TReAyL6faG5NMcWihsImS7mibLdbCkd1nGSM6bQeOg9xzBpD0gNLiyU1qZV4CgUWIDiy9pmBfjfKFgWw4rt01/+SEkJiLbCoDQJaRmRk1j95iBzlGH80KKdVT504g3E5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3fm8yQ+KBG2t8PH/TgkrdICnoRfgysn+qCLCtueqNFE=;
 b=mw6nHmUcN3KkkNSE7qSJuhCaoD2u3CKwOh3t8KkOHpTDa6Xz2sIWqKERD0iohqvGcU48u1FYAu94K5BQenuSicStuTqiW1he2QWfUpYFsOhMRAZGuT8/Rd446SA4NG7zvyIApvd4XV9owqSD/PWp2ilR2KdQ8pe/a71lvYgm8TaQyEiNqZyMFzocJ7iFPxDmDo79WrC5elIP4h9FH2B2qH4m9d3CoX/TQ4e2bL/SxgyIUawEy1lIdGRrgnn9sC+kK+l/4Yzs1lS4R6xxAJgU4impoxXBL3DWqRNDDZdLiY21mt3SWHw3vG9o3gEm7QXIVWC0FBcxi+eA78MR0KbTzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3fm8yQ+KBG2t8PH/TgkrdICnoRfgysn+qCLCtueqNFE=;
 b=BPjhWkU+13DFax8JieB3eV5fj0TKwGa81P7ptw1l/lLsRSx6qPSPAbu+c/2M7XU6AG0ouncTqQIsFYIZmlb9KCZjDwrnba5kJdpUlRtIaP2rMroAWgHNpF6qk9cLPgSMdSu2knRXu01wEkjknHviccEOwnvwEvCeCdXdd6SUQDs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com (2603:10a6:10:321::10)
 by DU4PR04MB10670.eurprd04.prod.outlook.com (2603:10a6:10:58d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.28; Thu, 25 Jul
 2024 13:28:19 +0000
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181]) by DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181%4]) with mapi id 15.20.7784.016; Thu, 25 Jul 2024
 13:28:19 +0000
From: Farouk Bouabid <farouk.bouabid@cherry.de>
Date: Thu, 25 Jul 2024 15:27:50 +0200
Subject: [PATCH v6 4/8] hwmon: (amc6821) add support for tsd,mule
Message-Id: <20240725-dev-mule-i2c-mux-v6-4-f9f6d7b60fb2@cherry.de>
References: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
In-Reply-To: <20240725-dev-mule-i2c-mux-v6-0-f9f6d7b60fb2@cherry.de>
To: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Farouk Bouabid <farouk.bouabid@cherry.de>, 
 Quentin Schulz <quentin.schulz@cherry.de>, Peter Rosin <peda@axentia.se>, 
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.0
X-ClientProxiedBy: VI1P189CA0008.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:802:2a::21) To DU0PR04MB9562.eurprd04.prod.outlook.com
 (2603:10a6:10:321::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR04MB9562:EE_|DU4PR04MB10670:EE_
X-MS-Office365-Filtering-Correlation-Id: 05f8472b-b959-42a0-f3df-08dcacada56d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|7416014|366016|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OG5KMTNUbHFoWWFhN25CajI3ZHVlT2src2IxZTA1VHc3WnZ1NElsQWRnWkYy?=
 =?utf-8?B?d3hnNVEwVUJ4OGZnNDhDMkdSMkZubDlaMlZzdHpINUh3SlNTYTArbFRmYVE5?=
 =?utf-8?B?Zmt0UXhMQzYvaUhlaTJHV0hHV0FsUFp6bXorYUIrbTB2RmJ2bGtsVXVQZGVi?=
 =?utf-8?B?TUgzK3M0SERsYjZiNFJZK2Rjelp6NHZTLytBem1PMXB5RXBsQ0o2d1NyOHN3?=
 =?utf-8?B?V0ZOeGtrZldJazlOTkZMS2hWVm9xSzcrVlNSbW5DWWwvcU9jampQendUMkpa?=
 =?utf-8?B?TUtaS1h2djhsOEprOG9NNlUzQmFYZlI4d2Z5TjkvbVBEbXN6Q0pTYXBOZEpO?=
 =?utf-8?B?SVVKZm82UHJ1RjQ2YVhMNkgxUHYxTmdiRU5CeGF2U1VpTk1qSDU1UWNNTTlh?=
 =?utf-8?B?OS8vTnRmM004M2hjbHpJWkk0R0xuZFhqVWRYYkgxaWJoTHBVd1RJQkpkNXJu?=
 =?utf-8?B?Zm9uQ3locm5qN2NBRjVpTytvOWxXWkFobFA4YzJNeElYZ3pka3QycUEvTDBG?=
 =?utf-8?B?dStjMXEvN1BnZUZ2Uno5b2N4N0cvK2NlZnZVaTZ3UFBOVlBGMVN4bG85R2cv?=
 =?utf-8?B?bVN6dGhLSDI0YVZGRHB4RHA5NjNnM3BYMlE3REV3ZW5tdXR3WFQ4TXRvMGlI?=
 =?utf-8?B?cWwyU2dhT0FkSjZTK2VpcEM2Y3dFdVNYb254ejJEd0VuU0NZbmVVVlVUQ0RX?=
 =?utf-8?B?WUM1TU5GNlFsS1FMSjQ4TjVnTTUzRzJVTFJNMHpOR1IxcHpGTytPWmY2NkFR?=
 =?utf-8?B?U292dVFQRmxZay8xMGRkejFCZWVCZTRuU0NtRWJJWTN6c3pvQyt1UlhqVlJW?=
 =?utf-8?B?eS9WL0RYKzBTeFBmdXY0SXJTUFBYVy9RU3NGQnFkMGFiRXp0dklyTjZUNTNW?=
 =?utf-8?B?NlRHVVRNMmxxdGgrcDFHOGEwN1dFWW1GajdtRWR6OUJHZzgwZmYvWGVSMFlU?=
 =?utf-8?B?RGx1TUdNRkhqYjNiZ2hHbUhXamo3WE1WL2RGS3lKeUlVQXQrQmduNHl4a0Za?=
 =?utf-8?B?bTBnNkFaSm5tSFR1bUh0ZDZvL09DdllGbEZyZ2llVlRUWXVpc3FCbjVaUFBR?=
 =?utf-8?B?Z1ZxQmxETnloanp3dlV1eEEzQ0xSUjhoempPbTl1OUhVRS9ZL3h1cklFY25B?=
 =?utf-8?B?K2F1OTVpcUhNeVZRakpSaVhaU2xjS0hiZ1l0OUxOb05jTVJiL2ZydW5BanVz?=
 =?utf-8?B?SkdIc0hJbXFWc3B0TmtrVERMRjFTMi9KR0IxZ1JFVm5RTzI0Vmx0VmFxVk83?=
 =?utf-8?B?QkdaWEJ1NW4wS0t0MVNTVXJoSkRibFBPdklHdzdxeS91WXpuanhkQjB1cktT?=
 =?utf-8?B?VFhqK2MrTVlURGdlNG9mOHd2ekZCaEVJWnM3dG1QOXFkQTZVb3p4eUdLaUh0?=
 =?utf-8?B?YmNSWDFORU1kemF4d1Z3bjFtYVRCZkRINWxMNTJod3FZZ1RHOEQxaXNCa3Ns?=
 =?utf-8?B?UTQxMEpqNEVTaW96QXU3NUs5UFBiQkNmQVB4RzI4Qm95WlNiNXV2M0NCWnF4?=
 =?utf-8?B?ZDNDTklmQks1ZEU4alRleHNTL0IySWRaSEZkZVlxdWl2LzQxdVpPRmkxOU1S?=
 =?utf-8?B?T3JPY21FSkNndVhpeWJucHVVeVM0c0NpYk51YU1KU01CbC9tUEVZNTlramlJ?=
 =?utf-8?B?ZWRqNCtHSUJJUUo2bVNPTjA2LzRWOExWYXB4Kzk0cHJabkNwdG9kTHNydHhk?=
 =?utf-8?B?Z01HUFBIV3gvanZxTkZSbXQrd1pGWis1MW9BTnRZcEtsWjc1Q1dZOTZmeDlU?=
 =?utf-8?B?dWI4ZnpVSVM1akxFQ1RKVG80OFQwSWtNU0tRc1hsVTdPMU1KMjVYdU5UTVRT?=
 =?utf-8?B?MkM1eTNnYnBnVE45QmYxeVBYVnh4bjMyWGtZc2lsQmx3MnpETUhpNllUQjlJ?=
 =?utf-8?B?NnRycVArWEt6YzhUR0toUE9XMUJ2a056Ti9MNE54K1ljcXNJcm5lM1VRMUh6?=
 =?utf-8?Q?JOAomVppADI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9562.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(7416014)(366016)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NiszVjdlc2dycElWSm8vOThqMjZTaHZvdEJlTkhjci92L091Q1lqVlQ4a054?=
 =?utf-8?B?TmY4THNpakJHb0FML0o4c3RtSEExRVVKeEJVbGswZVJaQzdlL0NhMUc1Q3Bi?=
 =?utf-8?B?ellGMEI0VkYrdHVtbUk4WUV0Wlgvc0RDejdPNnZybHZhTGZLVlA2eTFmMmlk?=
 =?utf-8?B?cmRWcnQyY1ZSQURxdTltTVFSYytleFBqNlJ4Ym5rYnc0NERxencybDZqdVhL?=
 =?utf-8?B?djBiQ09jcGRZdVhGYW5WSnZsbjlSRzgxVnhYcHZldTZBUXBuVUJLNnk1dnFh?=
 =?utf-8?B?NnI2ay9CZDZHWGwxZlhDUVhXV01RL2lrb0l4SEdabDBaVDVFQXhmN1A1dEdE?=
 =?utf-8?B?eHJpRXl6UHpzTjRueG5vY1ptcUxnQmluTGhKSzBWMTJUZ1AvbjI3ckl3b3NJ?=
 =?utf-8?B?cU5vT3hYQlIyYzZkMGIxSnF1RUFtRjBuRldRTUZPYUxpdUJ2eEtSeDRYNkhS?=
 =?utf-8?B?eUZnNDRLUlNwRU5pZi9GZTd3QUh2eEFXd1ZaTnNUMngwOWdnbncvOGZnOHZR?=
 =?utf-8?B?SjdwV3B1ellmL3BsTEkrOFV3TThWUnFwcXJhUW1EeVNkVVNWZStER04xUU41?=
 =?utf-8?B?ZEcvTXh6WHA5RzJkc1FiM1hpK0JQWjQ5SUZEckNBUENqb2pMbSs5Nks5Z1E5?=
 =?utf-8?B?ekNnSmNnNnpHVGI0dFJIbUhRNXZYMWF5RUlWOW9mZlZRKzI4Q25EMm9PUEkw?=
 =?utf-8?B?VHdEeDRsemFDMDVQSTJyOEVScTNjc0toOUNmTVRWUGZHUHM0UVM4UVRZTlI2?=
 =?utf-8?B?VXpTMGJoRXpPVDlxY05zVXVLYWdxelZManFmRVVheVhyQmFhYjQ1ZHdHdFZy?=
 =?utf-8?B?czFKUFRtL1dFZHkxZjN2dTBjWlQrU3lCb0x5d1Q0UUpXOXFKQUwwK2cycHhv?=
 =?utf-8?B?Z1B0QzhtdVZlaERid2o2Sk5nKzhCaGh6OEJmcElCdnVXbzFEOE1kaHFyV2pw?=
 =?utf-8?B?NSthZkd2TGtjZGlUd2J3cGNMQmtPY1BvZU1tdTdvUE90N3lQaDRpaFpyYjN3?=
 =?utf-8?B?eE9WV3JEekFmd1Rpa09WRTdNUnRUTU9WT0pYaEl2aGUrNmJPUm5HaXEwRTVz?=
 =?utf-8?B?RzI1aVV3UHJvMkE3NTF4K2VlTExjeXBWZTZGeXpaWXBaeWdRYU01MVJ0Ukts?=
 =?utf-8?B?NS8zTDNrRW1xak4ycCsxcU01YThaV2pob2dNRVRSNzlEQkUzUkl5RTk5Tm95?=
 =?utf-8?B?S3ZMZWJuUUcwaWNqelpISzJUWEV4NCtCOE9neHRVYjluQ2pzeFNKWDl1WUxa?=
 =?utf-8?B?aDV5S0RDMkhQN3lkMld3Y1pZT0JaOWhEbzVjTUxwNWkxRUdZWXNlS0RjOS9Y?=
 =?utf-8?B?eS9nT1BzNzB3ZkJDRy9aYlBuZWxyTk1NOWF2MDRPeXd0b0FPcVkrK3FBNisx?=
 =?utf-8?B?L0E2SW9UL0swNDlPOFJaZVp4ZTRMNUJNYlBEbVZkalRxWlZlQUNIb3ZHTi9W?=
 =?utf-8?B?b2svV2UwS0U4b24ybkwyNDU3eVZSVWFyMHNXNHlocVJwd3VodGJFaXlMMWVi?=
 =?utf-8?B?RmRrTzI0WDBtRDJ2YmNHbDg3WkdjS1EwbENVVkoxRU42cDRHZjBhL2ZmQkZE?=
 =?utf-8?B?OWZTSjJjTGJyaW9wNTlxOFQvYzVsMEJBNGlLdUZDb3R1TXlHN1VDVlVyY3Y1?=
 =?utf-8?B?d0w2SDVvWlRVT2txaGNtS0U5VHRqeFlxbFpNR3Z2ek01aVUyQ0NsRG1ZZDRW?=
 =?utf-8?B?MCt2b1U3L0RZSTgxSkRiZ3VjRVdMcEFRT1RSLzRPQ0k4MER1eW1sNkpyVlVB?=
 =?utf-8?B?dmJJbWpySUtybDFleDY3V2d6VWRsNmJSZEdObzM1bXJpdFBLdGlHbWRiWk5R?=
 =?utf-8?B?OUttU1NBTGNvSmZmMEhhUk5Rd3dZZldtR2lYZHRUVGlEakZoVEFoUDcxSlVn?=
 =?utf-8?B?b2I5WDZJdjRpenNLWHFtTjRPYTdxZHAwRmFTcUN0Wkx2UG1MYnVHNU9JVExa?=
 =?utf-8?B?VnJjcWJuZkdNbld1NTRsaHB5TVZzN2xGYVlXbDhhVkpFQXF0a0VJUzRxQkdr?=
 =?utf-8?B?OGJkTVo3R1pJQmMzdzJLOW81aE54YmpqMEUxb1lIWHVzaHF1UHVpd1BOcU5R?=
 =?utf-8?B?T3FrcWI3eXNFVW9EcmhFNUZucXo5VkdwN3lkZVNYQXhkTXRTNVAwMldxM0o1?=
 =?utf-8?B?MWt0MytGWXdpcSt0R3pFTUV4SmxVdFVxc0M4YU44SHdiN2RtSDVrRk1saStq?=
 =?utf-8?B?ZHc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 05f8472b-b959-42a0-f3df-08dcacada56d
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9562.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2024 13:28:18.5776
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0xgVVpPnS7yA6YU40lrE0LqbPMKg3S4WEbUSsOX4KGDeCBHKx1/PR5r31O/mZ9HEO7GUgzQ483voMkRKKuX2suSioKYKM/TJXRfAxI2sTWs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB10670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_062825_878513_F224BD57 
X-CRM114-Status: GOOD (  14.64  )
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

Theobroma Systems Mule is an MCU that emulates a set of I2C devices,
among which is an amc6821 and other devices that are reachable through
an I2C-mux.

The devices on the mux can be selected by writing the appropriate device
number to an I2C config register (amc6821: reg 0xff)

Implement "tsd,mule" compatible to instantiate the I2C-mux platform device
when probing the amc6821.

Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
---
 drivers/hwmon/amc6821.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/hwmon/amc6821.c b/drivers/hwmon/amc6821.c
index ec94392fcb65..a3fdbcf01ecd 100644
--- a/drivers/hwmon/amc6821.c
+++ b/drivers/hwmon/amc6821.c
@@ -22,6 +22,7 @@
 #include <linux/minmax.h>
 #include <linux/module.h>
 #include <linux/mutex.h>
+#include <linux/of_platform.h>
 #include <linux/regmap.h>
 #include <linux/slab.h>
 
@@ -897,7 +898,6 @@ static bool amc6821_volatile_reg(struct device *dev, unsigned int reg)
 static const struct regmap_config amc6821_regmap_config = {
 	.reg_bits = 8,
 	.val_bits = 8,
-	.max_register = AMC6821_REG_CONF3,
 	.volatile_reg = amc6821_volatile_reg,
 	.cache_type = REGCACHE_MAPLE,
 };
@@ -924,6 +924,13 @@ static int amc6821_probe(struct i2c_client *client)
 	if (err)
 		return err;
 
+	if (of_device_is_compatible(dev->of_node, "tsd,mule")) {
+		err = devm_of_platform_populate(dev);
+		if (err)
+			return dev_err_probe(dev, err,
+				     "Failed to create sub-devices\n");
+	}
+
 	hwmon_dev = devm_hwmon_device_register_with_info(dev, client->name,
 							 data, &amc6821_chip_info,
 							 amc6821_groups);
@@ -941,6 +948,9 @@ static const struct of_device_id __maybe_unused amc6821_of_match[] = {
 	{
 		.compatible = "ti,amc6821",
 	},
+	{
+		.compatible = "tsd,mule",
+	},
 	{ }
 };
 

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
