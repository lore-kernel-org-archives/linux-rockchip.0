Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4F42C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jul 2024 13:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:In-Reply-To:
	References:Message-Id:Subject:Date:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gv+aQASMtPurM1XWgBDJ6yb6BPZRwVX/tqPV2v8z3/E=; b=GdUryjxUfmszmo4lOSZfUvno8h
	y/uqTD9NXR26LoMwdB7xBTQpWKAaal+1rYfHn7ZPtGJr/oBGrnNWySoXJxVPaO+k6Wes6k7XZffbw
	90lQGHxHCCLjnhQUrQ0YV5gZ/iuSRUh4YfuGGz8Cn5pO/AIzhiIHRLwbKsOtJwTNPGujzsaYBMo+X
	bQNDuHXEz1sqUnLY7pWfmPaNojb5WJpGHsu2FZE+NwG3Oy4/xZrKb1wMtvzCkJSqdUk96f6KYzl85
	pyP6qz+tiFueujwl0Pg5jXGTyRQhZg7X4ZWjx6PdiVzHuHIKIFRgvRAQYe38C2XGXafDW2Bu1Y1EJ
	T5/KN6WA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWyZp-000000016m5-0hPe;
	Thu, 25 Jul 2024 13:32:13 +0000
Received: from mail-westeuropeazlp170110003.outbound.protection.outlook.com ([2a01:111:f403:c201::3] helo=AS8PR04CU009.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWyWE-000000014Vt-36WF;
	Thu, 25 Jul 2024 13:28:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ocql6ckHW4sdoxEvVpfnWzJFI3E4jGXe1uDrF3yFzy6k9cX9whJG2UIM3nvEW1cv0REpzlIM/ySOz171lyWvYxnxB0+ZyaIbQyE9XLWE1ijCNVbMnOcAq4CelIf9fBi/d0Vs+1ZUJg2BPirm9vinrDgLuHm+5cmSnOMk5Zc2+hqxrQQ9tHzBfJrSvE40qVpOuLWSZTLwdQarZQnaQcB7q2SlqVRMnlSfTgVTeSOu+6DCoPvkJVq4je4EPyDzPGYBEFoyRjE0PmbS/gTVCMvwmK95xYamZra2/zIxlJEqOPgxvjj38Xo4bVDa+1+dmWgu4Tmncyd8re9tJM6wJzkOyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vi2HZwiFEVHtrJA2zjt1qkuKLdtn2l7f/q+3qLebRPw=;
 b=k3vSs3aHaVqZ4NH6/aqTygQudG69T5hFP8QH8Z62FjBINuTDI6IK0dtryz7LFab3Ihy8tWP0YRv+midFNQBOVSIF8o0npi3aPL64GvG1dVBSgg1gaQT330C38CK0vYkQVyXVduchhZSHDHwGVFlSalN9DzQd0zlEDURg0Ht8vBoyNy6yvqBsNnmGXAsj9UCDu8Ufq5wLvEqyyAcyVnfja2ORAsdun/eXjXsynpqH0VUu443oMJJl+lU1AVu4LDSL4YVgf+FaGmdXNWD+hGOY5Db/69ANck9aEoyjfFcsg+W+PlUBSbdQEUjCyEanAWujPYp8DMc3l8/4nD0jKk6/QQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vi2HZwiFEVHtrJA2zjt1qkuKLdtn2l7f/q+3qLebRPw=;
 b=KVSxAlShGzF2FjGcowfFYBKlTIFzOc7NZ/S21w2BidphB8kVBKS7dYDilEAK/YlWxgmmRLJ5u8zbEorzyJkHVT7XfaRb9WHVdUKj92pTbfwsYewj3uVb+j1Uk25yxxWIeUCBXxWTaRW5/pGb65kxmuxVjCPLPDmP9CYQvIdeF9Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com (2603:10a6:10:321::10)
 by DU4PR04MB10670.eurprd04.prod.outlook.com (2603:10a6:10:58d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.28; Thu, 25 Jul
 2024 13:28:21 +0000
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181]) by DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181%4]) with mapi id 15.20.7784.016; Thu, 25 Jul 2024
 13:28:21 +0000
From: Farouk Bouabid <farouk.bouabid@cherry.de>
Date: Thu, 25 Jul 2024 15:27:53 +0200
Subject: [PATCH v6 7/8] arm64: dts: rockchip: add tsd,mule-i2c-mux on
 rk3588-tiger
Message-Id: <20240725-dev-mule-i2c-mux-v6-7-f9f6d7b60fb2@cherry.de>
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
X-MS-Office365-Filtering-Correlation-Id: 96fa4c03-afef-4f8a-0cd9-08dcacada71d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|52116014|376014|7416014|366016|921020|38350700014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QzN2a0dMY1F1UzFzZ3laTmw4RXFSU3ptVGdZRldPL3M0bnp4MGNoclJBZlAz?=
 =?utf-8?B?VmV6Q2hrZTFTR0hLTUk5UnY2MjNXZGRCQ1ZjUWpKV0tBSERyTDBsczZTem1h?=
 =?utf-8?B?c2xOTm9KQURJOXNORXVKdXdDZVRJS1ZIWEZWNVgzdlpuL0FRazRtNm9nN1Nh?=
 =?utf-8?B?YkNlQ1lzRHFaRjJKcm1MYWdqWjhSenRtaFFQcythN0JKelkrTlVTOGs5NkRp?=
 =?utf-8?B?K3NiQW9HWTFGa1dWTExhcmZiaHdQWEpWbHRYdnNTRy9yYnN1R2JNYS8yeVQw?=
 =?utf-8?B?UjNPeVNoeU83THNNOHI2WnFYT1hPRUFFS3ZxY3lXYVFpcmFETEtlREt2Tnk2?=
 =?utf-8?B?c05qY1RwaVh1eHdFTjNpTFFYc1VUUUtsOVBSWXlNYk9aWjlJS1hOWFowcUdq?=
 =?utf-8?B?ci9rdGROdnpPVWRuV1QvWWlDa3dsVmg3cGErVDdDTzlXTE04YUtmN2ltdFRq?=
 =?utf-8?B?NmIvc3JkbWY2NWFmV2NwKzVhZEYxQXE0ZW8rTXNvQ3YzZ1JnN0U5OVgxS3cw?=
 =?utf-8?B?YkpIQzNySC9hb2lzZWJRYm9rc0pqOThqYWVub3dDQ1pzM3VzT1RYeER3dVp2?=
 =?utf-8?B?TFlPNFN2c0VPVFdISjBXQkNiYnNVeVBRVmsxQlNsQWljeVpIclJtUUNrb3Nw?=
 =?utf-8?B?NkhzcjdIWjBEcjVCaHp5WlhTQmlJbFFXQmZqZHYyaVc2QURxd09rTXdvRjZF?=
 =?utf-8?B?WXF1RHZEQ204YkNBVnR3QldzamhkenNEZTJnMmVUcUwvMWJ4RnV4aXg4RHEw?=
 =?utf-8?B?RFdlZU1OaXZXQldIcGxwNFg2K2NYdm53aElDOHg2WnlhTnp4enBLVExhalpQ?=
 =?utf-8?B?Q2dlY0pPTWJENHpuYU1kSi9pUEFsQlhYVHkxNUFCVERjd0Z6N1NMbHJJQjBG?=
 =?utf-8?B?VGROc0Jyc0ovMmowZzFkcHBzNHVrcmRGeEJWLy9vOHJXNzU5L3lnR1RGOHBN?=
 =?utf-8?B?eWhZdHRGSzhSM1YydUdjSXZoY01yZVpNOE9KNkQxKzZ6VjJ6Vko4RGJxY1lh?=
 =?utf-8?B?a1YvMFJ0SU9YRmtRaWlsclVONDJsYnYrSVo1S0ZyZVZqaUlyQkY1bldzZlhn?=
 =?utf-8?B?NXRLZitZNVZCbkZzTUVRbG9UeTA4ZWliY2ZJK1g0WWU2OXU3UXQzUlNDSlBN?=
 =?utf-8?B?U3FhOHdsZ0tBV3A1aWhxTDJoQ01UQXVXQVgwVmFBam0vdjJhQTYwTlBHYkZr?=
 =?utf-8?B?czE3MHI3Q2VtR3pGa2xSWGpvOVp0dld0ZGdNZlRVUFdYbXVySzRPM2VTZVdZ?=
 =?utf-8?B?S0NTTFBYSkZwRm1SQldRL3ZGaEQvU1ZDT2ZBck0vbWErN2k4dzFFNFVCSUFh?=
 =?utf-8?B?dkNWTThLZkFYeEd4aElTYUhyQmNNU3V2YnN2Umt2czJZbVpmVXlwSmxCOTNT?=
 =?utf-8?B?NnNGc1o2dmNnMGVKVSt2TjhaQVdWa2trbVkraG5UR0dXK2JJQVpRL1c2ZFcy?=
 =?utf-8?B?WHBHWTJxTUFEcHkvRkMyS3hpVC9obXBUSFJ0bmJiSzFKZEl5YVJ0MmJBbk13?=
 =?utf-8?B?UitVa1gxSzdGaTdyYnZCWEZNSUxjODc1VkV1K0FFREFueVEwT0w0c3VNWGR3?=
 =?utf-8?B?djJ1TklWZDFTVUxPd09hYUdLKzRqTU1xZDEvc2J5ek1EVkxDZ3FjMFJoaVVQ?=
 =?utf-8?B?QnpNQUNIeWMwb3FrWE1nTXpjSW9MZitrTUF1OVVRZ1ErbW0vTHl4RDM0V2Uy?=
 =?utf-8?B?WUdOaW1oR3lZRDdEdWhQV0ZNL1JlZE5hUUtneFByNnRFRGFXZWcreXNmNEls?=
 =?utf-8?B?THFldFVqeVhRalM5NktXYkpRZUZ4b1paWko3SklZakFFWE1QNDkyL0Vwb2xs?=
 =?utf-8?B?UW9rWmtWenM4MGRjRlpFd0kvbXlUL1IxalRWeWNvU3pmUWxsMnBTdEoyZHcz?=
 =?utf-8?B?MlNPY09aWDMyZmY1YTE0clh2cUZhMitXczhYU3lhNUg2T1Y1RFRJZFora3ph?=
 =?utf-8?Q?AORTywAfo7Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9562.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(52116014)(376014)(7416014)(366016)(921020)(38350700014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2xPaXhpYzVHVHdYWVgvTzhFaE5lTDBSREs1UUducmh0S3VlTXAvS2lmcXkx?=
 =?utf-8?B?VDdWNHUyUVkvNWpZci9TaHVrZVBVdnlraXRFYmdUdThZMjlHQXBCbjZ6UUxq?=
 =?utf-8?B?UXdQcGxrdER6elhMMzVuWm1Zay93MWlocWNJd1lwZE41R3BMTkg4Slg3UEZk?=
 =?utf-8?B?dUdieGN1NW9jR3hJdmVKZGtMb0owbzc1SWxKOEx1UGQyZFpBUDdVS1czR29s?=
 =?utf-8?B?dWFWMFBmckRnb2FEb1lKQUlwUEJyTkhxbEF2SFNwcU9xZEtkMm8vcHlqZGlr?=
 =?utf-8?B?REJQZmVVS1VtakRSN3BRUy83N3dBcUxpcVo4bEZFV1NvQ1B5a05IWnJzV0p1?=
 =?utf-8?B?NjdWdGlYRCtlVzVwb2h4bEF6c3RJSjdMcnpRVnQvNStqanA2d3FJNHhwb0hu?=
 =?utf-8?B?SXRhTjBoRjJhTHpnZURINGR0NzFjUUFiRmp1TGNUNnFOUzhiQ1A5NklqUWJP?=
 =?utf-8?B?bmhmN3M1dDZrNGNKQ3NUbGg3SG83TUNNRXpnTnJmT2NwRWpFV2VoNmN3bjVw?=
 =?utf-8?B?Zys4c05LRVEwOTA0MGRmaDd1YklKVkoyd1o5TmFMSllGNDJDZ2VBMlp4Skxs?=
 =?utf-8?B?TUEwakxzS2ZrUkJTNWNTWUVjTzBxVklpcWlaQ2pyWmw2ckl4UHZYYmZad0R5?=
 =?utf-8?B?UmtzMCtvSlhBakkyZ2F0S0hUajdsWjZRV01ma0E5ZTVrczMzTjJ2d0FsckNF?=
 =?utf-8?B?aHZGTWdFNitRb0ZqbTNhcGRKdjAwUm5OMEFoOXNCMC91eElLZTVtNEw2bGMw?=
 =?utf-8?B?cnFuL1A4RDlWdWs1aTNKMzBod1JOS3pOM1VrQy81Y2x3NUt6a1g4TDAvd3F6?=
 =?utf-8?B?Y2Y5blJFaE1Tb0d1bkhOcExPYUpVWFU1N08rSVR4NDBaaUYvN2dtSXZLYmVx?=
 =?utf-8?B?TURRM1AwQ3VvZEpsVTgvQmM4UDZNR0VwSCs5bm4wdFhiU3FYQzlJald6cFBF?=
 =?utf-8?B?OVJKUitmMWVxeTZsekdKKzJqZ3lYWGk1NUIvNzExVU8zQzdXZkx1YXRBWkk5?=
 =?utf-8?B?aHd5UmNjVDdjbVFMY0MwNHFOdStOd01ldW9qbFVkMVdYY0dBUlF6SWZTOWw3?=
 =?utf-8?B?THlRU2I2NkZFNEdoMnpmR2xqb0V2QklTSVd1aHEyNmNFcUlBN29Ka1F6YnFK?=
 =?utf-8?B?VTBPWmhTT0xPem40dDNsQkcwYzlrVHdHMWh0czVEUjUzNlEwV045YnlleVc0?=
 =?utf-8?B?RnZYNmdXeHlobloyRzJFR2toQTI0VmJLbFhPV2xNRE1tdUZMSGcxWG5WbGJn?=
 =?utf-8?B?NWZ5Mzh0SFFsUW1KZTd0aWd6MDYyNXBCdFNWYlNCWEp6bStNdUx2YVc3YnM2?=
 =?utf-8?B?Z3hna3ZKYXZySnA4dmxoclJScUlBOUhIZkZkaDN4NWJoVHhXdHhXOCs4ZWJl?=
 =?utf-8?B?NkRibXNoMGRrVWtzLzM5eEFnT2EyUTlqUUEvcGpId210c0JjSkROb0J0RHVN?=
 =?utf-8?B?WTVId0s5NlV0dytIRFdoVmxKaTVhWG40ekM1ejNmcm1SREdLVDlnNEJ1OU9W?=
 =?utf-8?B?dTE5dW13YkJIVEdqaW5ud3VRZDlXREJ1dU85N0h1amtrRmVmdVJ4M25FOXR3?=
 =?utf-8?B?U0NrM3FYcWsvY1drS3JQdWpCeXdCeXpIeVFGVTIyWkRERis4ZWFVaUJKdS96?=
 =?utf-8?B?ejBqZm9mbmlwa0ZPM1VqZkxTMFhpK2J1bElNR05iaXFremkrOVkzSUF5MmdC?=
 =?utf-8?B?WXE4Z0w0Y2hiaWkzOGs0bjFXSE5mSElVWlBaSU1hRDBaaXUxODFDU2YzQWt4?=
 =?utf-8?B?WTY3Um1JUDliaktYRmh6b2Urd2VpNTQ3S3c5eXNsaENVRm1nOFJKd3VFVFp3?=
 =?utf-8?B?Njk5OVQ5TXFiZHJ2MGNJNXg4azJ2NDZHYjdTVmhxOHpmSithSzBwckxpa2Js?=
 =?utf-8?B?ZWlZeDJxMFJyY0dmVEc2V1c1eWJIOWw1K2N4VjJudVRmeWFRNllsbnpGZll1?=
 =?utf-8?B?U3daZHB6YUlzUk1pV2NqS25LVTRxbURLUGVNdFZkNFpTNnEzb2JNRWpVMllL?=
 =?utf-8?B?QmhUZkdpbUhIMFFLOFlNeWRtK0tQbEZFQzhOSnlWRVVNMElzUlRjRDQ1SDRl?=
 =?utf-8?B?ODhaVk91cFc5Z0RVMjVyL2pGaWplZCsxWkZpcHpncFVUK2c3WkM1d21td3F6?=
 =?utf-8?B?Vkl2MytrQWwyZ1JJcU9neklySnpxMkpSYndMc2NGWWRVYU5ua2xSd2FOR0Ni?=
 =?utf-8?B?VGc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 96fa4c03-afef-4f8a-0cd9-08dcacada71d
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9562.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jul 2024 13:28:21.4505
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zdLQopNsjeArRxCFepN5u454DSi0y6paF5yo0z+iRE2tZTvAsUN5XBu7Z6mNwJ/OEgcpA1SfFmBdGPBGj+xWY1OeEVak+9J8Y30rMWhcY+o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU4PR04MB10670
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240725_062830_967548_F2A586B8 
X-CRM114-Status: GOOD (  10.73  )
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
