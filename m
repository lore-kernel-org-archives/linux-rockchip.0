Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD960C0219D
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 13:15:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HQ2mEDfIVllBM3fhjlC7FaBqJcvKOHvEh+sdYE/S12E=; b=ceim6rx1KKeXN4fM0OXWWAXCaJ
	gYnzTBHDHEzrpCkwxMnffDRsRPjd0MF8CAuVuK7KsGebWSQBPVenMczBnQHqQ+HcsMjLDH2dQ8c1S
	1kHZA8lpRNXMQVMv05Fc+ekOFmSxW6tvVfJs4OO7klzGyC/FKKMvMEnYOUKm5Rz9f99m4U+fQld+8
	7dWEfxeXXMily0cmcP9zOtkc6TJHMn5zOtOjQ6mZi7+r3ndlXa+5x6lK9bWsq2pGgjFfRg7b9Cvh2
	diVy8Z6Fs36XYCvZt5WUTfU60ugFqw5oCkoBc+XFHAdDnLiwPLGtQyc8iHUQsLb/7zhQEBfCgCrhZ
	kZsfbFOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thq6y-00000003ur8-0klL;
	Tue, 11 Feb 2025 13:15:36 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thpq5-00000003rJw-0vM4
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Feb 2025 12:58:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RrmGa9g+LU2VgBjf+03jsZGVvE34zl2ACwhqu0iHA7oXCFG7nrCJGz0FK3tVnKvPFpJtcFSCb2X+lKA/veXyQ+yBsq45UTVf/chipUtb2VZ42wyBA6so5t0KyFk4L5/SzXMo/oWNkuybvM+GC1vHynfgCvdy8x8EHjT+JujFB9+ehHqA208JdpeIqGiX08d9sGY/oX/+3NgSF0v1aKoXLkRMgkQcNMVdMy4Nd0RabLRNoqwxHjxkgKu4l8zLVQo80pRqI5a49Ubnf8P6HjFoqwNtMxXAd6zNRSR/018t4W/f1DWox8pkWuytgMQTMIWVX3btlowdBrrEq4835OQb/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dm9ZUOlhfPfz6fpnzRN/tYaVvNMfiXwYdX1t1BFZR/8=;
 b=CRkbshu92VY5pbAGevj11JPhZbHC4RAdQ74/aH7bHEBd0OcuKdtXTuhKKVomGodzLjBp7ER0tziPY6MJn1IM2YUxEZ/T17odAbWT3XHUDLMed6UOrx81cquLXpbv/dIKDNFr+mk6cEcOGOTueUlkjeFG6Lloop1VXZ2boCpFYoHEpB+1iQftQ7hzM4QtPcOm5dGOdfSd20C1HRuWuPJVREMXcVbx8CIto0JIc9P97+Y2XwRo9zR1XECFEv8WyLij7oty5FXIx04wVat+8CAy6xS+vk5EwPoN0Bb1niSSow7giIAylSH1sdAlpIynMbnmovBFwcrDx2ukGRLJKfn0GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dm9ZUOlhfPfz6fpnzRN/tYaVvNMfiXwYdX1t1BFZR/8=;
 b=CBNPrdmBH2ehh8F41wwmiYPpF+MHBgKN+2ZiREgiiljc1EzLaa8fNEyE08RfLnUwBb1aFW8zmVznblQ5/I7xrS/n237ET756Dn1eFUopLNXVPkL805nH83VVoILiPCm2+NX6gTbJznmHN/AoHJ14qgxJ/bwpgBS900frwbWMo9Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by DBBPR04MB7611.eurprd04.prod.outlook.com (2603:10a6:10:1f4::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Tue, 11 Feb
 2025 12:58:03 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%5]) with mapi id 15.20.8422.012; Tue, 11 Feb 2025
 12:58:03 +0000
Message-ID: <eadf4de0-9d87-4fac-b043-fa8cedf72cbe@cherry.de>
Date: Tue, 11 Feb 2025 13:58:01 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
To: Chris Morgan <macromorgan@hotmail.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, conor+dt@kernel.org, krzk+dt@kernel.org,
 robh@kernel.org
References: <20250130181005.6319-1-macroalpha82@gmail.com>
 <40c37c4e-b98f-47bf-a4ad-b977be5a6d49@cherry.de>
 <MN2PR19MB3728A89B77464B7B10543628A5F42@MN2PR19MB3728.namprd19.prod.outlook.com>
 <2925297.Mh6RI2rZIc@diego>
 <DM6PR19MB372282D74E6B093C00033BF2A5F22@DM6PR19MB3722.namprd19.prod.outlook.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <DM6PR19MB372282D74E6B093C00033BF2A5F22@DM6PR19MB3722.namprd19.prod.outlook.com>
X-ClientProxiedBy: VI1PR0502CA0016.eurprd05.prod.outlook.com
 (2603:10a6:803:1::29) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|DBBPR04MB7611:EE_
X-MS-Office365-Filtering-Correlation-Id: e63b3dd8-67db-4341-2d7c-08dd4a9bb84e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eVVkWG95czJEUWRWQ3d1S2NEcGtEYVptcjV6aVREVmcyQ0JmeEoxMEhISUEx?=
 =?utf-8?B?azhwaVJMYkg0RVlnRm91U3htVW8rZnh1T1ZrMmhVWitTbHNPSVhnd3lTWUp5?=
 =?utf-8?B?L01nV1RQTHVaSnUvSkxISDBHZXVLWTVEcjRjb3B3L3N0TjIxalMzOHBuU1VU?=
 =?utf-8?B?NnJDazRSSHduaXRnS0Q5WWdLNnI0RWFGUG5YQUc2WmxmU3drVit1aXdkbEx1?=
 =?utf-8?B?cXFSQWV5NXBURjFtVTJ0Nm5xMXlSd2FwZGhKb3lYRmdCTk1FWnlQSDhRNHhW?=
 =?utf-8?B?Wlh1ZUNPMjNEdjdUbk5sVk1Jc3hYZmhqRkRmdjJSQ3huUmhDdmlGWHo4Rkdj?=
 =?utf-8?B?WDY1Mm1mT2JBNnI2ei9yV3dqN2tnQUpRNzlmT3pReTZjSnZHdkl3NE9NdW1o?=
 =?utf-8?B?UDFNSFdnakpNb1FodEJMNUx5WFBuaVJtYWZMTzNYU05hNWQxN1FLdE1JcEFB?=
 =?utf-8?B?Uk1ZWmZTWURxSm1KMUFPM0lXZGNZNzRnVitOanV6eWV3UnBhaUEzdDA5dEJa?=
 =?utf-8?B?NnUxRUE4MEVsYm9ZTXkycGVjZjRBUGp5UzYxbXBqRS9JQXhITlRtTUpkWGpR?=
 =?utf-8?B?MFFMTmlGbmJnMG1jZFMvS0gzMWlXV1lxUExNS3YwK2U5eE9nc2Nwa081QkY3?=
 =?utf-8?B?QWVsYlhld2E0YXdSZE5sSUh3WVNFQkwwc3g3RzJ1VkNqS1B2eE5UZmxTbVFZ?=
 =?utf-8?B?a1I1ZWVVWjZRcnE4MmtJeHl3MlpPbnI2R3dVTWNTQ3RkVklMaVhyclcxc1dj?=
 =?utf-8?B?Z2p6ZzlBaS9rb1ZlZW5qZldtbDA3VTd1TlZ0NkQwYlEzQ3E4KzVudDVJUGRE?=
 =?utf-8?B?Y1pZVFBFdEdkejREMmxCS0Izbm9lMWZGbjN0OU1DREZOWXcrWW1JVllKOVhB?=
 =?utf-8?B?RGZXMHhaRWtreWswdG5qc3hUdWlHTEIyU2YvZWdYMm9zTUpUZ3phSzk4U1Bn?=
 =?utf-8?B?cmJER3k4ZTBjMzdkNmZFMm9WcEU2QVMwZHMwOXZaUGMrSUsxUnl0VDlIVGlR?=
 =?utf-8?B?L0QveVcvZnhDYUZzVm1rNHBhL002VXR0TzhjUnBqN0lVbGNNZzQ4YjEyNG1M?=
 =?utf-8?B?a2xBTmNXejJ4Z2w3Q3ZSVjN2a3pmL25JUDNPLy9zSjYvcTQ5R04xRXpsTnlB?=
 =?utf-8?B?dVQ0bjFKMndKazlXVUNTcjQ5UlFjNVJEb0dNRkdQZDNLdHhQRTJtck1sV3BO?=
 =?utf-8?B?U0J3SmFPblFCc20yZVJGTWVEVnFaRytnemFLbVc2azJYTXVodlppWG9YSWJG?=
 =?utf-8?B?alpIR0Nha25SOFA2QVlTRVJYVGo5b3k3RVExVjVRZWNhSnY3WnJhUmVPd3dJ?=
 =?utf-8?B?SG56byt2MURLVm1Bek9vMXBSVlk5N0pRNWdZVjFGQ0l3Y2RIR0lFOXRwS24y?=
 =?utf-8?B?SjVqRTJtYjhydjRoRW5kSkpkcGkxMlU1T1hhSWpsV1ZZVUIzMm00cVdZMzVq?=
 =?utf-8?B?NCtrVGdQeEZmT0x3TE5CN1lCbEh6eUhtdWorOEhQcU0vWXhxU0RNSHhKc2pm?=
 =?utf-8?B?b3grbnZTYUplbE0ycTNpUkVhRjA4NXpDTlRnVjcvcE5UaEEreTd2S2YrV1Jv?=
 =?utf-8?B?Y1F6Ry9wZENjRnUzNVZDc1drL3BLbzQ1V2FTR0p6NFVUYmQ3eURnWWNKT1hk?=
 =?utf-8?B?NHFqRUlrQmVKbkhldDlaUk5iYXQrRkw4MW4xOHhpRnBrZkJtVlVjNGJPcW5V?=
 =?utf-8?B?eEJGRUFQY2JIN25VdEY2VzVXK0pxWVNHYlpBR3ZLSExiaFQzRXB1c3FQTTho?=
 =?utf-8?B?cUdKVjZuMW44bGtWRFp0V1RBYnZvc2MyOUduZ1BDM3VURDJtWTY4RXZpSm1L?=
 =?utf-8?B?UmlSZEtDTkRNaUNmT3FKK0ZZWG4rdGFKNDVjU0MvMC9ZVDZCNThRYUhLUFVG?=
 =?utf-8?Q?Zr6ZmPGie84Qv?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(1800799024)(366016)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUVoczBQQWJHdys2ekZSTHpnMFJlUHBwWWJnaDBqVHRJR1YrL3Axei9sZVl2?=
 =?utf-8?B?TzdHdUUxM1lWc1dlajh5WGRSamMvK1R2azlDNmFpZWNOTVFXS0xlbzZpZFlw?=
 =?utf-8?B?U0ZwcER0eVdJMkRYZzR2em43YjBNb2NQR2I0Z1FkTXZ4ZnZiSXdLOEpMam53?=
 =?utf-8?B?ZEFleGRQOEdYenF5VGN4eVpCS1ZzcDduRG1RWnFBbCsyRGt5aHRXZEtDZy93?=
 =?utf-8?B?T0tJcUVzWXRicVE2b1JKK0dnL1BpclNmbUNKa1NCc09DRFliU0V4VWllb05R?=
 =?utf-8?B?VjZlMTBKZTRLZlc0cTMwazFtZHMzQzZhSTZjL0xNZzV6NkFFWEUrOTdVMU5E?=
 =?utf-8?B?ck9XaFlNZ1pWbytRcUx4UmNlMy9VbzZhdy91RGU4bVhKYUtKSFVtd3BjOEhO?=
 =?utf-8?B?b2xMVmJiS1hkOEM3R0tFekx3QXpJa2JWOFMzQjVZTjVXc1RTc00xMjdkQlB3?=
 =?utf-8?B?eEVEbTlKL2dvR3RhY0tJNlhqZ3RneEpvZGhhTjk2Z2FucW8yb1NRdGtlaDJL?=
 =?utf-8?B?Y1Z2RElqbmhubVRxZTBKWThHaE94NXoyUERwUlQ1N2hIKzFRNmFZa2FyVzZI?=
 =?utf-8?B?ZEJYejNWU0hpZlBJcE5pTWxPc0d2WVRFOHBFUkc4Z0h0TDJzcml5Sk5ieE5Y?=
 =?utf-8?B?MExFd2lvcXRsOXpzNm53eWIwZFVQemlmSFlPREUyZDBEZFNXcnFkS2hjbVBs?=
 =?utf-8?B?UU1FUXEzZS9EalA5VjBET25Ccy9meVFxU3ZVT3NKKzhzclhKSmNJSTRlUjZp?=
 =?utf-8?B?RmZXVDZyTFVTbi9COURFYzVSb2M5dXFHc0RTWVdmNTllaFphcmROYnFoTU00?=
 =?utf-8?B?Rk5IRHhaSVd1c1ZqUDQreEl0cE5jWk1JeW1vcmx5VFJUTE4yZjFOcTJ6K1Y5?=
 =?utf-8?B?MVFYeG1HUC9rMWRuNk9za0U3MzFTQUorN2MzWXVxQmdpMHhJY1BqN1AxUlNJ?=
 =?utf-8?B?Uy9Ga20wOTFDK2QwNGFNRURBbkRiOE90K2l1cWxReVNYdldLNzVCZktBQXRV?=
 =?utf-8?B?ZkNMRDIxUzFqT1h1dCtHQ2xpdWtsTXVjUkVhQzdVNzJhZXlwT050OWNqd0Zh?=
 =?utf-8?B?NE1WOG9pSTYyRklYZTk1aEl5emFONURqU2JWRVIvYTQ4YlRiMHEwR09QU0xz?=
 =?utf-8?B?bWVhdGc5S0o5OWowZ0ZvNFVnSkd3dC8vVmhJVVBmZmk2SSs2RWU2TGd6aE5r?=
 =?utf-8?B?M25FeGI3U1VMMkxMQ09rZGRoL1Y1eXdvbGEzZW1vSUxEQ3lyd1BXMlltYTE1?=
 =?utf-8?B?NW5hUnlzeEVQRnkyQzFJYzBERlpRUU82RmF3NnVuYWdDMUd2RTRROHJ1Z0xa?=
 =?utf-8?B?MlVlUnBWV1g3eFFGZnd6UXJqRnU0UTYwK2t1SUZZY3hKOTJpQWpMamoyZWVx?=
 =?utf-8?B?K3RrV1dWTDJIQWpMWDd3ODUzYkJmdG45Q1g2eUFWNHUxenNxU1ROOE9NTUlR?=
 =?utf-8?B?ZGVBRnU4RlRyYU5yNXJhVSt6ZUJkZEpRaHVEY0FhdXg5WXlsa3N3bnZHaUww?=
 =?utf-8?B?UlhCK0hjdm92dWVINDB6QTQzUjdQNFErdytiQUNsUjVCVjhIV0JLMCttT0Fu?=
 =?utf-8?B?NWV6STRBc3B3VTVmYnFqdFJKeWpvM3FGZFdTWTBHZXVCeTZQaThlRGZNMGtv?=
 =?utf-8?B?aHdDblgzT1hSQ1NiSW05WmJKK1V1WTVYNnJaOGVjZUZDZWpaMTJ4U3hXTDVE?=
 =?utf-8?B?S1IvRFpoazU2Y3U4V1BwdWhPdWNJSFlUNS9BWWJZbUppNUw0UU9BWjVlbHcz?=
 =?utf-8?B?WUhDdHprSzFYOTcwbVRGVDlxRFRhVmZsM014K1gzL2F5OTZaL0YrOVdocFh3?=
 =?utf-8?B?a2pRbWF0K3NHYlZmOW11ZVhPRmJraytrMkl5WTdoSk1oNEs5a3BraVU2a2pl?=
 =?utf-8?B?cHhZVEtnNkpEZnZ6R0ZiVVZMV3dOUVUyTXFCQk16NW1rZVZBeGdzbkNONjRB?=
 =?utf-8?B?VG5sRnp1aGpiN2w0TUJobEdvZlNKYkluL1I1UHV0TUdtWXdzTU1maWNoUEFM?=
 =?utf-8?B?S1Jzc24vblpWQTQ3RDNKczdRZWNGS2pTcC9wMXVTNXBjM0hBQnUyTCt2elV2?=
 =?utf-8?B?QXBCRUNQSkRkQ001OHd0cWM2NkJ1eExDaElVZDBXV1ZSK3Y5ZGZDNHlWMGxV?=
 =?utf-8?B?dHlBVUNKMzVET0hZK0RtTVFIZnFpNVVlYmZ5K3ZLOUF2ZVh2SEVhRzdUUzNU?=
 =?utf-8?Q?dqVCXrMicXRdXhweH/dxRxA=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: e63b3dd8-67db-4341-2d7c-08dd4a9bb84e
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2025 12:58:03.1008
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N+1ps316gQprP7CRsXN0aNkupDGs6LiZApwEQdhYqmItRFYAiAHSD1VbRqcpehvJH6q6KOWN2jurPTBNb1S4UDFcvBNSQWbmCUlbe3/PuKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7611
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_045809_421596_130DEE9E 
X-CRM114-Status: GOOD (  29.85  )
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

SGkgSGVpa28sIENocmlzLAoKT24gMi8xMC8yNSA2OjA2IFBNLCBDaHJpcyBNb3JnYW4gd3JvdGU6
Cj4gT24gTW9uLCBGZWIgMTAsIDIwMjUgYXQgMTE6MjA6MjdBTSArMDEwMCwgSGVpa28gU3TDvGJu
ZXIgd3JvdGU6Cj4+IEhpLAo+Pgo+PiBBbSBEaWVuc3RhZywgNC4gRmVicnVhciAyMDI1LCAxNzox
NjoyMiBNRVogc2NocmllYiBDaHJpcyBNb3JnYW46Cj4+PiBPbiBUdWUsIEZlYiAwNCwgMjAyNSBh
dCAxMDoxMjoyNkFNICswMTAwLCBRdWVudGluIFNjaHVseiB3cm90ZToKPj4+PiBIaSBDaHJpcywK
Pj4+Pgo+Pj4+IE9uIDIvMy8yNSAxMDoyNyBQTSwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgo+Pj4+PiBP
biBNb24sIEZlYiAwMywgMjAyNSBhdCAwNTozMjo1M1BNICswMTAwLCBRdWVudGluIFNjaHVseiB3
cm90ZToKPj4+Pj4+IEhpIENocmlzLAo+Pj4+Pj4KPj4+Pj4+IE9uIDEvMzEvMjUgNTo1OSBQTSwg
Q2hyaXMgTW9yZ2FuIHdyb3RlOgo+Pj4+Pj4+IE9uIEZyaSwgSmFuIDMxLCAyMDI1IGF0IDA1OjQ2
OjIwUE0gKzAxMDAsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+Pj4+Pj4+PiBIaSBDaHJpcywKPj4+
Pj4+Pj4KPj4+Pj4+Pj4gT24gMS8zMC8yNSA3OjEwIFBNLCBDaHJpcyBNb3JnYW4gd3JvdGU6Cj4+
Pj4+PiBbLi4uXQo+Pj4+Pj4+Pj4gV2hlbiBPcHRlZSBpcyBub3QgcHJlc2VudCBvciB1c2VkLCB0
aGUgbm9kZSB3aWxsIHRyaWdnZXIgYSBwcm9iZQo+Pj4+Pj4+Pj4gdGhhdCBnZW5lcmF0ZXMgYSAo
aGFybWxlc3MpIG1lc3NhZ2Ugb24gdGhlIGtlcm5lbCBsb2cuCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pgo+
Pj4+Pj4+PiBBbmQgd2hhdCBpZiB3ZSBoYXZlIE9QLVRFRSB3aXRob3V0IHRoaXMgbm9kZSBwcmVz
ZW50LCB3aGljaCB3b3VsZCBiZQo+Pj4+Pj4+PiBwb3NzaWJsZSBpZiB3ZSBoYXZlIENPTkZJR19T
UExfQVRGX05PX1BMQVRGT1JNX1BBUkFNIHNldCBpbiBVLUJvb3Q/Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+
IEkgZ3Vlc3Mgd2UgY291bGQgZGV0ZWN0IGZyb20gVS1Cb290IGlmIGEgVEVFIGlzIGxvYWRlZCBh
cyBwYXJ0IG9mIHUtYm9vdC5pdGIKPj4+Pj4+Pj4gYW5kIGZpeHVwIHRoZSBEVEIgb3RoZXJ3aXNl
IHRvIG1hcmsgdGhpcyBub2RlIGFzIHN0YXR1cyA9ICJkaXNhYmxlZCI/Cj4+Pj4+Pj4+Cj4+Pj4+
Pj4KPj4+Pj4+PiBCYXNlZCBvbiBteSB1bmRlcnN0YW5kaW5nIG9mIGhvdyBlYWNoIG9mIHRoZXNl
IHByb2plY3RzIGNvbW11bmljYXRlCj4+Pj4+Pj4gd2l0aCBlYWNoIG90aGVyLCBPcHRlZSBjYW4g
b25seSB3b3JrIGlmIHlvdSBlaXRoZXIgaW5jbHVkZSBib3RoIHRoZQo+Pj4+Pj4+IE9wdGVlIG5v
ZGUgaW4gdGhlIGZpcm13YXJlIEFORCB0aGUgcmVzZXJ2ZWQgbWVtb3J5IG5vZGVzIHlvdXJzZWxm
LCBvcgo+Pj4+Pj4+IGlmIHlvdSBoYXZlIG5laXRoZXIgYW5kIGxldCBVLUJvb3QgZG8gaXQgKGJ5
IGluY2x1ZGluZyBlYWNoIG9mIHRoZXNlCj4+Pj4+Pj4gcGF0Y2hlcyBhcyB3ZWxsIGFzIHNldHRp
bmcgdGhlIENPTkZJR19TUExfQVRGX05PX1BMQVRGT1JNX1BBUkFNKS4gU28KPj4+Pj4+PiBiYXNp
Y2FsbHkganVzdCB0aGlzIG5vZGUgYWxvbmUgaXMgaW5zdWZmaWNpZW50IGZvciBpdCB0byB3b3Jr
IHRvZGF5Lgo+Pj4+Pj4+Cj4+Pj4+Pgo+Pj4+Pj4gVGhlcmVmb3JlIEkgdGhpbmsgd2Ugc2hvdWxk
IGVpdGhlciBoYXZlIHRoaXMgbm9kZSBkZWZpbmVkICsgdGhlCj4+Pj4+PiByZXNlcnZlZC1tZW1v
cnkgbm9kZSAod2l0aCBoYXJkY29kZWQgYWRkcmVzcyBhbmQgc2l6ZSBpZiBndWFyYW50ZWVkIHRv
IGJlCj4+Pj4+PiBzdGFibGUgZm9yZXZlcikgYWRkZWQgb3Igbm90aGluZy4KPj4+Pj4+Cj4+Pj4+
PiBDYW4gd2UgbWFyayBhIHJlc2VydmVkLW1lbW9yeSBub2RlIGFzICJkaXNhYmxlZCI/IElmIG5v
dCwgdGhlbiB3ZSBzaG91bGQKPj4+Pj4+IHJhdGhlciBoYXZlIG5vdGhpbmcgYXQgYWxsIEkgYmVs
aWV2ZS4KPj4+Pj4KPj4+Pj4gSSBob25lc3RseSB3b3VsZCBqdXN0IHJhdGhlciByZW1vdmUgdGhp
cyBub2RlLiBUaGUgcmVhc29uIEkgc2F5IHRoYXQgaXMKPj4+Pj4gd2hpbGUgd2Ugc3VwcG9ydCBP
cHRlZSB3aXRoIHRoZSBSSzMzOTksIFJLMzIyOCwgdGhlIFBYMzAsIGFuZCB0aGUKPj4+Pj4gUksz
NTg4OyBob3d2ZXIgb25seSB0aGUgUkszNTg4IGhhcyB0aGUgbm9kZSBhbHJlYWR5IHBvcHVsYXRl
ZCBpbiBMaW51eC4KPj4+Pj4KPj4+Pgo+Pj4+IEFuZCB3ZSBoYXZlIGEgcHJvZHVjdCBiYXNlZCBv
biBQWDMwIHRoYXQgaGFzIE9QLVRFRSBPUyBydW5uaW5nIHdpdGhvdXQgYQo+Pj4+IGhhcmRjb2Rl
ZCBub2RlIGluIHRoZSBEVFMsIHNvIHRoYXQncyBhIHZhbGlkIHBvaW50IG9mIGNvbXBhcmlzb24g
dG8gbWUuIFRoYXQKPj4+PiBzZWVtcyB0byBqdXN0aWZ5IHRoZSBkZWxldGlvbiB0byBtZSEKPj4+
Pgo+Pj4+Pj4KPj4+Pj4+PiBUaGUgY29yZSBpc3N1ZSBpcyB0aGF0IE9wdGVlIHJlcXVpcmVzIHlv
dSB0byBtYXAgdGhlIG1lbW9yeSBhcwo+Pj4+Pj4+IHJlc2VydmVkIHNvIHRoYXQgTGludXggZG9l
c24ndCB0cnkgdG8gdXNlIGl0LiBZb3UgY2FuIGVpdGhlciBkbyB0aGF0Cj4+Pj4+Pj4geW91cnNl
bGYgb3IgeW91IGNhbiBoYXZlIFUtQm9vdCBkbyBpdCBhdXRvbWF0aWNhbGx5LiBIYXZpbmcgdGhl
IE9wdGVlCj4+Pj4+Pj4gbm9kZSBpbiB0aGUgZGV2aWNldHJlZSBtYWtlcyBubyBzZW5zZSB0b2Rh
eSB1bmxlc3Mgd2UgYWxzbyBjYXJ2ZSBvdXQKPj4+Pj4+PiB0aGUgbWVtb3J5Lgo+Pj4+Pj4+Cj4+
Pj4+Pgo+Pj4+Pj4gV2Ugc2hvdWxkIHBhdGNoIFUtYm9vdCB0byBhZGQgdGhlc2Ugbm9kZXMgdG8g
dGhlIERUIGlmIGFuIE9QLVRFRSBPUyBpcwo+Pj4+Pj4gcGFzc2VkIGFuZCBlaXRoZXIgU1BMX0FU
Rl9OT19QTEFURk9STV9QQVJBTT15IG9yIHdlIGNhbm5vdCBkZXRlY3QgdGhlIE9QLVRFRQo+Pj4+
Pj4gbm9kZXMgaW4gdGhlIGtlcm5lbCBEVC4gV2hhdCBkbyB5b3UgdGhpbms/Cj4+Pj4+Pgo+Pj4+
Pgo+Pj4+PiBXZSB3b3VsZCBoYXZlIHRvIGFzc3VtZSBzb21lIGhhcmQgY29kZWQgdmFsdWVzIGlu
IHRoYXQgZXZlbnQgYXMgSSdtIG5vdAo+Pj4+PiBhd2FyZSBvZiBhIG1lY2hhbmlzbSB0byBncmFi
IHRoZW0gYXQgcnVudGltZSBmcm9tIE9wdGVlIGV4Y2VwdCB3aGVuIHlvdQo+Pj4+PiBwYXNzIGl0
IGEgZGV2aWNlIHRyZWUuIFRoYXQgc2FpZCBJIHRoaW5rIHRoZSBjb25jZXJuIGFib3ZlIHdoZXJl
IHlvdQo+Pj4+Cj4+Pj4gWWVzLCBidXQgdGhhdCB3b3VsZCBiZSB0aGUgc2FtZSBhcyBCTDMxIGZv
ciBleGFtcGxlIGFuZCBhbiBleHBlY3RlZCBzaWRlCj4+Pj4gZWZmZWN0IG9mIHVzaW5nIENPTkZJ
R19TUExfQVRGX05PX1BMQVRGT1JNX1BBUkFNIGV4Y2VwdCBpZiB0aGVyZSdzIGEgd2F5IHRvCj4+
Pj4gcHJvdmlkZSBpbmZvcm1hdGlvbiBiYWNrIGZyb20gVEVFIHRvIFUtQm9vdCB3aXRob3V0IHVz
aW5nIHRoZSBwYXJhbXMgdGhhdAo+Pj4+IHdvdWxkIGJlIHBhc3NlZCBieSBVLUJvb3QgdG8gVEYt
QSBoYWQgd2UgQ09ORklHX1NQTF9BVEZfTk9fUExBVEZPUk1fUEFSQU0KPj4+PiBkaXNhYmxlZC4K
Pj4+Pgo+Pj4+PiBtZW50aW9uICJndWFyYW50ZWVkIHRvIGJlIHN0YWJsZSBmb3JldmVyIiBpcyB0
aGUgcHJvYmxlbSwgYXMgZXZlbiBub3cKPj4+Pj4gdGhlIGN1cnJlbnQgYWRkcmVzcyBpbiB0aGUg
T3B0ZWUgdXBzdHJlYW0gcHJvamVjdCBjb25mbGljdHMgd2l0aCB0aGUKPj4+Pj4ga2VybmVsX2Nv
bXBfYWRkcl9yIGluIHVwc3RyZWFtIFUtQm9vdCwgbmVjZXNzZXNpdGF0aW5nIG9uZSBvZiB0aGVt
IGJlCj4+Pj4+IGNoYW5nZWQgKEknbSBhdHRlbXB0aW5nIHRvIGNoYW5nZSB0aGUgT3B0ZWUgb25l
LCBmb3Igd2hhdCBpdCdzIHdvcnRoKS4KPj4+Pj4KPj4+Pgo+Pj4+IEkgdGhpbmsgaXQgbWFrZXMg
bW9yZSBzZW5zZSB0byBjaGFuZ2UgdGhlIGxvYWQgYWRkcmVzc2VzIGluIFUtQm9vdCwKPj4+PiBl
c3BlY2lhbGx5IHNpbmNlIHRob3NlIGFyZSBqdXN0IHRoZSBkZWZhdWx0IHZhbHVlcyBmb3IgdmFy
aWFibGVzIHdoaWNoIGFyZQo+Pj4+IGNvbmZpZ3VyYWJsZSBwZXIgYm9hcmQgdHlwZSwgcGVyIGJv
YXJkIG9yIGV2ZW4gcGVyIGJvb3QsIHNvIGl0J3Mgc29tZXRoaW5nCj4+Pj4gb25lIHdvdWxkIGJl
IGFibGUgdG8gbW9kaWZ5IHdpdGhvdXQgbmVjZXNzYXJpbHkgcmVidWlsZGluZyBhbnl0aGluZy4K
Pj4+PiBFc3NlbnRpYWxseSwgaXQncyBlYXNpZXIgdG8gbW92ZSB0aGF0IGFyb3VuZCB0aGFuIGNo
ZWNraW5nIHdoaWNoIE9QLVRFRSBPUwo+Pj4+IHZlcnNpb24gb25lIGlzIGJvb3RpbmcgYmVmb3Jl
IHByb3ZpZGluZyBhZHZpY2Ugb24gd2hlcmUgdG8gbG9hZCB0aGUgaW1hZ2U/Cj4+Pj4gVXAgdG8g
eW91IHRob3VnaCwgbm8gc3Ryb25nIG9waW5pb24gdGhlcmUuCj4+Pgo+Pj4gSSB0aGluayBJIG1l
bnRpb25lZCB0aGlzIGJ1dCBpbiBJUkMgYnV0IHRoZSBjb25zZW5zdXMgd2FzIHRvIGNoYW5nZSBP
cHRlZQo+Pj4gdG8gbWF0Y2ggdGhlIHNhbWUgYWRkcmVzc2VzIGFzIHRoZSBQWDMwIGFuZCBSSzMz
OTkuIE5vIHN0cm9uZyBvcGluaW9uIGZyb20KPj4+IG1lIGVpdGhlciwganVzdCB0cnlpbmcgdG8g
Z2V0IGl0IHdvcmtpbmcgd2l0aG91dCBzdGVwcGluZyBvbiB0b2VzIGFueXdoZXJlLgo+Pgo+PiBn
bGFuY2luZyB0aHJvdWdoIHRoZSB0aHJlYWQsIGRpZCB5b3UgY29tZSB0byBhIGNvbmNsdXNpb24g
d2hldGhlciB0byBkcm9wCj4+IG9yIGtlZXAgdGhlIG9wdGVlIG5vZGU/Cj4+Cj4+IEkuZS4gZnJv
bSB3aGF0IEkgc2VlLCBoYXZpbmcgdGhpcyBkZWZhdWx0IG9wdGVlIG5vZGUgX3dpdGhvdXRfIHRo
ZSBuZWVkZWQKPj4gbWVtb3J5IHJlc2VydmF0aW9uIHdvdWxkIG1lYW4gdGhhdCBfaWZfIGFuIG9w
dGVlIHJ1bnMsIHRoZSBrZXJuZWwgd291bGQKPj4gZWl0aGVyIHBvc3NpYmx5IHdyaXRlIG92ZXIg
aXRzIG1lbW9yeSwgb3Igd2UnZCBlbmQgdXAgaW4gYW4gZXhjZXB0aW9uIHRoaW5nCj4+IGJlY2F1
c2UgdGhlIGtlcm5lbCB3b3VsZCB3cml0ZSBvdmVyIGZpcmV3YWxsJ2QgbWVtb3J5Lgo+Pgo+PiBT
byBhdCB0aGlzIHBvaW50LCBoYXZpbmcgdGhlIG9wdGVlIG5vZGUgaGVyZSwgbWFrZXMgbm8gcmVh
bCBzZW5zZSB0byBtZSwKPj4gYXMgZmlybXdhcmUgdGhhdCB3b3VsZCBuZWVkIHRvIGFkZCByZXNl
cnZlZCBtZW1vcnkgdG8gdGhlIGR0LCBjb3VsZCBhbHNvCj4+IGp1c3QgYWRkIHRoZSBvcHRlZSBu
b2RlIGluIHRoZSBzYW1lIHJ1biAtIGFzIHdlIGRvIG9uIG90aGVyIHNvY3MgYWxyZWFkeT8KPj4K
Pj4KPj4gSGVpa28KPj4KPj4KPiAKPiBJIHRoaW5rIGlmIEkgYW0gaGVhcmluZyBjb3JyZWN0bHkg
d2UgZGVjaWRlZCB0byBkcm9wIHRoaXMgbm9kZS4KCkFncmVlZC4KClRoYW5rcyEKUXVlbnRpbgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
