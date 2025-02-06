Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 728EDC02194
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Feb 2025 11:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W5Up1Tqh0Eq3z+vYojwXucr8nlmS8vz/5wkVaVubfAk=; b=t6j1WPB7Gt68PhjnOJAwhqyrLF
	E5WZuTaHoIQ0qlEdvMKH/NE3znAi5L8dJ9lFMmbcI3gF6SWOK86iucvv/LmLXQA6o8eoVhfaBbE4d
	1oEbVCF51JkH7Oc49q3Ph/940HLNHsBBRn9s5o61c7PCNd/quA9eMA/4eN+J4V4eswnj87Y4zjfjh
	P8Shk7O/2YMY++M4upF8rEIEUCJmHpjkq33Il4j/hpcFHS+ZKGuX1d4UUB4km61Ym1jyf9fvD+R96
	4Xru0zcUEQVD2E4vEH2o27LQm3dgSWMfi+Us99Z8K7jNWSDvUKFrzjkIrEBzlA4UwDo8CF/aX+xD0
	QTc8ZAmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tg0IE-00000006BAg-2hHx;
	Thu, 06 Feb 2025 11:43:38 +0000
Received: from mail-am0eur02on20628.outbound.protection.outlook.com ([2a01:111:f403:2606::628] helo=EUR02-AM0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfzjJ-000000064Lu-1sWl;
	Thu, 06 Feb 2025 11:07:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TVXSVrcurN7zQeKMkzuVz+6Q9hWcsmkhw+71+iE9cV6W2sLu7xU9K3ykTqbx9fuAwmvWErfEv1QbBBUrpCYIIp//+944idsP8FvOY19qmUCOj27tZFDh7VN4iuXQJYettsuo9161yPFZFSeQQYC4Ss2zd5g/H+D8iT4Uigw+dtapV/0CJxMNmpc6Y7KHcOwdGwjaEQwV1pNI9G/pMqa7NKNrzj73Taz5MZnWDX+OCSxiLIaZKqWwUJAZMi5a+ygmoZMlw6XcOvqZq5yFZsme7OYtpceZ3WsPCsffMgJQ5xClcZMRmXn4WPtVmg1/qyMGvpkDWmw5G246xB7orohaLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=F3lsNBpry53bcwrVkWMVC3gpxYs32Kn+Rwp+tHKHPoQ=;
 b=FsV6pLfgGYtI7LLW6d5NEgnIDEz8qoDTcJGAbbgrRsAs9AxUcrVNZlglryraQe/FDiWPxLR45IzbygafQBG4NUTbTtEmizPIBGP0DcbNba89DAvohOO/G83ccI07aPbqnToLfsjxfusraXckRSwDjMsG1B1AzRWiPE+IhEy+/xabBvthV/keIZOdxAZ0LfzEQ3X6TqlolcucwFa6EVMzlTAlncRdVSDvWQ5qqcIa+YWAmk/jX41BoVghqBFWokNqp46DKuKukwsU9WlgLqzVnmgyChUMoW9SeMuhcNFVygYrYWTcdYwpaOpF4iF45Yu3s+Fi/7kF0VaAoN7E5LpM/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F3lsNBpry53bcwrVkWMVC3gpxYs32Kn+Rwp+tHKHPoQ=;
 b=Bp/dbI8h+G+QErHf9PspLfgr3ZQUsAIR4StpBRoeLRRiaeLV8rFEvrSidiZBgMGhjX4dQ79nXONDCuFP1NS0k470p/VqwMdaPuqTExOoi4blmFF1W0cW6qlS8nQRPI3n6qaibYGkKpXthc1WswqL+BpRigmE0S8ZBd2JQ7pP3YM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by VI2PR04MB10931.eurprd04.prod.outlook.com (2603:10a6:800:271::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.13; Thu, 6 Feb
 2025 11:07:23 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%3]) with mapi id 15.20.8398.021; Thu, 6 Feb 2025
 11:07:23 +0000
Message-ID: <110a35c5-9450-47fb-9d5f-0ba73e290bf5@cherry.de>
Date: Thu, 6 Feb 2025 12:07:21 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] arm64: dts: rockchip: add overlay tests for Rock
 5B PCIe overlays
To: Dragan Simic <dsimic@manjaro.org>
Cc: Quentin Schulz <foss+kernel@0leil.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@edgeble.ai>, Niklas Cassel <cassel@kernel.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250131-pre-ict-jaguar-v4-0-c971e2852e8d@cherry.de>
 <20250131-pre-ict-jaguar-v4-3-c971e2852e8d@cherry.de>
 <77b5d0efa6e56bb391575aeeb4d1be80@manjaro.org>
 <3de1cc52-5579-41b1-a333-0c4e81f96fbd@cherry.de>
 <cb8f370474df88d1194d9ee92d3ca4e0@manjaro.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <cb8f370474df88d1194d9ee92d3ca4e0@manjaro.org>
X-ClientProxiedBy: FR0P281CA0086.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1e::22) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|VI2PR04MB10931:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b005711-d6c1-483b-4739-08dd469e6e3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YllKZ0xkSHV6dVh5ZE1DK3ZHa1plY1ExMFQ4NU5nNXk2WkVRQmdEK0JQSE1n?=
 =?utf-8?B?TmovYkFsbDREOFNTRlIvN3VjWGRvbVM4dTc0QS8rSENBT25kK3ZzOVlJY0tE?=
 =?utf-8?B?SllaTDlBKzY2dUJwWW9CQ3R0WHdmakFMTlVnSXN1NWN6a2xmQS9EODhJOWZi?=
 =?utf-8?B?aFN4ZFF4VW5CMVBLYTlDSEF3WkFzbEgvbm1VTGN6MmRyV1hIdEdWT3MyQUha?=
 =?utf-8?B?Z1kvMm16aUtpOFNhcjBSbFA3M3UzV0YxRVM3TFVJRzJBcFcveDNxYU1qbzJB?=
 =?utf-8?B?aHU0dU9PeGtCUklvREhoQXhUR1lDMHNvVDBwQVB4TmIwQUZwU0dOL1F3TG9n?=
 =?utf-8?B?b0I2Z2FHT3hhejBMbHZiK1NHbkE2TUVBbXdpVUc4RCtpbzl4UnV3aktDRkcy?=
 =?utf-8?B?aUNVQUtleGhKY2tuMDZGOGNWZjBuSkVJWjdQMldwdzRrZVYrTC8rbmdjRFA0?=
 =?utf-8?B?TEZTb1pqOUJLbVU3dGRzTlVxNE03aEZnZ3RLcno5TWN6Njc4Vlc5cDJ3bWxm?=
 =?utf-8?B?ZW1QNVdzZC80TWNrV0hlODFGOFg1UGNmWkhFOHpVcnA1WHYwbE04MnRRQzcr?=
 =?utf-8?B?NWFDWjRSMWNYS28zM3ZZb0w5M00ydS9UczZQZU4wVFVSckVERlRuUGlCc0Ru?=
 =?utf-8?B?L3lMbnZ2bGdQN0xRRExoUWhnVlNTdGVCSmRHUWdta095SmxTZFhWTWlyeGNT?=
 =?utf-8?B?MGdSTGxscmgxcXBnQjkvckptWXhObCtUY1EreS9RaWNnYjlKZGZ1WWFLSWhH?=
 =?utf-8?B?Q0ZFKzg2SXh0cXdpNHhDWkJEVmpWWDdRUnU5MmNJa2tGaXVnOGZOZ1ZLSTMx?=
 =?utf-8?B?bTlkWmNORUlKdFlvN2d3R3p0czArRGxBQTdBMU5FcjNGbWpmZ0VZWmdyVm83?=
 =?utf-8?B?UmhCN2NOMk12OVlDRUsydFRDM1VZaVVNYldMOHY3RjVST2g0dVFPNWQyV0lv?=
 =?utf-8?B?eUVhblRmeHBOL3I2anFyclVzczBQcG41czl2aTZsSTRyaDFRMlRMOGovWFpo?=
 =?utf-8?B?bEpWVTgvYmZJSzJDTWNHWGRCMStOeDg1RUdDWHpjYWpkTFhXZzRDQXRmZTBJ?=
 =?utf-8?B?YXZlbUpHdFRHbzM5cFVYZnlPVFZDL2FaMDlrMlhNMFFBTVpqRnNqUElZTk5n?=
 =?utf-8?B?NS9tUm92bmI0aHRQalVaOE9XME1SR2t4NmxRcnorR01ESEJZT1Y0dDhJakFz?=
 =?utf-8?B?cUs5NjhXRnNvbDd6aGhCMTNrMXZJSnNvT25EYWhBRVoydGFvdytySVo5U05m?=
 =?utf-8?B?NDRBbFdtMzdOZWMxUUs2Y3M3U0puNHRxTjlsZVNvWUcwdWxmLzl4ZXIrdVQ3?=
 =?utf-8?B?MEEvNmlTZ01TWWVNTlc5NDBpenZxVzRFYUtqc1JXRkhVQW1WWUNIU29aMTFt?=
 =?utf-8?B?R2F6NkVTNXM2Q0NXZysyRkJSdkdFdFQ4cXhYRjhUZTNDL2J0NUc4ZFQxOUZv?=
 =?utf-8?B?Q0Z6ZWJJTlN5ekZPMmZHaU1PUURKZzdXSVhSSHhJUU50Z3J1OGFVcndwcCt2?=
 =?utf-8?B?WFNGdUxmUVpnTmZlc05aYlk2YXNyRURLY0U5MXQzY213cndOWDVNRXAvSG5O?=
 =?utf-8?B?QVZwVHdpMEo5U1JGTXluLzExREJXOHZMc1phSEMyWG1hUGdRdnBpTDZFbktr?=
 =?utf-8?B?aWg5dHVOV2NuVldDb1BzZFNUZ0d1Z1RmdVFQUWVmZTU1dnc2VzQ2YTdva3hJ?=
 =?utf-8?B?dW9nSFJYSm91Q3hkU0l1K0dENjFycnh3dkZqMzkyTFMvMmJyNGJHWXpFSUJV?=
 =?utf-8?B?UDJ0bGxqdlByUkpodGducTgxMmdiN0U0ZllwdVdGVkRzM0VIOUd5S1hkOFRV?=
 =?utf-8?B?eEp2Y1hMd3RWWjlNSnVzbjJKL295UXMrV2ZrenBNc25ibjk4NWtTRlBxKy9S?=
 =?utf-8?Q?gVXnkQGfTHqHm?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024)(10070799003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T094aTlZRXZQaUo4OWN3czNDMTFmSlhqZGYxRjNWMXRUUmV5OGNSdmkxSkZr?=
 =?utf-8?B?d1p4UFJ6TkxCVGxmOTdsem5tNG42dUMyZ0d1ZnZZS3c4VUY0cjAxdDVtQkFK?=
 =?utf-8?B?QzdjaXBPTkZSaDFMNHg1bXJqWFhMK2c1QlozUW8yZlFxdnRvMVJONkZydGIy?=
 =?utf-8?B?RWR3NWU0OURPYU4wQ200ZTF6TUo4Y0UwYzlud2xNTmlwaEFqb2dUSTc1Nktn?=
 =?utf-8?B?QS81R1BKOUh2VGc0a2FOekJ3NnNpTDJrb0FVbTlhV2lTRHV4UVE1V3BvWWxR?=
 =?utf-8?B?R1B0NWswVXY5QmxiZ2l5VXJ1MlBTdXZwd0lOYXg2d3dhOE9mWUZDWUlKSFNQ?=
 =?utf-8?B?SmNtOVFVMml2dDhjQmFNaVBhdGtHNVI0TmE4cmU1eVprQ1NEVUxKMmU1akNj?=
 =?utf-8?B?T0N6V2h2NFBEWkdpeEViN1RIYS9lM0MxOHFuOFdNOVl1WkpPTDJBbloyaFRy?=
 =?utf-8?B?TGFETEZqbElXSzVIbHZJdDdYTTZ4QUFwdmNDUE84TTZFeEFDVm1pdHdMd0Rs?=
 =?utf-8?B?TldOVTVKbnlkcjB4TkdsVDBxSU1ZMmNXc3U3QThZSWFDOW9DWm5UZmlKVEJ6?=
 =?utf-8?B?aXhTenVyNFp0MWNIVFdZVHRsMERReURxdm1BcEtZQnoveGtZaGI0UnhOOE4x?=
 =?utf-8?B?OG82dkpQOHcrbUg4eGxjcnJNamExaDIzU2ZrNWd0QzBzV2lRQ3JNdFJHNlMx?=
 =?utf-8?B?UGZjdG40VFFIcjFOc0M1UzFwdTVUbTdTMTBjZFlpS2QwWDVBMXcxZytCaGM5?=
 =?utf-8?B?ck1kbWp5aVZ1ZW1IWmM3NXlrUnc2TElZMUs3c2wyVkpPV0RvRFM2bEk0Qklr?=
 =?utf-8?B?VlUrS3hEU01FU2JsM3RnRlJRUVJqQnd4L042L2diZlNLMzVHVCtFWHRiQ0NR?=
 =?utf-8?B?M0J5QmUyTjhsTTN0SFBzQzRMZ2FtY2JBaExMQlowS2xpM1RQMkRnYmdSR25s?=
 =?utf-8?B?c1pNMTJ2elJZc2NHOWVVNTBoMG95T2J0UXMvVldZYVNZa21CSmZ3Q3oxVU5E?=
 =?utf-8?B?VG5wWnRjeGM5cjkvdVI0VkN4S1VFMFREMVJ0N1E3enV1aFpyYnMxTU9HNEw1?=
 =?utf-8?B?Uk5KYmFJak9wQjIzd1p2TUFNbUNkNXMyN01DYVZQWTFGYk5KaEdob2FnVmRG?=
 =?utf-8?B?aE1jaTZwWUxJekprK2xOTmFEM1dxdFk3UnhKL0lqSTNuRkl6SUVqQi9GUnAv?=
 =?utf-8?B?eklSbERIRDRRaUJNakNod095YTZlUDNHREpOSVY0T3R6TGVvVDE1cXV3TFZ2?=
 =?utf-8?B?MncxZ2lFZmRlWFI3M1Vod05OSjkrcFFIaVFrcmJsUkZ6S3pJRDA1YWltbUor?=
 =?utf-8?B?dGZLdnpSNVlHWmxpSmJPQmNDMGhYQUFmRUoyQy9vZFZzMThDcHpTcGdHWndx?=
 =?utf-8?B?dFEwVFRvbUJ4Z0xoNkVhK1NYckVFalZ0RHo5UmQ4OHBIdDh2NmE1b1BmeC82?=
 =?utf-8?B?dmprZVkzRG16TUZDWUZuU2NJTUJZUG1ISzk3MCt6b3RoTXgyelNRTzRLUEF1?=
 =?utf-8?B?bi9rUFVQUi9QWkU3VEJCQU5PQk5lakZEZlprVjB5WWg3NThyb3Vwd2V1ZXc5?=
 =?utf-8?B?VnZ2UkhEMk0wOE8wbkhmOGgwOStaZG45V2VNak5sL2I5TVdDYTZSbVVjRmU5?=
 =?utf-8?B?aHU5U2xtV0YxS0loZjJsM1o5NWJGeE5rN1FKTndMWHc0M2tzWnI3VmVQZWR6?=
 =?utf-8?B?UWlVZS9aa3NoaUVUa1B3ZVVZODlwMVk0dWR5dTZMbnU5SWJxakdXL0tKSUtz?=
 =?utf-8?B?YkhjZWNMV0gyTk9qQy9zNitiVmU2QXJCdXBtZ05pa1JYTWxYazNuc1N6SE5H?=
 =?utf-8?B?WFkzVFN2aVFTaHYyeUVTODdaeUc4akw4bFc5RkI4Nysybk5EQTFFWDZPT3o2?=
 =?utf-8?B?U1gyUUphN3dhRk1lVnNaM3lmU3FkY3NkVXJocUtVVkF1ZFd0V2VmLzZITlN5?=
 =?utf-8?B?b25aVjJWaTZYSjUwZC91ZzRROUVkL243YlFFdlFLaTZac1cwRkZua1NPeFU0?=
 =?utf-8?B?dkxJY2NKY2lJZnA1alZEWGROSjJ3NVl4amFUQStWOFpDenkwNG5mLzJ0VnJi?=
 =?utf-8?B?VmJOME02UEdzWmplM0tPRStSVm03d01VL2xBRFFOWVY3bm1VdGNDbWJjT3Bh?=
 =?utf-8?B?U3JnbXE5ZWpGT3ROc3JJWHM3TEkzY1V4U0xibElYRVhTZzhBelpyQXlyNFow?=
 =?utf-8?Q?r1puwrTsl5tNhHew3yjeL9M=3D?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b005711-d6c1-483b-4739-08dd469e6e3d
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 11:07:23.0905
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tzhY4tPWJnPUseSwiR2xmAO8xBwTiQcIMXvBlQf74EO+9CZTJoZnOy9kWFO7YLyiEXjv+bRIt1NalUOrOeTYN9yVnFEtr4rVeLofMexkLEU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI2PR04MB10931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250206_030733_511080_3CF213D0 
X-CRM114-Status: GOOD (  29.63  )
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

SGkgRHJhZ2FuLAoKT24gMi80LzI1IDI6MzUgUE0sIERyYWdhbiBTaW1pYyB3cm90ZToKPiBIZWxs
byBRdWVudGluLAo+IAo+IE9uIDIwMjUtMDItMDQgMTM6MjAsIFF1ZW50aW4gU2NodWx6IHdyb3Rl
Ogo+PiBPbiAyLzQvMjUgMTI6MjIgUE0sIERyYWdhbiBTaW1pYyB3cm90ZToKPj4+ID4gT24gMjAy
NS0wMS0zMSAxMTo0MCwgUXVlbnRpbiBTY2h1bHogd3JvdGU6CgpOb3QgZGlzY3Vzc2luZyBDT05G
SUdfT0ZfQUxMX0RUQlMgcmVsZXZhbmN5IHdydCBoaWRpbmcgb3ZlcmxheSB0ZXN0cyAKYmVoaW5k
LCB1bnJlbGF0ZWQgdG8gdGhpcyBzZXJpZXMgSSBiZWxpZXZlIDopCgpbLi4uXQoKPj4+IFdpdGgg
dGhlIGFib3ZlLXByb3Bvc2VkIGNoYW5nZXMgaW4gcGxhY2UsIGFuZCB3aXRoIENPTkZJR19PRl9B
TExfRFRCUwo+Pj4gc2VsZWN0ZWQsIHRoZSByZWxldmFudCBwYXJ0IG9mIHRoZSAibWFrZSBkdGJz
IiBvdXRwdXQgbG9va3MgbGlrZSB0aGlzOgo+Pj4KPj4+IMKgwqAgRFRDwqDCoMKgwqAgYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdGIKPj4+IMKgwqAgRFRDwqDC
oMKgwqAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi1wY2llLWVw
LmR0Ym8KPj4+IMKgwqAgRFRDwqDCoMKgwqAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtcm9jay01Yi1wY2llLXNybnMuZHRibwo+Pj4gwqDCoCBPVkzCoMKgwqDCoCBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLXBjaWUtZXAuZHRiCj4+PiDCoMKg
IE9WTMKgwqDCoMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIt
cGNpZS1zcm5zLmR0Ygo+Pj4KPj4+IE5vIG1vcmUgInBob255IHRhcmdldHMiIGluIHRoZSBwcm9k
dWNlZCBvdXRwdXQuIDopCj4+Cj4+IEZ1bm5pbHkgZW5vdWdoLCBJIHdvdWxkIHByZWZlciB0byBz
ZWUgT1ZMIGZvciBvdmVybGF5cyByYXRoZXIgdGhhbgo+PiBEVEMsIGJ1dCBJIGd1ZXNzIGl0J3Mg
anVzdCBvbmUgbW9yZSBvY2N1cnJlbmNlIG9mIGRldmVsb3BlcnMKPj4gZGlzYWdyZWVpbmcgb24g
aG93IHRvIG5hbWUgdGhpbmdzIDopCj4gCj4gSSBhY3R1YWxseSBhZ3JlZSB3aXRoIHRoYXQsIGp1
c3QgbGlrZSBJIHByZWZlciB0byBzZWUgLmR0Ym8gZmlsZXMKPiBhcyBhZGRpdGlvbnMgdG8gZHRi
LSQoQ09ORklHX0FSQ0hfWFlaKS7CoCBJdCdzIGFsbCBhYm91dCB0aGUgb3ZlcmxheXMsCj4gc28g
dGhleSBzaG91bGQgYmUgYm90aCBzcGVjaWZpZWQgYW5kIGVjaG9lZCBiYWNrLgo+IAo+IE1vcmVv
dmVyLCB3ZSBjdXJyZW50bHkgYWxzbyBoYXZlIGFkZGl0aW9uYWwgLmR0YiBmaWxlcyB3aXRoIGFw
cGxpZWQKPiBvdmVybGF5cyBsZWZ0IGFmdGVyIHRoZSBidWlsZCBhbmQgaW5zdGFsbGVkIGFmdGVy
d2FyZHMsIHdoaWNoIGRvZXNuJ3QKPiBtYWtlIG11Y2ggc2Vuc2UgdG8gbWUuwqAgVG8gbWUsIHRo
b3NlIGFkZGl0aW9uYWwgLmR0YiBmaWxlcyBzaG91bGQgYmUKPiBkZWxldGVkIGFzIGJ1aWxkIGFy
dGVmYWN0cyBhbmQgbm90IGluc3RhbGxlZC4KPiAKCkkgKip0aGluayoqIGl0IGNvdWxkIGJlIHVz
ZWZ1bCBmb3Igc3lzdGVtcyB3aXRob3V0IG92ZXJsYXkgc3VwcG9ydC4gVGhlbiAKeW91IGhhdmUg
YSBkdGIgd2hpY2ggaXMgdGhlIHJlc3VsdCBvZiBhbiBvdmVybGF5IGFwcGxpZWQgb24gdG9wIG9m
IHRoZSAKYmFzZSBkdGIgYW5kIHlvdSBjYW4gcmVwbGFjZSB5b3VyIHByZXZpb3VzIGR0YiB3aXRo
IHRoYXQgb25lLCBhbmQgdm9pbMOgLgoKV2hhdCBJIGRvbid0IGxpa2UgaXMgdGhhdCBpdCdzIGRp
ZmZpY3VsdCB0byBkaWZmZXJlbnRpYXRlIHRoZW0gZnJvbSB0aGUgCiJub3JtYWwiIGJhc2UgRFRC
IG9yIGV2ZW4gZnJvbSB0aGUgRFRCTyAoc2ltcGxlIGJhc2UgRFRCICsgb3ZlcmxheSB0ZXN0IApp
cyB1c3VhbGx5IG5hbWVkIGFmdGVyIHRoZSBvdmVybGF5LCBhbmQgaW4gdGhlIGNhc2Ugb2YgdGhl
IFJvY2sgNUIgdGVzdDogCnJrMzU4OC1yb2NrLTViLXBjaWUtc3Jucy5kdGJvIGFuZCAKYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi1wY2llLXNybnMuZHRiKSwgZWFz
eSB0byBwaWNrIAp0aGUgd3Jvbmcgb25lLiBUaG91Z2ggdGhhdCBpcyBvbiAqKm1lKiogYXMgSSBj
b3VsZCBwaWNrIGFub3RoZXIgbmFtZSBmb3IgCnRoZSBvdmVybGF5IHRlc3QgYW5kIGUuZy4gcHJl
cGVuZCAidGVzdC1vdmxfIiB0byB0aGUgZmlsZW5hbWUgZm9yIGV4YW1wbGUuCgpbLi4uXQoKPj4g
SSB3b24ndCBiZSB0b28gZGlmZmljdWx0IHRvIGNvbnZpbmNlIGhlcmUsIGp1c3Qgd2FudCBzb21l
ICJhdXRob3JpdHkiCj4+IG9yIGEgcGllY2Ugb2YgaGlzdG9yeSBhYm91dCBDT05GSUdfT0ZfQUxM
X0RUQlMgdGhhdCB3b3VsZCBnbyB5b3VyCj4+IGRpcmVjdGlvbiwgYmVmb3JlIGRvaW5nIHRoZSBj
aGFuZ2UuIEkgYmVsaWV2ZSBhdXRvbWF0ZWQgYnVpbGQgdGVzdHMKPj4gd2l0aG91dCBuZWVkaW5n
IHRvIGVuYWJsZSBhIHN5bWJvbCwgYW5kIHRoYXQgdGFraW5nIERUQiBhbmQgRFRCTyBmcm9tCj4+
IHRoZSBidWlsZCBvdXRwdXQgYW5kIGFwcGx5IERUQk8gb24gdG9wIG9mIERUQiB3b3JrcyB3aXRo
b3V0IGhhdmluZyB0bwo+PiBnbyB0aHJvdWdoIHNvbWUgbGVuZ3RoIHRvIGdldCB0aGUgc3ltYm9s
cywgYXJlIGdvb2QgcmVhc29ucyB0byBrZWVwIGl0Cj4+IHRoZSB3YXkgaXQgaXMgaW4gdGhpcyBw
YXRjaCBzZXJpZXMuCj4gCj4gSSdkIGxpa2UgdGhlIG1vc3QgdG8gcGVyZm9ybSB0aGUgYWJvdmUt
cHJvcG9zZWQgImRpdm9yY2luZyIgb2YgdGhlIERUCj4gb3ZlcmxheSB0ZXN0cyBmcm9tIENPTkZJ
R19PRl9BTExfRFRCUywgc28gd2UgZG9uJ3QgaGF2ZSB0byBlbmFibGUgYW55Cj4gYWRkaXRpb25h
bCBvcHRpb25zIHRvIGhhdmUgdGhlIG92ZXJsYXkgdGVzdHMgcnVuIGF1dG9tYXRpY2FsbHksIGJ1
dAo+IHRvIGtlZXAgLmR0Ym8gZmlsZW5hbWVzIGluIGR0Yi0kKENPTkZJR19BUkNIX1hZWikuwqAg
SSB0aGluayB0aGF0IHdvdWxkCj4gYnJpbmcgdGhlIGJlc3Qgb2YgYm90aCB3b3JsZHMsIHNvIHRv
IHNwZWFrLgo+IAoKU28sIGp1c3QgdG8gcmVjYXA6CgpkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJ
UCkgKz0gcmszNTY4LXdvbGZ2aXNpb24tcGY1LmR0YgpkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJ
UCkgKz0gcmszNTY4LXdvbGZ2aXNpb24tcGY1LWRpc3BsYXktdnouZHRibwpkdGItJChDT05GSUdf
QVJDSF9ST0NLQ0hJUCkgKz0gcmszNTY4LXdvbGZ2aXNpb24tcGY1LWlvLWV4cGFuZGVyLmR0Ym8K
CnN0YXlzIGFuZCBJIGFkZDoKCmR0Yi0kKENPTkZJR19BUkNIX1JPQ0tDSElQKSArPSByazM1Njgt
d29sZnZpc2lvbi1wZjUtdnotMi11aGQuZHRiCnJrMzU2OC13b2xmdmlzaW9uLXBmNS12ei0yLXVo
ZC1kdGJzIDo9IHJrMzU2OC13b2xmdmlzaW9uLXBmNS5kdGIgXAoJcmszNTY4LXdvbGZ2aXNpb24t
cGY1LWRpc3BsYXktdnouZHRibyBcCglyazM1Njgtd29sZnZpc2lvbi1wZjUtaW8tZXhwYW5kZXIu
ZHRibwoKYXQgdGhlIGJvdHRvbSBvZiB0aGUgTWFrZWZpbGUuIEkgc3BlY2lmaWNhbGx5IGRvIE5P
VCB3YW50IHRvIG1ha2UgdGhpcyAKZGVwZW5kIG9uIENPTkZJR19PRl9BTExfRFRCUyAoYnkgdXNp
bmcgZHRiLSBsaWtlIGluIHRpLyksIHNvIHRoYXQgdGhlIApiYXNlIERUQiB3aWxsIGFsd2F5cyBo
YXZlIHRoZSBzeW1ib2xzIGluLCByZWdhcmRsZXNzIG9mIENPTkZJR19PRl9BTExfRFRCUy4KCkkg
dGhpbmsgdGhlIHJlZHVuZGFuY3kgaXMgdW5uZWNlc3NhcnkgYnV0IEkgZ3Vlc3MgaXQncyB3b3J0
aCBnZXR0aW5nIAphd2F5IGZyb20gaW1wbGljaXQgcnVsZXMuCgpJIGNhbiBjb21wcm9taXNlIG9u
IHRoYXQgOikKCkBIZWlrbyBkb2VzIHRoaXMgd29yayBmb3IgeW91PwoKQ2hlZXJzLApRdWVudGlu
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
