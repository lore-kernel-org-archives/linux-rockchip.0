Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81392C5B543
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 09:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FGiUoVNaNZ7MnsQkflStl9o3H1N/hBddPN7x7W8vfLY=; b=XR62iWZ6CsLg6H+fA+EvzABoqZ
	VvILVdzpOp9duzTMO9bTPwMXtMXrzQ9Qru9rlBG/y0/670j7wuhLsbTw/G/AtmM1y0bxwPYfNXQI1
	GL6PlC3DHe3a2ZFkEFNbZWE2g/IFJ5ue0p/tnpTGXRwLfqBhPjTXMZsoeyYDBIsGlu7rOawrQM2zN
	GnbOAX6U6GRlfq7e6IirAq1TFImITDA0vra/17QkuEZ2OGHlYpW7GPMVRqRWTR+dK6u7e15nlOgCT
	6ckHrEzXBusG8ow3RNOB77PwVHuXoGMGwyFAJiRQkFD9JOyUVMh5LjElZcwiwELBjwlgO5vv0VhR3
	uDZnJ4dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN6qB-0000000F9he-2WvD;
	Thu, 05 Jun 2025 09:24:51 +0000
Received: from mail-westeuropeazlp170100001.outbound.protection.outlook.com ([2a01:111:f403:c201::1] helo=AM0PR83CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN6nw-0000000F9U8-0biF;
	Thu, 05 Jun 2025 09:22:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MoQaFJO4xzS+wFz8Dfeoz5oWpDARoF9G9vjmWVasnDqlf3t+jxokvUOp/cRVEeZ/P+DPpSZTnLvM47VRFfmw+umWPAHWpt6vR7/IiY/zFJMAif29k3pVjgJnx5zRKjlvPWSp4xgX3NJOHdz9QOmnBeu3h76DohFIzltdjZwuSW5VS+2Mrx11gpEle7gS6ORnQVUZEsN7/x1tBuC2qjp+DCCgG6IY6IBRU8AAY8yILnFoMduKVKCDyS5afLigdxu2mQPb9BBsoOGVMSMjIGyKjjhoqX7mvNjoMofvt+Sj79b3Nm3cAG1EMYVm110V+0qVUEeeyQwCXA0eIOSDhpuhFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nB9KLm1Szno+5xA4SokLhU2/Egrk2cKBGoNKvMk7gIg=;
 b=ORHfqyuoWwWlUokJAmSbm+AlB7gZHedPHNS0IW9COvJ1RobsidTCIVR0b2R2Vaw5Xg8C99BOACI9Ubw2JISoVPtXZVIskt66zMxcgrR3l9h6oKjMkJRDAiv+EL7BNI/0RYkglMFHEogJolu9PsGMalalgmab34HZx/AWkBiCcu0IxSgYPV1mggo6vd/J2DU3xSk/xhTh3+YgdvO4Ldwg8tLQlLCMnJTU4v5B3pH17faB/kbVLNd6er9/hWWp1tOyLQF3bqMuubEd+fOpahI200ctbnXsfcZTpf9A3sqYaUNiFkg0HhKMTSom87SodKBxdurdoF8BMG0v3r0Skh9YTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nB9KLm1Szno+5xA4SokLhU2/Egrk2cKBGoNKvMk7gIg=;
 b=EMfk8BnyX2wwfIDrEggZr4Pl5lV6IMigL9TVQXoKbXTjwXC+LvSOGHydJkGexgngOGdVGQ79r9N0C+0Sx8g5WeLGKhoB4cBcWm16ags3CmM5XToN68jqkhnerFWn/weimuAAejUUmuHhWb4ExugzR4EG9EsbHmcUHZM6i3XsvEA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DBBPR04MB7721.eurprd04.prod.outlook.com (2603:10a6:10:1f6::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8792.33; Thu, 5 Jun
 2025 09:22:27 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.8813.018; Thu, 5 Jun 2025
 09:22:27 +0000
Message-ID: <b42e28fb-e254-4901-932f-c5282c189dea@cherry.de>
Date: Thu, 5 Jun 2025 11:22:26 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: add regulator-enable-ramp-delay to
 RK860-2/-3 regulators
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: jonas@kwiboo.se, dsimic@manjaro.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250604202425.239924-1-heiko@sntech.de>
 <e4a1bf0a-0fc5-4c15-96dc-7e9c7ae3ccd5@cherry.de> <49977521.MN2xkq1pzW@diego>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <49977521.MN2xkq1pzW@diego>
X-ClientProxiedBy: FR0P281CA0197.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ad::20) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DBBPR04MB7721:EE_
X-MS-Office365-Filtering-Correlation-Id: ab0489fe-3587-4489-0c2b-08dda4127d0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dUZYZG5qaHJQNjFnNndCVUJ2emljN2RhYTZTN1NhcWVrK1B5VWREOWRseUR5?=
 =?utf-8?B?bGpGRHc2ZnJiT0MzWWZsTmZldGhJWDMwZ0VmQWFyeTM4dlJYN3VrNjc1SVFP?=
 =?utf-8?B?WldpRGlCb2U2VW95Qm14TE5LTEthNGdaWk9ZdUhYK0l1R1NHek1mNmo3ejJ5?=
 =?utf-8?B?Q0w3RmxxMDRrcStoaExoUGVkWmpMa2JMVzJLUUJ3MVF4R3QyelFZSStGT3VK?=
 =?utf-8?B?bDBOcEowaC8vQmk2TFFRMW1mcllHZUJHb2oxdHZ4ekx2NFkycEJXM09Ka3lp?=
 =?utf-8?B?Y3BNVXpEVzgzNEJHVkRuMnVKbGRXNURVblpOK29BOHdEbzI4YUJHeE5Gb0dK?=
 =?utf-8?B?OFhKNzFBTXVtSkYwNitBenloM3ViWHAvb0doWDBIa3hzWjdLVDZBYnpYQzdX?=
 =?utf-8?B?a0UyMDRhRzJ2Y0o5Y05OL1Yzd21hSzdicjNSM0tCZHM5Qk9Fa1lzby8yenFQ?=
 =?utf-8?B?bW0zSGdhancrUCtLaHVPbnhYRkpHZC8xRlA3bTlWWlU2eG1kYWtURVJuNnNs?=
 =?utf-8?B?UlB4enpWd1pMMDhLRjFwUnp6RWFJVmxDVDNsajRKSzRjdU1jY0kzU2dTa1BY?=
 =?utf-8?B?UTFzWGRjQnh5aXkrS3JHcnNiNDhPblRSaENWYlN3Y2c5bTJlVkV3RXdZcGFm?=
 =?utf-8?B?cWo2M0lrNk5uUmpCclhrTFVodnlMaEJ5MFdtNm41SmtLRU9UWExWVUM1dERv?=
 =?utf-8?B?cDY2WHZvT0FaWEtxbW9yK0lsdmNpWjJpQjg4N1ZnWVp4eFdCOWQ3ckZpSmxq?=
 =?utf-8?B?eXU0QUtSWFJmWmNlWVhFbUZsTmsxWUFZeW9RbjBSOE9lem5zUUZveThtWVU1?=
 =?utf-8?B?T2JuVXZuNnNwSUZlc1lLa1hzVkxaSzM4WjJLRlRHS3hKV2NuM1RKV01rcXBr?=
 =?utf-8?B?QVhYTDMzQk1reXRCL2U0ZkxWeTNudHBuV2hxVHFJV0R2dlR2VmNxczBnQVlN?=
 =?utf-8?B?elRYQUNkdEJEQmJGQ0g3cUptemhDN3FFM2hlU3d2U2tVS2tRZXJEcHhoNVZR?=
 =?utf-8?B?R3BsdjV3cHNpQmVUdHQyWUMxWmdBeHFvb3lVYWpRQmRidVVjR2xGcTl3VWhB?=
 =?utf-8?B?NVRDK0J4cTRPSW9Hb0lrbmcwVDNmWVhDV3BhcXNUS09HUEpRK3kyK0IzT1Rx?=
 =?utf-8?B?QzJWMVNNMEVzc1cwSEFkaGJ0eCtZOGdxSVdjZUNyQTAzVUFSZHBTczhJQWVa?=
 =?utf-8?B?aGZBU1ZjOUtwRi9kS29ZR2YrRmsxTGdGeUdSeDJnMFQ2elhxcHhjdXQ2RTRq?=
 =?utf-8?B?akt4UmFKRWx5ZHRwMllBUU5naE5CdEdVUzNYY2V6U3NVWkxQSjhmSFhCMDVv?=
 =?utf-8?B?Z1ZMMXA4YU5LZnYrcnI3SXU4MUFRY3ZDYzZNcEVCNEtxZEI0L04xYmtWTWYr?=
 =?utf-8?B?NVBaOWgzK29zb01JSUpJMjJjQ2xkSGZ3ak92YWhKMTNIM0V5UjhYc05XVGJh?=
 =?utf-8?B?OXZCS0dPV0ZWTVBsSGRnTUtiOUY4N3QrOVNzQjd4bEZyaDlDV2VUOUpsUDB1?=
 =?utf-8?B?UHMxQmRKaGlNa2NLVnhpbUxNeUpnKzFVeTFsV3pGOE1SYk4rT1lucHd4cXd2?=
 =?utf-8?B?Q0d6V3ZOTVR3eUY4MG4xNnV3TkE5TlBjaVkwNEN0aGlVdloyR3ZoQnR1Vnc1?=
 =?utf-8?B?V1FBOEVFeVpWcHJFcnVLUWFZSzZYQXc0dE1YWTB6UUFYbFQ1WDcrTGZBQk54?=
 =?utf-8?B?Y2xvbEhwQ0VMamV6Qk9jWUNsRjVYR0RtRzdpTFBmK3YvejJ4bUV0cEZMTlZM?=
 =?utf-8?B?S0NFUnJkT2s2TFp5RVZ4d2pMdTNpK1dPMXFSQllQNDFHSDRuNGVMYmNhQ1Nt?=
 =?utf-8?B?K2p1MkFBSkdtRTNBY0NrVU9VN21xME9VYUxNWlJUcXR1TDhSZ3Fna2Y2clY3?=
 =?utf-8?B?dkI3bVpNc3VwRHQ1RExMdXM0ODg3VVY5Y05DTXRCT3VwOHBHcWdKckdBREYr?=
 =?utf-8?Q?ZDinEPqXFuo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VVhEVUIrcW10TG82dVhyUktlNUl0bkFQYjdhK0FhS0hUK0hleHU3dEQvK01O?=
 =?utf-8?B?YW5oQU1hNkpiTlcvQmoxVHlpT3hmYzhsb3hqNzY2cDVWalVxK1B4MkhLS2VP?=
 =?utf-8?B?d2lIZi8vM0hhdzhnWU5FeUVTVllHSFI3Q243NldsTGNUL2cxMUFKMU0zSjUz?=
 =?utf-8?B?VlJlaW9FMXIyNVlTSlNNVFAxU0c1cUhidzlUaEFpKzJEUXdDZnFxSHRIQVdl?=
 =?utf-8?B?MHZtSkdlWGdrdW05U01ORkZqQkNRVlFVSXZQckhnSVc2c0E3NHpBaCtyK1FZ?=
 =?utf-8?B?djIvdzN1VWF3NXpFMHAxYTZzU3UxOGlJKzdtOFRPYVJhaHRZYlptQ0ViV1FD?=
 =?utf-8?B?L1hlT1FRc3QvL0pTY1RBNmsxWnJjYXFobnBWdGUvdVluclVSTzl5ZVBzZVRn?=
 =?utf-8?B?RkhkM3RETDV6Q05yWWN1Y2Jaa3BURGV0M0pZV0Vlb0YwNWxQNEtZRE8wNHov?=
 =?utf-8?B?SExhUnNWUUgya2ZjUWpoOGc5azg4TWVpQ2x2dHFUdWdDVG0rNFJVWmxtNHlv?=
 =?utf-8?B?QUVvNW9qdzVCbE9VN0pySXRsSDNEQ3ZOeldoT05PTUdFcDFaQWdVamExcUJa?=
 =?utf-8?B?WVdwTFJhMWlLZDJkVkg2NUhxcUN4cTVRRitzWmdnbVZLcjRWb3lTdGNKczd3?=
 =?utf-8?B?OENibTY2ZFhPa2s2Vml1TDZ0S3FJZ09xWXp2djNFWFNWOUVCZXRPbU9DcXhj?=
 =?utf-8?B?dDNMZWtEV1RlUjQ2RUNkdzYrNU9iMlpyYTZzYmhFdlFDS3VuSU9OODh1OTNk?=
 =?utf-8?B?dktHRWVYNW9WQXdUZjBMN1hSeHQ0dVJ4bDIwTEhvVFBMS0NMZFpKVk5iMDY4?=
 =?utf-8?B?Q1ZDL1c0WTZERk03SzZtNmdadVpUandpMEJWNWYzSzBlbnlYbDdFTTVPd2Jn?=
 =?utf-8?B?a0FIKzJERGhKQWZ6NzQyUm04Q2hXaGpGazlQN3pkdmtvQnNXZENRaHQ2K0c5?=
 =?utf-8?B?Y2s5NWJMQlBBUExzWlZVMzU2SER4bDAwWWxqZ1RNTFRUNDVBL2FlY1pnQnhu?=
 =?utf-8?B?cXBDRGtLUzlIVzdqaUVXMG1rcUQxbVY5MWtrSDRNSytQWk8zaGVtRDRQRHBo?=
 =?utf-8?B?SXVxMkdMV29IdlZhQ1pnRzhYOGRPbjJYNmlyclJzeVBGV3RnNjYyOVptQ0Ir?=
 =?utf-8?B?cHpnSVZEWUZ5Z3VoN0FVRjdWeFdHb3NySzMzMFlGS29ndWd5QWt0WjhMdU5n?=
 =?utf-8?B?THNtSGg1NTNpVjRNWVlIYWZnNnR4RXk5UFMxS3NMTmNoaUkrd3RuY21ZcnVv?=
 =?utf-8?B?QlJyTHZBbXpRVkhtdXBqK3VIT1cxK0hPUDdtQXJQUWVRT2xwL2ZrYURLbTJr?=
 =?utf-8?B?R2tSbDNXellsa1ZyUGw1NjdhdDRuV0pXZHp1b2xKcXBXTU0xcEM3SEZJYlpU?=
 =?utf-8?B?emdoMm1UcVpLQXpkbWxMOWhDdWV1R0trWE5SWmJDeW8rUDVhSzE4NFkzR2ZF?=
 =?utf-8?B?cFRaT3ZGczRmckNKYVc0K1BOaUhWTWhlU1ZkQ2s0L3Yya2ZxaXlKUXFySVFZ?=
 =?utf-8?B?NVFzQXdhY1dZOXlzM3JDSzhpenlzOVg3QW9mS3FJSUlFeGQ3VU9iNUZPZlZ2?=
 =?utf-8?B?Vk41ZHR0Nldzb1hVRHQ1OWVqRXJlYTRkcVR3MzZ1UmV2dDRkd0VBZ2t3ejFl?=
 =?utf-8?B?TXlsKzNJRDF2ajE5bG5ydVh5WDdEM1dRK0U1NVE4WlZEZ1ozbURmdkxuaGJp?=
 =?utf-8?B?SUxPUGRuT3A2N2Z5MDNuYlVTRWh1b0xYMGh3dVlqZklCaVZQNTRjbU1nVFM4?=
 =?utf-8?B?TDRjTEFFVUltZk1JQmxIaU9tQnM5YXdBbzhxR0UweVFYVi9qK1lTVm8ybjhk?=
 =?utf-8?B?ekJZdXVLT2RkdWtSTEFRWlBlb0JWZzlLSlpkN3cyYUdSRmRjYkdHT3g1Q0JK?=
 =?utf-8?B?cW44S2tya09lbnVIV2UyUHh5OW9WK0RCUUduSEJUUXk2d09vb1o3Zk9leTd5?=
 =?utf-8?B?cnh4SVNaSU1OSkZQWVEyelR2WWVXdkJVY0dQdG1ZRlRsUksyaUdhS0JORzRK?=
 =?utf-8?B?TEJCZjk1WXlDZFhzV0ZhSmdqeGVWWk1obXhiOUYvS2ROZElwWHRQeVFRbHc2?=
 =?utf-8?B?NzVzYWc0RGRUQ3lNYS9FYVVtcWRLRzg5Z0h6Z3Q2NjBJNklSeDZHc2JzT003?=
 =?utf-8?B?QnQ3TnBWck5GV3FoZlVTMlBMbVZzM1ZsLzJFN2tCZkJUU2Z6T2V5ckdXUHVQ?=
 =?utf-8?B?ZWc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ab0489fe-3587-4489-0c2b-08dda4127d0a
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2025 09:22:27.1868
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Zo1rM8bUMn6dai9OOZHaBy4BtCuNH+RJa6cBMy8sbK0r3TNy8UayxWntdaTdabtqLGLuzCrEWxNVxej6qfds+eDdoXL/i5vKri0+HaPoV8w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7721
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_022232_192112_8814BF30 
X-CRM114-Status: GOOD (  18.59  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiA2LzUvMjUgMTE6MDkgQU0sIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFt
IERvbm5lcnN0YWcsIDUuIEp1bmkgMjAyNSwgMTA6NTc6MTMgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBRdWVudGluIFNjaHVsejoKPj4gSGkgSGVpa28sCj4+Cj4+IE9uIDYv
NC8yNSAxMDoyNCBQTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6ClsuLi5dCj4+PiBBbmQgaW4gZmFj
dCB0aGUgZGF0YXNoZWV0IGZvciB0aGUgcmVndWxhdG9yIGRlZmluZXMgYW4gIkludGVybmFsIHNv
ZnQtc3RhcnQKPj4+IHRpbWUiLiBGb3IgYSB0YXJnZXQgb3V0cHV0IHZvbHRhZ2Ugb2YgMS4wViB0
aGUgX3R5cGljYWxfIHRpbWUgdG8gcmVhY2ggYXQKPj4+IGxlYXN0IDkyJSBvZiB0aGUgb3V0cHV0
IGlzIGdpdmVuIGFzIDI2MHVTLgo+Pj4KPj4KPj4gSW5kZWVkLiBOb3cgbG9va2luZyBhdCB0aGUg
ZXhpc3RpbmcgRGV2aWNlIFRyZWVzLCBpdCBzZWVtcyBzb21lIHNldCB0aGUKPj4gcmFtcC11cCBk
ZWxheSBhbHJlYWR5LCBidXQgdG8gMjMwMCBhbmQgbm90IDUwMCBsaWtlIHN1Z2dlc3RlZCBoZXJl
Lgo+PiBNYXliZSBpdCdkIGJlIHNhZmVyIHRvIGdvIGZvciAyMzAwIGJ5IGRlZmF1bHQgdGhlbj8K
PiAKPiBlbmFibGUtcmFtcC1kZWxheSBpcyBhIHRvdGFsbHkgZGlmZmVyZW50IGJlYXN0IHRoYW4g
dGhlIHJhbXAtZGVsYXkuCj4gcmFtcC1kZWxheSBpcyBuZWVkZWQgd2hlbiBjaGFuZ2luZyB0aGUg
cnVubmluZyB2b2x0YWdlIGFuZCB1c2VzIGEgdW5pdAo+IG9mICJ1Vi91cyIsIHNvIG1pY3Jvdm9s
dCBwZXIgbWljcm9zZWNvbmQgLi4uIHdoZXJlIHRoZSBlbmFibGUtcmFtcC1kZWxheQo+IGlzIHRo
ZSBvbmUgZm9yIGVuYWJsaW5nIHRoZSByZWd1bGF0b3IgYW5kIHVzZXMgdVMuCgpUaGFua3MgZm9y
IHRoZSBleHBsYW5hdGlvbi4KClsuLi5dCgo+Pj4gbWFpbmxpbmUgcmlnaHQgbm93LiBJJ3ZlIGNo
b3NlbiA1MDB1UyB0byBiZSBvbiB0aGUgc2FmZSBzaWRlLCBhcwo+Pj4gMjYwdVMgaXMgdGhlICJ0
eXBpY2FsIiB2YWx1ZSBmb3IgMS4wViBhbmQgc2FkbHkgbm8gbWF4IHZhbHVlIGlzIGdpdmVuCj4+
PiBpbiB0aGUgZGF0YXNoZWV0Lgo+Pj4KPj4KPj4gUmVhZGluZyB0aGUgcms4MDggcmVndWxhdG9y
IGRyaXZlci4uLiBtYXliZSB3ZSBzaG91bGQgYWxzbyBzZXQgdGhlCj4+IHR5cGljYWwgZGVsYXkg
YXMgZGVmYXVsdCBpbiB0aGUgZmFuNTM1NTUuYyBkcml2ZXI/IFNlZSByazgwNV9yZWcgd2hpY2gK
Pj4gc2V0cyB0aGUgZW5hYmxlX3RpbWUgZm9yIHNvbWUgKHR5cGljYWxseSB0aGUgTERPIHdpdGgg
NDAwIGFuZCB0aGUgRENEQwo+PiBhdCAwKS4gSSBhc3N1bWUgdGhvc2UgY2FuIGJlIG92ZXJyaWRk
ZW4gZnJvbSB0aGUgRFQgYW55d2F5LCBidXQgYXQgbGVhc3QKPj4gd2Ugd291bGQgaGF2ZSBzb21l
IGRlY2VudGx5IHNhZmUgZGVmYXVsdHM/Cj4+Cj4+IElmIHdlIGRvIG5vdCBkbyB0aGlzLCB0aGVu
IHdlIHNob3VsZCBwcm9iYWJseSBmb3JjZSB0aGUgcHJlc2VuY2Ugb2YKPj4gcmVndWxhdG9yLXJh
bXAtZGVsYXkgcHJvcGVydHkgZm9yIHRoZSByazg2MHggRFQgYmluZGluZyBzbyB3ZSBkb24ndAo+
PiBmb3JnZXQgZm9yIGZ1dHVyZSBEZXZpY2UgVHJlZXM/Cj4gCj4gdGhhdCBpcyBzY29wZS1jcmVl
cCAocms4MDggIT0gcms4NjApIC4uLiBidXQgSSBmaW5kIHRoZSBpZGVhIG9mIHRyeWluZyB0bwoK
SSB3YXMganVzdCBoaW50aW5nIGF0IHRoZSBwb3NzaWJpbGl0eSB0byBzZXQgYSBkZWZhdWx0IGVu
YWJsZV90aW1lIGlmIApvbmUncyBtaXNzaW5nIGZyb20gdGhlIERldmljZSBUcmVlIGJlY2F1c2Ug
dGhlIHJrODA4IGRyaXZlciBzZWVtcyB0byBiZSAKZG9pbmcgc29tZXRoaW5nIGxpa2UgdGhhdC4g
cms4NjAteCBpcyBpbmRlZWQgc3VwcG9ydGVkIGJ5IGEgZGlmZmVyZW50IApkcml2ZXIsIHdoaWNo
IGRvZXNuJ3Qgc2V0IHRoaXMgYnkgZGVmYXVsdCwgaGVuY2UgbXkgc3VnZ2VzdGlvbiA6KQoKPiBz
ZXQgdGhlIGVuYWJsZS1yYW1wLWRlbGF5IGFzIHJlcXVpcmVkIGZvciB0aGUgcms4NjAteCBpbnRl
cmVzdGluZyA6LSkgLgo+IAoKQnV0IGluY29tcGF0aWJsZSB3aXRoIHRoZSAiZGVmYXVsdCBpbiBk
cml2ZXIiIGFwcHJvYWNoIDopIFNvIG9uZSBvciB0aGUgCm90aGVyIDopCgpDaGVlcnMsClF1ZW50
aW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
