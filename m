Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AE80D4921F
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Dec 2025 12:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZSREM7sdnhSDgUJe0zNYB+WBQgBkau+jBmjcC2OzZ+Q=; b=aFpyGUPGwupb57IGTpP6H06g0y
	LAv3rC7/v7hPxjfiiJ8eBwEEoTd5OI5E0F4wFNezNJ3OPy4T6zWPyjOZ7O2UzRdGQeVaHR5qxrEbG
	PBmtQt/j2PHz57vD88V9WV2mPPthmd52c8d4b/9HGbbu1IGmnTDtwRS9uGWC309FrdAbhsihKAywc
	oEQTmbxbwrcjo2LBoQ41gJlhoCsdW96/YGu/5rICJNrKWcVT7bvIqCy36DIs0A9y6Il/XkYIIMQxt
	Zm4djWoYamrCQBXXsc+76m1K+VldwyIAiQetWa+11j14FkMH82kxnksUg5zAKnSXlMHLZ7LmA+Eih
	Zhr7NkTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU27d-00000000WBh-3Cif;
	Fri, 12 Dec 2025 12:19:45 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU27b-00000000WB6-1v5P
	for linux-rockchip@lists.infradead.org;
	Fri, 12 Dec 2025 12:19:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jZof6YrMj9dQ2CALgT2bTjtoGV/Kx8jTh5VAguIG7VbVHBSc9NLPQTT9M+9MQPsjgABegFzgqOaajXHUeK2Zd1NV5Y8OqFh1JwZG7j9hbrB3LxvTl5it3+7rfhuBwD1xF6izE4/HbVvlKIskH8QPCehgJgNR43iRi+zExex+HEa6MHm3Xs0weDQawGBgqwrRk8py13JmpmpaEtp09ACs22/q4vkpkeZUOq/vEpxD/t2DA+4EaPEzQAzsAme2ggTebzbgyalodWB16KEicKkIfgXz4aahTWLWpjCOZCO3B7EJ387YZvax1ChBMepp+qGEZ5LQLR3wvRquwuN53dhArg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MbPa1HiXMOFiFo5iIpjok6q8cUg7hHLsF8dd7gqUdvM=;
 b=sLBTrMFMMvw1wA86PPYI+I3AOeNjp//QuDbpoblRvBO1Tb+ayUhw3cmU0K4Mw82gjA8Knq8f4J0FSx6cKD4mNoC6belukxQpYIgjQH0U/dgnN49PSEfmKkZzS1Q7NrkPUsUkZ7AyQCId3akVDCNxFfRiuXRkvEeaI4Gos6FemYIUc6wHQXSw14SLWX5rjG4vv12WCWajnvvyHyExZpmKmlooh2pouDHKWpLXGsJiPk6FcBUGirB16odDlDNfZFlGdOiDqvRWSiGZcwSFtpwZMnZJqUfC/Y6mTzzvASzuyUcc6LK7rtRKRX4D5loH91WP8puSqmOhHSwx8IUOcUrlQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MbPa1HiXMOFiFo5iIpjok6q8cUg7hHLsF8dd7gqUdvM=;
 b=TI/IVAbt3vijutZSTVI1xc7dBTIVMomdzyZ9d1VYo56h7k1SZ3wEMzOe+liN3mzr+VsUgNxvLYJHbtemiszRZswQCW0h3Rbny9g0cgX3cp06Dno+C3EtHq576FHB3Gwgas3lX+m41REWBLmylyH/lUnM3qa7XQNnnY2pNoHcKpU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com (2603:10a6:150:2be::5)
 by DBBPR04MB8043.eurprd04.prod.outlook.com (2603:10a6:10:1e7::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 12:19:38 +0000
Received: from GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad]) by GVXPR04MB12038.eurprd04.prod.outlook.com
 ([fe80::1033:5a9a:dc18:dad%4]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 12:19:37 +0000
Message-ID: <51f5109f-66dc-4ec5-9f1f-91085f2fc6c2@cherry.de>
Date: Fri, 12 Dec 2025 13:19:21 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] pmdomain:rockchip: Fix init genpd as GENPD_STATE_ON
 before regulator ready
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>, Frank Zhang <rmxpzlb@gmail.com>
Cc: ulf.hansson@linaro.org, heiko@sntech.de,
 linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251205064739.20270-1-rmxpzlb@gmail.com>
 <27dff4a5-1e9d-458d-936a-941c3f10c139@rock-chips.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <27dff4a5-1e9d-458d-936a-941c3f10c139@rock-chips.com>
X-ClientProxiedBy: FR3P281CA0124.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::15) To GVXPR04MB12038.eurprd04.prod.outlook.com
 (2603:10a6:150:2be::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GVXPR04MB12038:EE_|DBBPR04MB8043:EE_
X-MS-Office365-Filtering-Correlation-Id: ed2a3a94-8f54-4995-a099-08de3978b7ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TnJTclBUR2tXY3A3TWVnWGdJY1NCdkZqNEZremVqQTgzVC9yVHJySzQra0Vh?=
 =?utf-8?B?YU5pYWtoamhvYWhSK09jN1hLU2RocHdRSjJ2T1ptckdOcTVLUFVZL0J1NVFX?=
 =?utf-8?B?NG0vVVRMTmNYRjJUSUd3amc4SzZHTHZtYzlrQ1huajh1bGdVZDNteGNIcldJ?=
 =?utf-8?B?NlNFVXFYVjF5QTJEZVE0STExayszM3hsako3RG1iZWw2WEp3aEpnOGFSQkRZ?=
 =?utf-8?B?MU9JK3lMdWMwSEh6dGRzOURzazFsTXdzUDdtMlNyT29mODdET2dUK0ZCa2RB?=
 =?utf-8?B?K1pnQ3Nsek9SczNud3FRa3N2UEdrUzVXS2s3c2ZHKzYxQS9VeFZaWmhxdFI2?=
 =?utf-8?B?N2Mxa0JuazVaY3ZVV2FKSWo1VHl5MTg5bzdXYXpTaW5YQWxIdU5YNXZrQzZN?=
 =?utf-8?B?OWtEc09TSXVkZGkzRUNYaEF6NEpLSTJsZ05rRmN2VU1TVVBnSi9pRkNITHBK?=
 =?utf-8?B?dXVaNU1QRHpha3hvYlNvVVAxTUQ2YkJURk1xVTZBSkdSTmtOL3hxc3lCaUtH?=
 =?utf-8?B?MkJaT2x1UzZVYmVRZ1I3RWpxMlNBbUtkWUF2ZjBJVlkzVFlObnpQRDJ1d280?=
 =?utf-8?B?TE53cFczUG1KUkF0S0F3bytOZ3ptOXdRTFNiTEx2NjZOOUZCTHBKY3B1cGk5?=
 =?utf-8?B?NW5JbUFvZ01HTGF4ZStLYTFwODA3V25ZM1BUZ09Uc3M2TFBWaUM1bisxbzZq?=
 =?utf-8?B?SlZIWHZlaUNHcC94ckIyY21WbjZ1RVk1dnFnQkIvTTBEQm1MV2Z0RjNOVjRU?=
 =?utf-8?B?c25EMHN4U0RMc0hmaVVnUWFIK1kwQlF5ZzRQUFpNS0U4QnpTNzdGVWRUc1hy?=
 =?utf-8?B?Sk0wWkw0SC9oMjIzUXZ6UGtUNnUzMFhUM0c1M0JXVGpzQkdQblZyWW82OVJh?=
 =?utf-8?B?c1BmWmdScUFRVVlOazRFblVFTkhudEdUTUlKR2gzTHNwQ01KTDR5N2pyWEJ1?=
 =?utf-8?B?QlRKWTZnd2xHdzgvN1NlQ1J3YmVvbTlJd3ZiVktRbHpnYThnMU1obklXdUps?=
 =?utf-8?B?VTBYK0tPdERWQlpTV09CcXJ4RFNaQ2U5MmNLSnNvdXhETllKRU1PcTV4Ukh1?=
 =?utf-8?B?MGZ5SXV2WVBmYmIrZkZXRFZPUFA2OTh6b0l1d3ZnNGkxekxmZzY4a0gweXlm?=
 =?utf-8?B?dWllWG03SytuRUpTamdkYnhQTXdLQ1hpc2tBRTlPdnhPTCtlVDBNZURQbFZy?=
 =?utf-8?B?azUrdW9aazRZT3FGRERhUE5NZThlQUhkalZXeEI0YXlYQmhiNVArcllLOFRN?=
 =?utf-8?B?Q041aEVOZ2hFbzJHSnBBaVN1YWVSUTJEWGM1NGxVZ0JZbFcwNzVLMGwzdW5a?=
 =?utf-8?B?Y3NRU2xPdzI3MU1HaEswK2lMS0JKODgwM29kQk80d0puOFRiTXlKUjhaTURX?=
 =?utf-8?B?QTFXek1pK3RSdk1taVM1Z2huUHRoNHQxZnlkRmsxeEVQVzZaVGROQWZCMi81?=
 =?utf-8?B?S095YVFxWFBUSklLZnJXY0xkNUc3dXVqRmg4QzkzS0NyamozNUtrV2lFSnR2?=
 =?utf-8?B?dGhSR2RzVkwveDF6ZGVsdkgwOVU3ZjFyeHRUMDFrUmlkYkxnMjZBbW5rUksz?=
 =?utf-8?B?dzV4ZUprYWswaWo5Mkw4SVVnei9hOHJmMjdNTytwTXZNY1NWUzBLejhJb1lJ?=
 =?utf-8?B?ejZZTVI1YzRDQ2l6UDlhWjZQMGptTnpvTW04T1ozMytNSkRKOUsrb0gzZTlj?=
 =?utf-8?B?YlRxS3A3U0w2Sk56WitpQ0N0MjlOeXRiTkRlK2RIOEd5Nm1XU3FRT1lJQnlP?=
 =?utf-8?B?bTFSSUo2QkQ2dWlxMTdzVlkzV3kyVWlCRnZPRHV4Y3lFZTZiUHBoZE1PTjVD?=
 =?utf-8?B?Wmloa21WOUVKYjdmZDBsV3lsR0FxSEtrRGg2SWhDYU11d1RScHlsL3FxS0tM?=
 =?utf-8?B?a0RGR2dRZzkrVFViWEUxdXAwQnJxSmNpaURmOG5lRlVkQWhXMFFmZUhYdksv?=
 =?utf-8?B?UWtadE5NYk5ocXVTZ2FmVXpVS1lScnNkUXFNTktBWFNOUmFiTVFmMkVNTUg3?=
 =?utf-8?B?MUlaMkRONXRRPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GVXPR04MB12038.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(10070799003)(366016)(1800799024)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWg4YlEwN3dreSt5RVlGaUxHTDZZZmZjbmZBRXFRa3pTR3IyTTg1T0RSQUds?=
 =?utf-8?B?SW11djdodXJGS1haay9BZ0dpa2E4MzYzZ1hBL0Q1dlNCMi9tUTBrTjFQVnJa?=
 =?utf-8?B?amtjbGtyVDlSdExST1BVODlYT3NKYVprdndrOXNZRVNHTWdBbFVLcnEyTkQx?=
 =?utf-8?B?ZU1GNExoTGs2cXRwMEEzMTdydmdtN25BMG5NZGtQeE93SkFhZktEMTRpL2t4?=
 =?utf-8?B?T2xMQVZPZ0YvWXZmRVlFNkJBdjFGTzFReUJxT0xLaXhmcnZEcFpSL0R3eWQv?=
 =?utf-8?B?YUZ3Y2swdk9yYlBSOGlxK2MyaEhpZ2c4OEtEMisrdENGQnRLbEllbGEzTjNY?=
 =?utf-8?B?SlNxZ2dWTEI1YjJvV1RtM3hURHM0dzhvTkppc3g1TzdINXZDeWpsYUVVWlVo?=
 =?utf-8?B?ZWM5bDBNMkRPWmdOYWxFeHpTVFAzUEdHQ1RJWTNjM0REYWtyZDA3b0o2cFFY?=
 =?utf-8?B?M3NWMDRXWGVmOG5nRW5vaXovQW1rMXNiU0lGMlpBdllNeERGVlFxM2NNWWxR?=
 =?utf-8?B?d2N3VmR6eUlJZWFjSEZoOHliNi9CZWl0aXhSNlY5OXMyRlRhT05wRm11bGl0?=
 =?utf-8?B?MmdDTWFXZTArQ1JSSi9Tbzl4SHlMam9DN29XR3lWNEF3SENRSGRTRU1wOXNQ?=
 =?utf-8?B?UlVvd1R5d3o4WFZGM1JMYU9La1JiYkpJSnZ1SmpFRE1nL0JtTmxmTmxBMU5q?=
 =?utf-8?B?M3B5bDY5VXdFK0pkNXNDUmU4c2tCRVpHVy93OWR2eVhWMGJyN2RFWlAvcWlR?=
 =?utf-8?B?S09tL2J5VXpxNXUvSzRCaDY0czVhcWdoQ2F0b2twaVo0cnlLMExWUlhKNFJx?=
 =?utf-8?B?bS8xZ0hVYWJWRUFlRU1lYlVwTDl6MjBpUTA0dytIKyswLzk1WlVSTDJYS0VY?=
 =?utf-8?B?OVB4eDliRlN5ZVhyc2ZiM0YyLys5eW8xWUR6ZlhhWGZPMXFjelJ2YmhaT1ZJ?=
 =?utf-8?B?MkxKYmM3a2hBR21IWWM2TWpSWVZMY2s5M0xBcTlEVXZURGdocHRHZEhXd0kx?=
 =?utf-8?B?dGZFL2hzOEF2ZG5yaU43RnR4aTZpZWxnU3dMbzBrc1hsdDhUWVlwWURhOFRN?=
 =?utf-8?B?dnNRTy9ibmVrZDh2ZXR1ZUQ0dWgwZTZOQVh2d0xla3l5bUlWMUVod2s1Vi9x?=
 =?utf-8?B?SFFTZ0E4MDJyOUtadjNlNEJYckNYK1JiUDlFaTdlL0p2VnlwYzdSbmZvanJF?=
 =?utf-8?B?andEMER3dmFQUEc1a2RRYVRXbVFSbzB2YWRGU2NuWEhaNFZrM1dHTWpGdjZZ?=
 =?utf-8?B?TDRmV01UL3ljQ1Z0SmFQWjFOSVdxd1hBSWZtOUg2T3VOdHBCYmxTVDVFbXpi?=
 =?utf-8?B?a2FJTzJsME9MTkpTS3BxVXJxYU91NFZFVVpUaHZUOGs1VkhYcHB3aUJpSU83?=
 =?utf-8?B?K241RkNHbGtrMXJGd2UxMVRtRGp6aUJMQ0c0U05TV0ZSY1ZtUXBOaGN1bW9B?=
 =?utf-8?B?Y0tYODNiYnVaUEFoU2s0ZHNxcitCYmJZdmRQK2dXU2NJdVE0cnBwWWpWUnJo?=
 =?utf-8?B?K1BiMTRuWmhyS0J3RHBIaFpDbWJjZXltQ0FPck9iYnQrMFNRV3d3Q2dseFBZ?=
 =?utf-8?B?Tmp3RTV2VGg4Z3F1Q3RZUUVlbGhEUVFSYytjYmZsOCtwMng0bE1UTVFwNTVh?=
 =?utf-8?B?dHJBUC9Mb0Eyd0NTcnhkMnlPUVZjOWZTRGZIVEtXaVpUTUZZOEpyenk5VlRj?=
 =?utf-8?B?UWRMRHo0TkFlVVFCS0l0cGkxeG9VSkR1VHZEM3pqN2M0SWx4Ny9SK0t5OTNE?=
 =?utf-8?B?UVA5dDFpRHRjYUJHL3JHTjV4cTNLZUJSK1B4d3k0WG5Oa2NYL0ZkV1JiWVRU?=
 =?utf-8?B?SkRIejd0bXFUZjAzb0NsVjZ3VEtLKzlrdExJNHZFcXFIckRMMDFvUkJlNjM0?=
 =?utf-8?B?SnNFL0x2Z2IzZGxxbzRtVHg2eWtXTFJ0MzJoTnIrN0FycUtVYXRya3BaSFd3?=
 =?utf-8?B?bngrYjU4bDVaNFBuVEE1cHBNK3IrSXhsU2s1ZjZPNVBISmlaMjRVRVFxN2pX?=
 =?utf-8?B?MWw1NXVLejAyMXJLMThma1o3K0UvZWVmamtlUkN2T2Q5a2JXR3FoMjF5aUtm?=
 =?utf-8?B?MlVzZHI5VVp3eC95TG4xYnhqWGhXVHIxUXhpT3FMbDRBNmRMSCswTG9CZEw3?=
 =?utf-8?B?ZWptanJNUGY3NUl6UWsxYXU5bVZIdzFMM2x6UEFwTy9sbWZtcXd1eTJGNUVy?=
 =?utf-8?Q?9wNSoOAo8FezPIB7c58hsGE=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: ed2a3a94-8f54-4995-a099-08de3978b7ef
X-MS-Exchange-CrossTenant-AuthSource: GVXPR04MB12038.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 12:19:37.8971
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MaQQOlMED49fYBDF3axdFkRbu80pxS0dZLGnxTISTnFVPuNvACnlf2qcVtcvNQ4pvfC39TLvIfD9PQvGR+zC0Rx2B+thBl3qBWrdgWsUIEc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB8043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_041943_511752_5E10F909 
X-CRM114-Status: GOOD (  15.45  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Chaoyi, Frank,

On 12/8/25 4:17 AM, Chaoyi Chen wrote:
> On 12/5/2025 2:47 PM, Frank Zhang wrote:
>> RK3588_PD_NPU initialize as GENPD_STATE_ON before regulator ready.
>> rknn_iommu initlized success and suspend RK3588_PD_NPU. When rocket
>> driver register, it will resume rknn_iommu.
>>
>> If regulator is still not ready at this point, rknn_iommu resume fail,
>> pm runtime status will be error: -EPROBE_DEFER.
>>
>> This patch check regulator when pmdomain init, if regulator is not ready
>> or not enabled, power off pmdomain. Consumer device can power on it's
>> pmdomain after regulator ready
>>
>> Signed-off-by: Frank Zhang <rmxpzlb@gmail.com>
>> ---
>>   drivers/pmdomain/rockchip/pm-domains.c | 14 ++++++++++++++
>>   1 file changed, 14 insertions(+)
>>
>> diff --git a/drivers/pmdomain/rockchip/pm-domains.c b/drivers/pmdomain/rockchip/pm-domains.c
>> index 1955c6d453e4..bc69f5d840e6 100644
>> --- a/drivers/pmdomain/rockchip/pm-domains.c
>> +++ b/drivers/pmdomain/rockchip/pm-domains.c
>> @@ -659,6 +659,11 @@ static int rockchip_pd_power(struct rockchip_pm_domain *pd, bool power_on)
>>   	return ret;
>>   }
>>   
>> +static bool rockchip_pd_regulator_is_enabled(struct rockchip_pm_domain *pd)
>> +{
>> +	return IS_ERR_OR_NULL(pd->supply) ? false : regulator_is_enabled(pd->supply);
>> +}
>> +
>>   static int rockchip_pd_regulator_disable(struct rockchip_pm_domain *pd)
>>   {
>>   	return IS_ERR_OR_NULL(pd->supply) ? 0 : regulator_disable(pd->supply);
>> @@ -861,6 +866,15 @@ static int rockchip_pm_add_one_domain(struct rockchip_pmu *pmu,
>>   		pd->genpd.name = pd->info->name;
>>   	else
>>   		pd->genpd.name = kbasename(node->full_name);
>> +
>> +	if (pd->info->need_regulator) {
>> +		if (IS_ERR_OR_NULL(pd->supply))
>> +			pd->supply = devm_of_regulator_get(pmu->dev, pd->node, "domain");
>> +
>> +		if (!rockchip_pd_regulator_is_enabled(pd))
>> +			rockchip_pd_power(pd, false);
>> +	}
>> +
>>   	pd->genpd.power_off = rockchip_pd_power_off;
>>   	pd->genpd.power_on = rockchip_pd_power_on;
>>   	pd->genpd.attach_dev = rockchip_pd_attach_dev;
>>
> 
> @Quentin, Could you please try this patch? This should resolve the
> problem you're currently facing where the NPU fails to work in
> built-in module.
> 

Thanks for the heads up, Chaoyi!

I tested that for a few hours with a bootloop script (700+) and seems 
like I couldn't reproduce the issue 4 reported in 
https://lore.kernel.org/linux-rockchip/0b20d760-ad4f-41c0-b733-39db10d6cc41@cherry.de/ 
when building wih DRM_ACCEL_ROCKET=y.

So:

Tested-by: Quentin Schulz <quentin.schulz@cherry.de> # NPU on RK3588 Jaguar

@Frank, please add me in Cc if there's a v2 so I can recheck if you want.

Thanks for having a look!

Cheers,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
