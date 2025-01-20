Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F2F1DC02181
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 10:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aMyKC0Df6QJ3wFTHux+YVYTYnKY/cT/8yfD1cFvUY0U=; b=SOxeXF7Tg7B29IIh9RrzSDBH0d
	QZSxahes1ve1BwVLJp2MWf98JYXhZ667uCO3lP8Pv2h/YEgz5sLdZHit8U/jGsV1fi++pc8lo04fn
	N7WxK0ou9tVyYPtPpW/ILDgOvVEDdgo+yxuiSpS9f2NDgMKIAMwoptHG4d0dfLlb3aYYuWE8uH3bc
	PH/ywSZU77BsZ5GAWqFWwe1La6DgNRlu4Obro45qr0pZiWKeJvti6zdI2FZvqRJ7F8TeGqbmUWh8M
	ZBjPLf5sqleu6EKPx6en6iWYjzhtCJWhRQ4esRYdLhxoUXwkWoZhoMN87VRUCeCS+jZHvGxOjV8nQ
	djXCcmdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZp2B-00000005L7t-2Pfb;
	Mon, 20 Jan 2025 10:29:31 +0000
Received: from mail-vi1eur03on2070f.outbound.protection.outlook.com ([2a01:111:f403:260c::70f] helo=EUR03-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZp0s-00000005Ks4-2XQD;
	Mon, 20 Jan 2025 10:28:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=imXmTg+gOLMaHnalV+UeFRVp+0wQ6Bbitms/hGHwTB90TK4gp5CVjjSsdHMoFk42uYAXrgn3l2uke3Jt5QvmFEfGHTz06QX3aeQRgdzYrNLeAYXzBWplFHTpTKP+TEIvFtHEargi7/YWOtUGn69jxmTbaiT/smXWEXtSYVdUGnEmZvWtWpNizq0mzDIpUwPmyb3bRdvfbLDdEmpen2ObJyJGupSbN+XmP8P7FwmK0vjPcH6tLh9oEENZYXGfP9ww5M5OXJZ8DBR6/bXqaTQqj0tcTnhJaJsm032TiX6bF/AmxiUGjoaaw+ESWC3290tePgez1YJtSGZqzF633KyO2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=81DyW/fUuvbnGkHHrDBXWJzmbfUZiB7EB+C6hxPtOQk=;
 b=dn0SUwDBsPOj1nLKhtkMYcs7RaOuUlvwBgwCY7yXEbNKB/UAaNPlFDPF+XZUkPkmIJhTQx3K1vHReS4EDEMoRSH+DMtWjJRXjCCZE/45R7xbdoTnketihuqVBGCgQtI/6UhLBeK5x7HsRlNgL6bdAJp9gSiTEOeGgqEKR8V43MsoqqszlwFN3Do1XZm03r+tE4YBStGxjvKRHNPhrKa0XKldLOveKoyMdP58YoWywFR5evzzYS239X+izpDQq31Di/Ni+b6vxBrNqHmiGnpiKrGbsFKrj7EroE8Y97zSVWYJnyCFBkc98x9oQXL/PUJYTrDavRx/vnbsVbvUJJOsYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=81DyW/fUuvbnGkHHrDBXWJzmbfUZiB7EB+C6hxPtOQk=;
 b=fIK4sVR4SqBch6dGYX7o+xVwfkOhZWE2Hweh1ndV3Le2uA5rLKSG6zp5b0m0gLNnYvRrGBQd6QvZykTuN7b81KAzUHmBBzSBPV+7E4QfI6dLRdb01Ika/od4LF3JO4xWzMeA1iqUNMexR/aRajT+cVzQxvSZqvOE5hrMx+xSNEw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PA6PR08MB10595.eurprd08.prod.outlook.com (2603:10a6:102:3d1::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 10:28:02 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4e72:c5d4:488e:f16d%5]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 10:28:01 +0000
Message-ID: <46072287-4124-43b1-996c-fdca41f967e4@wolfvision.net>
Date: Mon, 20 Jan 2025 11:27:58 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: minimal support for Pre-ICT
 tester adapter for RK3588 Jaguar + add overlay tests
To: Quentin Schulz <quentin.schulz@cherry.de>,
 Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250116-pre-ict-jaguar-v2-0-157d319004fc@cherry.de>
 <49bfb4c5-12b5-447b-b08a-af0bb9fc304b@wolfvision.net>
 <82e64b27-d254-4fff-aa25-5b848f147ca2@cherry.de>
Content-Language: en-US
From: Michael Riesch <michael.riesch@wolfvision.net>
Organization: WolfVision GmbH
In-Reply-To: <82e64b27-d254-4fff-aa25-5b848f147ca2@cherry.de>
X-ClientProxiedBy: VI1PR04CA0107.eurprd04.prod.outlook.com
 (2603:10a6:803:64::42) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PA6PR08MB10595:EE_
X-MS-Office365-Filtering-Correlation-Id: 6b3c129a-e0d2-411f-2ba8-08dd393d1e1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|7416014|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjZkL05CZ01DcmFyT29SSXZlMHlWN2tWSzRUK3lrSUQwT3lWdFIydDU3aU9x?=
 =?utf-8?B?c2NwenNvaHJXampwNm95OGk4bzB3UU8rUlBTdEJvOHlWbTRpbXg4Q1JIMmNj?=
 =?utf-8?B?aHZiNTBBWVBvMHlBcytTT0NlK1BvYnJxNzQ1MkFDZk5yY2o4cnpPV2VKUnpy?=
 =?utf-8?B?eEhhZHBpSURMSE55QTZYek5DaHJMYnljSlo5UFZ4bzZDZEVzYjd0R01mVTA1?=
 =?utf-8?B?RmcvbXNNOVk3NHovTWw3MTJ4aWpEOXpVYzBvV3AxTThPUjdzbzB5MVZPSUVo?=
 =?utf-8?B?SVphUGhMM3dvMklPaStVcC9PQjNnRU05bUl4d1B3VlI4MVBqWUlLQ1RrS2Ni?=
 =?utf-8?B?Ylp3RDFjNzVYOU5RT2JzendIR0xLaldiSTRnU3ZpS1VNTndFbGNJQWQzUUpO?=
 =?utf-8?B?YU9icTZSUkhFUGlScHdObUhMUWRZeElyV3JyeHNxZ3VRdUlPcnFTS1EyQkFL?=
 =?utf-8?B?c09CNFVHdGhzUDRxcDRCd3RmOUNhMmV6S0sydFFWSFhnQXFBTU00ZFJ1elJa?=
 =?utf-8?B?UTNFRTExYTJoNERFSWpaeWc4My9Sd0RicTB1VWJrM045UlRrbE4yaUtjaTR2?=
 =?utf-8?B?a3hKYkJ0L3NFMlVaazkydmpLQVM4WXJQOWoxaHVPdTRuQ3FuMDFTOUVyZnZU?=
 =?utf-8?B?ZzFzSEtGK3pxOUpPeGpkdGV5RmVzdStGQmpELy90R3RFR0xBNU53VEFQQ1dS?=
 =?utf-8?B?RmVBWnBjS3lFYTJRRmhuU09TLzRlSWRyaEJEbFVFcjNlcEh2UGh6bVdJdms2?=
 =?utf-8?B?alBGR2tVOXl1VnFrbWJER1AycktyVWU5QlpnSmk5STQzNHlHdVcyL0FId0Zt?=
 =?utf-8?B?MW9NQWZzd3RaMDJTdEQ0MjhPZUtjcy9XcytpWHN5ZWFoa3RabnR2YU1kWjVD?=
 =?utf-8?B?b0poaFhlME11TmlDMUdJY0ZQNE85QlVvUkdvaDM5U1Z4SnR6N0lDTWUyanpZ?=
 =?utf-8?B?ZXB3UDJoZk9hOVNxSTZiRTFqejdoVXpCTW51bUF5NUQwWEREL1lENWp5ZVpz?=
 =?utf-8?B?UzVMdWFXNVdTYVdUVDgySEFBZC85WUc1L3dqakpLOTZ4cG56c0lGSFhzdkxX?=
 =?utf-8?B?VysyeDlKek90ZEYxaEdZaXVCOWxrbGVyaVZSUVJwWWlTSFVwNy9rbHoxUk82?=
 =?utf-8?B?eURRbmJkVGVTKzNWZFJUQ2R1d1AyWUU4NG1TRlNlVTBTUlM2Y3lnTEN4SXJQ?=
 =?utf-8?B?akJFNGJ0UWJURHFUcTJDOFp6Y0JPaVhiWm5yZHpiVlJKRUtpeUZZam8wQnhC?=
 =?utf-8?B?K0VPNTl1SnViaU9wTEpDK2N5eHY3aCsxampybFpLeW1YMVdySFh0cEgxZlJY?=
 =?utf-8?B?WWlneldONlRadHJJckZnSEN2WVNZb2pncVFMbnJVME94TW9URlZHT2UyaFdN?=
 =?utf-8?B?bVZhS09hU1dibXB4UmJXZFlVWUQzdE01MytGWDA3clpVb0NxZFNuNzA2MTJR?=
 =?utf-8?B?Nmh1R3YyYUhvaTQ0OTUzTXVQbW1FdVBJd1k0WWpNMDdQemNRdDFFdm9yLzV3?=
 =?utf-8?B?aGVXNHNCcTFxT1lUWmZyODVXK3lYS0J0WkdzcURrcTlyckNTNmdYTHAxWmtQ?=
 =?utf-8?B?dmJHQVRyd0c0dHFhOE9Vb2hrUUpaMW9GcU9BTE0zc3JWUzFYSFBjRGhZL2xk?=
 =?utf-8?B?OTZwd2wyMm41SS9Lei9FS254a3BYSnRTNzBLKzhsWXk4K3h2WklzUFB4MFU2?=
 =?utf-8?B?MXhYMEExTDdxUWlGS2dMeHZEWGo3UlViZm12WDh2ZEczTFh2bDdhTFVjbzBL?=
 =?utf-8?B?L3lnQTVhUFF6Q0FKdHpHYWVMVE12RXd4bE9MenU0T0VWeWlRNjlNOUU0YlJS?=
 =?utf-8?B?YW42TW5TczhxY3JLdU1XSVI1aFlDV2NRdWZiWjRIeS9jdkFJQXM4b1o2MXd5?=
 =?utf-8?Q?en/fIyoLxDBZT?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(1800799024)(7416014)(376014);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3hTREJ2WlFBdG9DUEUvb2ZobDVlb2VEVnltaGllYmtBOG5kKysrdjBsMHQw?=
 =?utf-8?B?dmlUMEJ3akRBVE45d2t1cUJyMlk3c3FWYVBGUkV5ZmhFUTdHNUt6VlZtUG42?=
 =?utf-8?B?bkpWMUdDVlBreDZEZVBNZnlIVk9XcjkrZmRLVjFZUWtJcFpqWWVIMVVJOEcv?=
 =?utf-8?B?bFo2WXdZQnljelBRM3M2Zmt0K3haQk1POWNMVjVYcGsrQlp5a3MwZHF0SzRL?=
 =?utf-8?B?bFY3YzYxa0lpQjFWV2I1Y3E2TVdzcjUrQVlhT29MTFpxcjFBN0YwVnlYY1dO?=
 =?utf-8?B?RGVuMU9qTVlYSjZ0NXR1ZnBBcnoza3FhSGJUa2VJRFZTaDFUdFUxSnM1aHhJ?=
 =?utf-8?B?VUVaMUczMWdaRlhXcFZBVDZXT3gwWXJ4UDdsYzNJU2hKVHI3TFY3WjV0cnpN?=
 =?utf-8?B?Sm9uM0M5VmNJVXFqZEdOdm5hNlNWNHdrSS83UVJKcUhibG1kTkdXQVVFWTY0?=
 =?utf-8?B?SEYxNlpzNlprUTlUWWJYM2I3QzhqcjdqSXRiQjFodmJwYktEeGZyeXd4NHFW?=
 =?utf-8?B?QnpycEZhc0Y0dUw2VmRPR21ZWjFQamNmUlpGZGNQeXU5eFdmSk9ib0J1b21t?=
 =?utf-8?B?bmMzRFl3aGZDU0c4SWVHYytFMnBLOTdCZXdKWWhhVHdXOUhtOFZXTDJmZkNz?=
 =?utf-8?B?L3NUcURXL0V3SDMwczBsM3VQQnhQWDFUOEZoY25aMEtpUXdNWFU0NmZxMEV6?=
 =?utf-8?B?QUR1TDRlWjI5bTljS2xVUTMyTEVZbGNpUFJHeXZEUzRwOTg0ZUxyTnJETXM5?=
 =?utf-8?B?QnpIMFYwNjhwc0Y4RmJMTGxGYkVBYmR6TXlVT1ZJWUF1VWlKME83MFdtY0RM?=
 =?utf-8?B?RW1wdXZDRm5KalNyekR1cGt1UHN6WnI3ckxzMnVJM2ZHV2lRTkl3WnBxdXFQ?=
 =?utf-8?B?MjYvb0N1TzBaYU9HM3l2cmdBaC9pRDdNWkhiTWJqaldyRXhLWUZUSHliTWRS?=
 =?utf-8?B?SmVneDVpcWcxK05ZbkNod0tsNUJuejFNT0Vkd25aYzNhdGxybWFabkNvaW05?=
 =?utf-8?B?dm9udlRvME5WNFFMWDNsUHJXcWRiQXc5WmJyT0FSL0VaL1h0emIvSjlMQmtm?=
 =?utf-8?B?NlA0ZVJwWjZzVmE4U3pSYUR5WWtHQVhCYU9OM2k0L2FnQng2OUx0aVlXUGQy?=
 =?utf-8?B?SGlGZG8vSGxjTk9mTlRpODFUSXh0VDhHeU0wZFBOMHM4TzRvOTFSNVR4RWY5?=
 =?utf-8?B?UzFJbk5EWitCQ2xBd0NxMkxwU1VXWUlaOUhNa042ZW11c0ErV0lDdFVXK29z?=
 =?utf-8?B?RXBTem4yd1cvY2hvN1dacjZaZGRSbUFBNmZFT1U5LzA1M2hTRmRvUXM1MmY0?=
 =?utf-8?B?Q0xjbjJzT29IZGw4Ni8reGV1Wlp5KzB1UzNxL2xvek5CWXpPTGlMcmtBeHlp?=
 =?utf-8?B?SFFhRFZOaW0yYU9nUWhiRHYzTjhkYVlydVhWZ3RhbE9tajZGOGtkQXJYTElL?=
 =?utf-8?B?bHR1NS9XWVlaVG13TGpJQ3dvTkZxaDIxTzR1ck9rREVxUVA2amQ3U0paNngr?=
 =?utf-8?B?V0ZJZG0yNGlvOVA4RVdTYlU2aHVjbkdHb1lQV3YzUWhwRjE1QndKV1FBTnFi?=
 =?utf-8?B?V0FiZ1g4Y1orb1BFeWEzZU9vdkZ6UFUwOUQrRVNhZU8zVk45RTcwM0tOSHlO?=
 =?utf-8?B?Y0QwMlE3R283cjdrVUZpQ3BISjRZZW1mVkl5WmQra1VicWxuNDlWdXBWUFVT?=
 =?utf-8?B?SnJEVUNYaEpseDQxOHdOWEkraGNISmROUHduOHVsbXl1cmpObFA4REhqVE1l?=
 =?utf-8?B?TkVWRnJIeDdQbFJpbWxIUjhDNEd5MUdEcUxLdlRBNWt0cVJwcUhkWXNpaldD?=
 =?utf-8?B?Zkc3OXNudGZFMElHMXlkczJsSHlHTDZoUXhwZlRHZGZpemFKbnU1aWw2ZUJ4?=
 =?utf-8?B?YWk2dU1hMW1wMDlvNGZ2OVduS1ZsVksycFNKckJrWGgyOTVKanFMeXFhRThF?=
 =?utf-8?B?R2c1aVlmeGpyMkVKaXlpK2RFMUJ3UFphZS9HY0NLQ29rbUh6a0hVaGdVRUxu?=
 =?utf-8?B?ekl6TUdzZmZVc3NCQzFRdGJCc0lyaHE1TFJ3b1gxcXNTN2ZnOUVxbENxMWFZ?=
 =?utf-8?B?ZUpNdVVBUFVlWU15TlZnZFhlMVN6SXVEdjdCUTVEZERQcVY3a3RUMzAwR1hh?=
 =?utf-8?B?ZHY3cWh0d2IyRGtKVmVsNEJrMWcvRUsvWTV5Y3VoTjJqazk3NW5MNDBiajAv?=
 =?utf-8?B?L2c9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b3c129a-e0d2-411f-2ba8-08dd393d1e1c
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 10:28:01.9052
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YKjWIc8WBBKm/a5AvomZFnLOa8smCcdRC8gsVfYpBA0GzSBO5HyNG/o9Gs8agOVdlICPCpsK3iDSv2g8rc1Py/KIz4M7CpBcFk7lxRigN8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR08MB10595
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_022810_828078_C59B315C 
X-CRM114-Status: GOOD (  40.43  )
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

SGkgUXVlbnRpbiwKCk9uIDEvMjAvMjUgMTA6MjAsIFF1ZW50aW4gU2NodWx6IHdyb3RlOgo+IEhp
IE1pY2hhZWwsCj4gCj4gT24gMS8yMC8yNSAxMDowNiBBTSwgTWljaGFlbCBSaWVzY2ggd3JvdGU6
Cj4+IEhpIFF1ZW50aW4sCj4+Cj4+IE9uIDEvMTYvMjUgMTU6NDcsIFF1ZW50aW4gU2NodWx6IHdy
b3RlOgo+Pj4gVGhpcyBhZGRzIG1pbmltYWwgc3VwcG9ydCBmb3IgdGhlIFByZS1JQ1QgdGVzdGVy
IGFkYXB0ZXIgZm9yIFJLMzU4OAo+Pj4gSmFndWFyLgo+Pj4gR1BJTzNBMywgR1BJTzNBNCwgR1BJ
TzNCMiBhbmQgR1BJTzNEMiB0byBHUElPM0Q1IGFyZSBhbGwgcm91dGVkIHRvIHBvd2VyCj4+PiBy
YWlscyBhbmQgY2FuIG9ubHkgYmUgdXNlZCBhcyBpbnB1dCBhbmQgdGhlaXIgYmlhcyBhcmUgaW1w
b3J0YW50IHRvIGJlCj4+PiBhYmxlIHRvIHByb3Blcmx5IGRldGVjdCBzb2xkZXJpbmcgaXNzdWVz
Lgo+Pj4KPj4+IEFkZGl0aW9uYWxseSwgdGhpcyBhZGRzIGJ1aWxkLXRpbWUgb3ZlcmxheSBhcHBs
aWNhdGlvbiB0ZXN0cyBmb3IgKHNvbWUpCj4+PiBSb2NrY2hpcCBvdmVybGF5cyB0byB0cnkgdG8g
YXZvaWQgZnV0dXJlIHJlZ3Jlc3Npb25zLgo+Pj4KPj4+IE5vdGFibHksIHRoZSBEZXZpY2UgVHJl
ZXMgZnJvbSBXb2xmdmlzaW9uIFBGNSBhcmVuJ3QgbWlncmF0ZWQgKGJ1dAo+Pj4gc2hvdWxkKSBh
cyBJIGRvIG5vdCBvd24gdGhlIGRldmljZSBhbmQgY291bGRuJ3QgZmlndXJlIG91dCBmcm9tIHRo
ZQo+Pj4gaW50cm9kdWNpbmcgY29tbWl0IGxvZ3Mgd2hhdCB0aGUgcG9zc2libGUgdmFsaWQgY29t
YmluYXRpb25zIGFyZS4KPj4+ICtDYyBNaWNoYWVsIFJpZXNjaCBmb3IgYXdhcmVuZXNzCj4+Cj4+
IFRoYW5rcyBmb3IgdGhlIGhlYWRzIHVwIQo+Pgo+PiBKdXN0IHRvIG1ha2Ugc3VyZSBJIHVuZGVy
c3Rvb2QgY29ycmVjdGx5OiBCeSBtaWdyYXRlZCB5b3UgbWVhbiB0aGF0IHRoZQo+PiBvdmVybGF5
IGVudHJpZXMgYXJlIG1vdmVkIHRvIGEgc2VwYXJhdGUgc2VjdGlvbiBpbiB0aGUgTWFrZWZpbGUg
YW5kCj4+IHRoZXJlIGFyZSBleHBsaWNpdCBjb21iaW5hdGlvbnMgb2YgYmFzZSBEVFMgYW5kIG92
ZXJsYXlzIGZvcgo+PiBjb21waWxlLXRpbWUgdGVzdGluZyBwdXJwb3Nlcz8gSWYgc28sIEkgZG9u
J3QgY29uc2lkZXIgdGhlIFBGNSBtaWdyYXRpb24KPj4gYXMgKnRoYXQqIHVyZ2VudC4gSSBkb24n
dCB0aGluayB5b3UgY2FuIGJyZWFrIGFueXRoaW5nIG9uIG91ciBzaWRlLiBPcgo+PiBhbSBJIG1p
c3Npbmcgc29tZXRoaW5nPwo+Pgo+IAo+IEkgdGhpbmsgaXQgbWFrZXMgc2Vuc2UgdG8gYmFja3Bv
cnQgdGhlIHBhdGNoZXMgaW4gdGhpcyBzZXJpZXMgKGV4Y2VwdAo+IHRoZSBvbmUgYWRkaW5nIHN1
cHBvcnQgZm9yIHRoZSBQcmUtSUNUIHRlc3RlciBhZGFwdGVyIG9uIFJLMzU4OCBKYWd1YXIpLgo+
IEJlY2F1c2Ugd2UgY2Fubm90IGJhY2twb3J0IHRoZSBwYXRjaCBmb3IgUHJlLUlDVCB0ZXN0ZXIg
YWRhcHRlciAoaXQncyBhbgo+IGFkZGl0aW9uLCBub3QgYSBidWcgZml4KSwgYW55IHBhdGNoIHRo
YXQgaXMgYXBwbGllZCBhZnRlciB0aGF0IG9uZSB3aWxsCj4gcmVzdWx0IGluIGEgZ2l0IGNvbmZs
aWN0IHdoZW4gYmFja3BvcnRpbmcgdG8gc3RhYmxlIHJlbGVhc2VzLgo+IAo+IEkgYmVsaWV2ZSBp
dCBtYWtlcyBzZW5zZSB0byBiYWNrcG9ydCBidWlsZCB0aW1lIG92ZXJsYXkgYXBwbGljYXRpb24g
dGVzdHMuCj4gCj4gVGhlIGdpdCBjb25mbGljdCB3aWxsIGxpa2VseSBiZSBubyBiaWcgZGVhbCBi
dXQgaWYgd2UgY2FuIGF2b2lkIGl0LAo+IGJldHRlciBhdm9pZCBpdCA6KQoKT0suCgo+IAo+PiBN
YXliZSB5b3UgY2FuIG1vdmUgdGhlIGxpbmVzCj4+Cj4+IMKgwqAgZHRiLSQoQ09ORklHX0FSQ0hf
Uk9DS0NISVApICs9IHJrMzU2OC13b2xmdmlzaW9uLXBmNS1kaXNwbGF5LXZ6LmR0Ym8KPj4gwqDC
oCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LXdvbGZ2aXNpb24tcGY1LWlv
LWV4cGFuZGVyLmR0Ym8KPj4KPj4gdG8gdGhlIG92ZXJsYXkgc2VjdGlvbiBhcyB3ZWxsPyBUaGlz
IHNob3VsZCBub3QgY2F1c2UgYW55IGZ1bmN0aW9uYWwKPj4gY2hhbmdlcy4KPj4KPiAKPiBUaGUg
b3ZlcmxheSBzZWN0aW9uIHdvdWxkIG9ubHkgc3VwcG9ydCB0aGUgc3ludGF4IHdoaWNoIGFsbG93
cyBidWlsZAo+IHRpbWUgdGVzdGluZy4gSSB3b3VsZCBsaWtlIHRvIGF2b2lkIGNvbmZ1c2lvbiBh
cm91bmQgd2hhdCB0byBkbyB3aGVuCj4gYWRkaW5nIGEgbmV3IG92ZXJsYXkuIFNwZWNpZmljYWxs
eSBub3RlIHRoZSBtaXNzaW5nIG8gaW4gdGhlIGV4dGVuc2lvbgo+IHdpdGggdGhlIGJ1aWxkIHRp
bWUgdGVzdHMuCj4gCj4+PiBJJ20gd29uZGVyaW5nIGlmIHdlIHNob3VsZG4ndCBiYWNrcG9ydCBw
YXRjaGVzIDEgYW5kIDIgdG8gc3RhYmxlPyBJbgo+Pj4gd2hpY2ggY2FzZSwgaXQgd291bGQgbWFr
ZSBzZW5zZSB0byB0cnkgdG8gaGF2ZSB0aGUgV29sZnZpc2lvbiBQRjUKPj4+IG92ZXJsYXkgdGVz
dHMgbWVyZ2VkIGJlZm9yZSB0aGUgYWRkaXRpb24gb2YgdGhlIFByZS1JQ1QgdGVzdGVyIGFkYXB0
ZXIKPj4+IHN1cHBvcnQgZm9yIFJLMzU4OCBKYWd1YXIgYXMgdGhhdCBvbmUgd29uJ3QgYmUgYmFj
a3BvcnRlZCB0byBzdGFibGUgYW5kCj4+PiBiYWNrcG9ydGluZyB0aGUgV29sZnZpc2lvbiBvdmVy
bGF5IHRlc3Qgd291bGQgaW5jdXIgYW4gdW5uZWNlc3NhcnkKPj4+ICh0aG91Z2ggbm90IGRpZmZp
Y3VsdCkgZ2l0IGNvbmZsaWN0IHRvIHJlc29sdmUuCj4+Pgo+Pj4gSSBhbHNvIGRvIG5vdCBrbm93
IHdoYXQga2luZCBvZiB0ZXN0cyB3ZSBzaG91bGQgaGF2ZSB3aGVuIG92ZXJsYXkKPj4+IGNvbWJp
bmF0aW9ucyBhcmUgcG9zc2libGUgKGxldCdzIHNheSB0aGVyZSBhcmUgQSwgQiBhbmQgQyBvdmVy
bGF5cyB0aGF0Cj4+PiBjYW4gYWxsIGJlIGFwcGxpZWQsIHNob3VsZCB3ZSBoYXZlIGJhc2UgKyBB
LCBiYXNlICsgQiwgYmFzZSArIEMsCj4+PiBiYXNlICsgQSArIEIsIGJhc2UgKyBBICsgQywgYmFz
ZSArIEIgKyBDIGFuZCBiYXNlICsgQSArIEIgKyBDIHRlc3RzPwo+Pj4gbWF5YmUgZXZlbiBiYXNl
ICsgQiArIEEsIGJhc2UgKyBDICsgQiwgYmFzZSBBICsgQyArIEIsIGJhc2UgKyBCICsgQSArIEMs
Cj4+PiBiYXNlICsgQiArIEMgKyBBLCBiYXNlICsgQyArIEIgKyBBIGFuZCBiYXNlICsgQyArIEEg
KyBCIHRlc3RzPykuCj4+Cj4+IEkgaGF2ZSBuZXZlciBiZWVuIGdvb2QgYXQgY29tYmluYXRvcmlj
cywgYnV0IEkgZmVlbCB0aGlzIGhhcyB0aGUKPj4gcG90ZW50aWFsIHRvIGV4cGxvZGUgOi0pIE15
IHR3byBjZW50czogVGhlIG92ZXJsYXlzICpzaG91bGQqIGJlCj4+IG9ydGhvZ29uYWwgdG8gZWFj
aCBvdGhlciwgaS5lLiwgbm8gZGVwZW5kZW5jaWVzIGJldHdlZW4gdGhlbSBpbiB0aGUKPj4gc2Vu
c2UgdGhhdCBvdmVybGF5IEEgY3JlYXRlcyBhIG5vZGUgdGhhdCBpcyB1c2VkIGJ5IG92ZXJsYXkg
QiBhbmQgdGhhdAo+PiBzb3J0IG9mIHRoaW5nLiBUaGVuCj4gCj4gSSBkaXNhZ3JlZS4gSSBjYW4g
YWxyZWFkeSB0ZWxsIHlvdSB0aGUgZm9sbG93aW5nIHVzZWNhc2U6Cj4gCj4gb3VyIFByZS1JQ1Qg
dGVzdGVyIGFkYXB0ZXIgZm9yIFJLMzU4OCBKYWd1YXIgaGFzIHR3byBwcm9wcmlldGFyeSBjYW1l
cmEKPiBjb25uZWN0b3JzLiBXZSBhbHJlYWR5IGhhdmUgdHdvIGNhbWVyYSBtb2R1bGVzIHdvcmtp
bmcgd2l0aCBpdCwgc28gdGhlCj4gZm9sbG93aW5nIHdvdWxkIG1ha2Ugc2Vuc2U6Cj4gCj4gcHJl
LWljdC10ZXN0ZXIuZHRibwo+IHByZS1pY3QtdGVzdGVyLWNvbjEtY2FtWC5kdGJvCj4gcHJlLWlj
dC10ZXN0ZXItY29uMS1jYW1ZLmR0Ym8KPiBwcmUtaWN0LXRlc3Rlci1jb24yLWNhbVguZHRibwo+
IHByZS1pY3QtdGVzdGVyLWNvbjItY2FtWS5kdGJvCj4gCj4gWW91IHdvdWxkIHRoZW4gYXBwbHkg
cHJlLWljdC10ZXN0ZXIuZHRibyBmb2xsb3dlZCBieSBvbmUgb3IgdHdvIGNhbQo+IGR0Ym9zLiBU
aGUgcHJlLWljdC10ZXN0ZXIgY2FuIGJlIHVzZWQgd2l0aG91dCB0aGUgY2FtZXJhIG1vZHVsZXMg
KGMuZi4KPiB0aGlzIHBhdGNoIDopICkuCgpNb3N0IHByb2JhYmx5IHRoZXJlIGlzIG5vIGdlbmVy
YWwgYW5zd2VyLiBJbiB0aGUgZW5kIHRoZSB1c2UgY2FzZXMKZGVjaWRlIHdoYXQgdGVzdHMgZG8g
bWFrZSBzZW5zZS4KCj4gCj4+IMKgIC0gUGVybXV0YXRpb24gY2FuIGJlIGlnbm9yZWQuIChiYXNl
ICsgQSArIEMgPSBiYXNlICsgQyArIEEpCj4gCj4gSSB0aGluayB0aGF0J3MgZmFpci4gSXQgd291
bGQgYW55d2F5IGJlIGFuIGlzc3VlIHdpdGggZHRzbyB3aGljaCBhcmUKPiB1c2luZyAvZGVsZXRl
LW5vZGUvIG9yIC9kZWxldGUtcHJvcGVydHkvLgo+IAo+PiDCoCAtIENvbXBvc2l0aW9uIChiYXNl
ICsgQSArIEIgKyBDKSBtYXkgYmUgaWdub3JlZCBpbiBmYXZvciBvZiBpbmRpdmlkdWFsCj4+IMKg
wqDCoCB0ZXN0cy4KPiAKPiBOb3Qgc3VyZSB0aGlzIGlzIGlkZWFsIGVpdGhlci4KPiAKPiBPdXIg
UkszNTg4IEphZ3VhciBtYWluIFBDQkEgYWxzbyBoYXMgdHdvIHByb3ByaWV0YXJ5IGNhbWVyYSBj
b25uZWN0b3JzLgo+IEl0IHdvdWxkIG1ha2Ugc2Vuc2UgdG8gdGVzdCB0aGF0IGFwcGx5aW5nIGEg
ZHRzbyBmb3IgbWFpbiBQQ0JBIGlzIG5vdAo+IG1lc3Npbmcgd2l0aCBhcHBseWluZyBhIGR0c28g
Zm9yIHRoZSBjYW1lcmEgbW9kdWxlIG9uIHRoZSBhZGFwdGVyLgo+IAo+IFRoaXMgaXMgYSBiaXQg
dGhlb3JldGljYWwgYXQgdGhlIG1vbWVudCB0aG91Z2ggc2luY2UgdGhlcmUncyBubyBjYW1lcmEK
PiBzdGFjayBhdmFpbGFibGUgZm9yIFJLMzU4OC4KPiAKPj4gwqAgLSBJbmRpdmlkdWFsIHRlc3Rz
IG1heSBiZSBpZ25vcmVkIGluIGZhdm9yIG9mIChhKSBjb21wb3NpdGlvbihzKSB0aGF0Cj4+IMKg
wqDCoCBjb3ZlcihzKSBhbGwgaW5kaXZpZHVhbCB0ZXN0cy4KPj4KPj4gQnV0IG9mIGNvdXJzZSB0
aGlzIGlzIGxpa2VseSB0byB2YXJ5IGZyb20gY2FzZSB0byBjYXNlLiBJbiBvdXIgY2FzZSwgaW4K
Pj4gdGhlIGNvbXBvc2l0aW9uCj4+Cj4+IMKgwqAgcmszNTY4LXdvbGZ2aXNpb24tcGY1LXZ6LTIt
dWhkIDo9IHJrMzU2OC13b2xmdmlzaW9uLXBmNS5kdGIgXAo+PiDCoMKgwqDCoCByazM1Njgtd29s
ZnZpc2lvbi1wZjUtaW8tZXhwYW5kZXIuZHRibyBcCj4+IMKgwqDCoMKgIHJrMzU2OC13b2xmdmlz
aW9uLXBmNS1kaXNwbGF5LXZ6LmR0Ym8KPj4KPj4gd291bGQgZG8gdGhlIHRyaWNrLgo+Pgo+IAo+
IFRoYW5rcywgd2lsbCBzZW5kIGEgcGF0Y2ggZm9yIHRoYXQgaW4gdjMuCgpUaGF0J2QgYmUgZ3Jl
YXQsIHRoYW5rcyEKClJlZ2FyZHMsIE1pY2hhZWwKCj4gCj4gQ2hlZXJzLAo+IFF1ZW50aW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
