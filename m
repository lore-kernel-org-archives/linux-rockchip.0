Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 983B9C36002
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Apr 2025 16:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vbv43pIxzSlMt1+NqRWX4jCW/OnuKQa/50UhikwSgLk=; b=fFLejDq0U9M9QDVyADEVuP76j0
	bzfJq9Lhrcek6Q2Y0VIIsgOhN7hUyErnK56mttCk1rQkg5KwLJV9/6OVCs9oin9ZO8ysmciMUPJuI
	WyThhs8/7j4LCjaBrm6f6cy2cudAMIc8r7DJUrX6fUfMuNFTsjCvOUp0Rp/4rvkdL91NlXH82IGRU
	v+KpUhNWPzJNLeweIONKPhyXBmCkvooljs+qr8u9onRXcurX6YnkZTAyqOgBCxEyPHcAKrsYwtU1t
	aTPVUgh0u8Yb16q0/PGkTpk/Wto606XxWoCsxmxKA66B29aZZ9Z6r8wCEaFLlPmFybCShoBxzVexY
	TnTLYcfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2YLc-00000007tbB-4B9r;
	Wed, 09 Apr 2025 16:32:21 +0000
Received: from mail-am0eur02on20601.outbound.protection.outlook.com ([2a01:111:f403:2606::601] helo=EUR02-AM0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2YGM-00000007sjm-3Mu4;
	Wed, 09 Apr 2025 16:26:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p54TNEg1zUfrj+II1+VRUeAjXIaafuiXoD4ysAJGkcehGHkw2tw8ODCi62Qd8cFiiTdFLIWPtRpPQkel/sIk5cTjVVh/l0X4iVB3Z0R3EahfsUv8OFCJm82aS6OOTQJoTWEboA1ZXOkQj1H+8aybLp2z+is0RQZ8UlhaSmiJWXCR+P9uE1tDFvlCG++zUnFpalEGQAVZnfseIUnL3YziiGsBgC6ocQA16kQT4AKH2YP0cFh/CAZgMHBdrZjlt6MQaSOBF38K/ls5bCniyHFveaUepFuKIqzbcTDT0kypEe7mn9i8xM0w6VckceN6KwkGEpkhV/TB1gj2KQXvx0+18g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dUw+jU74cJsaVH4d80pif1Y0IVb4Mcv9ya38QnS46+s=;
 b=r9Y9DFKuE/XxC3IfI5xNkzJF+NFZ0X78jf9EdAotGK4XmtFMs+sx1F3qtHhRYTA9AHd+vZqsPejdqT7bcBq0vIYjoUDjtzkmVRWpp/uJA6xzeckzkIk2nJcL4vnD7RBFZK2ZSv/H5HxgSK1dqSmifIIDG+nbPs98LNiK9X2RGoIOPELkhofnE41sWqtuhI+wKAkOhex97eXBDD/J3NPUeJgQvOK5oeAaNYAMGVtbu+wAFTJUPoPzfOiYgMmq9g8tk6LeMZO0pvssonvj12TPjdyNKMakLRLVUwkdkIkpc+mhJtlKtzxT6skH9sJfylXlNO8OxFIF7j88URF0ycmdJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dUw+jU74cJsaVH4d80pif1Y0IVb4Mcv9ya38QnS46+s=;
 b=SmVhTG3ZcaeyV0dElTy7ZFsavwLG8p/BgyP0tVOjZJ3TzBpEhPWkcxTLRKBD1WKeSpOF/DuLJNXtnrDApmpYSjwse5HlFrchQAoFuIR+FpLiveuzKqH/2f0oERGtelMLehX4I33kH6qtaWyghAWTBCubrDelOE3NOdJXKT5bTzc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by AS8PR04MB7815.eurprd04.prod.outlook.com (2603:10a6:20b:28a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.34; Wed, 9 Apr
 2025 16:26:45 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::35f6:bc7d:633:369a%6]) with mapi id 15.20.8606.033; Wed, 9 Apr 2025
 16:26:45 +0000
Message-ID: <cc49276b-f64f-42a8-b4b4-61bde17b61e3@cherry.de>
Date: Wed, 9 Apr 2025 18:26:43 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] dt-bindings: usb: cypress,hx3: Add support for all
 variants
To: Conor Dooley <conor@kernel.org>,
 =?UTF-8?Q?=C5=81ukasz_Czechowski?= <lukasz.czechowski@thaumatec.com>
Cc: Matthias Kaehlcke <mka@chromium.org>,
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
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <20250409-commend-brewing-7c541aec26a9@spud>
X-ClientProxiedBy: FR0P281CA0270.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:b5::16) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|AS8PR04MB7815:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d6b4b00-33f5-42d4-23e6-08dd77835176
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|366016|1800799024|376014|13003099007|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cjRqZmovVHhYbFI2VTRrb3NXQ0lSaDlvK3B6QVE2am9vQnNWclVmdC9sWWQy?=
 =?utf-8?B?OWszdEp2ZkViUkFrbUVzRDNoeTRnTW1uYUllNzB3NGlvSlBOa1FiR3Zpdm9E?=
 =?utf-8?B?VXZneCsvbWVaM1ZWQmtHSmh1UEhXQTVhTnJyeExwZ2lVRnp1cnZmSUNjWWgy?=
 =?utf-8?B?T0RWYk8vL2VWKzAxMEJtaEhDNExKM3laa0EyRVhlVlNtVmc5ZmszSnpJN0x3?=
 =?utf-8?B?MVF6emxFMlp2MHc3dE1nNXJjSk5QcjZhdEQwVUZuUTBGRVJxTjcvYnJxVTFX?=
 =?utf-8?B?Wk92RzJxMmVVdlFTaTAxck9PcmNmZ2pkQ1MwZGYzMHFuSXg0MVVaY0tyeExm?=
 =?utf-8?B?T255ell5NFI0akVLVkY5SWZGUlQvODd4cHFSQ3NsaE5ob3FZTGJWdUdEY21S?=
 =?utf-8?B?NHBCYXpvUnEydWY3dDRVdkJrWG5QcHRGV0U1R0JnazNJOGVURHBjOVRpa2JK?=
 =?utf-8?B?dW1hNGNNQ2xhZGE5T0duNnMrZ0VjT1BadGtxVUs0Zy9WekdNVm1hWEJrRyt6?=
 =?utf-8?B?TzQ1b2psVUlKVEM3azJicVBRR0VwSisxNmFSMURrUUJZVUlqWnhVTEZnNStj?=
 =?utf-8?B?YlIraXZzUG04MGdTQXFDRDI0VlR3MTliaVY2NThXUDZYbnFuS29tQzEyUGxh?=
 =?utf-8?B?c25HUXU4L2xabTRxZzd5bGs2L3dhNEFEV0ZLSDFEY1B3Y0Npb0tHL3QvTUZl?=
 =?utf-8?B?OFp4M0NZeHh5RHAydGhiNFM0eE13RG04NTkzNnNwcEg1aTdmSGpvREFCZ0RX?=
 =?utf-8?B?VkRUYmtVZEpuUURTRlpQUDRmbXBHWXlBV1VGNXpxK3dXaGYycXBMeHVnY1pW?=
 =?utf-8?B?RUJaMFY2bjVpckIveDZIYnErZERPcnBSQmZzekpwRkEwQUlURjBRWUdFWHlh?=
 =?utf-8?B?ZmRYOTVGc3kxazNnMUVRRVhTL243cU5rbEtJOVozNDByRGtDOEViS1JGejFF?=
 =?utf-8?B?Z0JyMFhINHhXVExuM3lIb0Q3ZHVmanl1QWVmaHFQYjcrdEdkVFBzWXRjUFFm?=
 =?utf-8?B?UnJVTGhwQnpZY28zOWdZbGIzSVpZczZBMGcyU2ZlQ1p3U3FDbkpvY3hUMmNQ?=
 =?utf-8?B?UXZuQkRvWnR4ZXp2WEk5M1NzN1o3bHpOZGhWdFcwTDNnblBkUUpGa3lTb1JW?=
 =?utf-8?B?c2dybjBFbkFvSWZnanYyUmxoWEt2Q2J1WmJzWWlrRmdjSFBaNEE5N05FQzE2?=
 =?utf-8?B?UmdDSFRRY1piWHo3NEpMdGUwdkx2WVZXTTVCMU1vQ2k5Qzc0T1MvU3VIZFBC?=
 =?utf-8?B?NnpKNTllNWVtRlpWOFVYYzc1bDBSd1Uvd3hPZC9HWXJQMXFBUkY5N1hZMDlh?=
 =?utf-8?B?Q2pTVjBMdE5sTWp0RHU4TW81ZXVsaUlFdXpPWHUvWTVVWDlXOEJZSVJBbnZj?=
 =?utf-8?B?Yk5Eczczb1dGSzdNcHRhaHlQb0k0T1FPaUprS0JvUnBWa29lRU0zVEZKZGpT?=
 =?utf-8?B?QytJb1dJeXN2T3hUcXpqZzJ4NFJDUnVKcGI2N21aUXE3em9OaW1uMlRQMVZ3?=
 =?utf-8?B?R3VRbmxvU28zeUxjTVF6S1l2MGdEM3ZlQVhMM05PZm9IMWN0eDk0RmtwaENU?=
 =?utf-8?B?b1BTa25sSWZ3Z3NiSlVjWE1UMllzeW5YaWZlM2o2cGltUDlMbTVlQnZLMnFx?=
 =?utf-8?B?WTdhdGk2Qmc2RlRyd1Y1SHdXRVVmSklZUDBnanduSWpub3RMRzNKOHpXaW9m?=
 =?utf-8?B?Z3NyeTBRZTY1dWdVb1VubzNyaWk5NEw5ems1eEd4TjdlRE1jd2VacXdvSEpD?=
 =?utf-8?B?TU1BdEwzTnE3bThtZnJFQTM1OWJpUG12dU5ZaERKNEc3T1BLcXY3UlVXTnQz?=
 =?utf-8?Q?GK89hVQ5ti+mMOMX2E5PKSmPf2XkVzZ471yG0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(7416014)(366016)(1800799024)(376014)(13003099007)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eWtKVHBxdzNTMUVpMURTNVduQnh3SmZUNEcxekNuUkszWjVHMkVYbXUvYTZZ?=
 =?utf-8?B?UkIvd1VRNkdZV2phdERtZ0JYQ2NDWmNqWmp0cVJRNFBXbGJBaG9NTm04cFlI?=
 =?utf-8?B?UVhPaG1HNDNrYVd0MHY2aDRZM3dqVWptK3EreEdvc0Q2TWVoK1BsUjUxdDVP?=
 =?utf-8?B?VnlvVitmdlp3TzhJTmZzL3lLa0JOaWwxMUFRWDJ5Z2taTmN5bm84VkgyM2w2?=
 =?utf-8?B?M0lpdThEbjd5YmV2VXl5SFJ3LzVwTHF3Rk1sMitZSFFqTG82YzU5MEFBVTBk?=
 =?utf-8?B?M0luRFgxOVVNTGNoY0NrUmRmYkVzcTlmVHpQR2JZT1pReXNZeXNuTTcvVVg0?=
 =?utf-8?B?WThTdVZzbDI0SUhkcnZMcjY2RU5sSlpBWWQwajZTMWVIejB5SUFUU0l3TWFE?=
 =?utf-8?B?R1htU1pML3d3NmozWnBiMTBCM1NJU01FNWU3aWdFTG5EVFZQVE84ekZNQThR?=
 =?utf-8?B?ZGUrT3paNWJncnNtaWlYY1NHR25yT3NjL1NaYXhFcDFVMnVHOUdZWVUwNDhT?=
 =?utf-8?B?OFB6ZmR1U2tDM1d5UUtUUzBrOHo0Z0R6T0I5dW4zT2tOaC92YllhWGVzV3Zt?=
 =?utf-8?B?Y3lLempjQ3Z4YjBSRG9QNWVPZ0ZGditYSWlPQ0NoK2N3YXVDMlhKUytQMUx1?=
 =?utf-8?B?Zlg0MWo0eGdWMWIvdlZxMk9hRmtRWHNXY0tSamttM3ZOWG4rMDlpN3EvS1p5?=
 =?utf-8?B?K2xEL2hvVXRvR1pISzMvcXlEY28zc1ZldkhlZ01wVUY2cDVSR0RzL2hEZjNz?=
 =?utf-8?B?WFFYbEswMlBhWjltK2ZwY2lXMERWU1VENnNmOHRvWGQwSEh1bjRCUVlsTlM4?=
 =?utf-8?B?aWFSNThkbWZ5K1pwS2FWOFV0enI3TzZJVE5RVzhvWkFqajVnN01qWm5UUVd1?=
 =?utf-8?B?M1V1bTU4MW54d1VqL3dNZkQwM2ljdUx5aFF3bi9CL2dmQkpFOEpnZkJ6VG9I?=
 =?utf-8?B?aU4ra05IM3hXaUhwRkUzQmNZcHErdEp5ek9JRUw3S2RNRzJMZ012ZUJRVll2?=
 =?utf-8?B?TW1PRmV3VXFkRHhTQ1pSOW1DS2JtdVpFdUxNQ2hycVA1YVViRXRGTTYzb1Vr?=
 =?utf-8?B?b2YxTTdpdEE2Tm90QnFWczYvcFZXVXJUWDJ1RURjQXZTTmN5WW5aVENWdWFm?=
 =?utf-8?B?eWVMdFJ3QnFGdGxiMkhpWDJIWmQxNlJkWVhJcTdTVnJoT01sNTFQNHk5QWVM?=
 =?utf-8?B?R08zdGl6T1FlZjN1VjVURzRHMitXdVc2eHJpWExYbUkvV1U3WEx4MHlaWC9r?=
 =?utf-8?B?MjlPTDU2emFuaVcyMUl5SEsyeFZSYngyaTEwSVNxV3kwd1RxQnN5dWhCLysw?=
 =?utf-8?B?SmM3WEg2QmF0U2U3VlVHVzZheHZnOWxpai9ucFBWQnUxTUJ2Qi9mWVNzeDVj?=
 =?utf-8?B?dVhockpVM2tzakk3eDhWbDVrc0hDRmVLbUlOYUNlMVNBbGI2K0lwYks5WkF1?=
 =?utf-8?B?WThIVzBacWdiZnBaU3AydC84ZTZlcEd0VTBjaGE1d0hyT1pYYU5wMjhZWGRu?=
 =?utf-8?B?NGNhUVB3Nkg4SGNyV0pjMnZkM3N6eG04RHBYRitBRkdYZi9nb2xxOXgzaVFX?=
 =?utf-8?B?eFl2UTI0d2xEaGxjaHR5cUJlczRZOVJuemxGeTdTOC85b2RPOUNsTEM3Nnhr?=
 =?utf-8?B?NWtjYXMxQ2p5NWZzWlRYOTNTUWY5MDVhT1JSOVVPRUpRZmRORUtqZ2ZPRVhK?=
 =?utf-8?B?NE9wb2VFOFQ4blZjQzBTbUc4NHowd0JDVDVJVEJsQXFzaU4yQ0xMSUIrdUFu?=
 =?utf-8?B?aEx0d2J4a2ZHOXdiV1VreUcxUjlUNzhhUzZYa0xCK2k1ZjJDbHd0aFowUHFn?=
 =?utf-8?B?T1FoazZlOUZpdDlTVUFDYjY2M1RxaDNGTHFHZGJjWlVKRGgwbUV3ajU4dWRO?=
 =?utf-8?B?SkRMWFlJYmh2OU5tc05EaEhBVU5GZnZkRzVVU2ZtdVhLTXVUdTd6a3hxeDIx?=
 =?utf-8?B?QzJiQUdQdTBuSzBna3JEWVlPbVZadUw5Z3NKMTFYbXhKbHcrN09YQ3FZZ3Bq?=
 =?utf-8?B?RzUxY3ZIUzV3eG5Xckd6MEloUW5BQ0ZOTXVwTEVaWXZER0IxWjYzTzZsdkVT?=
 =?utf-8?B?a2dMUGRjK3pKSktFNmd5YnNVSEgyUmQvM282SzMrRHE2WldKa2FRRG95akJp?=
 =?utf-8?B?czRpb0hPNm8yVld2c1ljcGhwOHYrRG4yZGZIL05Yb2paaVhkYW9JMjdnYmkz?=
 =?utf-8?B?ZFE9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d6b4b00-33f5-42d4-23e6-08dd77835176
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2025 16:26:45.0445
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bWHy0IeI6FCp1OYrNWJL8W7xRZTnG40NhVuVZ1L/wehHu4AS5XcvI2sQjl2UWJoNXwoeoK9X9X2dF0oyZlz5XoTt8HXQaZBJhq5F1AX7JvA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7815
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_092654_998840_830F224C 
X-CRM114-Status: GOOD (  21.73  )
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

SGkgQ29ub3IsCgpPbiA0LzkvMjUgNjoxOCBQTSwgQ29ub3IgRG9vbGV5IHdyb3RlOgo+IE9uIFR1
ZSwgQXByIDA4LCAyMDI1IGF0IDA2OjM2OjA0UE0gKzAyMDAsIMWBdWthc3ogQ3plY2hvd3NraSB3
cm90ZToKPj4gSGVsbG8sCj4+Cj4+IMWbci4sIDI2IG1hciAyMDI1IG8gMTg6NTggQ29ub3IgRG9v
bGV5IDxjb25vckBrZXJuZWwub3JnPiBuYXBpc2HFgihhKToKPj4+Cj4+PiBPbiBXZWQsIE1hciAy
NiwgMjAyNSBhdCAwNToyMjo1N1BNICswMTAwLCBMdWthc3ogQ3plY2hvd3NraSB3cm90ZToKPj4+
PiBUaGUgQ3lwcmVzcyBIWDMgaHVicyB1c2UgZGlmZmVyZW50IGRlZmF1bHQgUElEIHZhbHVlIGRl
cGVuZGluZwo+Pj4+IG9uIHRoZSB2YXJpYW50LiBVcGRhdGUgY29tcGF0aWJsZXMgbGlzdC4KPj4+
Pgo+Pj4+IEZpeGVzOiAxZWNhNTFmNThhMTAgKCJkdC1iaW5kaW5nczogdXNiOiBBZGQgYmluZGlu
ZyBmb3IgQ3lwcmVzcyBIWDMgVVNCIDMuMCBmYW1pbHkiKQo+Pj4+IENjOiBzdGFibGVAdmdlci5r
ZXJuZWwub3JnICMgNi42Cj4+Pj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcgIyBCYWNrcG9y
dCBvZiB0aGUgcGF0Y2ggaW4gdGhpcyBzZXJpZXMgZml4aW5nIHByb2R1Y3QgSUQgaW4gb25ib2Fy
ZF9kZXZfaWRfdGFibGUgYW5kIG9uYm9hcmRfZGV2X21hdGNoIGluIGRyaXZlcnMvdXNiL21pc2Mv
b25ib2FyZF91c2JfZGV2LntjLGh9IGRyaXZlcgo+Pj4+IFNpZ25lZC1vZmYtYnk6IEx1a2FzeiBD
emVjaG93c2tpIDxsdWthc3ouY3plY2hvd3NraUB0aGF1bWF0ZWMuY29tPgo+Pj4+IC0tLQo+Pj4+
ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9jeXByZXNzLGh4My55YW1s
IHwgNiArKysrKysKPj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKykKPj4+Pgo+
Pj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2N5
cHJlc3MsaHgzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2N5
cHJlc3MsaHgzLnlhbWwKPj4+PiBpbmRleCAxMDMzYjdhNGI4ZjkuLmYwYjkzMDAyYmQwMiAxMDA2
NDQKPj4+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdXNiL2N5cHJl
c3MsaHgzLnlhbWwKPj4+PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
dXNiL2N5cHJlc3MsaHgzLnlhbWwKPj4+PiBAQCAtMTUsOCArMTUsMTQgQEAgYWxsT2Y6Cj4+Pj4g
ICBwcm9wZXJ0aWVzOgo+Pj4+ICAgICBjb21wYXRpYmxlOgo+Pj4+ICAgICAgIGVudW06Cj4+Pj4g
KyAgICAgIC0gdXNiNGI0LDY1MDAKPj4+PiArICAgICAgLSB1c2I0YjQsNjUwMgo+Pj4+ICsgICAg
ICAtIHVzYjRiNCw2NTAzCj4+Pj4gICAgICAgICAtIHVzYjRiNCw2NTA0Cj4+Pj4gICAgICAgICAt
IHVzYjRiNCw2NTA2Cj4+Pj4gKyAgICAgIC0gdXNiNGI0LDY1MDcKPj4+PiArICAgICAgLSB1c2I0
YjQsNjUwOAo+Pj4+ICsgICAgICAtIHVzYjRiNCw2NTBhCj4+Pgo+Pj4gQWxsIHRoZXNlIGRldmlj
ZXMgc2VlbSB0byBoYXZlIHRoZSBzYW1lIG1hdGNoIGRhdGEsIHdoeSBpcyBhIGZhbGxiYWNrCj4+
PiBub3Qgc3VpdGFibGU/Cj4+Pgo+Pgo+PiBUaGFuayB5b3UgZm9yIHRoZSBzdWdnZXN0aW9uLiBJ
bmRlZWQgdGhlIGZhbGxiYWNrIGNvbXBhdGlibGUgYXBwZWFycwo+PiB0byB3b3JrIGZpbmUgaW4g
dGhpcyBjYXNlLAo+PiBhbmQgSSBhbSBhYmxlIHRvIGF2b2lkIGFkZGl0aW9uYWwgZW50cmllcyBp
biBvbmJvYXJkX2Rldl9tYXRjaCB0YWJsZQo+PiBhcyBhZGRlZCBpbiB0aGUgZmlyc3QgcGF0Y2gg
aW4gdGhpcyBzZXJpZXMuCj4+Cj4+IEhvd2V2ZXIsIGFmdGVyIEkndmUgdXBkYXRlZCB0aGUgY3lw
cmVzcyxoeDMueWFtbCBzY2hlbWEgZmlsZSBhbmQKPj4gcmszMzk5LXB1bWEuZHRzaSBmaWxlLAo+
PiBJIGdldCB0aGUgZm9sbG93aW5nIHdhcm5pbmdzLCB3aGVuIHJ1bm5pbmcgIm1ha2UgZHRic19j
aGVjayI6Cj4+Cj4+IGxpbnV4L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1
bWEtaGFpa291LmR0YjogaHViQDE6Cj4+IGNvbXBhdGlibGU6IFsndXNiNGI0LDY1MDInLCAndXNi
NGI0LDY1MDYnXSBpcyB0b28gbG9uZwo+PiDigIPigINmcm9tIHNjaGVtYSAkaWQ6IGh0dHA6Ly9k
ZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3VzYi9jeXByZXNzLGh4My55YW1sIwo+PiBsaW51eC9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLWhhaWtvdS5kdGI6IGh1YkAyOgo+
PiBjb21wYXRpYmxlOiBbJ3VzYjRiNCw2NTAwJywgJ3VzYjRiNCw2NTA0J10gaXMgdG9vIGxvbmcK
Pj4g4oCD4oCDZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy91
c2IvY3lwcmVzcyxoeDMueWFtbCMKPj4KPj4gQmVsb3cgaXMgdGhlIGRpZmYgb2YgbXkgY2hhbmdl
czoKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy91
c2IvY3lwcmVzcyxoeDMueWFtbAo+PiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy91c2IvY3lwcmVzcyxoeDMueWFtbAo+PiBpbmRleCBmMGI5MzAwMmJkMDIuLmQ2ZWFjMTIxMzIy
OCAxMDA2NDQKPj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3VzYi9j
eXByZXNzLGh4My55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy91c2IvY3lwcmVzcyxoeDMueWFtbAo+PiBAQCAtMTQsMTUgKzE0LDIyIEBAIGFsbE9mOgo+Pgo+
PiAgIHByb3BlcnRpZXM6Cj4+ICAgICBjb21wYXRpYmxlOgo+PiAtICAgIGVudW06Cj4+IC0gICAg
ICAtIHVzYjRiNCw2NTAwCj4+IC0gICAgICAtIHVzYjRiNCw2NTAyCj4+IC0gICAgICAtIHVzYjRi
NCw2NTAzCj4+IC0gICAgICAtIHVzYjRiNCw2NTA0Cj4+IC0gICAgICAtIHVzYjRiNCw2NTA2Cj4+
IC0gICAgICAtIHVzYjRiNCw2NTA3Cj4+IC0gICAgICAtIHVzYjRiNCw2NTA4Cj4+IC0gICAgICAt
IHVzYjRiNCw2NTBhCj4+ICsgICAgb25lT2Y6Cj4+ICsgICAgICAtIGVudW06Cj4+ICsgICAgICAg
ICAgLSB1c2I0YjQsNjUwNAo+PiArICAgICAgICAgIC0gdXNiNGI0LDY1MDYKPj4gKyAgICAgIC0g
aXRlbXM6Cj4+ICsgICAgICAgICAgLSBlbnVtOgo+PiArICAgICAgICAgICAgICAtIHVzYjRiNCw2
NTAwCj4+ICsgICAgICAgICAgICAgIC0gdXNiNGI0LDY1MDgKPj4gKyAgICAgICAgICAtIGNvbnN0
OiB1c2I0YjQsNjUwNAo+PiArICAgICAgLSBpdGVtczoKPj4gKyAgICAgICAgICAtIGVudW06Cj4+
ICsgICAgICAgICAgICAgIC0gdXNiNGI0LDY1MDIKPj4gKyAgICAgICAgICAgICAgLSB1c2I0YjQs
NjUwMwo+PiArICAgICAgICAgICAgICAtIHVzYjRiNCw2NTA3Cj4+ICsgICAgICAgICAgICAgIC0g
dXNiNGI0LDY1MGEKPj4gKyAgICAgICAgICAtIGNvbnN0OiB1c2I0YjQsNjUwNgo+Pgo+PiAgICAg
cmVnOiB0cnVlCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzM5OS1wdW1hLmR0c2kKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5
OS1wdW1hLmR0c2kKPj4gaW5kZXggZDBkODY3Mzc0YjNmLi43ZmFjNjFmOTVmYzYgMTAwNjQ0Cj4+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEuZHRzaQo+PiAr
KysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLmR0c2kKPj4gQEAg
LTU5NCwxNCArNTk0LDE0IEBAICZ1c2JkcmRfZHdjM18xIHsKPj4gICAgICAgICAgI3NpemUtY2Vs
bHMgPSA8MD47Cj4+Cj4+ICAgICAgICAgIGh1Yl8yXzA6IGh1YkAxIHsKPj4gLSAgICAgICAgICAg
ICAgIGNvbXBhdGlibGUgPSAidXNiNGI0LDY1MDIiOwo+PiArICAgICAgICAgICAgICAgY29tcGF0
aWJsZSA9ICJ1c2I0YjQsNjUwMiIsICJ1c2I0YjQsNjUwNiI7Cj4+ICAgICAgICAgICAgICAgICAg
cmVnID0gPDE+Owo+PiAgICAgICAgICAgICAgICAgIHBlZXItaHViID0gPCZodWJfM18wPjsKPj4g
ICAgICAgICAgICAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktfUEEzIEdQSU9fQUNUSVZF
X0hJR0g+Owo+PiAgICAgICAgICB9Owo+Pgo+PiAgICAgICAgICBodWJfM18wOiBodWJAMiB7Cj4+
IC0gICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInVzYjRiNCw2NTAwIjsKPj4gKyAgICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAidXNiNGI0LDY1MDAiLCAidXNiNGI0LDY1MDQiOwo+PiAgICAg
ICAgICAgICAgICAgIHJlZyA9IDwyPjsKPj4gICAgICAgICAgICAgICAgICBwZWVyLWh1YiA9IDwm
aHViXzJfMD47Cj4+ICAgICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW80IFJLX1BB
MyBHUElPX0FDVElWRV9ISUdIPjsKPj4KPj4KPj4gRG8geW91IGhhdmUgYW55IHN1Z2dlc3Rpb25z
IG9uIGhvdyBJIGNhbiBwcm9wZXJseSB1cGRhdGUgdGhlIHNjaGVtYQo+PiBmaWxlcyB0byBhdm9p
ZCB0aGUgYWJvdmUgd2FybmluZ3M/Cj4gCj4gVGhlIGRpZmZzIHlvdSBoYXZlIGhlcmUgbG9vayBv
a2F5LCBub3QgcmVhbGx5IHN1cmUgd2hhdCB5b3UncmUgYXNraW5nCj4gZm9yLgoKSXQgZmFpbHMg
ZHRic19jaGVjazoKCmxpbnV4L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1
bWEtaGFpa291LmR0YjogaHViQDE6IApjb21wYXRpYmxlOiBbJ3VzYjRiNCw2NTAyJywgJ3VzYjRi
NCw2NTA2J10gaXMgdG9vIGxvbmcK4oCD4oCDZnJvbSBzY2hlbWEgJGlkOiBodHRwOi8vZGV2aWNl
dHJlZS5vcmcvc2NoZW1hcy91c2IvY3lwcmVzcyxoeDMueWFtbCMKbGludXgvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazMzOTktcHVtYS1oYWlrb3UuZHRiOiBodWJAMjogCmNvbXBhdGli
bGU6IFsndXNiNGI0LDY1MDAnLCAndXNiNGI0LDY1MDQnXSBpcyB0b28gbG9uZwrigIPigINmcm9t
IHNjaGVtYSAkaWQ6IGh0dHA6Ly9kZXZpY2V0cmVlLm9yZy9zY2hlbWFzL3VzYi9jeXByZXNzLGh4
My55YW1sIwoKSSdtIG5vdCBzdXJlIHdlJ3JlIGFsbG93ZWQgdG8gYWRkIG5ldyBlcnJvcnMgd2l0
aCBkdGJzX2NoZWNrIChhbmQgd291bGQgCmxpa2UgdG8gYXZvaWQgaXQgaW4gYW55IGNhc2UpLgoK
Q2hlZXJzLApRdWVudGluCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
