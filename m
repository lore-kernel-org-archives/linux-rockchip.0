Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3FD5C02196
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Feb 2025 16:38:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NSVCjN98rrXIjeoRcM1xY839V7ZOzej3xkos8Erht/Q=; b=GC5AC3GXRPx298ApMFL0VqvWvI
	F+/Oa06+YjkHa03RGEyh4AVXQRedWkC/iL/WnqkqnGw6hgpzkyEsoEtl3honqV7TCgppHHDhErN55
	BJ07IHDOZFv2IF4ljLAW8Tx/0zEWzhMnC2wfNaKvjTRfPdlM/P+eJuvf0etJBL3ENR4Ku3Gj9Zygm
	x/Dbgq/hA7u9S2Rqi5hK/yAhQhWMHeWeGjPBNcKOMg59NeijM9e021o04uyq+fr4oQ4QT5nQI2Llf
	pNwX/hrfcxDg2dP2+Ype/RaiEl8N6SPonr6SkHrYQAmIYuAQzNT7s6XSb2I5vmrnb5ASSPULuo1fd
	9GOCY2ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tezSp-0000000G1KN-0b2Y;
	Mon, 03 Feb 2025 16:38:23 +0000
Received: from mail-norwayeastazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c20f::7] helo=OSPPR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tezNf-0000000G0Qc-2gF7
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Feb 2025 16:33:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FAEj/7UmEuLMyf7hib71ReIOZ51EuDgV7ifzDL2wBMgmU8C+rpIRY7h7OJVTShxBV/f0fmXv5qeNw7pCX46d5E3zTyLtEnCTEeq+vHkrmDSUJeaWHw+eNEqgB9jtCTRDDXvDxuVuSrhO3r5UM1zrpYIiTMSEN8LGIvXHMj0bNKJblZl56HNxp7Dze+yG1dS0zYZ5uv6IABrGP+qc8t1jy7hiqeqNJCSJTA8ZlN6eKWez0JZvuaceb0aeUFQXqzLdHWoVxqzm3fRvixkb3B7uScFNNz0zzPkF4d7NIZyj6M5zMgY6DQ2oY3sPe/wec7+7fotJDD9ar52soUc2QCfe3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oqp7KPuNqOQdOD7HydZS3/2eb5t7cxzRHUzMu+Riiak=;
 b=SLQ1pMdOMPuzSg+cQCQAlQJi0WjkMDI6YXwnDczLZfLXH/FSPeQZ6ltzrNKfmw8aaY6DqK0XywHGMTmtk3RWtfgpyvdoiQZwCQIeTDIRS4dsVlYPUp928b2QT2nkw4ThN/rPvSKKQfZgJnu0iMxpDAoJvZ1yqrJRoKjC5EcY1CUHFjgEgcK4mH6mVgoNHFFTA5Yy0RacjaRECq1aceXBuaKr8vh/NqA3/n5GrskjsEUe9BxjhbywnK9B06GE3E2qVoF5lFY+erUMx7lsObzYe5p2AyGzvVzRC2P72+qZGwrf4uW1Mm0S6Aiav7xNz/VXa/nznXeNkq0JI4eSUwRakg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oqp7KPuNqOQdOD7HydZS3/2eb5t7cxzRHUzMu+Riiak=;
 b=Yt5uzt6pDleyv54EHMhK+XY+RxDRQvYxm6Z2lJzo+G5WgvztUw4SInZ/FLeB55XHaq3Hsg1Gw4hbZblNLlR8aedzMsNteNdbqqWyq0LSWEfDY3ZwBGOJ18W04CQqzE118YpUk0B5l+V8VN+jSAbyvjMxdPcsmWdqI2SnGX0x8tE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AS1PR04MB9432.eurprd04.prod.outlook.com (2603:10a6:20b:4d8::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Mon, 3 Feb
 2025 16:32:57 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8398.021; Mon, 3 Feb 2025
 16:32:55 +0000
Message-ID: <7266daa9-b031-4c45-8711-c4e6e4be7095@cherry.de>
Date: Mon, 3 Feb 2025 17:32:53 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: remove rk3588 optee node
To: Chris Morgan <macromorgan@hotmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 sebastian.reichel@collabora.com, heiko@sntech.de, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org
References: <20250130181005.6319-1-macroalpha82@gmail.com>
 <5d0ae245-1ad3-4e3c-9c68-28babc7290a6@cherry.de>
 <DM6PR19MB3722A5CCBF3FBEAC59189642A5E82@DM6PR19MB3722.namprd19.prod.outlook.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <DM6PR19MB3722A5CCBF3FBEAC59189642A5E82@DM6PR19MB3722.namprd19.prod.outlook.com>
X-ClientProxiedBy: FR0P281CA0045.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:48::14) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AS1PR04MB9432:EE_
X-MS-Office365-Filtering-Correlation-Id: c53ad5cd-fef4-4cb0-1ddf-08dd447068c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N2N3VTh1WWFMTE0rUkh6OWFjTzMzZ0dleGNNTDdVQ01QODVuNXhyQnJkRkFn?=
 =?utf-8?B?b1gxckFMYVZZNVR3U3Flak1CK2UyWjdVQXo2T0I1YllCRG9SWFN6QUF6QVFh?=
 =?utf-8?B?RXh3M21MSmN6WCtPdUxWeUlkakprUDlFVy96UVpjUWVHL2ZHYkMrOXUzZ29S?=
 =?utf-8?B?amxmVjUrYnlLZk8vVUJWVlQxUm5QZ3FDT3g5dzFLTHdQSVNYZ2J2dC9KRDFj?=
 =?utf-8?B?NnhaT2FwNFhVT2VIRG9yazRIQXN6ajZ4Z1d1Y2YxbHgzK1hqdnJqZUIxMTU5?=
 =?utf-8?B?cnlGMmlIQm51aVEweDVXZ3Y3MjJnTVdwYTc5YXpKWnZ3OStmTE1HeHQ0Und5?=
 =?utf-8?B?aVNCdkdVMWl3U3g1VExPd0VETEVsdjhIdXlWbGdBRmZ5aWw0ZlFCYlNuUHRk?=
 =?utf-8?B?enZJdWVPSHNiSUUvYXlra1BvRjVMK1NpQ3QyYWl4Ukc0YmxLbEhrNFB6V1Ri?=
 =?utf-8?B?ZUFwTmZPc2RGUzloaDRDbTI3c1R0Sko0RWlNZlFqb0VZZ3I4TTZuQ0Z5S2FV?=
 =?utf-8?B?dktqeDlUc0dBVnREaGRzSFZyMlU2NUxhdWdwTEJ5OXhsUjVMcGJsUHptcHpP?=
 =?utf-8?B?Rk1pUlNUeXdyZUVCaGxFaVBEZWhraGRlckt1cFdCSkRYMHZvRlNhckZ3UHV5?=
 =?utf-8?B?cDFIemo2UlpqYVVIVnV4blJoVTNrYUY3YUo0Z3dEWE9iVGtVc2FSLzBzWHhp?=
 =?utf-8?B?OXVaaWxPTUJPQkorMVZuaUZIMmltb01XRUVpcGxDbUdIeDZmbWFjUEk0U3g5?=
 =?utf-8?B?NFVkQ0dGSC9FZ3d2TlR2QVVhSWtoL0tVbUcxTkRHcHgrclBGTnFzazdCOWJn?=
 =?utf-8?B?alUrMTVJcWREejhkbDMyN2IvWDFFK2ozbEpMem5vdmdmSm9JVG9KVDJ1bkpL?=
 =?utf-8?B?SE8wQ25aOTh3ZnZrczdCaUxlSTZaWlp3V2w4Q2l3WWk3SVZPUHk1ZWdiOG1s?=
 =?utf-8?B?WEtNWFJCYURHNEhwSzFzUFlweG5hQ0RzL3haQVRDNVpVUVpaWjc0ZHNPNFFv?=
 =?utf-8?B?SUV1RGp1Qndvc3RSSUc2YzVnS3VsT2Qrd3habW5WN1YzdTl0V2tGZXQ4bHVJ?=
 =?utf-8?B?cm4vRjlQSmNXSU9CWWVSRDBpZ0lNdGVHck1nZk5DdTBKOTJxdFhkb1JCcW5F?=
 =?utf-8?B?bU42blVicUpPb05TbEltL245Z3VGWUNrb1BQV1hHNitRa1ZiZGxMemZmVDhL?=
 =?utf-8?B?cUhMOGpmb2xSVDV5Sk1hVklOOUpYZVpMUDZjeHoyaE5NbFBGZFdvcE9QVTc1?=
 =?utf-8?B?N3VMbXI4SEZCWWVZVURnWUoxZVZISCtxNS9tZ3VvSThnOEphSGxBemJaNGdW?=
 =?utf-8?B?c0JkT20yVnVUQXdzYkpHVXNzWlkxQ0huakxSU3lOVVNlb3IxS2F6eXNjc0Z2?=
 =?utf-8?B?L0YvK2IzdlUxQi9qVkVwQU5FNUNpenRVRkZuMWo1RTZtcWRuWlBlcmZZLy9i?=
 =?utf-8?B?anhYOEIzQjBTU3ExWGoxWGlVNkxHMkVaZ3lvUUNTQ1hTdkVGQ1Q0enIrOTI0?=
 =?utf-8?B?UGhRdnFhZ3VyTzFrL0xXeG9panMxYTFMZHR5Zm1OK0NuenJyMHFiWjRDbndM?=
 =?utf-8?B?UjRzZy9obkp3NDZNR01ER25jUFpKTU1TMkQ4RGJLUSs3Zkt6UjRqczFmaGpG?=
 =?utf-8?B?S2tLRTJtc3VRWExseUVLTkkvM3lna3kxdmZ5bXJOMkNybURhcG9GOEdhR25D?=
 =?utf-8?B?cnZFeVBnMW5KZlZnMTZlOXhkTStXZ3o2NW82MnVkVDNjU2NzZEM2Z1BUbWwy?=
 =?utf-8?B?M1ZwZXNuNWlmT1pkUmRXRXpxTURaYjN4M2J4djQ4U0llaUpyYTd0Q1VXU1RB?=
 =?utf-8?B?WW5UcXl6RXprdlFObDFsVDNLejhvRWZXeVhDRnRpVUpoeGhPODI2d0YvN3RX?=
 =?utf-8?Q?s2u8I0UL2Ohed?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(376014)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y09RNjlIWVhqK05MOVY2NnloeEdQOGp4d2pzcU91MlZPTkRuRUhLQWhTUXo4?=
 =?utf-8?B?SDgzYTQxS2JwSlNVVVlMb0VOdEJEY0RjTG1LU0hGK3VaRWg2RCt5NzJtZmJB?=
 =?utf-8?B?VVhJVm1qMWdUVUM1RDVBeFhIMVZ5anlaUXY5cjVtZkhFcWlxZW50bktOQzNF?=
 =?utf-8?B?bmZTQk9SK1hmRDdsTE5VNlBJVTEyTFp0MmJlTzBqbnR6ZEZIbFVLaTFXZmx0?=
 =?utf-8?B?U0NrVGdwSkY5NFptZkh2SzRPQkdseEU4K0FvNEwxaWZRanE1d09aQ3ZwQlFI?=
 =?utf-8?B?Z3RSVUV2T3pCbWpiL2pJSGpUb1NqcUVoWU9NTHVXajlMblRNR2tVV2JObHVV?=
 =?utf-8?B?UExOL2tKWDdxS3lzWXYrSUNRTThqTWo3TjVxcitNTUZLa2w2c28ycjNIanM3?=
 =?utf-8?B?RTdGaTdOclE0MnJDdzI4QUdTdmxMaTdXVEg0c0Q0WDBPQ1FuTWJNa1ZzNjA3?=
 =?utf-8?B?K1kxNUxqRFJPSXh4ZmxCTWFRZFBtM0tFV25NSVZGN3ByVmFTNzJ5eklHbnhX?=
 =?utf-8?B?REtsRjlQa1d6eGR0M0dONVAvakp5TzlCR3c0U3F4dzlEd3RzS21lSDR5RkZz?=
 =?utf-8?B?R1JyaVpLbnJMaStHY3UvSGxZd1JKcWZIWnVyL2pOdlNlaTdyZnhhR244VlVG?=
 =?utf-8?B?dnk4aE8zWlN6SHVUSlZyZHJFVkdGK2dIcG5CYXFXVC9rZkE0NUJ2a1lUWHRn?=
 =?utf-8?B?VEhRR1pKTkRXcW1qbkU4djI5dGJjRktvNlkwQ1lYUTFsZU5Tbk9IUDF2bTdq?=
 =?utf-8?B?bWVOVjdYQUw4TWt4M1dDRklWQkpCeXMzWG5lbHZpYUoyc2Y3WXFiSFgzSU1F?=
 =?utf-8?B?bFpCVm1JVUNwZFNPK2V3MHJ6TmN0MmpwYVZKTURTWHdaTGphOTZOdTlNSExj?=
 =?utf-8?B?bVJHZG8xVDlzSjdoSHp3QzFrcTdLZTdmNWY5Y3RPa0d2Vk1xYXdEL1R4dVhy?=
 =?utf-8?B?Wm9jQTE1MWt0VzhUTFBNbFpVMGtwSC81R0JxVE1xOFhDYnBjMzB2ODdwT3ZC?=
 =?utf-8?B?eG8yNlF4aWtOaVdMelc1YlJXS1hBbTIyTUdOSDVzNEhCajk3Q0RvTUFuSmQw?=
 =?utf-8?B?dVByT0lYcFJuWnM4SlRNSXVIRUdwKzRseTRibDllelJDODlka3JZS2pENHNU?=
 =?utf-8?B?dWpPNEJXV0VZcXY0WDUzMTNlU3d4Zmk3V3NlZWVId1NCSmhxTzNFTXh4NnZw?=
 =?utf-8?B?Q3NId0xnakNoQzdBcDhxdGJrYnV3YkhXMHZvcDNKQmU1bytQeGluZ0JtMUFx?=
 =?utf-8?B?Z3RhY0xDM25JMHpYSFdVMUFlbmFibnZjamticm5ac0h3NXNqZDJycjlINzdu?=
 =?utf-8?B?Z2RqSGRIMXFiRnlJNlhGR3hTc2U0ZHZkMTZCVGVGRzJnWmVpekhQaU00czd5?=
 =?utf-8?B?WWU2V3RYV0t0QVhKNlMrMGtJMWZ5YklZUkNpbU12OEp6N1hCNDJQVmNHWHNT?=
 =?utf-8?B?S1hsbE4yRW9wMm1mVTZ6WThTL1hYdmplNnY0ZUZFUUl5aERwMEFOeXM1V3dD?=
 =?utf-8?B?dStyb05reGxndkVpNGw2Vlhrc1JZTHk1Z2M1VmxCekpSbzVwQWljNHlqL1BK?=
 =?utf-8?B?TnkrUmM5TW91bURjQ0ZtRFVWaHN5a1dOdU9qdVRORzdUdER4cG9ROS8wKy9u?=
 =?utf-8?B?Sk8wNHlQaGgwaCt5YmxXQ3ZFVnIrS0pXYWR4SFR4ZGw0V2U2UzVNWkxYTGZ3?=
 =?utf-8?B?SnNyRHBTK2s2cnFIZ084TVFCWVZya2JjRGltQ3RkTngySERvRHJhMG02RFNF?=
 =?utf-8?B?UFZnZVRXa2NKSEUrcDBQbWZua0xlUlRGcjUxT29rQkloTXBhNzJmeW1JNUJh?=
 =?utf-8?B?WlVRWHN1ajduaVpRaldyTm93aTkrUXU5WDJVTGtaVzJ5MHlNcjdmQmVjdGZp?=
 =?utf-8?B?WUpiSHhDcyt0QkV0KzFUZE10UnFEakxub2tYLzh1V1NQVEpkU0tzd1RaSHlR?=
 =?utf-8?B?S2VTdHY2VVU1b3dhQkxKNnJwWmJtL0lQUEpYN0Jmd200aTNxbTdzY1Zqa2la?=
 =?utf-8?B?OUtDTFZCSkFzckV3NW95VTNTcUpEeU16MTBoZkxoSHRlOWo4MVJmZGcrWkF2?=
 =?utf-8?B?VnRZMHVWZm9uMDF5QmVPM1ZKdUlSeXhXUmlwUDZkSjRpdjNoUlNDZnBtMzlu?=
 =?utf-8?B?bkZwY3pPRHZvd0Y1MzVQQXloSDAyeTBkRVFEYU9RUG1LWUN4TWhvQTNsdGFZ?=
 =?utf-8?B?OVE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: c53ad5cd-fef4-4cb0-1ddf-08dd447068c9
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 16:32:55.2970
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gYx3T4R/m/XX1ysi9vE+71BwUY+dwuWOeXAS++ksS/RuDG8jIyQkZmn57AQAGE4Tmk5u2u2HpIPT7v3bWtr2yIRIMZ81f+Nr+n9CS9WNyIQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR04MB9432
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_083303_703775_DCA19F0C 
X-CRM114-Status: GOOD (  19.86  )
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

Hi Chris,

On 1/31/25 5:59 PM, Chris Morgan wrote:
> On Fri, Jan 31, 2025 at 05:46:20PM +0100, Quentin Schulz wrote:
>> Hi Chris,
>>
>> On 1/30/25 7:10 PM, Chris Morgan wrote:
[...]
>>> When Optee is not present or used, the node will trigger a probe
>>> that generates a (harmless) message on the kernel log.
>>>
>>
>> And what if we have OP-TEE without this node present, which would be
>> possible if we have CONFIG_SPL_ATF_NO_PLATFORM_PARAM set in U-Boot?
>>
>> I guess we could detect from U-Boot if a TEE is loaded as part of u-boot.itb
>> and fixup the DTB otherwise to mark this node as status = "disabled"?
>>
> 
> Based on my understanding of how each of these projects communicate
> with each other, Optee can only work if you either include both the
> Optee node in the firmware AND the reserved memory nodes yourself, or
> if you have neither and let U-Boot do it (by including each of these
> patches as well as setting the CONFIG_SPL_ATF_NO_PLATFORM_PARAM). So
> basically just this node alone is insufficient for it to work today.
> 

Therefore I think we should either have this node defined + the 
reserved-memory node (with hardcoded address and size if guaranteed to 
be stable forever) added or nothing.

Can we mark a reserved-memory node as "disabled"? If not, then we should 
rather have nothing at all I believe.

> The core issue is that Optee requires you to map the memory as
> reserved so that Linux doesn't try to use it. You can either do that
> yourself or you can have U-Boot do it automatically. Having the Optee
> node in the devicetree makes no sense today unless we also carve out
> the memory.
> 

We should patch U-boot to add these nodes to the DT if an OP-TEE OS is 
passed and either SPL_ATF_NO_PLATFORM_PARAM=y or we cannot detect the 
OP-TEE nodes in the kernel DT. What do you think?

Cheers,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
