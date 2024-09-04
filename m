Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52BA1CD3431
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 10:42:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sM8lpKq8iAMbE3kz3xXdXb4KLQ1OZEL1qBfFbigOPW4=; b=giRq+hLN/9/n6D8xAMjrzDyByz
	CbHCrDS0uZdKQjK7IwUrs84KA7bj18Y8a5REVrMBRGhvNfbAIFJNfPiJdcbfexw5CPlm3MK5XTuEZ
	i/oc9Dv0HN5CwEPmN7Jz1AEc3+WZf4jAh+iQt0HKTg/3Yjss9cNI5yrZnnxVKUG+j4edeKnUV95sV
	SpqCObhaUz9p+rrZKI63tpSqTxa242u3VnzpDMYhdLUzB0RZ6rVsftBsWg62MTPtEe47hYfUS8gpm
	Nl4fPIRbHjOwktInnT1A1dhrVPeH4VerkDP8vBW3DkiAFHtVAoi9gqPPsJovZgeKFlaooYQFo0Nf0
	SmTGjhZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slnTM-00000003y9n-2FtT;
	Wed, 04 Sep 2024 10:42:48 +0000
Received: from mail-am6eur05on20602.outbound.protection.outlook.com ([2a01:111:f403:2612::602] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slnBK-00000003u1h-41wn;
	Wed, 04 Sep 2024 10:24:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aNoiL7TbP/nYv7oYJRkMZW1EYgRAtxHkntOUb8XUi3kqVbwZ/7QE74bzXCrI3uAj/j2HwdBfn+qCCv2CqD/EdJe8WzMnszn+Jzsw4v/IVBCJDWNadqARigab40PbA1I86s4M99/rQud8Fa5j3aCwLnTMm8mJc6qfKB/FZ2GO3VzhpeqAAOcpHFm+Dsx6oSLeNNKnrIFYqobIyqe+GvlV7IBtSICSczy37F1DHbRYqA1nZLuhUkM/WkAWtvoeuZIjt0ii7GxczE4xJLd4AK3WgjbTido/Wzn/RSrDD6hMv3FoVcdyJqqq0lIq+Kio3FRwA9UEql0At9FRzOXXXdtjEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zf4rlXP7h0pODk0y3AKqsIO6tPJexFskC2Eg/PJvCeU=;
 b=VpTc2M/apQ5O+0CYsnnlmBF1npAVMRYy6uWSLB4ir1RW61XH3X1XiI4tytzyGpnfyVPVOqiHvFkiQmRQa5ISaasuh12edLIe72Pwn41KUDxd1Kynisv9N3nAXz+xoSniCv9lViOTIhgM6pOMfZpLVN78z/trXEgRJkg8ugRFhksaNs+WKjd0oWChaKlryVgWqGKbsR39k6/KHyouQe8KVECTpTBp+wuAtOIWTz+5UofP15EhBFoihMmsMXW3rF9h3Ql7WpYEbeSCilrfbJQ7z4IKR3tKjXy9BIN6TEMw7rz7PZEsdYl23vHBvQ4cGZqXhd9D5Hu79OUzvuO+6gESPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zf4rlXP7h0pODk0y3AKqsIO6tPJexFskC2Eg/PJvCeU=;
 b=jRor4OpK2vjE5oAcq8WucX9KLKcWNOmgy6gn63vnzIFUVBKjpGb917JsIGLGySX8vl6k5slGk3JLN1paOPRuxt6df/EnS7KFW2JVOLDjjf4/BG29bALy/lHzgYu7PaG4yQuSPV+tN47JdpEin4SE7qettb3EDyG1EUBv+089v+k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com (2603:10a6:10:321::10)
 by GVXPR04MB10731.eurprd04.prod.outlook.com (2603:10a6:150:227::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.27; Wed, 4 Sep
 2024 10:23:58 +0000
Received: from DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181]) by DU0PR04MB9562.eurprd04.prod.outlook.com
 ([fe80::ad4d:8d53:1663:d181%6]) with mapi id 15.20.7918.020; Wed, 4 Sep 2024
 10:23:58 +0000
Message-ID: <b12ac5ac-306f-4f36-895a-e1472ff86271@cherry.de>
Date: Wed, 4 Sep 2024 12:23:56 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/8] i2c: muxes: add support for tsd,mule-i2c
 multiplexer
To: Andi Shyti <andi.shyti@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Quentin Schulz
 <quentin.schulz@cherry.de>, Peter Rosin <peda@axentia.se>,
 Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,
 Heiko Stuebner <heiko@sntech.de>, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20240902-dev-mule-i2c-mux-v7-0-bf7b8f5385ed@cherry.de>
 <20240902-dev-mule-i2c-mux-v7-2-bf7b8f5385ed@cherry.de>
 <fvk5u2j7wu7pjrlpbbnggp3vhopotctu2vr3fh77kl2icrvnyt@tukh2ytkiwdz>
Content-Language: en-US
From: Farouk Bouabid <farouk.bouabid@cherry.de>
In-Reply-To: <fvk5u2j7wu7pjrlpbbnggp3vhopotctu2vr3fh77kl2icrvnyt@tukh2ytkiwdz>
X-ClientProxiedBy: VE1PR03CA0060.eurprd03.prod.outlook.com
 (2603:10a6:803:118::49) To DU0PR04MB9562.eurprd04.prod.outlook.com
 (2603:10a6:10:321::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR04MB9562:EE_|GVXPR04MB10731:EE_
X-MS-Office365-Filtering-Correlation-Id: a3b16586-43f7-474d-d82c-08dccccbafe7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cXNYQ1AyK1U1NUliRi96T295SW13RUtZdlcyb3dURUlaUkd1K0dsczdFdzJM?=
 =?utf-8?B?TGw0Mld3NUcxWDZxR3VpbzdxRnU0R1RpOVBaQ0NtVVJabG5xRVJCa0xLYXJr?=
 =?utf-8?B?enBDNFQzc2dZKzgrQ3U0VWxxdDY1T1oyT2tUZ1psMHpiNEUvTTFWTUJWTGV5?=
 =?utf-8?B?TFNtTnVGcTF6aU9rSUszY2dZNitLei9DWlA5NC9EdHI5dkd5RyszS1NTR2F3?=
 =?utf-8?B?TU1ubWtTS1RLSWRUN3huWjllOEhIY0V4ZDIxWFU2Uk5UbmlhbE5CZ1UxaFZ5?=
 =?utf-8?B?RzJEWUhRdnEwcnM2TkxLNkhXaFVZOGdGa0FxR1RIVjNWcHFraDhsallGbjZj?=
 =?utf-8?B?U1JrUXlrN3hoQnhPV211VWFUOVgvNVUrQVRIdHM4MlJIQXVYNFVJQnF0d05i?=
 =?utf-8?B?V01BNnFld0tTeHQ3M2t5UExpUU51amZiR0RaUWxuWjc1bnFnYS85ZDQzS1Js?=
 =?utf-8?B?dHhGYkhVNk5UaUw4VHFoY0l0Y2dqaW00VHFGR1hONERkRkk3UHZ6TVBwR01u?=
 =?utf-8?B?Tm9mUDlFL2FieThkWVVKeEhwQjg4YVZZdldJSTN5c3V4YWdlYU1QTjd4bmN6?=
 =?utf-8?B?QzFtS3B3cFZkb3p4Q1lQRzBmYXFVUUdyQnVHdGtCNlhIQ3N2VW83dEZ6UDF3?=
 =?utf-8?B?UndodmJiS2NJUDFMcVR1cnpzUlRIbVpHUlhQa0ZacU50VFBPZktkanlnS1ls?=
 =?utf-8?B?ZDlDNjNQSDdhV2tneG1lWFNteWhyUHRLNFkvdS9MRDJrSHZ3OFpJampxUnps?=
 =?utf-8?B?djBZUTNsVVo2WC9ZZEk1bWY5YkdOWHc2eUhJQkFMU3BWN2RHZFBGMDNnTGVT?=
 =?utf-8?B?bEs1NTBjejB0WjVxNnF0V29HYVFCMndVYnJFWHcxZ0sxTVhoZytKR2YrbFZY?=
 =?utf-8?B?blRUUEJ0aFp0TENRTGZmc2V6aXUyb2QwdzRCakUvRlQ0elRQbWY2ZkxielJ5?=
 =?utf-8?B?b1B0VGJZMVd0c1I1c2RIdkdYVkE4Y1VwcHEwNnpjWkl3alNNSHhYclhvNGRN?=
 =?utf-8?B?YW5VZXpZaTZBRWY4UUhHOGZjWlY3UWFrblBHNUdFWjZNL24yOW1zVmZjQU9a?=
 =?utf-8?B?S3VHQlBiNlA4bitRY2FPODhXWG9JbGQrSlhVcFhkblZ6aGJHYVd0citKNzhL?=
 =?utf-8?B?aExkbkNFN25yYkoxKzJNdDU4NjFRM2gxeGFqQ0MxWEpOektWZ2grRkY0K256?=
 =?utf-8?B?eXMvYnZEaGM3aEp0cVRES3NmeDd4OTdwTG5HY0EyRkx3Qk5VN2RVK1BLNnY3?=
 =?utf-8?B?VStidm1BektvSTBLRERROWFHeXkzZW9YOGNDdjAwMm1kZXljTkdmTTErUVQv?=
 =?utf-8?B?RnZxVVdLTXVZSW9JVmVpUGZ3SW1BN0c4WVM1dEU1azV5aUFmWHJHQmtWNGps?=
 =?utf-8?B?Sng4MnJJSkxKMWRoZC91bUs5dnNCZnkwR2tQeEtrNWZYa1BJR0FiWmxtUEdM?=
 =?utf-8?B?QW8rdTFMc2hxVXR0Mi9razluQi9hWGpCOSs1aXJoaStBeHBMZ3BQWWt6SGxM?=
 =?utf-8?B?TzN3OTduOXUzRmxIVHlqWHd1WGxkcnJSczFCYmFKb0JBQmtJSUZQNnVnTUtL?=
 =?utf-8?B?ZlJua2xYb1Uyb1dRM2FBWnhUK0lmRTJiSFJEdHVBdTNPL2xWdGZXTU9SeDMy?=
 =?utf-8?B?ZHE4aG9XRmRLR0FXSUNvd3pTdzEwczVlNVRTejFnYmxHbWhEQlpBQlNoQndD?=
 =?utf-8?B?eUdSSjJyV240Qnd2S28zcGJsV0xQbkRrVyt3eTI5RHI0bzlEeHA2Y1hkd0dL?=
 =?utf-8?B?RmZKUHB3WGt4WUpBSlRESTFmRXN2M2c3Sm90OERIeUxJY3lUb1l6K2NRY0RR?=
 =?utf-8?B?MksrcWN3cTBXa2xFMGFIUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR04MB9562.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Wm5rUzNMUzFxQ2NyQVZQM1IvbkZDVUZrdmxTWVVuY2hZRFpIYmtKT3dMb2Yv?=
 =?utf-8?B?RXVDUExNanBxaEVjdEV6WE1qYVhHeHFpNHFTUGNyMkcwS09hTjhwM0prSGlt?=
 =?utf-8?B?ODZEWG9ieXN0QWFBTmhCclBnLzRmTDZDR3d1MWtHZERuNFd4RzlLUFpIbldn?=
 =?utf-8?B?QWFFWnQxNjB1L0ZCbms4M3FCL2tSZkZlUU83VFZQQ2pKa216OGwzaUE2UUox?=
 =?utf-8?B?NXZsYVVxUU5Pb3lVOXVxdTg1MUlMWllCK0NNMUl1SEVQV3p4S0pPZldJZTNo?=
 =?utf-8?B?Zi85TGJoUmd6WitmMmgwSHdydFlUZnZRYklVM0dXMWxoUGVjZE9CSTFWSC9i?=
 =?utf-8?B?VU12U0VvQ0FVWlVXNHlxbzR0MmUzMTdWdXlnQ0Y0ZW9hc3pSUnVFZDBTWmhN?=
 =?utf-8?B?WWtRQk5NZlgrSGljTjZvTWtBTEYvUjNuNWFHcWhHeXFjLzgxSjU2VGk4VFk5?=
 =?utf-8?B?MHdSa01rY3ZXTWxmaHFkYmZBT3BVVzU5Q2pqZDlhZEpvbG9CdE1ZWFZkOFRh?=
 =?utf-8?B?NnpmWDFNNk0vR3BPVWxFYmxSNGd4V1IxMGU1QUg1RnRCTVNqcGNjNjZ6eGhR?=
 =?utf-8?B?K3B2ZTE0RXZKNWl5ZHYvVWhnQTZXREtTWWcvNnZHLzZjcE1FRzFyalhBZUxB?=
 =?utf-8?B?VTFHUDdpK0pIVDR6SkJqYjlhL0VlaUVIMlhVcFZteVZtY2NFWXhLL0tMR3pD?=
 =?utf-8?B?c0pOeWxtWXBDUDVSRUFLNEVPSXVwZEtwVlZhRG1WR3NSZEtlQ0JJZUx2eU4z?=
 =?utf-8?B?OXIrdmRCOFlURjVQc2hPYVpaeEo5TFVqYjNnRjIxU3JqeWpEUkQ4M3h1MitO?=
 =?utf-8?B?VTB3Zm5GSXI4QlJyNlJJdnBwaWpLcDl5R1IzWjdyRVJXS0Jqc01OUjc1REZY?=
 =?utf-8?B?WUVidE8xWmFLL2pUYlBtZ2phM0RQK3dPc0tyQ2EvQjNQdWxicHpjeEhTbDF5?=
 =?utf-8?B?cXRubGZzbi9pOXVjTkJia3E2a0lrN1lncUlsemYzRmtjMUd2NElNUWdMcFl6?=
 =?utf-8?B?RmZTSkZjRHgvOCtPamJEVnhuNGRiQlNGM0s3UHlkVGNMa0RRMEkrUGV0ZTN5?=
 =?utf-8?B?L00wMEpxUFpKOVF2TUZ3SjZqMjdsd0s3cWFaSXlsdk8xYnhjSnVpS3NIb0Zm?=
 =?utf-8?B?QWFIWEk5UHZJcTZlbkcxL2h4T2xoS2d4ekVoYUR0MmxkQWw2cGxRdExkWFpP?=
 =?utf-8?B?d3lmdzJaaitLVXl5UDlJaWEyM2dyZ0xjYndwRzc2cGFOOTFxeTlFTUpyNi9z?=
 =?utf-8?B?TEpnM1BmUXloYWJ6cnpFN0lOS0NtWE4vY2EzNEtrcU1iZlVZdjVuOWFRK2Iv?=
 =?utf-8?B?bU1LWU53blVnNmtGWHcwRE03NU1XcVZ2OEFGVzIxbUQvN3owQktuL1VKVEEx?=
 =?utf-8?B?U3kwM1RiZStvQkpleUs2V1BMVGhLcWJMOGcvVXJOOTluNkhQVm1Sd0RucUpX?=
 =?utf-8?B?UXR3RXlGU3ZaR1lJb1NwN2NrSk1iOGdjNk1ITGF6dDlHc1ZrbnEzK3Arc2FL?=
 =?utf-8?B?aHQxdlJ6SVNVZk8vUVRxa1FnRk90eG51WVlJOHhianFsbDlSZmpqV2tVcEQ5?=
 =?utf-8?B?YXNSN2ltOStlYmE1N1pVSGlvTFpXcEIzQVE0cXVPbStteFFaWHdQK0xDOHFz?=
 =?utf-8?B?ZmlsdVQyMng1QTNna2RVaXF5Mno4Q0pxek52clpKUDBsRGlMcGVmRVpwb0tp?=
 =?utf-8?B?M3g4UEpBNjA3RnprZE45aHpoQ3VDY08rQlVtayt0cy9uNXpheldwcGo2VFFW?=
 =?utf-8?B?SlhVTXp6UXpkYmNZTFcyVi91cG16eUJRYzIrMi9idlRBM2p5TWl1N2x5ZTZa?=
 =?utf-8?B?SlpJaXVldXZOVTR4elZnNDNjUlhEY2N3UDNnVlQxYTI3SHBYTWd0TmNxR01H?=
 =?utf-8?B?UlVRZEtDSGpGM2dGVDNQdVN1Vm1UdWNLTFlNZUdlRUMzU3RxRE1KT0ZtekM0?=
 =?utf-8?B?M0ZWaXhURzNObHFPN1VpbXpYNzZMTnJBOUl1ZzRNOVlhck8yRWRlQkZnZFJ0?=
 =?utf-8?B?V0dQU3pvcXd4TGM1dUZzNjBSNU1pTE80TUQ3TXJMUmxQaWRuZnBMbkxPWTJC?=
 =?utf-8?B?UFMwN09LZjkyak5YcnlybUFuWHZtZHdqd3hPN29FZWVQMXZOeHBkK0hzRjR5?=
 =?utf-8?B?dXF4YmtKYWp1SVoxTjdNU3hsUkN4RHl2RmMvYTRZV0ZCdTZ4QmExVFZzVTQ3?=
 =?utf-8?B?bGc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a3b16586-43f7-474d-d82c-08dccccbafe7
X-MS-Exchange-CrossTenant-AuthSource: DU0PR04MB9562.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 10:23:58.3096
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kNKOye4/lzaylsTjixEkEkop8lfdmlTKRsMQ0BSttDthI199bi/9F1eHVKGQG2VG9DiZ/MHd07AFGkoQkqjgkSQNGBfWtnXWcq4lwXl3iq4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GVXPR04MB10731
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_032411_321396_CAC3B403 
X-CRM114-Status: GOOD (  16.78  )
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

SGkgQW5kaSwKCk9uIDAzLjA5LjI0IDE3OjEzLCBBbmRpIFNoeXRpIHdyb3RlOgo+PiBUaGVvYnJv
bWEgU3lzdGVtcyBNdWxlIGlzIGFuIE1DVSB0aGF0IGVtdWxhdGVzIGEgc2V0IG9mIEkyQyBkZXZp
Y2VzLAo+PiBhbW9uZyB3aGljaCBhbiBhbWM2ODIxIGFuZCBkZXZpY2VzIHRoYXQgYXJlIHJlYWNo
YWJsZSB0aHJvdWdoIGFuIEkyQy1tdXguCj4+IFRoZSBkZXZpY2VzIG9uIHRoZSBtdXggY2FuIGJl
IHNlbGVjdGVkIGJ5IHdyaXRpbmcgdGhlIGFwcHJvcHJpYXRlIGRldmljZQo+PiBudW1iZXIgdG8g
YW4gSTJDIGNvbmZpZyByZWdpc3RlciAoYW1jNjgyMSByZWcgMHhmZikuCj4+Cj4+IFRoaXMgZHJp
dmVyIGlzIGV4cGVjdGVkIHRvIGJlIHByb2JlZCBhcyBhIHBsYXRmb3JtIGRldmljZSB3aXRoIGFt
YzY4MjEKPj4gYXMgaXRzIHBhcmVudCBpMmMgZGV2aWNlLgo+Pgo+PiBBZGQgc3VwcG9ydCBmb3Ig
dGhlIG11bGUtaTJjLW11eCBwbGF0Zm9ybSBkcml2ZXIuIFRoZSBhbWM2ODIxIGRyaXZlcgo+IEFs
b25nIHRoZSBkcml2ZXIgSSBleHByZXNzZWQgc29tZSBjb25jZXJuIGFib3V0IHRoZSBwcmVmaXhl
cy4KPgo+IFlvdSBzaG91bGQgYXZvaWQgcHJlZml4ZXMgc3VjaCBhcyBtdXhfKiBvciBNVVhfKiBi
ZWNhdXNlIHRoZXkKPiBkb24ndCBiZWxvbmcgdG8geW91ciBkcml2ZXIuIFlvdSBzaG91bGQgYWx3
YXlzIHVzZSB5b3VyIGRyaXZlcidzCj4gbmFtZToKPgo+ICAgMS4gbXVsZV8qCj4gICAyLiBtdWxl
X211eF8qCj4gICAzLiBtdWxlX2kyY19tdXhfKgo+Cj4gWW91IGhhdmUgdXNlZCB0aGUgM3JkLCBJ
J2QgcmF0aGVyIHByZWZlciB0aGUgMXN0LiBCZWNhdXNlIHdoZW4KPiB5b3UgYXJlIGluIGkyYy9t
dXhleC8gaXQncyBpbXBsaWVkIHRoYXQgeW91IGFyZSBhbiBpMmMgbXV4Cj4gZGV2aWNlLiBCdXQg
aXQncyBhIG1hdHRlciBvZiBwZXJzb25hbCB0YXN0ZS4KPgoKQXJlIHlvdSBoZXJlIHJlZmVycmlu
ZyB0byB0aGUgY29tbWl0IGxvZywgbW9kdWxlIG5hbWUgb3IgZnVuY3Rpb24gCnByZWZpeGVzID8g
KGJlY2F1c2XCoCBsYXRlciB5b3Ugc3VnZ2VzdGVkIHRoYXQgd2UgdXNlICJtdWxlX2kyY19tdXhf
KiIgCmZvciBmdW5jdGlvbnMpCgoiTXVsZSIgaXMgYSBjaGlwIHRoYXQgcmVxdWlyZXMgbXVsdGlw
bGUgZHJpdmVycyB0aGF0IHdpbGwgYmUgYWRkZWQgbGF0ZXIgCm9uLCBhbmQgSSBzdXBwb3NlIHdl
IGRvbid0IHdhbnQgY29uZmxpY3Qgd2l0aCBvdGhlciBtb2R1bGUgbmFtZXMgPwoKClRoYW5rcywK
CkZhcm91awoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
