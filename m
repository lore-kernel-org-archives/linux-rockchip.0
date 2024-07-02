Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6410AC3064D
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jul 2024 15:14:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7eoigareAr52KxBCD5L+5302fuAKhgG6/cYMr3oYeXE=; b=0fTbHqPTE/vvdOjpb/d1BAEV20
	k19uVdwh47imFkV0I0KU0AUnJNQm1aCqgpjvmlc+5jboz6IfdeuvDf+4+dtm0UxC+ai/Bs8I+Pm/i
	a0xioIswWfsx4j9nLlGXsztPwY4NT92tJdDC6GQ7dLHjyeFZyLSuaXAYwE/eG1830m2ueSqAgQsbH
	+VrdIg0jmg+w5udoHldGfgxxzyhcZjh4YqJGrU3Q1iBTbD/ToqH6yZjdQR9nVmvYb/S7JaYgqqiA1
	5o0zrMWWXB/VglOCo4LMTg4hk46EunnF3ykyUClEN8nkx2XcrRQ8UqCfDapiaFTS4LQKNnbTYLsTx
	ToUaT3zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOfD4-00000007A4a-1vZX;
	Tue, 02 Jul 2024 15:14:22 +0000
Received: from mail-vi1eur03on20730.outbound.protection.outlook.com ([2a01:111:f403:260c::730] helo=EUR03-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOfD2-00000007A3z-0h1c
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jul 2024 15:14:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IWCQiUxtC8A0xQ6pUMwliHkrmpOYSfNvEa9kGAziCnZHpfIkp2iyioLIHg4JJ7ZmSKTEc1l2a/hNxqTqSZVlJlzcOviyJ/3BMQ9GRlSug0mSpxq/Wo4PEC02YVh23Sh86CVXUkNhrTenzijwSW8XAmvUQJ4ITB1um9Up+2QkGbkldzgHKX/oN2UXW6N9Zlcse4N3ouFuhmaSON43TCtuih7TbCu0UX5Yb1rYstrdzfl0Jaf8zkyy5PqtLu1f/gAfTZ7fHdRWtxnUhgXgs57aTyeEr64bhfPBYMcZbONCXXj+Pv5IcdtoR3ZgZAqWo8gzoULoY4VCR0VGp1KQcjSIgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C0AuSAsOOKiOv/jVIDRFKuCv+YgPeuzOSBbFiQuNUMY=;
 b=DfpzJwQxPsH7OKMQ6xWU/ewOIGBg8AoNpoo5uBjRV3W5I6atuBw50Xz9SpghhTrY7fvcqNcR9/CkNiYtHAdGMMbGi2cGMfmFqD9+NKro7Xgu+rKoPxAnbBXcHiQ0OWXM3mmwS62DabqQkPtPe6c5BuJpjHe+5nv8QFGpB1Sbdut/oIoOnwZJJJhE3ZOn1HQsocmJFoVu1V3Zk8oCV52zq99H39WTCNeao8A3AMEkdL4Kn/jw2gCyFUojFj16baWS7qfG/jeczifOtj7c5TIFeVv3Ktuznyh76PORmaTUdYYOWFaDLXqdM5oRG/3mFwFLN7//GfdyrXC3oN4yUM0nfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=pironex.com; dmarc=pass action=none header.from=pironex.com;
 dkim=pass header.d=pironex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=pironexGmbH.onmicrosoft.com; s=selector2-pironexGmbH-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C0AuSAsOOKiOv/jVIDRFKuCv+YgPeuzOSBbFiQuNUMY=;
 b=R5WNweK/xsP3qdrCfVGCDe1fnv8JgWcTioVQkol9lQkcqIK4do2N2KG6q8cCYuUJXc0bRoQUVLEobBgljR6NPF4fmatCGoXBJYJnCIjxCAe4EXjw3QCco8uNLgYcEtxyS5BYG2FMZnB3MW7bQow2r020Krql+LU7NrBsDi/4iUc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=pironex.com;
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:158::19)
 by DU0PR10MB6728.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:10:400::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.29; Tue, 2 Jul
 2024 15:14:14 +0000
Received: from AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd]) by AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::4cb2:d40b:7a7d:c0dd%5]) with mapi id 15.20.7719.029; Tue, 2 Jul 2024
 15:14:14 +0000
Message-ID: <43fa9511-fe25-4326-b398-0361cf75094c@pironex.com>
Date: Tue, 2 Jul 2024 17:14:13 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: add ethernet aliases
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org
References: <20240702124626.116290-1-p.puschmann@pironex.com>
 <6bb12ab4cd12357dfd69db35107d8b88@manjaro.org>
 <f2c7cdb2-b27d-40cc-b103-68043714f13c@pironex.com>
 <14db27e78c9e1183568b4c99ec487092@manjaro.org>
Content-Language: de-DE, en-US
From: Philipp Puschmann <p.puschmann@pironex.com>
In-Reply-To: <14db27e78c9e1183568b4c99ec487092@manjaro.org>
X-ClientProxiedBy: FR3P281CA0192.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:a4::16) To AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:20b:158::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR10MB3601:EE_|DU0PR10MB6728:EE_
X-MS-Office365-Filtering-Correlation-Id: 5e7812f2-3ef8-43c4-bf5c-08dc9aa9a256
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YTN5WDRDd0lrNSt2V1F2L0p2bHFVeWlmU0lJc2hOUXFJZW1ibTVESUNiSUFM?=
 =?utf-8?B?RmhJRXBYQ0haU2FTM1dwMVVDYUREbGRyczVnRENsQjk1LzB2VlpmY0FhM1Q1?=
 =?utf-8?B?KzBGU1p5YXE1b083dC9yekJLQjRUdmlOUENXOFljaytxN0djMytZTy9yaUYx?=
 =?utf-8?B?Q2ZQa3VNYUhtQnIrSU1iazdXNzJkZUVOdVQ1MThJbGVzQ05JbDdOcWZyWm9E?=
 =?utf-8?B?RFlvMjU5T0d4TEcvc3NxK3Y3R2RzblpVK0xFcW9lZHBxSFpkdyttK3RoV2RH?=
 =?utf-8?B?ZENWWW4yMG9hRXZWckZzZkFhSDRFRU5MMU1zbjVjQmVRWXRuLzJLdHdrNlBY?=
 =?utf-8?B?TUIwMEE5cUV0V3I4QVFRWFpDWFVZL3czOXQ5eS90YnpDQ1pzRW5YTXZLMXNk?=
 =?utf-8?B?Sy9mMDRBNVpNVnNxNmkxcTRGbE9lRHRpWmk4ZW1JaTd4a0lwc3pYYmJZalhE?=
 =?utf-8?B?UnZ1dk9NL3pNS1ZGT3hKS1l5MHMrYmUxczlRNTBGSjJGTUtGVjdxMGM5Z1NT?=
 =?utf-8?B?MWYvcGZIeTdLUlFYVmVaMGdFSnJpOEN2SHFYdmxYbTN5UUVmZS9lT0x5dDVo?=
 =?utf-8?B?SUs2QXBjV3Y3RjN4UHRjR1lLdDFzMjJRTVpyTXQ2YU9DWlQ5WWVqZUJ4Z2x5?=
 =?utf-8?B?aVhsdU9uSWhnclJSOVZNV3ZkYkw4N1FZaTZCYmlmM1o5MGd0aUdyTkdpWU5l?=
 =?utf-8?B?eGQrVWJaQlFDZnJlb2VGN1lyRS9CSzFaeFRFRklKcDFwMjkxcnpFRGpudzJx?=
 =?utf-8?B?WUhKUk52c1IyQW4zeHBBYXRCN2s1VXhxODd3RTJlbHJuNTR3cG9sVmxZZzkz?=
 =?utf-8?B?cUpHWHJXUnEwMC9uRG14TmE1Rzg2VFJocjlSYVovYnhhVXpNcmZIeERVc1k1?=
 =?utf-8?B?QzRjcjZuSU54YUkvZk5aRmcwV01JVHRlTXpOc3lmN1ltR0M3QUpBVlpSM2pa?=
 =?utf-8?B?ZVNjcmpYSWdCc25uUDFXWUZkQ01ia3haeWVrcUhyNXNrMHpMWXAwYmhRM05X?=
 =?utf-8?B?cmZXSTV3c2VkU3oxKzNsbE55VFlkNmpvT2Y5NDlYYURacTdBdXVQOGI2am9Q?=
 =?utf-8?B?cWhFS3pnZmQ2bVk0MFZNMkQyN3ZoMExBWmdDcXU2N1NlazVaODBydmVhT3ZD?=
 =?utf-8?B?SWdneXdrcEd5aDVBd0VnQ1B0NzFuUWcwUGlSQmRCYXpRYUg3NFNMQ3FqVUk3?=
 =?utf-8?B?WUZld3RGelo2NjBGZXVHejhZV09TK1duMXNzTEx3dUZBZE1zVmI2RklxMGZY?=
 =?utf-8?B?YXdCVFpZemtOVUlYTmsvTTQvVTJEQjNLQkJXRUFBSktHRHpuNkl2b1RVS21x?=
 =?utf-8?B?R0ZwaXRHYkFsR2NGQ1NhcDRtZDFNMUduejJLZzFwYzA3b3ZrWHBzK2tXaWR5?=
 =?utf-8?B?VXhxNG5yNXRHcGw4cnZ0a0VSRmlSemk1VVNHQldIYy96NDVaT2lHcWx2WWx1?=
 =?utf-8?B?Yi9tS2x1dEViUWFMU1RDMjFRZXBaWFhZT3lWQm51VEVsWFc4SUFUU3dqSVVj?=
 =?utf-8?B?dGJibGR0Ri9rUlE3a0pMWTVSREh1V2FFYXlTQnZ4ODNYUGtRalp2dUJ4Tmt6?=
 =?utf-8?B?N3lxZDVESFJIWlpoSENtZUdvbW5VVkhRZVFCeG4yWWVkcEVqaEt5enlPR3VN?=
 =?utf-8?B?cFBYVVNDSHhjdU9SQlA5aFlPb0dqTFJPemV2R3JTUk5SaUNKTVA4V2Jaek9o?=
 =?utf-8?B?TkZuM3IzVVY1L3RBc0VyV21ITVRBdjh2T2JmbnN1NHQyNnVzdi9WV0ZmVFFj?=
 =?utf-8?B?cmR3Sm5hamJSRmZzdjlUeXdsYlhKZVViYmFuaC9YMWpJbzlyQng1TVVPV2kr?=
 =?utf-8?B?alloa1ptdFhUWlBhRHRxUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXV3c2gxYmhGWnJHVFRoTFNGc0xTOHBIYUdhM21MSTk3U2lFdVFkVkg0MXp0?=
 =?utf-8?B?c1gvTk9pM1c5ajQ2U1dZYU40RElnOEpPWFo4dTZnS2EvQzlENC82WjVKR3J4?=
 =?utf-8?B?STVTUjdGM09iY2FLRnVBc2pKZ256Qm9WM09Gblk3UStDenFsZXhQOVRUbzhH?=
 =?utf-8?B?QTA4OG52US83KzBFQXB5bGR3MzNNZXkzVkkrU0l3N3BIbVBQcGRwanV6cENN?=
 =?utf-8?B?VG1mR3pWTkRndGRXRjNqdWgwOUFtNGdDQW91Q09YelFKZnJna0lXZkZHWVpQ?=
 =?utf-8?B?TzBpTkozT0ZDTjJuNGhCLzVTeHhoTGY5WE9lYytQZFQwaktQVlZmT25xUHQ5?=
 =?utf-8?B?N28rQWdUbjdqcmU3RGI4cEFPdEU1VG9tM2VYTW9SYUFKV09kRVlyY1llY0hR?=
 =?utf-8?B?VHJuZElJeDJEZy8ya1poNnV2TG92RzBFRmg5a2E2WHlKeDNPMUNQZnZFZFVR?=
 =?utf-8?B?cEdqMWlmWXB5RGxUNlhFelF2TTA1WTJwQ3lTWFduWnJJSXI2aFdHK0FNTTlv?=
 =?utf-8?B?L1FvcXdlYXNCN1F4YVNwMkxjdDVwOEFhdUYrb0c2Ly90MmFRRFVwdnA1MXp4?=
 =?utf-8?B?Q2RnZThhbTlNa1ZlMmFBUHFwUGFPbGJ0aWhLRmdJeFFPbmFYU2ZKbUE0Z2c0?=
 =?utf-8?B?TER2bG5waWdDK0lzWENMQ3ZDdk14bHpJS2lGNzN2anVMNmg2c0ZSUFVNV0Rx?=
 =?utf-8?B?QS9mZ2l1cWlNQU1MU1poRkRhM2xsaXB1TkxoVnliNmpxWEFLNHhzc2JBc09h?=
 =?utf-8?B?OXpNK29WVnhhSnRTU056SFprbjRBRzNEczJYTngxTDExUzZCRUZPS0dTTDA5?=
 =?utf-8?B?TXF5K0p2MWFxdkFCeFA0VDlFN2dGMXFPaUxaQmFxY0N6Z1NJNmVnYTdqNWlt?=
 =?utf-8?B?MmdqZ2MxMGRxSmJUU2E2ay84OU5lV0E3VFJqMVRPY1pjdDBhTm9lV1Y5Z0dW?=
 =?utf-8?B?TGZLek55WTJLN0ZZblBBVk04c3ZaeHcrRXllVlBxOWVOZ1BmTk5OMmFVOVlh?=
 =?utf-8?B?ZlNXczBwZldtNHE5dHRxMEFnWE5qZkNhUUt6VjRkM1RlbHYrUGdvN09qcWEv?=
 =?utf-8?B?VjFnV3k5b2NIekszNmQ2eFAycG1iempOOG5ydVp6Tkt3YVJpWERaRnphY3A3?=
 =?utf-8?B?T3NZc1lYeExrM2krTHNDTWNBeStxVjM0a044U1RVQkUveU5iRXFzanhVT3hC?=
 =?utf-8?B?QldDOElDNnZMRittaG1EM3V2ZmJKR2JOM0o5REpKUmhITEJRY2FnN04yR3BV?=
 =?utf-8?B?SEJXaXBCamdIdTd0Q2ZUQ0VOS3dxeVhmQ0k4aDVsTEFMMG9OR0gyZE5uWWhj?=
 =?utf-8?B?dlFFUkd5ZU4rdjFyT1dQRmM2Q05FNVdRUUF4b0w2blMyRVBKQ0ZxOHcwTnRu?=
 =?utf-8?B?eEM4NGd6T1BTUnJhTTRkMndSMCtwSGRrSjJ0WUtFOWVBN1FWMXZpZDExV09v?=
 =?utf-8?B?emRybHhYNE15eFBHZ1NhNmpRZTd3eTVEUFU1eVZjSEIvUkg2RmRyMXBRcEtp?=
 =?utf-8?B?UXJjMTRiUk1MZzdFODBzZDN1OGU5NFZ6SmNjK2ZDMEtnUGtWcEY2VHljN1dn?=
 =?utf-8?B?T2M1ZzNIcHpvOEhnUEo5ZHBCN1pWUEF6VGZYWjIvMkx2MTRtTVJOZmZxcjJR?=
 =?utf-8?B?empMblRNU0lhK085dDFzcXZscWNmSlhvc2NCYkYxSWNQLzdTNjVRM0ZZMjVx?=
 =?utf-8?B?azdnOXFOemg2ZmVscjNCai9nWjc1NUE5OHJHYjBoVTV6N0x5NnNXSEtQc051?=
 =?utf-8?B?OFhsNmhSWTRLNnFKclRIV0tWcVBBTVJ2U09TMnF2ZWJMVHE3ZHFIdXQ2M3ZM?=
 =?utf-8?B?WExXNUJhcEhoek5hZS9tRUtMcnhXNEpDeDNpd1Z5SkRwWm4xcFNNMFFlNUZs?=
 =?utf-8?B?N25aQnJCOHFGa1JkTE9mckIycS9YZFJPT1E4TFNaaThvT3ZZQXByd1ZDa1Bp?=
 =?utf-8?B?WUxQall1ZGlSUi9FZmhUU0pLMkdwZTBZUUhVNUJTM0ZCMVlwTkFsTmpEN2lR?=
 =?utf-8?B?T2xMZEI2WWROL2tSRGNVRTZwYXhsYU8rZjRnRFM1WUZlUW5QN0xmRmx3ZnVk?=
 =?utf-8?B?MWk4ZGJINmZobjhCaHdQUmVaWDh0M0I3RTEzV0c0NEdKZFIwT1grWXFucGdG?=
 =?utf-8?B?bEVvUC9SWEM5WlRCYm1oaWFxeEFwbXNSNjdmZ1AzS01Sd1crSi9PZWV3eTdB?=
 =?utf-8?Q?gjvtkqd9qi9IQic6u84hriX6vBsKQw1Zmr93kXnw+PP6?=
X-OriginatorOrg: pironex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e7812f2-3ef8-43c4-bf5c-08dc9aa9a256
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3601.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jul 2024 15:14:14.4765
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 00aa8e52-eebe-489a-8263-3195e0a468ca
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /ITmois7d13MNBBhWycD+0SXlUc1sOqBT4h3PTD5nTwdK7OQkCqFw9pD7yeyqraaNelKzZ2I/jvIP0Id8cSJpg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR10MB6728
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_081420_235858_6CAEF847 
X-CRM114-Status: GOOD (  24.44  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gMDIuMDcuMjQgdW0gMTY6NDEgc2NocmllYiBEcmFnYW4gU2ltaWM6Cj4gT24gMjAyNC0wNy0w
MiAxNjoyNSwgUGhpbGlwcCBQdXNjaG1hbm4gd3JvdGU6Cj4+PiBPbiAyMDI0LTA3LTAyIDE0OjQ2
LCBQaGlsaXBwIFB1c2NobWFubiB3cm90ZToKPj4+PiBQcm92aWRpbmcgZXRoZXJuZXQgYWxpYXNl
cyBzb2x2ZXMgYSBzdWJ0bGUgcHJvYmxlbSBmb3IgdGhlIHJrMzU2OC4gVGhlCj4+Pj4gYnVzX2lk
IHVzZWQgZm9yIHRoZSBzeXNmcyBkaXJlY3RvcnkgbmFtZSBvZiB0aGUgbWRpby4gV2l0aG91dCBl
dGhlcm5ldAo+Pj4+IGFsaWFzIHRoZSBidXNfaWQgaXMgYWx3YXlzIDAgYW5kIHNvIGNyZWF0aW5n
IHRoZSBzeXNmcyBkaXJlY3RvcnkgZm9yIHRoZQo+Pj4+IHNlY29uZCBtZGlvIGZhaWxzIHdpdGgg
YSBkdXBsaWNhdGUgZmlsZW5hbWUgZXJyb3IgYW5kIGJ5IHRoaXMgdGhlIHNldHVwCj4+Pj4gb2Yg
dGhlIHNlY29uZCBldGhlcm5ldCBwb3J0IGZhaWxzIHRvby4KPj4+Pgo+Pj4+IE5vdGU6IFRoZSBh
bGlhcyBudW1iZXJpbmcgaXMgaW52ZXJ0ZWQgYXMgZ21hYzEgY29tZXMgZnJvbSBtb3JlIGdlbmVy
aWMKPj4+PiByazM1NnguZHRzaSBidXQgZ21hYzAgY29tZXMgZnJvbSBzcGVjaWFsaXNlZCByazM1
NjguCj4+Pgo+Pj4gUGxlYXNlIHNlZSB0aGUgZm9sbG93aW5nIGNvbW1pdHMgYW5kIHRoZSBkaXNj
dXNzaW9ucyBvbiB0aGUgcm9ja2NoaXAtbGludXgKPj4+IG1haWxpbmcgbGlzdCB0aGF0IGFyZSBs
aW5rZWQgaW4gdGhlbToKPj4+Cj4+PiAtIGIwMTQwYTFiM2IxZCAoImFybTY0OiBkdHM6IHJvY2tj
aGlwOiBBZGQgZXRoZXJuZXQwIGFsaWFzIHRvIHRoZSBkdHMKPj4+IMKgIGZvciBSSzM1ODgoUykg
Ym9hcmRzIikKPj4+IC0gMzZkOWIzYWU3MDhlICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBl
dGhlcm5ldDAgYWxpYXMgdG8gdGhlIGR0cwo+Pj4gwqAgZm9yIFJLMzU2NiBib2FyZHMiKQo+Pj4g
LSA1ZDkwY2IxZWRjZjcgKCJhcm02NDogZHRzOiByb2NrY2hpcDogUmVtb3ZlIGV0aGVybmV0MCBh
bGlhcyBmcm9tIHRoZQo+Pj4gwqAgU29DIGR0c2kgZm9yIFJLMzM5OSIpCj4+PiAtIGM5MDBmZWY1
ZGVmZiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBSZW1vdmUgZXRoZXJuZXQwIGFsaWFzIGZyb20g
dGhlCj4+PiDCoCBTb0MgZHRzaSBmb3IgUkszMzY4IikKPj4+PiBUbyBzdW0gaXQgdXAsIGV0aGVy
bmV0WCBhbGlhc2VzIGFyZSBjb25zaWRlcmVkIGJvYXJkLWxldmVsIGZlYXR1cmVzLAo+Pj4gYmVj
YXVzZSBub3QgYWxsIGJvYXJkcy9kZXZpY2VzIGFjdHVhbGx5IGV4cG9zZSB0aGUgRXRoZXJuZXQg
aW50ZXJmYWNlcwo+Pj4gYnVpbHQgaW50byB0aGUgU29Dcy7CoCBUaHVzLCBhZGRpbmcgZXRoZXJu
ZXRYIGFsaWFzZXMgdG8gdGhlIFNvQyBkdHNpCj4+PiBmaWxlcywgdW5mb3J0dW5hdGVseSwgaXNu
J3QgYW4gYWNjZXB0YWJsZSBvcHRpb24uCj4+Cj4+IEFyZSBldGhlcm5ldCBhbGlhc2VzIGFyZSBo
YW5kbGVkIGRpZmZlcmVudGx5IHRoYW4gaTJjLCBzZXJpYWwgYW5kIHNwaSBhbGlhc2VzPwo+PiBU
aGVyZSBhcmUgYWxpYXNlcyBmb3IgZWFjaCBvZiB0aGVtLCB3aXRob3V0IGRvaW5nIGFueSBoYXJt
LiBBbmQgZXZlbiBpZiB0aGUgZ21hYwo+PiBub2RlcyBhcmUgZGlzYWJsZWQgd2l0aCBzdGF0dXMg
cHJvcGVydHk/Cj4gCj4gSW4gYSB3b3JkLCB5ZXM7IHRoZXkgYXJlIGhhbmRsZWQgYSBiaXQgZGlm
ZmVyZW50bHksIHdoaWNoIEkgYWxyZWFkeSB0cmllZAo+IHRvIHN1bSB1cC7CoCBBcyBLcnp5c3p0
b2YgYWxyZWFkeSBub3RlZCwgcGxlYXNlIHJlYWQgdGhlIGRpc2N1c3Npb25zIGxpbmtlZAo+IGlu
IHRoZSBwYXRjaGVzIGxpc3RlZCBhYm92ZS4KPiAKPj4gT24gbXkgcmszNTY4LWJhc2VkIGN1c3Rv
bSBib2FyZCBpIGhhZCBubyBldGhlcm5ldCBhbGlhc2VzIGFuZCBuZXR3b3JraW5nIHdhcwo+PiBl
bmFibGVkIG5vcm1hbGx5IHdpdGggdGhlIHN0YXR1cyBwcm9wZXJ0aWVzIG9mIHRoZSBnbWFjIG5v
ZGVzLiBFaXRoZXIgb25lIG9yCj4+IHRoZSBvdGhlciBvciBib3RoIG5ldHdvcmsgZGV2aWNlcyB3
ZXJlIGluaXRpYWxpemVkLiBXb3VsZCBiZSBzdHJhbmdlIGlmIGFuCj4+IGFsaWFzIHdvdWxkIGJl
IHVzZWQgd2l0aG91dCByZWdhcmQgdG8gaW5pdGlhbGl6aW5nIGEgZGV2aWNlIGRyaXZlci4KPiAK
PiBJdCdzIGFsc28gYWJvdXQgZm9sbG93aW5nIHRoZSBUUk1zIGFuZCB0aGUgYWxpYXNlcyAob3Ig
Y29tbW9uIG5hbWVzKSBkZWZpbmVkCj4gaW4gdGhlbSwgYXMgZGVzY3JpYmVkIGluIHRoZSBhYm92
ZS1tZW50aW9uZWQgZGlzY3Vzc2lvbnMuCk9rLiBJIHVuZGVyc3RhbmQgdGhlIHBvaW50IHdoeSB0
aGUgZXRoZXJuZXQgYWxpYXMgYmVsb25ncyB0byB0aGUgYm9hcmQgZHRzIGluc3RlYWQKb2YgdGhl
IFNvQyBkdGlzLgpCdXQgb24gdGhlIHF1aWNrIGkgZm91bmQgbm8gcmVmZXJlbmNlIGluIERvY3Vt
ZW50YXRpb24vIG9yIGluIGRyaXZlcnMvbmV0IG9yIHRoZQptZW50aW9uZWQKdGhhdCBhbmQgd2h5
IGV0aGVybmV0IGFsaWFzZXMgYXJlbid0IG9wdGlvbmFsIChhbmQgaXQgYXBwZWFycyBpbiBtYW55
IGNhc2VzIHRoZXkKYXJlKS4gRnJvbSBteSB5ZWFycyBvZiBib2FyZCBicmluZy11cCBteSB1bmRl
cnN0YW5kaW5nIG9mIGFsaWFzZXMgd2FzLCB0aGF0IHRoZXkKYXJlIGluIGdlbmVyYWwgYXJlIG9w
dGlvbmFsIGFuZCBmb3Igc29tZSBzdWJzeXN0ZW1zIHRoZXkgYXJlIHVzZWQgdG8gaGFyZC1jb2Rl
CnN5c2ZzIHBhdGhzIGFuZCBkZXZpY2UgbmFtZXMgaW4gL2RldiB0byBzb2x2ZSB0aGUgcHJvYmxl
bSBvZiByYW5kb21uZXNzIGluCmluaXRpYWxpemF0aW9uIG9yZGVyLgo+IAo+Pj4gVGhlIHN5c2Zz
IGlzc3VlIHRoYXQgeW91J3ZlIGRpc2NvdmVyZWQgc2hvdWxkIGJlIGluc3RlYWQgc29sdmVkIGlu
IHNvbWUKPj4+IG90aGVyLCBtb3JlIHN5c3RlbWljIHdheS4KPj4KPj4gVGhlIGJ1c19pZCB2YWx1
ZSBjb21lcyBmcm9tIHN0bW1hY19wbGF0Zm9ybS5jIGFuZCBvZl9hbGlhc19nZXRfaWQoKSB3aXRo
Cj4+ICJldGhlcm5ldCIgYXMgcGFyYW1ldGVyIGlzIHVzZWQsIHdoYXQgaXMgYSBjb21tb24gd2F5
IGluIHRoZSBrZXJuZWwuIEl0Cj4+IGRlbGl2ZXJzIHVuaXF1ZSBpbnRzIHN0YXJ0aW5nIHdpdGgg
MC4gc3RtbWFjX21kaW8gdGhlbiB1c2VzIHRoZSBidXNfaWQgdG8KPj4gY3JlYXRlIGEgbWRpbyBi
dXMgaWQgc3RyaW5nIHN0bW1hYy0ke2J1c19pZH0gdG8gcmVnaXN0ZXIgYSBtZGlvX2J1cy4KPj4g
RnJvbSBteSB1bmRlcnN0YW5kaW5nIHRoaXMga2luZCBvZiBidXMgaWQgaXMgY29tbW9ubHkgdXNl
ZCB0byBuYW1lIGRldmljZXMKPj4gYW5kIHBhdGhzIGluIHRoZSBzeXNmcy4gVmlld2VkIG9ubHkg
dGhpcyBwcm9ibGVtIGl0IHdvdWxkIGJlIHBvc3NpYmxlCj4+IHRvIHVzZSBvdGhlciBpbmZvcm1h
dGlvbiBsaWtlIHRoZSBub2RlIGFkZHJlc3Mgb3Igc29tZSB1bmlxdWUKPj4gaW5mb3JtYXRpb24g
dG8gdXNlIGl0IGFzIHVuaXF1ZSBwYXJ0IG9mIHRoZSBtZGlvIGJ1cyBpZC4gQnV0IGRvZXNuJ3Qg
YnJlYWsKPj4gdGhpbmdzIHRvbywgYXQgbGVhc3Qgc29tZSBraW5kIG9mIGNvbnZlbnRpb24/Cj4+
Cj4+IEFub3RoZXIgaGFjayBpIHRyaWVkIGZpcnN0LCB3YXMgdG8gdXNlIGEgc3RhdGljIGluY3Jl
YXNpbmcgaW50IHRvIGdldAo+PiB0aGUgYnVzX2lkLiBUaGlzIHdvdWxkIGtlZXAgdGhlIHJlc3Vs
dGluZyBzeXNmcyB0cmVlIHByb2JhYmx5IHVuY2hhbmdlZAo+PiBidXQgd291bGQgZHJvcCB0aGUg
Y29ubmVjdGlvbiBiZXR3ZWVuIGR0cyBhbmQgYnVzIG51bWJlcmluZyBpbiBzeXNmcy4KPiAKPiBX
b3VsZG4ndCB0aG9zZSBpc3N1ZXMgYmUgc29sdmVkIGJ5IHNpbXBseSBkZWZpbmluZyB0aGUgbmVl
ZGVkIGV0aGVybmV0WAo+IGFsaWFzZXMgaW4gdGhlIGR0cyBmaWxlIGZvciB5b3VyIGJvYXJkPwoK
WWVzLiBCdXQgZm9yIG1lIGl0IHdhc24ndCBvYnZpb3VzbHkgdGhhdCBhbmQgd2h5IGkgd291bGQg
bmVlZCB0aGF0IGFsaWFzZXMKdG8gbWFrZSBhIG1kaW8gd29yayB0aGF0IGlzIG5vdCBldmVuIG1l
bnRpb25lZCBpbiB0aGUgZHRzIGZpbGUgKGluIG15IGNhc2UpLgpTbyBpbiBhIHBlcmZlY3Qgd291
bGQgd291bGQgbGlrZSB0byBoYXZlIGEgc29sdXRpb24gdGhhdCBjb21lcyB3aXRob3V0IHNvbWUK
aGlkZGVuIG1hZ2ljIG9yIHRoZSBuZWVkIHRvIGRpZyB0aHJvdWdoIHRoZSBjb2RlLgoKUmVnYXJk
cywKUGhpbGlwcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
