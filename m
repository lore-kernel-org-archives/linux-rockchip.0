Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7E16C3271E
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Jul 2024 16:15:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gv+aQASMtPurM1XWgBDJ6yb6BPZRwVX/tqPV2v8z3/E=; b=ZSju25TKGZ55p/gVBb4GKd/s8n
	AdrNmpx9AGCRZZzeHTBMdOkyRJpK/X/wZR+p4NMcHOs8hs6pI/u35WKcCw/4D6nxHTQXtzwD0+1dm
	Zh7cBUyuhVrGi+5287R0ETLeyDCaj1hVglT3iXbqcWoT/QXJzAaMIN9+ow5AFYsB7l8dEGrMWB3Ov
	BXv4rkOuGxGgSoKIvE7zB3phQ8K1C7cff7dnyLAp9EhnNvxXRbGUGoaRyGDbD2LVdBRZiP/i6CxVs
	xGYMRWRvyx8Ftp5lLRWw4/L4wLD5d64d0e0rDvTYckCWLYcDYQHE0QOW5htf3WvkUYhEGGeCBlL9j
	bqz6ufUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQr1H-00000004OuX-2Pth;
	Mon, 08 Jul 2024 16:15:15 +0000
Received: from mail-am6eur05on20709.outbound.protection.outlook.com ([2a01:111:f403:2612::709] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sQqzZ-00000004Nxm-1NCg;
	Mon, 08 Jul 2024 16:13:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a6Xv/rbNLwaHAjfMl128vNUAzgWD28MsfuhnwWn6CkE7bUkULkC2fEo8nnxKiKfIKVlIXDZIi+HoqBE1loQzTNAUwnhKzLyrYKXGxIKdisPuVu+Tqq0VBU/iypOSR6KnywTgQSY9gS5B2kPO3E5LUiyoP82tqpC+C0/9U1Yrxu3nTWEV5HbnVd6oDyds3tddaii4e5ak9x18zgDcRRA56T9gkjrXydqi/m06ONf71hq5LqyYD9LFasYnZS3LJ+tJ6KZ81i3cnzlqgJtxLzYnRI3bVBCR4PI44xMhqiylzg9Rf73ay3EgwoyEfw8W7j3uKXFK/feOJsXss2qBfvf4Bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vi2HZwiFEVHtrJA2zjt1qkuKLdtn2l7f/q+3qLebRPw=;
 b=FSCladac6bDy9IXlU5BqaCLl7vrZRBXixfcSkL34wxMnAFmxbShuBoq6UXwaWU/BBCG04WLDkPyTlqOzvdzNcKExL/e5UMXXwLzdGMepr2WSoVBX9+jW6ZGxzvP9dvyKJfCU7moe5IFRGwj6up6NaydkKCSy4xyxbIJgJm0EL16LAei8MK5ePdP8RwkBKu9xiOUY/Pgu3NyenP1tgrwRAjBwtiDyJFWGdl4ayh3UpyUFh4MBgHndWQE0k3j58xyNWMrOhPBpIe8IUunYFh5DkyGG5VIQPd5VE84vble2S/JrI5CMNTnwJX74cYLhuMa1Ef5Uv8RKDvNYceiEQlmtOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vi2HZwiFEVHtrJA2zjt1qkuKLdtn2l7f/q+3qLebRPw=;
 b=dVksHG14lPI4JubCWWQIxwnPabJ4TXm0iUp1UMohc4BFjoBK3Ur/Qvji7juZuN7XbaUhawpNf5YigooEYkxht5EmZyEGDMaBYiZBMWC16irO+T3MEv7a3lFlpze1u7F2BmZNb6JuBLyvaD6y/K+wmWLGWytQ3lfemIrDpZHqOhg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com (2603:10a6:10:321::10)
 by GV1PR04MB9055.eurprd04.prod.outlook.com (2603:10a6:150:1e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Mon, 8 Jul
 2024 16:13:16 +0000
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181]) by DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181%4]) with mapi id 15.20.7741.033; Mon, 8 Jul 2024
 16:13:16 +0000
From: Farouk Bouabid <farouk.bouabid@cherry.de>
Date: Mon, 08 Jul 2024 18:12:18 +0200
Subject: [PATCH v5 7/8] arm64: dts: rockchip: add tsd,mule-i2c-mux on
 rk3588-tiger
Message-Id: <20240708-dev-mule-i2c-mux-v5-7-71446d3f0b8d@cherry.de>
References: <20240708-dev-mule-i2c-mux-v5-0-71446d3f0b8d@cherry.de>
In-Reply-To: <20240708-dev-mule-i2c-mux-v5-0-71446d3f0b8d@cherry.de>
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
X-ClientProxiedBy: VE1PR03CA0057.eurprd03.prod.outlook.com
 (2603:10a6:803:118::46) To DU0PR04MB9562.eurprd04.prod.outlook.com
 (2603:10a6:10:321::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR04MB9562:EE_|GV1PR04MB9055:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e39e594-6242-4e10-598d-08dc9f68dfc4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|7416014|52116014|376014|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RjVvMk56ZFR1Z2VmQVkzVTlPOEE2cmcxWTdETDcvbVBzRHRKTTVONlVmNDM4?=
 =?utf-8?B?UDNiY21sM0pOU0VOd0hkNjVwUU9tWjNldmVPYWg2RFd1aXNXaDhkUStFTHhT?=
 =?utf-8?B?bXZhOXU4cTN0OEJpRGduMFdma1J4RmV0TEkycFNiNVFleWhkaS9iczd5OHBO?=
 =?utf-8?B?cDVtalRaTUZXVWZXUnV4eWZWdWNsaEJnWk1ybEZtK2NlTnc0YTRnZTJVL1Zi?=
 =?utf-8?B?ci9pdWRNd2NOV3hXZmM0MnQ1eWZ4ZmRLT1FZREdCZ2IwWmdiRmRNUmN5SzE2?=
 =?utf-8?B?SlExR0Fnbnp3RjNYbll2cE50aTgvYWs1UEQraEJTQ1I5OXFXUnRlQlIrM1o1?=
 =?utf-8?B?cVUwdUNoNlJJTms5cWJydXg2MlM5TCttQjNKcGk2bkNLdGZOOVI3Q0YzclFi?=
 =?utf-8?B?T2pKVEJFWWtBSThJblFkeDBmZW8zVzd4eXkrYmZ0Q2trMVJwL0Y3THk5Z0Zs?=
 =?utf-8?B?cU1DbUFiVTNNQkhKU1BJMlMxRFdhTjNwMy9aUDNCKzJmM0NHdDZRbUxoRVpr?=
 =?utf-8?B?TE5EN1YwWFpvbjlaOVluOGQzWThHR3YzMU5kZ3M0aWtuYUpvUkI3b2hIbDI1?=
 =?utf-8?B?aERORXNFY1ZEeVdUeXNBbHJLZVFrVmMvK04rNDBkN3VPYXFJL1gzbEdDNGFQ?=
 =?utf-8?B?bFU2MmdnVW82V1dDeFRNU0ExaWU5aDg1dHRQR3V3cmw0MFdwSjJMRHgxOGNG?=
 =?utf-8?B?RXF6WUxBV1RDU2huL3psYmU3UXo2NEZ5enpGM2RDVU1YWnpnWFRMV2VqNGt1?=
 =?utf-8?B?ejNuUmNNcGxkTC8zMWFsWWF6KzlXTzIvZ001Q0c2M0VHR211SXIrZTJxU2Uw?=
 =?utf-8?B?WWJWMFFqS3BkSUdGNDJzRnlIMXlndW45SmVNNGhQYXViMElJdWxPWWdud3FH?=
 =?utf-8?B?UytCU0llamNlN0xIOFhJR0FKYjZSKy9XRE42K0tNcDdQeS9kRk1rRlp4VERh?=
 =?utf-8?B?dTZHbE96M3dINUlFL2hDNXlPVGhPcXVOYVJ3RGtJalRyNlJZeFhnQzlFZGxw?=
 =?utf-8?B?YUg0NVBHNGJSSm8yUmpzbHhwcVZhVlBwakVwVGxHaVREOXlUU09xTHZja3Yx?=
 =?utf-8?B?MnFrcXZQYnNyWGdwMjU1MFhFcGJ6RnVya2NXeGZ3OUFNQkNPRmNrdTF5eHhs?=
 =?utf-8?B?VysxTlhHaWVPNjA4NVFUTzNoT2FhSFhRUlRLZG5HRHdIYkZMOUFOOTlDZ2RH?=
 =?utf-8?B?a1ZZRWFNMlViOEpkb21Fd0FLdXIvMUtNWVkyWmpEbjMvWFRPekFQZ3U5UFFv?=
 =?utf-8?B?VHhKRFdCT1VwT0UvdlFuN3ozKzM1WXU3OE9Bc1RWTHlnUEY0aWpXT0ppNHdj?=
 =?utf-8?B?RklUSm5HT3o2eFpxaFhTbUVGN0ZWWFdtMklLMzlCa21hb24zaUQ1YTFUdkhj?=
 =?utf-8?B?aEV4M2FBZSt0OUEwaGVYSVkvdWlGZVM0b1AwMUFlcFhibnF3RUZqY01oYk03?=
 =?utf-8?B?TGcrc093WEM0U25pWldIVVJMN0l1MCt1OEp1U0ZHMVRqcXRLVUM3RjdxSWYy?=
 =?utf-8?B?czNpZjc5R3BjM0I5U2phRjU4enNFb0pPb2dNK2UvL2cxNGZYVjFWZG5KTVRB?=
 =?utf-8?B?cEVjSmdlVVBPbTBOdkZCYXJ1cTJBUFBqZUVsVTMwQUN0VVhkRWZHWWJxRFNZ?=
 =?utf-8?B?RjM3R09nUEdsWXQ2MW5Rb0NGN25ORjFLYlRaL0FtZ2RVWGdzM2Y0M0I3bm4r?=
 =?utf-8?B?dDBNTnR5RFczKytrV2dmM1FnL05GbURueGlOb3A4ekxDZnBnTENPaFMxVkZX?=
 =?utf-8?B?R2hBN3ZXRWQxRTVKRWVmNUF5anQ5V3liWG1kbkU1ZUk1YllqVDhWZmM4MFBt?=
 =?utf-8?B?OVdnY1kvODlzcDFGNzJpYjYwSndTVW0vVHhvR29TZE9rUmJmNVRrcCtFbHM0?=
 =?utf-8?B?QVkyUDZueE1hYWtQUy9jY3dINS9MUUxPaEM5eTA1RFJIc2UyQkVCdGFMSWt1?=
 =?utf-8?Q?+uqs6Dm4+dk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9562.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(7416014)(52116014)(376014)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M1psSnV1dElLNUxnSDQvR2t4S3pSN0FjT1RSUGlyNVpKajdMeUZiNVNlVSs0?=
 =?utf-8?B?T2pTZElldEtJd2lhL0lFdGw5MnRKWDVJTVZDSHBEc1lEclNLRTRpYngwNTlJ?=
 =?utf-8?B?VHBXQmZ4eUxOM1BVOGN3Q0JqVXIzMmVkTUU5SXA1Ris2ajhWMjJnS003ZDlo?=
 =?utf-8?B?bVFaa1JtcG8zT1VxUWhON2Z1NEwyek5tNUtwUU1sNkhXMWU3ZUt1RmYvS1lr?=
 =?utf-8?B?Y0xram5weEE3YnNudnI0WFFLejExM2w1TjZPakpPTGlIYWdQZHdzQXJITDlD?=
 =?utf-8?B?TkVCWE1POGttYVA5RGNLakhRNENkbUFPNWhPTzB0UForQzNuOU4rc2t2M2VT?=
 =?utf-8?B?NWdycGIrZEduVTJRcWN6bWU3dGhXL2I1WmdCeS84SWd2ZVc4enJRRVdwckpE?=
 =?utf-8?B?SXgweEFqQ0hGdk85NFYxWWg5RW9BYitLUU1ubS9aUGZBS1V0UW9KTGk3YXRh?=
 =?utf-8?B?Uk5PL2NKc0JmMTdvalZpOENqYWdYZSt0VlNOQVllbTMvbGVWK0Z5WDlGR0NW?=
 =?utf-8?B?azYzQUdUdlovWWY0Nnl5ZjdHVndaRENBbzc0d1Z1VWwxZTh6a1FlZjZYdWhC?=
 =?utf-8?B?YlNKMHdHblp5Sk0xSEVIYTNLZUFOU2MwNm14cmxpeTQxYTB3Q29ENE5kbmlZ?=
 =?utf-8?B?SzBLV2dkQWpqWTI3UklTR0xNcjVka3BDYnVHSnQvcUJDS1I2VUdURzNtTnVq?=
 =?utf-8?B?K0x6WENIUGtzRVp4eEtsWWlJbE5Mcm85eWNZR01QaHZEMTFRamJaZmY1OTdD?=
 =?utf-8?B?MlFZdmlUb0t0MjBDTHlGQTZmelZ6cEhRRm8vVzdXWHlyUGFycDRqbDNGWE5M?=
 =?utf-8?B?VVlyaExhZWp6WmhCNTUxZmthOHdNODlDdXR3SjFBR0llVmovRzV6V0daTnRx?=
 =?utf-8?B?R2tYWDNFcndMK25tUVpOZlBrM3hqRUR0USt5TG16NkxTOExzNG9jL0s5K3ZH?=
 =?utf-8?B?U2VFeDBNV0NTVC93ekFGL04rQXdYTHZPa2tPVFBNR0dRbmVyYkp1YWkwVWpE?=
 =?utf-8?B?WmYrbko4Um9CKzl1ZnJjZkVqOThIc0QvMTdPc2ZKbGFqWTJMVnB1NlhwdFNk?=
 =?utf-8?B?VUIzME9FYlVJMHdNeWQxTS9VV1JzS0dLcjdvWDNIclo4NnhGa3dHamwvNW9F?=
 =?utf-8?B?WjM5QU5WVUxaUUQ1OHZkN3oxa0NIQXJ5NHo1YTVZa29oYW5Yc2t4cyszMVhT?=
 =?utf-8?B?MFIxdFkwRGdES05rZExrcE1JMWhvbE5vKzd4SEcySisxMU1NYzg0MHdyQnJz?=
 =?utf-8?B?ZVBtakxuN2F4SWtPQkluc3FwREhNZy9xa0IrQUZSaTEvcW5aQmJ5VEF1Ly92?=
 =?utf-8?B?QXE1NmxvVjVzc1NmbGFqbnFKekVpMjlZYnN0eXhINjdNUjBEWVA3YkxoRUI2?=
 =?utf-8?B?Y1NXNjJabmY3bTBoRHhLVzFoWkp0YnpwL3laTGdGRmJ1RUE0bVMzVTd1V255?=
 =?utf-8?B?eGd2c2RqeWtBMWFBeXJ5U01XSmhISjBMZVpUYi9rclJ0RFJabGVWSFNpSXNP?=
 =?utf-8?B?NzdRdFZIb1JKU2F3K1p2Q3NQMGF3azRXL0dyaW9jdXl3S0NnSGRvRzlyQks0?=
 =?utf-8?B?TWw0eWlXb2txclZRY1hIRC9LN0M1azg4eUlUOG1YdGFVWk5sQjhDWXE5TWRZ?=
 =?utf-8?B?N2ROeVh4RStJQXQzYWNITHlBU09Vb1pOT0RiQVpEa2xmak9Wa0tlRkRndUJ6?=
 =?utf-8?B?QzRmVU16eVFEQ0M0UE1id3RZcDNuVUkrUCtvbzJOc0FjTFRWU3N0UFZNcGhn?=
 =?utf-8?B?MGljaXV4bUljalByNjhrNy9YcGpIN2ZFS2ExWVVuUmw3RWpRcDVsN3RRbTBj?=
 =?utf-8?B?WkdWMHp3amkwLzUvSUNISGhialF6UDlJdEFHeVE3YThiRW9GeWNqdTluRTY0?=
 =?utf-8?B?Q2hYNFNJNm1tTE1lc3RZNktPT3lsS1V2bXpWVFNhV0cxZTNBeWtxNEJRRmZN?=
 =?utf-8?B?dk5xSWFVMWp4bHJJdk5iZ2V4K1N4RGhHM1JUc08weXZKeks4a1ZZMmdBZWtj?=
 =?utf-8?B?ZFhJZklkRjJVanROZWYxMEFpYjdaRGhxektKWVhGdzkwWlF4eVI1TTh4dHVR?=
 =?utf-8?B?anJaMVFBcUN6Z2dBaXhqT0VRTmdmUW0rNWlaUVl1TzNxRWFtOVRCSUdHcEM4?=
 =?utf-8?B?U01GZnJGMzV4T1prUDNldC84aW9BeVg1RkVrdHg5aUxMWnl6c3ovSmM2TmRt?=
 =?utf-8?B?RHc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e39e594-6242-4e10-598d-08dc9f68dfc4
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9562.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2024 16:13:16.0428
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kGr2+W5CaN9aooDeFZu3V2WXJKY8ju9TBGtWcZ4OKgHsRHudeJLq6l1YQGspKjBP2RYcDFgzAoWUdYQDsxfQwAfkmLF4Sz18mOcQSksuQ0Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR04MB9055
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_091329_418285_0F23FC2D 
X-CRM114-Status: GOOD (  10.63  )
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

Add the tsd,mule-i2c-mux alongside with the amc6821 (tsd,mule) and isl1208
as a default device on the mux.

Signed-off-by: Farouk Bouabid <farouk.bouabid@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
index 615094bb8ba3..a02f1178c60c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi
@@ -12,6 +12,7 @@ / {
 	compatible = "tsd,rk3588-tiger", "rockchip,rk3588";
 
 	aliases {
+		i2c10 = &i2c10;
 		mmc0 = &sdhci;
 		rtc0 = &rtc_twi;
 	};
@@ -224,13 +225,25 @@ &i2c6 {
 	status = "okay";
 
 	fan@18 {
-		compatible = "ti,amc6821";
+		compatible = "tsd,mule", "ti,amc6821";
 		reg = <0x18>;
-	};
 
-	rtc_twi: rtc@6f {
-		compatible = "isil,isl1208";
-		reg = <0x6f>;
+		i2c-mux {
+			compatible = "tsd,mule-i2c-mux";
+			#address-cells = <1>;
+			#size-cells = <0>;
+
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
