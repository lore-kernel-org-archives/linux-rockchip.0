Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8744C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Apr 2024 11:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oCMpEqLV/cY2YTUT+07XQO7Ln8/KihlGkjCN6enFdFc=; b=OjlyiFomBxUYEFDQAnucmB76X/
	ONX+q0xYR4AHs72tfr7t3oVCp0n0a7fbxtrUqM2Ikrowacu7E56LSvh6Phc5ub+ZBuYrjZoEwcZif
	YJbaS8chxUm77SsEcBD+PMqbBf07okVaV2u/rrCDY+aKzhHtgChlYSRnkfQmsh3GdDI0c9ag/xqyL
	j5V7Fn/NcF7iLgxE0a+XE/gelUH//+1ry29EvibSdSjhyIkYHFEwhMZNgx4sMnggqONXudWlc6dAm
	fw3eDUZsQzgCrGlHf1A1xjpLWQ1eDaZJi+NmM+AlPcGqZJEIAVKNJSjhhVyIyER0joxRY8NidCrqA
	L3+hVyyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rysAg-0000000DQ1s-3oES;
	Mon, 22 Apr 2024 11:49:18 +0000
Received: from mail-am6eur05on20701.outbound.protection.outlook.com ([2a01:111:f403:2612::701] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rysAd-0000000DQ11-0gKr;
	Mon, 22 Apr 2024 11:49:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MJJknflQAGQwIf/KvTQn1SzxV6tRI6AMQ0ISlz54eB1HfhFaDjr3tp1KMLCTUnAAqLNJ9sPTnOaQo/MmK2vj+6bLP9S+kxcp7SsJm2lEvuOJQHJTQGQPYjPKccJxZsgKqt5gnW8aL+s7fvP8jn9h2QR/pEDrTe/Qjl/Ivw9aKGG/Yd2aHJX1MSkgtBP6Uq9xgyCUzzHbFhvh/nUwRccXfAEGxopTkZ/WrEdigpcub1VKsV0TbXPWBWi7DWQ4hr7d/ffhxHQ6kuKinfKEm3EylZ9FTT8n4ggOpbimPypArTyH+KoZztCS5nkBehMrMwqzJNBriONVm9sa3DuRz6HYzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3xR//00Xkp2sNyzF2rNX9sjDtH2SAKefj7vumaoWd9I=;
 b=kjQdiWbO/hyIrXPThXY6ubdEDC0s+ppfURla84DAybgZBQJQ8qo5wPR8e0YJfh2VTbhX+SvZqEUx6gdO+qTiBMKrnLNrxPtBiXGWooeKH8U7J1+//OHu2t4Le9Sg1sqZeEI+mlfyCt9jGvL/eIFHiGDEnuy0MOi5nfcaSf3u+ZpeUIS7UhXMoeV9ZxlpYqjSVMQzWmf0ag0Gn6DHhElJIq77llz5bSww7j9ruPcXH2tXRLs7VfASHmKl6eIeLFJVTW5TS4V/XZ8XrDudVf77o8L67XPU9s+1c1B2L5dTXg5UvVNjTrWx+IxM54MuskCihR5qrepCJnMeq78w3/iXHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3xR//00Xkp2sNyzF2rNX9sjDtH2SAKefj7vumaoWd9I=;
 b=KjhPrExH8stKT/moLXnxkYaahn6y/Uc2wQYWdL//jKCIx0lV0WnVEXJdOLIzClMURpCYSvq4h85tuYncP8D4WU9vVv29uUbtPkHcxsO266HHSJHVmhtsbx7riyqHmHIp4tljM0+qdBz0pDmx2UeUQXb+T4RWcG5kNERpnV6snmVZKu6wpVqy01sZA6TahgcVRGHBzfpv3Ab+ftG9Yvv+ofaakTh42596ZA+iD7q4i8m7K6zLVQDFegkXUksZuq+Yqx+TgisR3VGjC2sJxbZr+Jg1Yi6Y33KDzJCEFU8hplp/l8ZNgAcFxKsIi/o/2azulSsRCe6W4dCfUV39uiClzg==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com (2603:10a6:10:1b::13)
 by PA2PR04MB10123.eurprd04.prod.outlook.com (2603:10a6:102:403::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.44; Mon, 22 Apr
 2024 11:49:08 +0000
Received: from DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504]) by DB7PR04MB4842.eurprd04.prod.outlook.com
 ([fe80::bdc7:4b2c:e74e:1504%7]) with mapi id 15.20.7472.044; Mon, 22 Apr 2024
 11:49:08 +0000
Message-ID: <4619b7ec-3d04-47c9-bc43-75eac26b3f14@theobroma-systems.com>
Date: Mon, 22 Apr 2024 13:49:06 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: add PCIe3 support on
 rk3588-jaguar
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, dsimic@manjaro.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240418124445.2360491-1-heiko@sntech.de>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240418124445.2360491-1-heiko@sntech.de>
X-ClientProxiedBy: VI1P191CA0015.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:800:1ba::8) To DB7PR04MB4842.eurprd04.prod.outlook.com
 (2603:10a6:10:1b::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB7PR04MB4842:EE_|PA2PR04MB10123:EE_
X-MS-Office365-Filtering-Correlation-Id: b24660a8-c806-4cc3-de51-08dc62c237f5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Nis3RVRGbncrdE5ET1dtZVgwakFtN1FnQmhFZk9qTzdrcjhabnYzSnNGa3hE?=
 =?utf-8?B?ZzFBUTB1VjhLODhHblNoVys1YjNqdU4xSEQ3eHJXWXFCUVJ2RU5YU0VHWENC?=
 =?utf-8?B?dTZaMFRHK2pJZnJ0ZjBrZzRwZlhLc25WaE1HU204MEFsSDg5ajQwWktaSnl0?=
 =?utf-8?B?QUlXazhJRUJvMUpXSUp5Uk44dEtXQ1Q2S09ZdVMvSFVZMU1QYXVtV3JaK2tz?=
 =?utf-8?B?ci9nWmZtZGFxditwcFNLQkJKSmN4SkNrRTNuK2g1QXFIVHZPQmJJS2hNT1kv?=
 =?utf-8?B?dC9yUE1lK1lNdllJY2VZSEczWERYMFN3bEgvenVLMWxsOStaOVNISWdoRUV1?=
 =?utf-8?B?S0VTSmptZXdTQUFQZkk0UHVJMmh2MVJVTDVWUzNadXQ5elVwSXhqRisvRHE3?=
 =?utf-8?B?WGV3TDBaRm9aL056VGFsSW52NnJ0UTZwR05wdzRiSFppK1ZFa0dqREFnWEpK?=
 =?utf-8?B?N3VNaXlQdWwyZ3ZzVjlubVRNa0VibzUrYTZXOXNONzVQVWZhQjBJYUtSeTlM?=
 =?utf-8?B?SFkyenNkTkNIR2oydTZBVlVxWnpMc0RONDBaaXNNQklXcWpSYkovNk1zNVZ1?=
 =?utf-8?B?ME1Zcm5ab2pKWUVKY2NJS1lMK3JJVjZKeE1jMVZnRXFybktTWDQvWkRYcFV3?=
 =?utf-8?B?QUYvRmVDbE1maDU2S1FGT0hlcWluY2YzR2dpRjA4bWsvdFlaRFBMWEZtRm9W?=
 =?utf-8?B?cWFQNHZPVmowQUFzMW44akhWL2JmSVhla2JOc2dBVEJJMk55ZS9JdXlzSHlW?=
 =?utf-8?B?aXpMWS8vYnoyTHlURWp1YUJqZnpIU0VnRHp1cldPZEh1ZFNkeVRFRU9GdS9n?=
 =?utf-8?B?enN6ODNybm9JZHZJZXBBRDBQVzBYTHArcTNVaG0xd0VROThJQ1FyNDNMbHRp?=
 =?utf-8?B?R0szWUhSOWFjSE8xcVVKSUFmVDRvdjBqb2lTMUZRM2J3anJEZzdla0pEays3?=
 =?utf-8?B?WTdwUEZrV2s5MmlEa2JrcmNVWldMTFVYRVNTV1J1aEY1UWtVZm1CRDUxcmRB?=
 =?utf-8?B?R29TRVJMYlNhakovSUVaalVqRlZiRFhkT3g3WUFJTDhjb3p3eDdyWjVaMWZx?=
 =?utf-8?B?cXFmRE5WK0pjMXl0N0lIdzlZVUxNSXQySEFkb29FZXVrclRhNExjWFV3QVlI?=
 =?utf-8?B?d0ZYNzA1NGsrWGRJdTBZUFZsRkdCRXpEeFErZGp3ZTlaVDVYNDFCQ1dpdUpn?=
 =?utf-8?B?eGhCWkMrNFR3WHdLUjlSWU1UWGNtK3FUd2U3eUFkS291RTd4b3BLK3RpQUhl?=
 =?utf-8?B?azRXYjR4bmpYeWFybzBmK3ByMDQyeUtKRExWZFAvU2Z4TENGKytUTFdETXA5?=
 =?utf-8?B?UnV4eTQ2a0VWbWNBMEU1cGdoTjlDUFhHMElPeWNESGNtSVd4U1RXeVh1M3Zm?=
 =?utf-8?B?QXZ3YjBqY1A5T3VSS1kzMS9HWlZXRHZTRzVRa05odmZtNjUzMXVia2NEVDQx?=
 =?utf-8?B?bFJBM0MvT3pUMnE5ZGtZOVNWVUdFdG03aU1sVkF1SXNJSXA1bGlQL1lYNnhU?=
 =?utf-8?B?RVVKYTdZemJ3Q2tCN0FSYnRWMzRXcVIvQ0xFNTVoK3Irdlp0enJZbDRNaVdn?=
 =?utf-8?B?cGJ1dUU5bGowN3l1SEhaZ1RDK2hkVjBXSDFJcjBPY3UvRVpNZEJyNGVLTlpn?=
 =?utf-8?B?cjVzRTBqT1BMUnBNT2duWHR5OXBlbi81Sm5MNUVaNmNwVk1qRDlqMDVTZFBE?=
 =?utf-8?B?UmkxMFh1cFpkOHJWdENVWVozWlYrd1NYcW9jZXJjejRubFY3VGk0SVR3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB4842.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?STM1QUg2TVN6eUdXRUtmMVNMbnRSTmllenRmd3N0YlZPT2kvbGNqM1E2cHAy?=
 =?utf-8?B?ZVE2OUVjYmt0UGY3RDV0Tit1b3MzR251a0RBZzkyQnpMNVRuazdrUVVCTWI4?=
 =?utf-8?B?UnBwMHYxL1FCSDlVa2JsZFJRU1RQdDNQaWVGM1JrU3U4blk1MGdTdHZCVDRh?=
 =?utf-8?B?ZlJQY2RUU0YrbFpEL3hheFd5QXUyNkpWUkc0enp3QitaUS9xMmNaODhiWUJC?=
 =?utf-8?B?UVhOTWlXdzQydTJ2cjhBaC9ZNWl4T3NHa0RkcGVJbS9QL3V4a3dQb2hlejhp?=
 =?utf-8?B?VVUybE5GZmNxZVltbGpsTWlrTXlNK2hWRGJaQ1JZZDJUOXEydWZTWEFGQU9G?=
 =?utf-8?B?dHdiRURkZ1d5S2hEaWcvMndxUGoreWwydnU0SS9BNHQ5RHVWTlJ3b3R6a1RC?=
 =?utf-8?B?cGxXbGlaMXJ6U05ZUUIrZHdTTW5iZkhGNU1qVFEzTTEvZTBPQVYrMm5uK1o0?=
 =?utf-8?B?ZUNvSDFRNVA1ay83WFRSLzlQVDkyS3g2VUQwcmdWdXJCVk10MEk4THRUTGti?=
 =?utf-8?B?WkIydU51blFlM1NkeEx4SHdFZGFHS084U0FMSHFoTWdkK3NvUDJiL0FiWlVt?=
 =?utf-8?B?dXV1VmN0MWErd3FMelFXSFVJS2VNWXhQaHNJS3BoVVVUKy9qQVNsZG1La25N?=
 =?utf-8?B?WlZRZ3BHdkhnSXVncXdNNXhJLzVLRE93YTd3dnFoSE1aRXJ2bmpWbWtFcTQ1?=
 =?utf-8?B?a29FcytUeHJaN0p5V0R1Y09lWVh1VWhPZHk5b2FObVZsWlU3YzhlR1NWWXgx?=
 =?utf-8?B?SjdNTHlQZWljRTRWaEErS3p4TXNGUkV0NUFmUUFxNVFGYTRZcE81R2FLT3Iz?=
 =?utf-8?B?d2lpVDd1VE9XSXB1bWZaSTMzcXR0TjlmUXlwaS92V0ZQaVRkVjZhdi9lemc1?=
 =?utf-8?B?SnRPbExkdGhTTFdFTVJuc00vWnFSaklqUHVZTzJoRlpWUDlBTkk5V0xqc2Y4?=
 =?utf-8?B?Tng5N2hsTXlsdGRYSzBPNEJ5TW9KZkE0bEluSTVrbmxLQmY2S3Yrazlka0I1?=
 =?utf-8?B?K09oc0NndmVIM1IzcWxaYmhQMzVRZ1Q4TjBNb1NlTnVST3JZL3F2Qmd1a2NS?=
 =?utf-8?B?dkw1WTRRN2NrOHRYQlNHdWhXSnJKN3RDT1BLcEh3MVpCdEU4RXdwSzhNREZi?=
 =?utf-8?B?UWRFWkwvazRNOHpwWEVNOFNveEpscXJXWUtYNGtvSlJFM0diemZaVnJTOElj?=
 =?utf-8?B?cjRnNHdPcHE5S2YyNEZuaFdlSllPWm5iOEdPRnlSWUhVYk1rTmJXSENSVDJH?=
 =?utf-8?B?UVkvTEVjM0o0c1BiV2NUSkhsRXROYUpnaFBsdkNGMzZTR0kxdGVkL09Jelpr?=
 =?utf-8?B?MGNud1dHM3NLRmlWbFVmUlU0akhqck1Yc21qU3ZJeGhaM2NFYjFjU245eEg3?=
 =?utf-8?B?ZlI2bW1CMmltaU02MEZBZnZVL0VSaDlHSU5KZUdXdTF5RUxOemtYYk1FeXpE?=
 =?utf-8?B?TmpVbmRNWTloVEVvbU80bVRhakZBVHg0eFp0akJHdmxIZ3p2ZmI0dUxCUHZN?=
 =?utf-8?B?dDk2VDZqNHhjVEdYK2FFNlhjMUExQTl3YVlCREV6cWszYkdnRjNObjhtRGYz?=
 =?utf-8?B?MmNWZlBIb0p5TE1yQ0hiR1AxRkxvSkgwa0QzVUVPcHpnQU9FeEdZQm1TWmtY?=
 =?utf-8?B?OWJyaFRSZ0c0eGdiMHRxc1FzbXpSVWxSbk9Jb1BueXdWSkdDU1NnMDd2bEd3?=
 =?utf-8?B?MTN2T1owaW9uTkdDT0ZxVnFRSHh5TUF1L0VuYWJ5YzR2UG9OTUtsYUlKUmU4?=
 =?utf-8?B?SUpQYmZvNWMzek9TSkF5d2ZLQ2FBMEgwSElMYndtd0hJOTJGVVBYVWJHY3V2?=
 =?utf-8?B?dGlBR1gzeUcwWC9vY1ZQSmFleUQzRGtkVEJQazNJVkU3REpZbFhnNVVLQnJo?=
 =?utf-8?B?SVNiWUg2aEhYN3FxaFFha0hiMWNOK1MrZnVjVTJESzVEVzBKaGpPK2JJK3h0?=
 =?utf-8?B?RU1yVG1STDF2RzBITjhRV1BRRkllbURDaG9LT3lBYStHTnZpOXlhWVRvcW9i?=
 =?utf-8?B?MXAvdUxKdWRvS0dhNzJUeHh3ajNXWmUxTU4zWlZLd1Y0N0VYQWliV0tDaTlO?=
 =?utf-8?B?RkU4QkpQMkJBeUVjTGhVT05DbEcxN3M4Tyt2b255TUhkTEtCakh0d05naFJX?=
 =?utf-8?B?VWtPUVpVaXVMd0xkZ0NndVdRN0JlZHpDZHV0QkM2MjBHM2dZaXcwS0hnR0o1?=
 =?utf-8?Q?kSAKEe8EP6eTu6iec2dq1xg=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b24660a8-c806-4cc3-de51-08dc62c237f5
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB4842.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Apr 2024 11:49:08.3448
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OcwhjewwLNZXLoaLkKnt7KETC9PPklvYDJASk00UO/8ovZlFRJ7+zHnZxanxyrDD35fbO/cezWysNfeUoHDQqOBPuWBvbXXooPt0gwN/fba3ZqZLG5hyp3nXQ5YAs/Rf
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA2PR04MB10123
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240422_044915_259412_18D70BAB 
X-CRM114-Status: GOOD (  19.75  )
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

Hi Heiko,

On 4/18/24 14:44, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The Jaguar SBC provides an M.2 slot connected to the pcie3 controller.
> In contrast to a number of other boards the pcie-refclk is gpio-controlled,
> so the necessary clock and is added to the list of pcie3 clocks.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
> ---
> changes in v2:
> - "an" M.2 slot (Dragan)
> - pinctrl for refclk-en and reset pin (Quentin)
> - don't repurpose the pcie30x4_pins pinctrl entry for only wake (Quentin)
> 
>   .../arm64/boot/dts/rockchip/rk3588-jaguar.dts | 64 +++++++++++++++++++
>   1 file changed, 64 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
> index 4076c92668ba..3407e777e97b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
> @@ -72,6 +72,27 @@ led-1 {
>   		};
>   	};
>   
> +	/*
> +	 * 100MHz reference clock for PCIe peripherals from PI6C557-05BLE
> +	 * clock generator.
> +	 * The clock output is gated via the OE pin on the clock generator.
> +	 * This is modeled as a fixed-clock plus a gpio-gate-clock.
> +	 */
> +	pcie_refclk_gen: pcie-refclk-gen-clock {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <1000000000>;
> +	};
> +
> +	pcie_refclk: pcie-refclk-clock {
> +		compatible = "gpio-gate-clock";
> +		clocks = <&pcie_refclk_gen>;
> +		#clock-cells = <0>;
> +		enable-gpios = <&gpio0 RK_PC6 GPIO_ACTIVE_LOW>; /* PCIE30X4_CLKREQN_M0 */
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pcie30x4_clkreqn_m0>;
> +	};
> +
>   	pps {
>   		compatible = "pps-gpio";
>   		gpios = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
> @@ -358,6 +379,30 @@ &pcie2x1l0 {
>   	status = "okay";
>   };
>   
> +&pcie30phy {
> +	status = "okay";
> +};
> +
> +&pcie3x4 {
> +	/*
> +	 * The board has a gpio-controlled "pcie_refclk" generator,
> +	 * so add it to the list of clocks.
> +	 */
> +	clocks = <&cru ACLK_PCIE_4L_MSTR>, <&cru ACLK_PCIE_4L_SLV>,
> +		 <&cru ACLK_PCIE_4L_DBI>, <&cru PCLK_PCIE_4L>,
> +		 <&cru CLK_PCIE_AUX0>, <&cru CLK_PCIE4L_PIPE>,
> +		 <&pcie_refclk>;
> +	clock-names = "aclk_mst", "aclk_slv",
> +		      "aclk_dbi", "pclk",
> +		      "aux", "pipe",
> +		      "ref";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie30x4_waken_m0 &pcie30x4_perstn_m0>;
> +	reset-gpios = <&gpio0 RK_PD0 GPIO_ACTIVE_HIGH>; /* PCIE30X4_PERSTN_M0 */
> +	vpcie3v3-supply = <&vcc3v3_mdot2>;
> +	status = "okay";
> +};
> +
>   &pinctrl {
>   	emmc {
>   		emmc_reset: emmc-reset {
> @@ -376,6 +421,25 @@ led1_pin: led1-pin {
>   			rockchip,pins = <1 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
>   		};
>   	};
> +
> +	pcie30x4 {
> +		pcie30x4_clkreqn_m0: pcie30x4-clkreqn-m0 {
> +			rockchip,pins = <0 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie30x4_perstn_m0: pcie30x4-perstn-m0 {
> +			rockchip,pins = <0 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		pcie30x4_waken_m0: pcie30x4-waken-m0 {
> +			/*
> +			 * pcie30x4_clkreqn_m0 is used by the refclk generator
> +			 * pcie30x4_perstn_m0 is used as via the reset-gpio

s/used as/used as GPIO/ ?

But also, I think we don't need these comments anymore as we are not 
reusing an existing node so there's no real reason to give for only 
having pcie30x4_waken_m0 muxed in a node called pcie30x4_waken_m0 :)

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Thanks,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
