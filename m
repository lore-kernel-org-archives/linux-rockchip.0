Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E413ECEBF8C
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 09:51:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/VD4B1eSAMj7HH74/1F9Mc1XHceHAa124aqu7TeaO+g=; b=Lm3AK9XhbZrrwBzKu81zT+LpzQ
	5CUUg2jqG53aCjp6PtGowIQ7WIb6pmQWO30J6a2aGXN/NXh361+QXwLsDsloSfhmdWEjlTofDbJFL
	fDom/M1xqjtor9ViTGz3bcDHbzozl7TCkytqwoutB5QGP4xYjKAAMwyJvCStEkteVuqKiB2h378Jc
	d6oVAeJqQhMvXc/JhF+fEh6U/AGtfaWR6qhQGz7iG6d+flENt21bN0EuXC70b4vggGDCl5UFgkDYA
	qUxJ/OXg2otBK5ZOkEAeBDT9GeE9cRBHl0gcDD/qDC6mPNsyAbu5v91EbSRwEEk0yZU3Ebg6ES9TR
	avq8HVRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su7dV-0000000Ajem-3t1f;
	Fri, 27 Sep 2024 09:51:41 +0000
Received: from mail-northeuropeazlp170130004.outbound.protection.outlook.com ([2a01:111:f403:c200::4] helo=DUZPR83CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su7cl-0000000AjU6-45bh
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Sep 2024 09:50:58 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UhC+JnmvStxM6JcQIdOZz5evbqccARqkENU414u9WFIpGB8Zr0trvsrIKKDqVh6/oCG/9bR0qrZK28Wp5xxGtKAFowVcz6TQfyrJrAEq5LLNs8kO0AGqT1umwEIF/r3n+vUeF3/1FQQoOk/KQFK1fpWdx05yRXEiX8TlhLNaN+86FXA3yxiSkWJML/MvPI4eagBi69OdceOn8jQQIxRKJJaTF+/+7r7aHSmZSqk65HCc/fDvqoD3ab7v/LNaZJY0Y/TA/1XmuUPi6jNHDM9yqqR4BRSWJgoQKX/27gsRUcICqVRsXvmf+D4fGjFe/RsO4xxbm8EB4qKY+h/DNyp/uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OM7s3iZ+jlcGBf2GfySIKNzuxPQMZLourEAIL+VwC6A=;
 b=xuBGsoSchcY9KUXJBhcUI12xtH7raBDQ2lmqhgeXJNGjZiXSWTVXYO+q5fU0PJMKxDiUO8xxPDQejCmFjTUh+1yuJgwscOLg/26V+qQxramhRnGn0+o9OparyQb8UmIvQGPjHt/GMrAs/1JCWGLTHLJgvScx2xvpvH9+HpUlRWB8NfwYerVeyY0jDb0c/dVj48iMoqkkD1uW9HtTP1fTR2Yrds5V+j89m+QJKGmbkfQ0UwTIgkWDZh0V0a13tRTj8fwTIOJeXxSEmJ+f5GYHh9/784iGdpZb0+YEeo/yloqdc6XZbNFmMVreXEw/Lp5rN+XtLmht1aWEziIkt2SLlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OM7s3iZ+jlcGBf2GfySIKNzuxPQMZLourEAIL+VwC6A=;
 b=d0w9FXmMgS5OB0uohN83bPLMjfWk0SEqUcl4hIv4QLoxErJMYyRENKRo0mYz3qr+wg5GydkcczCvNOk+VN7gWnDFOBulMnRjzqtT9qLth8oiVouozByashxrtmFf6zDCth8yTg+7XjtCCgdmxwvR0qK4BqGcyX4LCxLL0RemT8w=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com (2603:10a6:20b:409::9)
 by VI1PR04MB7182.eurprd04.prod.outlook.com (2603:10a6:800:121::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Fri, 27 Sep
 2024 09:50:48 +0000
Received: from AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea]) by AM9PR04MB8906.eurprd04.prod.outlook.com
 ([fe80::d379:5378:b1:cea%2]) with mapi id 15.20.7918.024; Fri, 27 Sep 2024
 09:50:48 +0000
Message-ID: <75946cd5-8f6f-40fd-a218-66d399a0da19@cherry.de>
Date: Fri, 27 Sep 2024 11:50:46 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: rockchip: add attiny_rst_gate to Ringneck
To: Heiko Stuebner <heiko@sntech.de>,
 Jakob Unterwurzacher <jakobunt@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
References: <69f79284-b52e-496e-a286-d7e5ce3d90ce@cherry.de>
 <20240926132028.21910-1-jakob.unterwurzacher@cherry.de>
 <050724b3-aed6-41d3-b2b4-18b90fbf0ad3@cherry.de> <3885598.FjKLVJYuhi@phil>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <3885598.FjKLVJYuhi@phil>
X-ClientProxiedBy: FR4P281CA0149.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b8::15) To AM9PR04MB8906.eurprd04.prod.outlook.com
 (2603:10a6:20b:409::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM9PR04MB8906:EE_|VI1PR04MB7182:EE_
X-MS-Office365-Filtering-Correlation-Id: 1f08a300-1a91-4495-ab33-08dcded9dd56
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?djlBVlJ0N290QUpsZXI2dW9xZ1NhY1d4NjlaelpIR0xEU1VGYVNSdW9YVU92?=
 =?utf-8?B?aXh1ZkhYUlNrZ1VBNnFybkpuVStKVXZOVnlPaFJlOHdhbnB1TjJwcXNpdGsx?=
 =?utf-8?B?V2dXTVhOMGs5d2pTZCt0K2FucVE4T1pKVVRFQ0VnaW1IN1FPT0FvWW1GS0pt?=
 =?utf-8?B?VTc4U1dIdmZla3dsaWlyRFRiczhIa2NtNDJEbmVpUEJiNE9yZkFhWjFTUGVy?=
 =?utf-8?B?TDZyQkNyTk1FOU9YMXdCWEtMUGFSMEVOdVMzdFI4WlBOSllIUENwY01PRTA4?=
 =?utf-8?B?N3VpdXFnU25CQnVrN1NSMFpyalBWdjBZQjF0WHR1NTNMbnBkbXlWTll6Z2Jy?=
 =?utf-8?B?WS83bFdpWnVOQ0xjSy9lMFlNQlZWc29rQm9uT3B0VUNTVE1wcU5DcURnelA2?=
 =?utf-8?B?SkNNWXJmWEp3aXhZa1VLcGgvcDFyTFQ5VlFvQzBubjI5cTdUY2VYbnAxRDA1?=
 =?utf-8?B?MUNUWkFjd04wWi94ZmprbkRMMHRxcXk4T1ZjYkZsMHVjU1B2S3AydHlNQkNm?=
 =?utf-8?B?ZWdYT1FEY2IxUWF2M2QyUk5BV1BuaDJBYmJRMTVPT1RoY0M3dzNwQUxiR1FV?=
 =?utf-8?B?ZUZ6U1lzajVtazBsd2ZhUDNuWEFvQURJMHlvM3NVd2g3dkh3RG1YWE94WVgz?=
 =?utf-8?B?Z1l1UCt3aHNuN29mRnZiODFnc2QzVFdKeStMSTArNFZOQ3BsRWVneWJFTU5l?=
 =?utf-8?B?UHZmNHByYnQxckxIbGl2eFdaZUErVHZURkZiTURyeVNFNGxkYWIwRmRhbWRM?=
 =?utf-8?B?UmkwbUV3RkVJNzl1bDZ0ZUJObVlSNnFYa3lCNkpBVVpkbWN3bU94ZU83REVI?=
 =?utf-8?B?N2ptMkZscXlwKzNxamJtNDBqcXEyUEF0allsUXg1ZzB1ZERaT1lBT0wrMkZT?=
 =?utf-8?B?UjFIc2l2amtsb0pmS3RodHkxRXZoQnIyMTRSU3BiY0VSRFVZb0JPNWdaQkhX?=
 =?utf-8?B?eEJnS2JDSXBXcXFnNXZPODF0MHlSVUQvZm5Ra2U1TlRMOW0rUDdQYzQzSitL?=
 =?utf-8?B?TlRIMXhQL2tINHdISllsaEJBNDVVTTZabGdYcmMxaTZIOURVV3dCVEJ1USsx?=
 =?utf-8?B?SE9Tc1BKcXZrZ1oydHZ6YW5acjZVYlhpTUlJZkVwM1h5L05vZ2FHdytrMlVU?=
 =?utf-8?B?V0p3Tk42ZHUwM1NuQThmVlhhT21tcThzNmZMdWZVcWhWM0Q0alNMVTJUeDJC?=
 =?utf-8?B?Szhtekh1aGRRaEZOZFVDblZBZmt4MklZL2FpbnR4cUcrbU96K21nNWVpa25K?=
 =?utf-8?B?M0Q5VzAzZDBsb1daSXdBb2ZBdW5kRkRQakJXVllhSnZPTjZUZjVMNjRiSkFl?=
 =?utf-8?B?c0RFWnBkeWNoenF2amdaa2tyYTkwTyt5N2VWOXBXU0lQNm9RSExndnpZUmEz?=
 =?utf-8?B?aWVXUllMVjNpLzVUOWNUSDFVZHJhRStQZVJNT0ROMXZiNmgrOExTckNiZ0ly?=
 =?utf-8?B?ejRLOElLVnNIZXpSV25XUGpMUmVzYjJxaTVsd2VvNFNDWmxsS2xiV1JXdjJy?=
 =?utf-8?B?Q3lYcnVmMUpaLzRPSzFvY0IyRjJGQ2pEelFVeFNibVpIQ21qM28zdXJVa3Er?=
 =?utf-8?B?UlFWbmlLOVNnaC9ZcjRFQkozZG1tY1JCWUJGSzZtd1pnT3dtQkp4YzFLODZ3?=
 =?utf-8?B?SjFWNGVJbjZYdy9JUEwyakJYWVpFcjQwYklMNUQzb2VMTWhESnFORUNiVXpT?=
 =?utf-8?B?RWRESFgyaVdGSVZmVHhnOXQvbDdUR2RRWGFZcXZUTEdwZkUzdy9oTFh3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9PR04MB8906.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MSs1NmV3ZkUzM3dLaHQ2OXFxRTltcEd0OTZvdzE0SjdoT1hEem5wR0JFdDIx?=
 =?utf-8?B?RzZuVlNDMUdKQTRPVzdHSnhNQ2ZSODliU2hmbGFsaFlUVkZFTFpmclZXQmpk?=
 =?utf-8?B?Z3hyL3BmazF2a0hNNGJCVElha2ljV21IRFc4cjNvZEJQTU91b1RFQk9QZkpm?=
 =?utf-8?B?YnNOZDZIeFdWcDZsTlBjUEFaUnRibStjU1VqUXdQamNhTzA4YkFMVUEyRUtn?=
 =?utf-8?B?S1oxcDZpcENBckZqay9qOFQvN214Syt6QTMva1k0ZlBwZitPY1JRMGx3aDh6?=
 =?utf-8?B?T1I5bXZlUUx6Ly9WRHVyNTNnRDlONkJtb0xIby9VRmV4UHlmQko3OUhuSWtu?=
 =?utf-8?B?WnVIL2Uwb0ptVXFnMmRJdURHcEtEWTExMmZ5SWdrSTNoVW5oUGcxamhQQWQw?=
 =?utf-8?B?S01YbytuOW95WWgrQkVQVEpKS0dVRjZxZkdmTlNsdVl1Zll3Nm9BU21Lc011?=
 =?utf-8?B?TEVpTkU5R3RqWGZZVXRMcXZSRDlZZzZMRUQ4LzFnZnZqbDRUNnFpWlkrcW83?=
 =?utf-8?B?UnBiM0dlQnhNZXJ5VlprcmRRa3oyRDc5MGFFcEtpQ1UzOTFzM1lHV3AyY0xO?=
 =?utf-8?B?emFGTTRUM2Mza0NzbUZGbTE5bWRuZGM2SGtsM1VKRVlVTDh2amF3NjBZYUNq?=
 =?utf-8?B?QUFEd21wQjYvMlVta040Y3BUR2hidVQ1NEdaSTBOMDFpK0l6UDZ2UHd4d0ZJ?=
 =?utf-8?B?SWJCa0tYdWh3US9UNnNzTGp2NENOc214aHhxak9RYndSOFlBTndBYlN3alZz?=
 =?utf-8?B?TytpYkNXeHRMS0dMTUExTUQ3SlFIYkl1V3YzUGRhWUkyVDU5WUxEL0FzQ0t4?=
 =?utf-8?B?S3E2L2ZDUGsxUlR1SzdSWDVYZno1OVY0WjJ5anpDYWxIalhIaWZ5bXl3Z2Yy?=
 =?utf-8?B?SS9SR1hYdW9PbllVQS9QM092Ykk4dnV4aHZZTXp2YnRkaVdPcmp6WGsrMnNM?=
 =?utf-8?B?dEdSNFI3U0pUeDFVcnZ5ajg3NkhUZUIzdktQS2U3b3FzZk1zT29NRUtDZzlH?=
 =?utf-8?B?U3NPS1RUTlZESDJsNm1ncWNDK01nOW9pRW9JRmtOTFB2M1RxU2t5a3l2OVhE?=
 =?utf-8?B?Z0Z5dkdrcTBmZTZkckRuRFdhK05HazdPZ0hkQVBEODQ2eTE0N1hKcFFNMjNT?=
 =?utf-8?B?bFNGQmxGaW1iVlJJSkVLZ1lNR1IzdzFPQUlnbFNKQkNrN0hZWG9iRllkUjRV?=
 =?utf-8?B?QjIyV2gzb05OSi81Y3RtVEIxNlN4V1JBbkZYcVZMZTJ0d0xqcnNnNmtSK25W?=
 =?utf-8?B?eFpiSlFLd3gwUGRZbGRBS0ZRZHlmREc1RnI5M0RrU1pobzEwM1RPc3FxQ2Nl?=
 =?utf-8?B?SzNoSlR2bURCczBUdzQ1ck16ZlFsQlNTM3pGMlFGVHdiRTlKR1NuUW1FMlpY?=
 =?utf-8?B?bWpzc0lFYXErUGxRUHZXTE9qM3dSbDU3N3lKM1h6SWtrR1k2alRGbGdTekow?=
 =?utf-8?B?b2h2dzhkL0tPdzBCOGZpaVQyK3JVVXRBWmFOdnMyZ2xKa29UbERWMU1JRUN2?=
 =?utf-8?B?ME1pNEs0ZDcrQ01TalIwUmdWZU5vWjBPRC9yMCtiUXh1Mk5oQm9aUjhkWHJZ?=
 =?utf-8?B?ZHBxSGpEMkw5bzZ0L3YvblYzWjdFZExzVlJrMGdNV00zd3FXazB4M1NINUxh?=
 =?utf-8?B?cy9CditkeERkOGhKb3gybWZTVXFONExnak1mQ0hFb1VFRkVDNFhuZC9oTG11?=
 =?utf-8?B?RmljOFRqdGU2OUpQcENmNHUwYVlLUTJjUzdJM0NKNUJ0MnZvUHREczFRZTFJ?=
 =?utf-8?B?a1VhckNpSjdNTkNRY2Mvd0s2aHNBOUQ2cW44ckFkSldrcXFvcFFwLzF1R2hj?=
 =?utf-8?B?TUxscktGOEJMZnRZa2VENlNyN2pZMDBDdWlJV2VOamFyODljNUFjbzViNjdZ?=
 =?utf-8?B?T2lyaUt4V1cwdmJLYUVMc2Jhd2hIYmdTL09peXZ1WlVtMmpsamdDenR4TWsr?=
 =?utf-8?B?ZVF4MldhTVFyeUpBUXZ1YmlUTjJwNDJaU0hhSXVDNWZibUt1MWFDZCtaQUVC?=
 =?utf-8?B?d0NLTGFpYUxobjhVRW1WZ01pREsxSFVyWm9PYUxFSWxEaE1ZU01SRXYrWkJL?=
 =?utf-8?B?UzVuQjB3N3ZNSE42aFRScUF2UlR5bGpURG5IK2g5V25zV3RjenVzOUliZnFO?=
 =?utf-8?B?UmdmS0pYekJwRzI5endKTEVKd3NINU93WXFQOG00cGlCWnQzajQxQi94QkRi?=
 =?utf-8?B?bnc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f08a300-1a91-4495-ab33-08dcded9dd56
X-MS-Exchange-CrossTenant-AuthSource: AM9PR04MB8906.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 09:50:48.3554
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UhJxa9kERKgwnuNdnxUlJFGk6Q94AOwdY+U1r6y5zhXDaE19DiSt8/taa5i48VZcx2w5BAcS0gUw9edqQhw6pw7dqNkUyov6Afswvh1rR3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_025056_058658_04A768D9 
X-CRM114-Status: GOOD (  15.48  )
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

On 9/27/24 11:39 AM, Heiko Stuebner wrote:
> Am Donnerstag, 26. September 2024, 15:24:03 CEST schrieb Quentin Schulz:
>> Hi Jakob,
>>
>> On 9/26/24 3:20 PM, Jakob Unterwurzacher wrote:
>>> Ringneck v1.4 can contain (placement option) an on-board ATtiny
>>> microcontroller instead of an STM32. In normal operation, this
>>> is transparent to the software, as both microcontrollers emulate
>>> the same ICs (amc6821 and isl1208).
>>>
>>> For flashing the ATtiny, the SWITCH_REG1 regulator of the board's PMIC is
>>> used to enable the ATtiny UPDI debug interface. If the STM32 is placed, or if
>>> we are running on an older Ringneck revision, SWITCH_REG1 is not connected
>>> and has no effect.
>>>
>>> Add attiny-updi-gate-regulator so userspace can control it via sysfs
>>> (needs CONFIG_REGULATOR_USERSPACE_CONSUMER):
>>>
>>>     echo enabled > /sys/devices/platform/attiny-updi-gate-regulator/state
>>>
>>> Signed-off-by: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
>>> Tested-by: Quentin Schulz <quentin.schulz@cherry.de>
>>
>> Reviewed-by: Quentin Schulz <quentin.schulz@cherry.de>
>>
>> This is a candidate for backporting to stable branches as well I assume,
>> @Heiko?
> 
> That is more on the darker side of gray here.
> 
> Looking at the stable-kernel-rules [0] the criteria is
>    "It must either fix a real bug that bothers people or just add a device ID"
> 
> This change instead is adding a new feature to allow said flashing from a
> running system.
> 

This does mean that the new version of the device won't work as well 
with an older kernel though.

I thought the rules for DT backporting were a bit more permissive than 
for drivers. Maybe because most of the DT patches I posted were actual 
fixes :)

Up to you!

Cheers,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
