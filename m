Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D153C369A6
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Apr 2025 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YX2zupDKhQZtyuwlchdk16R1WeFtj2cohKhZX+DdAyE=; b=rWSsNYQiVFblzIdLN++pUBaxPF
	YsMCmdhWJTDEPE+7hVFCKcs8kkJwoRmIXfV/FXCViazi4ul0owcP3aFpa2y/XBfbTStKHszdOIq1x
	Jw+GHsAUSqdh8o8TkGuYxsLv0SldfsuKXWfjshgvkUmnXv71J3yWM2gp6dTLIYQ0Nc9yZPc7pPzox
	mOmPkIBudXW74fXfcop94QdSpTZ7gvEpvtr2Cg5KE84eEiYYwKQRy7MF6Sb89ArjG6paJb587ZKeV
	8QFetlHXTPxbE1peOXJ6T4Z50U3iUkPxqMgSSPvtZdraAGHkPTCw7tg4fXfOz3A2987u6leBNuUev
	8exWhNhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2ptm-0000000ACny-3TRf;
	Thu, 10 Apr 2025 11:16:46 +0000
Received: from mail-vi1eur02on20631.outbound.protection.outlook.com ([2a01:111:f403:2607::631] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2oLR-00000009y65-2B55;
	Thu, 10 Apr 2025 09:37:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WXByWCuwLoGlfVPpiDqP8u+pHiD9zZQrtEO18aifla5JQcj2fy9dlvOipFJG2Dkb4HqvCvGdGVDFrLkq+OlODuIOfU/FW2LEnuM8T36PYeq2D1B/uGJEyn1SD2kTAQOnB+OtgzDpT89kWqPORjkDmF0HewkdXAUKNWZm+bPIFq3v9wVybA9+beLiOsBgJtG24jgGmEBE2eJKUWTcGUEEDhzwls8EzagxuixOvt3UCP+KmwN4PPQ0LV0F1BMeTDhEe+PS/7elXlaNlg55W0gagjQaUnBrADGPABlBVLela00QTDgTntlwr0197FzLvUEpl/dDR+I85hr/GILkXweaOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gCsAtZaY7x+heiqr7TPgurGj4fXQsDSnlbYYIQ4pOlw=;
 b=R9j2dNejbVPtwhg8BqvOYAWTXeuOQDpqAFG00Xkp+PDmnEXjpotp5Yx2TPpHNnS0OIObksLu/xN1xkr9Z/khfi4CDs36QUSK9yAMqSVQKIqtFSrgLIfpu4zQO67hw3TY9Iqhgz/1OXA5s87r8/MM3bO8YfvTyDEUbWifCTGx0bL8qPGfyyFK8slh0Q8egNtfZLhBbFHicQargsZris3nXWEQ12XZaiyRUHb7COiTpax61EH1dOvGkd3/5GH0aALtDQ1NZhmYaukqzuAMDy6r8saAKqECgCorb0Kh1EO1GYStpn6jRf8LFh85pXiGmamwkfxPGSJF/mtOXu+iz2trEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gCsAtZaY7x+heiqr7TPgurGj4fXQsDSnlbYYIQ4pOlw=;
 b=YY9dOodRmG8L8yXHGTFAJCt6ebRIP1uMjPCy5+rKebOx0FLzPXZ+SPmfrVOOpiWW66r3BOSfBg/84SWILaOc08o3C5M7+hiKOgE0Xk3nLlEQvg5PLS524o/E2OdN5HPyUqWwCVzhBedcvMqgpMYPwoCTHN7dfEDBWUJr0vSLVYY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AS4PR04MB9575.eurprd04.prod.outlook.com (2603:10a6:20b:4fd::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.31; Thu, 10 Apr
 2025 09:37:03 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8606.033; Thu, 10 Apr 2025
 09:37:03 +0000
Message-ID: <4784ca8c-b6b1-4337-b2af-e8992150ec7c@cherry.de>
Date: Thu, 10 Apr 2025 11:37:02 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: usb: cypress,hx3: Add support for all
 variants
To: Conor Dooley <conor@kernel.org>
Cc: =?UTF-8?Q?=C5=81ukasz_Czechowski?= <lukasz.czechowski@thaumatec.com>,
 Matthias Kaehlcke <mka@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Benjamin Bara <benjamin.bara@skidata.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Klaus Goger <klaus.goger@theobroma-systems.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20250326-onboard_usb_dev-v1-0-a4b0a5d1b32c@thaumatec.com>
 <20250326-onboard_usb_dev-v1-2-a4b0a5d1b32c@thaumatec.com>
 <20250326-fanatic-onion-5f6bf8ec97e3@spud>
 <CABd623tEGh=qtpF0h7PkRBBrR7V9EaxUv9HregqbPcLU_2Exbg@mail.gmail.com>
 <20250409-commend-brewing-7c541aec26a9@spud>
 <cc49276b-f64f-42a8-b4b4-61bde17b61e3@cherry.de>
 <20250409-glorified-crouch-837870b4d443@spud>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20250409-glorified-crouch-837870b4d443@spud>
X-ClientProxiedBy: FR4P281CA0091.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:cb::20) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AS4PR04MB9575:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b74f858-38d3-4fc9-acfe-08dd7813401a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016|7053199007|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MmRaZ0JaUEpqRWtsY1YyOFZ5MUNFNnZNQVJiTjVrNm4yOFE4RHg2QUdxOE5j?=
 =?utf-8?B?TUxIR3NlemRMK3U0d0NDbkJGbGRDM0xHV2hXNHNJdUZtWGJhRy9PcXNNdUhC?=
 =?utf-8?B?YitEMkY4cm5PRlRPSUJORytYS0F5Y1VjMXZMRTNmanNXazh0QjdITHc1RDY1?=
 =?utf-8?B?aUVkOFUzM3V4Tmx1ZXdCNTVadHAzNDdpTGlpMFhla2RQYUNZeHdTMjVZMEdo?=
 =?utf-8?B?VHZPL3o1NVlIR3NuSUZNak9tTEM2T3NybFRQWWRxdldLUHZGY25RTENZR1Fs?=
 =?utf-8?B?R0pETitPSlRoK0RyK0hReXQrN04vYTQrWUpOWSs4bEhQeXNraElsOTRqd2Zh?=
 =?utf-8?B?cTE5bFR1ZS9wYlp0SjFoR1RkNnZtbDRsdzNPL29hazRqT2tzRUhIdXIzRmpr?=
 =?utf-8?B?eUZwRWtjcXRWekFEWXF1N0JHNElySWZWQlZiOGxnOWpseURiaW1VUWMyYXMv?=
 =?utf-8?B?RnBNbjg2bkF3cHBBZlEyTUtWQkNiRmxwdlZTbHBWbTZMZmQzeHNVQ3dma1ZP?=
 =?utf-8?B?dTV4QVJKdVE2SmM4U1Fxbm1UWEo4NVZ4aExOSDN0MmlBUzdpOFpEY2ZLS2tx?=
 =?utf-8?B?MUk5UlloUndIYklNNndPemMzYnFiR1NGTk9UVFMyeFd4aXRycldHUVdtRXdH?=
 =?utf-8?B?VlFnS213ZTdwaWlkb3FTU2lPNjBMOC8yZ3pGZTVhSnl5ZTZGa0RHY0RaRHI3?=
 =?utf-8?B?L09KVWlwRXRISENNRnFNOE9NVjdRNHlQYkxReEQvWHVnQ01Ydy9lUU1lUTly?=
 =?utf-8?B?ZU91UmlCTkNZdEdsMStYU3FWd3Q5bjFWZFBkbWhqUFZVUHI0VnViaDhsYXZS?=
 =?utf-8?B?RzBza3ZsZy8wZWNRVWFSaHBkZkpzM2RhY0RjSEhHNlBEaEZ1WWU4M3Vwa3BL?=
 =?utf-8?B?UmtFdjV5UGxraFFLbWVicUtsbWhmLzhDd0M2QVl6ODVYQzVMa0NrUm5QTG82?=
 =?utf-8?B?eWtDRUhneTNIQnR3UmZ2RFNmUzhkeFlaektZeS9udksycmhYZ01INlUyV0gx?=
 =?utf-8?B?UW5vNzM1R1VWd0trVTlkUzB3amNkRE1yUStjRVhSZXFkNnJsL1M5R0U1ZkNl?=
 =?utf-8?B?SWJqbFFzWWxzTFBhWWlxRXVzU1l5WTJGN2RNeW9FZVFZWWFSdjhlK3l6ZTlt?=
 =?utf-8?B?MnV6Y3FJYU1qZEpBaUNFcGJhaHI3Vnk5MENyc3JVMFRKSjd3Rzk0YU1KY3d3?=
 =?utf-8?B?WUs4dU53NnBIdG56elR6N1owUk1Qdm01d255WXlvTFlIMUdiTG1KMzljU0la?=
 =?utf-8?B?bmJNTXc4MGYwaG1DVlVQcWhKc1F0UjRTWmo0K2dkb2VRYlVUY2NkUU9DT2hq?=
 =?utf-8?B?bU1POWVZRUU1TkNhdVg3Z0dHMnpISE1qcGFrZkdYN3p5c1dxNWdMY2FNbWFm?=
 =?utf-8?B?U1R5ME44bGxDa041a1VDUTNmNFpTcjNzRzFod21KUVQ4Y2dZVWZuMTVVbTNZ?=
 =?utf-8?B?cUlKOEgvVFh4ZzN0MmF3SUtvQXhuTTZJdGNvdWZlbGNqZExMMFZFQ1BOeGNr?=
 =?utf-8?B?a3FUTjRtbUh2ZkJueGFpd0ovVUw5WEdtRENFTllYeHZhSkhNRVZZTE9ObHpL?=
 =?utf-8?B?T0FFTjhaN3QxQUN3YUtqUDcrTHR1Vk5XS3JGeVNYam8wb0JleHg2RHVieDhk?=
 =?utf-8?B?NzVFb1BzeFZheXpGaGtVMVdZVnNqb3JxOXlYOE8wUVRwS2VXTk9udWorZElh?=
 =?utf-8?B?M3BMSnRKTllPeWlwNUJZTUM3NnFlQzcybng1a1RLNDhITXpBM0RrQkNtTkpC?=
 =?utf-8?B?UEM3MUh5dzlGZ3FXai9jSHFUR09ObktNUUVzeE1NQnRpaml3TFRWOXppWFc2?=
 =?utf-8?Q?Tv45w+ahKfHvA6XqWmL692sIbLBhSyLW3yL2U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016)(7053199007)(13003099007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZFhtR0JuY2NNSjJJQnNxeGpsL0tac05oSFZDcTVFb3JUZGtGZU1VU094Zmxn?=
 =?utf-8?B?a25BKytSRGU3bm9kR3ZmM0FCeHVqNWExYVd0bWMzbWlHNjdSTnd0THZJdHBD?=
 =?utf-8?B?cURTY2tlcTFxbWx5SEtBbGp0MGgzdnJaZzhYSE5jRzAzMldFaHBpMTJ1QmVI?=
 =?utf-8?B?ZkZyaW4xUXBYakZqTExhOHVTbXVnUUJFY01kK0VrRmljeVVaTTd2MEg4dmJK?=
 =?utf-8?B?SzVxT215NWdCWTNuamRwMUpXTGdpdzE0RDgzc09ITHdzN0VmT29iZExIYkw1?=
 =?utf-8?B?UFgyRERSVXYwaXA5QUtRakhRNHVqZys5b1lYTHFuRzNzUjZja1lHeVFMd3Aw?=
 =?utf-8?B?TFBvRUYzeWVzY1pXM21HNkw4MW1UY0Q3RGREdk5zQUdPYWpiU2ZZSHUwcVpr?=
 =?utf-8?B?NEJSNjA3NlFtUGtSb0dsY1ZiajYzRU5WQXFHbGR1SHpCYU1pcTUvUDNWUjgr?=
 =?utf-8?B?REQrZ3B2bVBEUmZtOURrUTZYZ2R0aEZnUGI3UldPQ0ZXUEJFZkYrcUxOYnlS?=
 =?utf-8?B?bnpqb1VKeUZPMHZ2bzBEUDFlYnpNdWlROVo4NEJxZGJWU0QyaWN3NHNmNnRR?=
 =?utf-8?B?NFhaaFJGNGkyQUU4VFJhMThOOW11aER6V0JYVmlUS0dYdTNmS3c0Z3Zod21L?=
 =?utf-8?B?dEdTT3VjODVSdkFYSFpEQkxHZlppTzJKVURDTnBzWS9uR0hBYkxSVFYvejZM?=
 =?utf-8?B?WDdLRzVyMUM3YlJDSUFQNC9yS2VrdHpvZ3ovRUl4SjFZaHlSajRyaDFqR2I0?=
 =?utf-8?B?S0NnbFczY3NrWEJ5eHhTTHdlUDlBTCtvUC9iSkFkdHY0YUkxQmtDcVVFcndW?=
 =?utf-8?B?dE5kdHFIc0dqMEFXN3dGRHdiblUzYVh6MVFpSkhLVnRVeWViT2lTNWNCYmxG?=
 =?utf-8?B?cjNzeWFIcWtlSW1VbDBDSXdha3pqeXlMNEtaTDhYaEVCNnBXWG5UY081MlE3?=
 =?utf-8?B?T05JLzFTakc2dUI5bmh2VUhXd2s5S21Ra3RXbk1JWEdCZSsveW9tS3l4VTda?=
 =?utf-8?B?dE5WT3JCK3k4UGk3eCtQbEFQUlJndWdJTGRsRVh6Y293ajZyTWZVb1gramVD?=
 =?utf-8?B?NCs2TkY5eUloektMbTJGTGhPWjFOQVN4VG9BTTY4allDWXRQYm0yeVRmd0Yy?=
 =?utf-8?B?QWhDWkZjeUh4RWtZY2owN2tWbDNCbTBSYXJLaTNCRGMzMjU5SlExM211enZr?=
 =?utf-8?B?TFY5eEFqUVBSSjEvZzdoNWVERkhMdXVmQzkycUZHLzB3andKeTZPZ2kvc0ZJ?=
 =?utf-8?B?aExyTElOZ2pUa085V1ZsQlF0UzI0SDBHS0M5NTl3UlVuZFpwbjhJVThTSk5F?=
 =?utf-8?B?VUR3djhnaWNEczZiR0dGRFV6VU90WkFCeFJ0d0VJTUhRcTNiSmhrRVFNTHBV?=
 =?utf-8?B?THhxV2c2bDNlU2ZqQWZYN1pyOC91QU5nN0lYMkgzQ0RBYm1WWEZBUE0wbWtV?=
 =?utf-8?B?ODZ2MHlBeWJVUU5VM09lbVBjaWJQd3djSVVSUzZ0WWx1eFJUNlBIaWpENENQ?=
 =?utf-8?B?T2tRUExPeGlNdU9BZ1hnOFRGNzZBdUludW5iTG8wc1A3Y3FWQTNxSXU4cU1w?=
 =?utf-8?B?ODVuZXZrbUwzUEZydTlsanV2SFpnMjVUS0paK29UQjVBRjNNVko3QnZ3eUhl?=
 =?utf-8?B?V0dLQ2tTSUpvemgvd1dLUjk2dWNrRnowTWxrQnlEdDhpT2xuZTFYYjFHZVdQ?=
 =?utf-8?B?N2NtbXhNWHY5VFp2REdlMHJxQlI5VGZlYkpnejNnQmh4d1dhNHpXbDR4bEF1?=
 =?utf-8?B?dFZDOEZkbU9JQjN3cFgvU0kyV0V5bE5Sck1Jdk5FK0FIOGZQVUU2Z2RKTjMz?=
 =?utf-8?B?bnlUa2cvS24wZ0c0S1puVm5LSS90aFNncDdkeXoyTm1TSjFFSjF5MnY0djVs?=
 =?utf-8?B?SUlxbDBsZU5mMHc3eitzdk9FQUJJZThnUU1WZG44d3Vjcjl0MVg0T3dHb05p?=
 =?utf-8?B?RDE0VWFWNC90N3U1UVNWUjlTdlErS3VhSkhmbFdndTdBWDByQlFTazFJOVUw?=
 =?utf-8?B?N3pON2ZlTmt3Z3ZFN0EzQkpXcER1RFZMckhSVkJ3Z3JwcjlKdTBWckJZejVu?=
 =?utf-8?B?U3FqYnA2Zkk4M2pwYkg5MS9JaUFEU3FSOC93OFhZbG9BcThzRGFLT0tqL05t?=
 =?utf-8?B?Y0ZMZmRVWlVLWFRSZk1LVWVja0xWd3lJaU5UcVFSeS9wTGUxNEdDSlI5bDdz?=
 =?utf-8?B?L1E9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b74f858-38d3-4fc9-acfe-08dd7813401a
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Apr 2025 09:37:03.3390
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iCSi2heUil+4Dqxprl4lhiXf4oRfwnD2qjugMrEkx4sQA1YFlXTdfpD5wDV9JtUf9nprHswXIBbLXOVBQJMVfBjUZTS8iTmd2GwMei59RxU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR04MB9575
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_023713_734885_195E3FB9 
X-CRM114-Status: GOOD (  17.55  )
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

SGkgQ29ub3IsIEtyenlzenRvZiwgUm9iLAoKT24gNC85LzI1IDExOjI3IFBNLCBDb25vciBEb29s
ZXkgd3JvdGU6Cj4gT24gV2VkLCBBcHIgMDksIDIwMjUgYXQgMDY6MjY6NDNQTSArMDIwMCwgUXVl
bnRpbiBTY2h1bHogd3JvdGU6Cj4+IEhpIENvbm9yLAo+Pgo+PiBPbiA0LzkvMjUgNjoxOCBQTSwg
Q29ub3IgRG9vbGV5IHdyb3RlOgo+Pj4gT24gVHVlLCBBcHIgMDgsIDIwMjUgYXQgMDY6MzY6MDRQ
TSArMDIwMCwgxYF1a2FzeiBDemVjaG93c2tpIHdyb3RlOgo+Pj4+IEhlbGxvLAo+Pj4+Cj4+Pj4g
xZtyLiwgMjYgbWFyIDIwMjUgbyAxODo1OCBDb25vciBEb29sZXkgPGNvbm9yQGtlcm5lbC5vcmc+
IG5hcGlzYcWCKGEpOgo+Pj4+Pgo+Pj4+PiBPbiBXZWQsIE1hciAyNiwgMjAyNSBhdCAwNToyMjo1
N1BNICswMTAwLCBMdWthc3ogQ3plY2hvd3NraSB3cm90ZToKPj4+Pj4+IFRoZSBDeXByZXNzIEhY
MyBodWJzIHVzZSBkaWZmZXJlbnQgZGVmYXVsdCBQSUQgdmFsdWUgZGVwZW5kaW5nCj4+Pj4+PiBv
biB0aGUgdmFyaWFudC4gVXBkYXRlIGNvbXBhdGlibGVzIGxpc3QuCj4+Pj4+Pgo+Pj4+Pj4gRml4
ZXM6IDFlY2E1MWY1OGExMCAoImR0LWJpbmRpbmdzOiB1c2I6IEFkZCBiaW5kaW5nIGZvciBDeXBy
ZXNzIEhYMyBVU0IgMy4wIGZhbWlseSIpCj4+Pj4+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9y
ZyAjIDYuNgo+Pj4+Pj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyBCYWNrcG9ydCBvZiB0
aGUgcGF0Y2ggaW4gdGhpcyBzZXJpZXMgZml4aW5nIHByb2R1Y3QgSUQgaW4gb25ib2FyZF9kZXZf
aWRfdGFibGUgYW5kIG9uYm9hcmRfZGV2X21hdGNoIGluIGRyaXZlcnMvdXNiL21pc2Mvb25ib2Fy
ZF91c2JfZGV2LntjLGh9IGRyaXZlcgo+Pj4+Pj4gU2lnbmVkLW9mZi1ieTogTHVrYXN6IEN6ZWNo
b3dza2kgPGx1a2Fzei5jemVjaG93c2tpQHRoYXVtYXRlYy5jb20+Cj4+Pj4+PiAtLS0KPj4+Pj4+
ICAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvY3lwcmVzcyxoeDMueWFt
bCB8IDYgKysrKysrCj4+Pj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4+
Pj4+Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy91c2IvY3lwcmVzcyxoeDMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy91c2IvY3lwcmVzcyxoeDMueWFtbAo+Pj4+Pj4gaW5kZXggMTAzM2I3YTRiOGY5Li5mMGI5MzAw
MmJkMDIgMTAwNjQ0Cj4+Pj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvdXNiL2N5cHJlc3MsaHgzLnlhbWwKPj4+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy91c2IvY3lwcmVzcyxoeDMueWFtbAo+Pj4+Pj4gQEAgLTE1LDggKzE1LDE0
IEBAIGFsbE9mOgo+Pj4+Pj4gICAgcHJvcGVydGllczoKPj4+Pj4+ICAgICAgY29tcGF0aWJsZToK
Pj4+Pj4+ICAgICAgICBlbnVtOgo+Pj4+Pj4gKyAgICAgIC0gdXNiNGI0LDY1MDAKPj4+Pj4+ICsg
ICAgICAtIHVzYjRiNCw2NTAyCj4+Pj4+PiArICAgICAgLSB1c2I0YjQsNjUwMwo+Pj4+Pj4gICAg
ICAgICAgLSB1c2I0YjQsNjUwNAo+Pj4+Pj4gICAgICAgICAgLSB1c2I0YjQsNjUwNgo+Pj4+Pj4g
KyAgICAgIC0gdXNiNGI0LDY1MDcKPj4+Pj4+ICsgICAgICAtIHVzYjRiNCw2NTA4Cj4+Pj4+PiAr
ICAgICAgLSB1c2I0YjQsNjUwYQo+Pj4+Pgo+Pj4+PiBBbGwgdGhlc2UgZGV2aWNlcyBzZWVtIHRv
IGhhdmUgdGhlIHNhbWUgbWF0Y2ggZGF0YSwgd2h5IGlzIGEgZmFsbGJhY2sKPj4+Pj4gbm90IHN1
aXRhYmxlPwo+Pj4+Pgo+Pj4+Cj4+Pj4gVGhhbmsgeW91IGZvciB0aGUgc3VnZ2VzdGlvbi4gSW5k
ZWVkIHRoZSBmYWxsYmFjayBjb21wYXRpYmxlIGFwcGVhcnMKPj4+PiB0byB3b3JrIGZpbmUgaW4g
dGhpcyBjYXNlLAo+Pj4+IGFuZCBJIGFtIGFibGUgdG8gYXZvaWQgYWRkaXRpb25hbCBlbnRyaWVz
IGluIG9uYm9hcmRfZGV2X21hdGNoIHRhYmxlCj4+Pj4gYXMgYWRkZWQgaW4gdGhlIGZpcnN0IHBh
dGNoIGluIHRoaXMgc2VyaWVzLgo+Pj4+Cj4+Pj4gSG93ZXZlciwgYWZ0ZXIgSSd2ZSB1cGRhdGVk
IHRoZSBjeXByZXNzLGh4My55YW1sIHNjaGVtYSBmaWxlIGFuZAo+Pj4+IHJrMzM5OS1wdW1hLmR0
c2kgZmlsZSwKPj4+PiBJIGdldCB0aGUgZm9sbG93aW5nIHdhcm5pbmdzLCB3aGVuIHJ1bm5pbmcg
Im1ha2UgZHRic19jaGVjayI6Cj4+Pj4KPj4+PiBsaW51eC9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzM5OS1wdW1hLWhhaWtvdS5kdGI6IGh1YkAxOgo+Pj4+IGNvbXBhdGlibGU6IFsn
dXNiNGI0LDY1MDInLCAndXNiNGI0LDY1MDYnXSBpcyB0b28gbG9uZwo+Pj4+IOKAg+KAg2Zyb20g
c2NoZW1hICRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvdXNiL2N5cHJlc3MsaHgz
LnlhbWwjCj4+Pj4gbGludXgvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcHVt
YS1oYWlrb3UuZHRiOiBodWJAMjoKPj4+PiBjb21wYXRpYmxlOiBbJ3VzYjRiNCw2NTAwJywgJ3Vz
YjRiNCw2NTA0J10gaXMgdG9vIGxvbmcKPj4+PiDigIPigINmcm9tIHNjaGVtYSAkaWQ6IGh0dHA6
Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3VzYi9jeXByZXNzLGh4My55YW1sIwo+Pj4+Cj4+Pj4g
QmVsb3cgaXMgdGhlIGRpZmYgb2YgbXkgY2hhbmdlczoKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2N5cHJlc3MsaHgzLnlhbWwKPj4+
PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvY3lwcmVzcyxoeDMueWFt
bAo+Pj4+IGluZGV4IGYwYjkzMDAyYmQwMi4uZDZlYWMxMjEzMjI4IDEwMDY0NAo+Pj4+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvY3lwcmVzcyxoeDMueWFtbAo+
Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91c2IvY3lwcmVzcyxo
eDMueWFtbAo+Pj4+IEBAIC0xNCwxNSArMTQsMjIgQEAgYWxsT2Y6Cj4+Pj4KPj4+PiAgICBwcm9w
ZXJ0aWVzOgo+Pj4+ICAgICAgY29tcGF0aWJsZToKPj4+PiAtICAgIGVudW06Cj4+Pj4gLSAgICAg
IC0gdXNiNGI0LDY1MDAKPj4+PiAtICAgICAgLSB1c2I0YjQsNjUwMgo+Pj4+IC0gICAgICAtIHVz
YjRiNCw2NTAzCj4+Pj4gLSAgICAgIC0gdXNiNGI0LDY1MDQKPj4+PiAtICAgICAgLSB1c2I0YjQs
NjUwNgo+Pj4+IC0gICAgICAtIHVzYjRiNCw2NTA3Cj4+Pj4gLSAgICAgIC0gdXNiNGI0LDY1MDgK
Pj4+PiAtICAgICAgLSB1c2I0YjQsNjUwYQo+Pj4+ICsgICAgb25lT2Y6Cj4+Pj4gKyAgICAgIC0g
ZW51bToKPj4+PiArICAgICAgICAgIC0gdXNiNGI0LDY1MDQKPj4+PiArICAgICAgICAgIC0gdXNi
NGI0LDY1MDYKPj4+PiArICAgICAgLSBpdGVtczoKPj4+PiArICAgICAgICAgIC0gZW51bToKPj4+
PiArICAgICAgICAgICAgICAtIHVzYjRiNCw2NTAwCj4+Pj4gKyAgICAgICAgICAgICAgLSB1c2I0
YjQsNjUwOAo+Pj4+ICsgICAgICAgICAgLSBjb25zdDogdXNiNGI0LDY1MDQKPj4+PiArICAgICAg
LSBpdGVtczoKPj4+PiArICAgICAgICAgIC0gZW51bToKPj4+PiArICAgICAgICAgICAgICAtIHVz
YjRiNCw2NTAyCj4+Pj4gKyAgICAgICAgICAgICAgLSB1c2I0YjQsNjUwMwo+Pj4+ICsgICAgICAg
ICAgICAgIC0gdXNiNGI0LDY1MDcKPj4+PiArICAgICAgICAgICAgICAtIHVzYjRiNCw2NTBhCj4+
Pj4gKyAgICAgICAgICAtIGNvbnN0OiB1c2I0YjQsNjUwNgo+Pj4+Cj4+Pj4gICAgICByZWc6IHRy
dWUKPj4+Pgo+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzM5OS1wdW1hLmR0c2kKPj4+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5
LXB1bWEuZHRzaQo+Pj4+IGluZGV4IGQwZDg2NzM3NGIzZi4uN2ZhYzYxZjk1ZmM2IDEwMDY0NAo+
Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEuZHRzaQo+
Pj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEuZHRzaQo+
Pj4+IEBAIC01OTQsMTQgKzU5NCwxNCBAQCAmdXNiZHJkX2R3YzNfMSB7Cj4+Pj4gICAgICAgICAg
ICNzaXplLWNlbGxzID0gPDA+Owo+Pj4+Cj4+Pj4gICAgICAgICAgIGh1Yl8yXzA6IGh1YkAxIHsK
Pj4+PiAtICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJ1c2I0YjQsNjUwMiI7Cj4+Pj4gKyAg
ICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAidXNiNGI0LDY1MDIiLCAidXNiNGI0LDY1MDYiOwo+
Pj4+ICAgICAgICAgICAgICAgICAgIHJlZyA9IDwxPjsKPj4+PiAgICAgICAgICAgICAgICAgICBw
ZWVyLWh1YiA9IDwmaHViXzNfMD47Cj4+Pj4gICAgICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3Mg
PSA8JmdwaW80IFJLX1BBMyBHUElPX0FDVElWRV9ISUdIPjsKPj4+PiAgICAgICAgICAgfTsKPj4+
Pgo+Pj4+ICAgICAgICAgICBodWJfM18wOiBodWJAMiB7Cj4+Pj4gLSAgICAgICAgICAgICAgIGNv
bXBhdGlibGUgPSAidXNiNGI0LDY1MDAiOwo+Pj4+ICsgICAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gInVzYjRiNCw2NTAwIiwgInVzYjRiNCw2NTA0IjsKPj4+PiAgICAgICAgICAgICAgICAgICBy
ZWcgPSA8Mj47Cj4+Pj4gICAgICAgICAgICAgICAgICAgcGVlci1odWIgPSA8Jmh1Yl8yXzA+Owo+
Pj4+ICAgICAgICAgICAgICAgICAgIHJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QQTMgR1BJT19B
Q1RJVkVfSElHSD47Cj4+Pj4KPj4+Pgo+Pj4+IERvIHlvdSBoYXZlIGFueSBzdWdnZXN0aW9ucyBv
biBob3cgSSBjYW4gcHJvcGVybHkgdXBkYXRlIHRoZSBzY2hlbWEKPj4+PiBmaWxlcyB0byBhdm9p
ZCB0aGUgYWJvdmUgd2FybmluZ3M/Cj4+Pgo+Pj4gVGhlIGRpZmZzIHlvdSBoYXZlIGhlcmUgbG9v
ayBva2F5LCBub3QgcmVhbGx5IHN1cmUgd2hhdCB5b3UncmUgYXNraW5nCj4+PiBmb3IuCj4+Cj4+
IEl0IGZhaWxzIGR0YnNfY2hlY2s6Cj4+Cj4+IGxpbnV4L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszMzk5LXB1bWEtaGFpa291LmR0YjogaHViQDE6Cj4+IGNvbXBhdGlibGU6IFsndXNi
NGI0LDY1MDInLCAndXNiNGI0LDY1MDYnXSBpcyB0b28gbG9uZwo+PiDigIPigINmcm9tIHNjaGVt
YSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3VzYi9jeXByZXNzLGh4My55YW1s
Iwo+PiBsaW51eC9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLWhhaWtv
dS5kdGI6IGh1YkAyOgo+PiBjb21wYXRpYmxlOiBbJ3VzYjRiNCw2NTAwJywgJ3VzYjRiNCw2NTA0
J10gaXMgdG9vIGxvbmcKPj4g4oCD4oCDZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJl
ZS5vcmcvc2NoZW1hcy91c2IvY3lwcmVzcyxoeDMueWFtbCMKPj4KPj4gSSdtIG5vdCBzdXJlIHdl
J3JlIGFsbG93ZWQgdG8gYWRkIG5ldyBlcnJvcnMgd2l0aCBkdGJzX2NoZWNrIChhbmQgd291bGQg
bGlrZQo+PiB0byBhdm9pZCBpdCBpbiBhbnkgY2FzZSkuCj4gCj4gQWgsIHRoZSByZXN0cmljdGlv
biBJIHRoaW5rIGNvbWVzIGZyb20gdGhlIHVzYi1kZXZpY2UgYmluZGluZy4gTWF5YmUKPiBqdXN0
IGxlYXZlIGl0IGFzIHlvdSBoYWQgaXQ/CgpUaGFua3MgdG8gc29tZSBwcmV2aW91cyBkZWJ1Z2dp
bmcgZG9uZSBieSBMdWthc3osIEkgYmVsaWV2ZSB0aGVyZSdzIApzb21ldGhpbmcgd2UgY2FuIGRv
IHRvIG1ha2UgZXZlcnlib2R5IGhhcHB5LgoKVGhlIGlzc3VlIGlzIHRoYXQgdGhlIHVzYi1kZXZp
Y2UgYmluZGluZyBlbmZvcmNlcyBhIHNpbmdsZSBwYXR0ZXJuIApzdHJpbmcgaW4gdGhlIGNvbXBh
dGlibGUgcHJvcGVydHlbMV0gYnV0IHRoYXQgaXNuJ3Qgd2hhdCB1c3VhbGx5IGlzIApleHBlY3Rl
ZCBieSB0aGUgZHQtY29yZVsyXS4KCkkgd291bGQgc3VnZ2VzdCB0byBwYXRjaCB0aGUgdXNiLWRl
dmljZSBiaW5kaW5nIHNvIHRoYXQgaXQgY2FuIGFjY2VwdCBhIApsaXN0IG9mIHN0cmluZ3MgbWF0
Y2hpbmcgdGhlIGdpdmVuIHBhdHRlcm4uCgpUaGlzIGlzIHRoZSBkaWZmIEknbSBzdWdnZXN0aW5n
OgoKIiIiCmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNi
L3VzYi1kZXZpY2UueWFtbCAKYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNi
L3VzYi1kZXZpY2UueWFtbAppbmRleCBjNjc2OTU2ODEwMzMxLi40MmMyZThkNmRjMDZkIDEwMDY0
NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3VzYi1kZXZpY2Uu
eWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL3VzYi1kZXZp
Y2UueWFtbApAQCAtMjgsNyArMjgsOSBAQCBkZXNjcmlwdGlvbjogfAoKICBwcm9wZXJ0aWVzOgog
ICAgY29tcGF0aWJsZToKLSAgICBwYXR0ZXJuOiAiXnVzYlswLTlhLWZdezEsNH0sWzAtOWEtZl17
MSw0fSQiCisgICAgaXRlbXM6CisgICAgICBwYXR0ZXJuOiAiXnVzYlswLTlhLWZdezEsNH0sWzAt
OWEtZl17MSw0fSQiCisKICAgICAgZGVzY3JpcHRpb246IERldmljZSBub2RlcyBvciBjb21iaW5l
ZCBub2Rlcy4KICAgICAgICAidXNiVklELFBJRCIsIHdoZXJlIFZJRCBpcyB0aGUgdmVuZG9yIGlk
IGFuZCBQSUQgdGhlIHByb2R1Y3QgaWQuCiAgICAgICAgVGhlIHRleHR1YWwgcmVwcmVzZW50YXRp
b24gb2YgVklEIGFuZCBQSUQgc2hhbGwgYmUgaW4gbG93ZXIgY2FzZQoiIiIKCkkgYmVsaWV2ZSB0
aGlzIHNob3VsZCBiZSBhIHJlYXNvbmFibGUgY2hhbmdlIGV4Y2VwdCBpZiB3ZSByZWFsbHkgYXJl
IApvbmx5IGV4cGVjdGluZyB0aGUgcmVhbCBWSUQgUElEIGluIHRoZSBjb21wYXRpYmxlLgoKV2hh
dCBkbyB5b3UgdGhpbms/CgpDaGVlcnMsClF1ZW50aW4KClsxXSAKaHR0cHM6Ly9lbGl4aXIuYm9v
dGxpbi5jb20vbGludXgvdjYuMTMuNy9zb3VyY2UvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3VzYi91c2ItZGV2aWNlLnlhbWwjTDMxClsyXSAKaHR0cHM6Ly9naXRodWIuY29tL2Rl
dmljZXRyZWUtb3JnL2R0LXNjaGVtYS9ibG9iL21haW4vZHRzY2hlbWEvc2NoZW1hcy9kdC1jb3Jl
LnlhbWwjTDIxLUwyNQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
