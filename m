Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E4A68C54E67
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 12:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X5dnBsMGw1du4EEBkDlc3iH8QT6lqxWDy/XheTaemOs=; b=pcdLqmnSz52rBbIxOiv3uiFDOm
	/8yJ10iwawHA9Sxw1igAYeQb3HYQo1Ah6JQulZN+gtyRruji/qTcPgDstZPmDcUNZv+NkUfXqC1d+
	1NAm+dhyqhLOcIR4+1gcQZWP45bglchi0Tg2GEwCPeSVHIEM+SNEo/EpERqmfFRkEAuitCmgEhepS
	vIZmNjMzfkx6gU2CWLJwDlx6RvGFx305N3piy2dbqISbfF35IP3nZuX7ltmv0SUFX7rXufDRfuCg7
	phvwmLKynZZqsShibRrF0gF9aNU0YpdyDgggOa69wvZSE1ZyTrRgcdQvxPZLFcnLodVsWAgrVvCa4
	uvjQSfRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpSRj-00000008tZv-0r0Z;
	Wed, 27 Mar 2024 12:31:59 +0000
Received: from mail-he1eur01on0723.outbound.protection.outlook.com ([2a01:111:f400:fe1e::723] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpSRe-00000008tVw-1OCe;
	Wed, 27 Mar 2024 12:31:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V5Qtdl2uvvjn2nqW15zIZjQO7F1bOHt+pylG5GAwz5uN8WhmLyzxpK9BNA2od0bQ9dHBESrFnidxmUYoDKGdW/0k+ID386UMf+W/ps8YAGiBhr1m7jlB+8al6u+oZOVaoBif7nfdkwI+g1OX0jHOi0TaMr7k/Osd+tiBGI9UJfOBk/I7VinNJj7NeJrwVMZQ/Z8WBq7zdpt+3+moPoLL7vy1fE0RiFEDE6ZLcUu7PuyQ+sjbZ3cjO0Ir59cf6I1S49NZJFHRvsX1A+JJj9qdbExwbth7+vbZlynxSnsAmTzql7bI2VpYpkU83ynmqPCFj/XazREXSO4LkRB4O+tm6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=83EacYMNbdhAMXjZLneKwzw+O3zscIE8+4DMAlk49wc=;
 b=GbZrXQnsfsL8IejXaJ1yKeggP25hE8HVMVKHx32uAyPWDgb5ObVio8P+mSq+/qQYj5ukjSaVDn4SeNkdSN0FM7DLo8ndX1rcNvoSeRyq7ELMiksjiwJdTVEb2DcNzFu7grhsSPMg1f+6HzfujDes/QEB8cULSx3sPNUr3YqNmWi7kKW8EEYe79P0fM/fE0yjkZneHze2vrqiUhqj7CmmpDvjiXjRaC1cBOuV+AWLJI+TCxC7NstActBowNtB6194DAixf68mzgHXgBvwcWLB4QVbZ20/sTCVOklby0mQf9JblsiPcMEpq3Fvn1DdR7FVjC0NCrYyWDoUfVpUseaYow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=83EacYMNbdhAMXjZLneKwzw+O3zscIE8+4DMAlk49wc=;
 b=eqVDdfUYTDDy/AGIMqnB81g9p2GBU93CkwGrwPjwlrK6McusmaqhhLq/oTUT7GS388rVHvpjo+dbptRSRlT2/sQOY0bD4D+F6ypdtE5LzY8SlW3A7vA0u0qlhh93XdVO9TzWIDcBBkzwNWmRIX/9OjKER5aGdSnGwy3nSmuFLpO/qVHPObQWpO44U6c5xwIaIDcezuQ4L1La9gBF2XqWn2427QutkIzoPeD6GqF0IVpmRX08EiRvul1kY/jN9t0GyAEWn8jonQaezIJoVkn3rOhhRGArmogdmNfOE5+NF5ivZyjfEHQQgCVZErruncdA3JKhtY7yCH9JX4iW8wSjyQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DU2PR04MB9049.eurprd04.prod.outlook.com (2603:10a6:10:2e4::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Wed, 27 Mar
 2024 12:31:50 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::23:4118:ae4a:8dda]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::23:4118:ae4a:8dda%5]) with mapi id 15.20.7409.031; Wed, 27 Mar 2024
 12:31:50 +0000
Message-ID: <35e50f51-6fd6-4cbc-be3f-86fd5828fffa@theobroma-systems.com>
Date: Wed, 27 Mar 2024 13:31:48 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: enable gpu on rk3588-tiger
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240327112120.1181570-1-heiko@sntech.de>
 <20240327112120.1181570-2-heiko@sntech.de>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240327112120.1181570-2-heiko@sntech.de>
X-ClientProxiedBy: WA2P291CA0032.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1f::21) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DU2PR04MB9049:EE_
X-MS-Office365-Filtering-Correlation-Id: 4749612b-754e-4bbc-b331-08dc4e59e03c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XdEPDeTb41RZTnfude1CbQeps6mJ5AkzhHczKU1fqCkggOvxOhSbUuhZYcMY0m/2U8DVNbVRicAwvm2a+ZvMQV6jv7p7yWexxxdpZUpU/ya1dB6KHH8Anj8vty8GKe3zzMtTdXW9RlhfSnj7Wq6rxcDMyj58hYmaBxVjORJTDhYczP3b/LcbvN4oRxYWOacvfOXJM4Fp7/mFPz25m71jFloCW0Q6WH4MomWOB/jyEYl3Gfknr9WB8KXd3HRDtMnM7KYT+naW7wY+KllDnjS+jzFwfu7kZhLamdk7g2DWQ+5ZOcfQSxtxllryLtoY74aSJQ+7syRzdMV5bibZ7sd4tegcZnCmG0KjxAiDimvWzNnOV7aUgXb1NAms7jllwPNkmRe48rMP+Osl0lIUp2QrTqY04C3/ySie7b2Xo6F+NBOiOG8JJ4l3+I8+tjT77Sh/R7y7tEz0dyV4U+GlINcyzJhJmrG5G+CQu5RNQMKnul6+PaHHBJHaBrQUiJ1wVAVZz4zNdwKlaGzrlLwLztUu7Yi2UKL2g+y4Q5pO71omqcSIZTykPO0PmU3iGLHwBaNuBpZlraXR1xrVh/EroV9FmhE1Y5DN9OIxghS4CPkyV1O4/T7bVihJqm9m51mIUW3LYbnJCaEDv8V0OWqwSFze9Q8Ymoz7mEeOZHwt6CORYu8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?U3RWQytJY1hPZW5ZeUJTL2N5UlVnTGtKWk5STmV4eEJGNWNkNm5KamJNRFFH?=
 =?utf-8?B?Ni9LcElpcmJwQ1RxMGhvcnZwZUFBZDc5Wk92c2FaejUxV3pUME5rbGJHOWtp?=
 =?utf-8?B?MFpNOGZua0xFdzZ2Vi92TElkTGVNc1JYN3o4UWRoZjFZUk9qeVhEQzFKd1F2?=
 =?utf-8?B?aXBRSm00WDNZdUQ5eHlkbHBCUGRvaTZUajRyV3VLTUpGWlcvd2tkWTlQMENr?=
 =?utf-8?B?Sm10a1dFbTlKTXhzQ1hDV0VoemRQek1uSndvMFBDNm9YS0tKTTd1WGxRYUtS?=
 =?utf-8?B?empiMk1BOXo0V0JoeXhSS0lkbTJLckZpK2pQVVZIZGh0ckVCMHZyaWdhd2hh?=
 =?utf-8?B?OHlWSHhXeWY2UXd5emZYTkwxWW5XVGFJelYwQUtaOVpVWm1acUNXNnVCRGpw?=
 =?utf-8?B?N1o2aWdIZk9JMGUyVU5sT2VxYjl0QlZ0UDhlOWw2QUR3UnBJV29wd0lhRUs1?=
 =?utf-8?B?V1hPSVZ3dWdzRERWNEowSkpGMG45RnNBd3lZUWhpTEF2dm43cW14RFZub1R4?=
 =?utf-8?B?MzQ0dDJ5S2ZBUjhjQXdoMmJ4QVVjaE40Qi9VUHIyalBvSmI0bEtIRkU3L0dD?=
 =?utf-8?B?VUFUTUJBMEo5bUpGOG9pZm9uYS9UTVg1QmFiWGorOXBtVTBSK1lGYm9rQ3Mz?=
 =?utf-8?B?UEg0TTE5MmxpMExjdkF1aENVTmM4YUQ5ODRKRkY0aklVbDdIRXA1MlU4V2oz?=
 =?utf-8?B?U2M2MDd3ZE5vQ281a1kwdUpDMkZKeHVuVGZNWnh3TEpnVWwrR0tLSWtudTF4?=
 =?utf-8?B?QWlYZHBwbnFhV1VjWERwK3Yzb2doa3hhL1ZCQ2ZVajh5aVNtTzZvWXR6U3ky?=
 =?utf-8?B?K3UzUzZLRnM2by92YmxaTW1BeS85UjhoQk1xZ2diQlp4STNnMkM1VFVlR2gy?=
 =?utf-8?B?M1crYThsRWk5dDB6clZIZnNyOFY5QlFkVDcvQmM4cjlkN1pEdGVVSWJMQW1h?=
 =?utf-8?B?d1A5WjJKUHdEb1dUejJpTzljNE5kNFpUeEhpVzFYbEFURURhRDd5U1VOUVlQ?=
 =?utf-8?B?NHFIUk9EcmYyVDlQU2Y2NTFWRXFlN1BENDB0ZWVxYVAyQURVcEtzQ2lCZlFS?=
 =?utf-8?B?QWxuQ0FCZ1N4dW9TZCtmcFNyZDVOTWZNdEIxekUwbERUeEJ5WE43UklmV0tj?=
 =?utf-8?B?K3EvbzFSM2lLVkIxcWJMUGlRQlNwZXMxcGJ3SWRlTTRwdXVxUGY3dENzT1Ni?=
 =?utf-8?B?SlNLS2dObUxwV2xwU09qUzJRQXZGZzV1UHUwMFdIU01JbmVIbEwxcmxna2tO?=
 =?utf-8?B?SGIyVjBkZExsRVZzYzgvS3lPdWMwUDN2SkpkN1FQVWIzVkJSQW1ycGgrVm1j?=
 =?utf-8?B?QUxOSkNNNjlXQjludjQzZHlkQ2tlbzJBaWQ3TnNSY3dSbU9nSjFRSFBSNkFF?=
 =?utf-8?B?UDlLRTFwQzVzcEdmOEw5QndDWkV4YjAyY2ZGWUtRb3VEdGRVR09xeElwTE5h?=
 =?utf-8?B?OW1Jb0Jka21qVUFBRWlpUGhYeHkxOGZrRjlpK0ZiUE11WHgzbE9lQk1NNmo3?=
 =?utf-8?B?ZmZQam9rYkcydFBjVm83RHdhMW1JZEtjU1VmTm1rcGVFTnovOW1EQ0NMTGlM?=
 =?utf-8?B?SVU4SGljWk9ZRFVuV0FYSlVSMmtzQWxoTTFsczd1eVhZUVhYQXk0c29uRkVr?=
 =?utf-8?B?Qk04MjVmbmduM3E0ZkMvUmxqdGh3N0hibVhOaEsyTkhIMmNZemJWbGZtYWE5?=
 =?utf-8?B?SEU2Z2I4R1JxUzlkNy9FelZHK0VQcDAwL2NBREd6dkFLcHgzVDF6dTlOczda?=
 =?utf-8?B?dDQzeGhTMm0rMlVadlJkSTZhb1BTNHpzK1FhYkY5T1pSZTVRU01USUtVd29a?=
 =?utf-8?B?SVMzTENYdExIZVRvaS9oNi95U3hUS050WnR4dGNPYnNOaVdxcXc2NTBxUjdy?=
 =?utf-8?B?RDJMWmZwWnA3QjczWHJwdGt3QUd4MVN3eEk3U3UyVDl3ak5Ma2pwLzR5STAw?=
 =?utf-8?B?a3VBcDBXOG9rNFZQZDVMTXcxT1lQclEvRU1LK1VJa2NFOW5QTU1DOTJkeC8z?=
 =?utf-8?B?d3ZBdThGU0RwaENuTC9WZzF0Nmk4eDVXOFJUSm5UR3Z5b21BY3pLRU93MFZU?=
 =?utf-8?B?Y3hQQ3IxbXdmdkp6c3VxclFLU0lzVE1tMGdXVkNTZHZCM2NZcjZ2bUlzMnVD?=
 =?utf-8?B?MXBualVKczJzbnRhYTdvam9Ub0FYc3dmMlhzai9yYndlc21MdVRhWFpQTzBm?=
 =?utf-8?B?WGxJdjlZQ2hHQURRZzJFNTAzWVhlcmRheXY2STVHVnNBV2FNbFpDckhFcVh1?=
 =?utf-8?B?VDJsOW5pbzlDbWM1ZGRSQk9nTjVBPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4749612b-754e-4bbc-b331-08dc4e59e03c
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2024 12:31:50.2374
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P88hADfIKsCrbQqo7R+TBp0pICOWFWRB6p2CNFEjR0HpEyCd9K0CPUNM0vvKGtqrzeWr1dxiRyxj5nYjMDP6+zV6FXV5hHAcJOiSZd2Df/kY0mSZEbl8ri+JRfcloojw
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU2PR04MB9049
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_053154_412017_E9FB237F 
X-CRM114-Status: UNSURE (   6.03  )
X-CRM114-Notice: Please train this message.
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

On 3/27/24 12:21, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> Enable the mali gpu node and add the som-specific supply-regulator.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Thanks,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
