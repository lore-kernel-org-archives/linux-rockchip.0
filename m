Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 222E2C25B7C
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 16:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CzSYzvgfQXkXG0/UgKrqgKM143FSckR3UzW+yvOpD30=; b=gVxXvkTn8MadGgV8XyYzCVlZM8
	EpWwvhnv0/kMmmHny339zM28HrCUiYjcctC2ICaN8FfCqcQMBG0kA9kxrrRlypb2R49NUMmY6tZFh
	SFlDo2WCQycQ5SIjiMobU7TlMLwlHd63AT5vvN3fUonKOdHXUPtNdx3gtBfkwnKwlfzcnNNan7iIO
	FAYnUMiQ4ukjkooSIAEyDmaJYgIVxxKUZT5fZt3eLsdrymm2iOTXEqRLmlkoPv2W2w2Xy874fwBpB
	ruKj4NRR4W6bWb49YZdhCcPNwKjJLq6f5oGySRegoklck0XA5dfgI05QWypVT/8Dy4pfClcUv7NQn
	6QTpyGkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBzND-00000001MbF-12gn;
	Tue, 28 May 2024 16:08:27 +0000
Received: from mail-db5eur01on0730.outbound.protection.outlook.com ([2a01:111:f400:fe02::730] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBzN7-00000001MZf-2xic;
	Tue, 28 May 2024 16:08:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c7IttFq+6CBlAu00ch5CybTNyFM9KijbfpKeqbPZJ6onm+PRHK8wvUYF8iZ5SANybedZ6lxhHqA92IwRLSNl5agfwjRQI1tDFaJgD8+5Dx3PZvsliMWwZqF5ErW3keisSgx1fTPln3muEQ+XT0nkALJJ/7kJdvEQYQvpldp6lqrmOjPYhGtEMToioUrVML16zAjW87US/aqoMb+OL93u0blYTEfTDWLj0dFt74y1u4jFruj+f/iPA0nGiVUGLXLhR0P6A0KmXMc5wLNHHPBzmZfMke02g7JJyugzqhxi2ZgL4+qhRyIwGxYYgzgEVWEUXM3V41ZtL+SQpRgdkvBw7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kSG8Anr5bL/JthjCUMGIktzIGlDBGYXVK6IoFyfJDtU=;
 b=VmAKuPP7btMZ0ZvkfLUVgsAWCf6XTUsAucumyw6TwWaqsvKoXyYiWjyPXHGavK172yV8JPG87YPm6u2T+XWC53GPMQLfH2K5zMS16zJY3QRLE1vpxdeIOVCWhW3EJjCnfa9iIRS1BJ7a2uVcYZoc1kHNSuQcLyFCAxBGp6MeBWVJK1gyrKqkt/dDF5yYcRezXaeLNVZqfVhJWe9rDf6yJx+iVyfcmMmCjJuTuqTWsKswxVq0uHHLENFlsv6VJ3YSLPtDcgPzZjV0n0tA39ZbOGvH7qfQF7De0EvNzNGauCkD+n6v3FllIvPEtAEfXReFOqMI/xwhMDHnwqbf3t54Gg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kSG8Anr5bL/JthjCUMGIktzIGlDBGYXVK6IoFyfJDtU=;
 b=awEHBtw1HWAypmudIgPdjvN11nq2e6gQz7vnNY1dI6WRFKpvE15u75sYDtyjpsjO+2/VtVlRD5E2D6/KGxwttRRJS2OlUg0MupNiDUfnEzOTTJeN8UBH+uzAe1lPQnIpb6J1yll0CTa1is/j1T8tV0TAciboWvOH5yfXfUCBQWs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from DBBPR04MB7980.eurprd04.prod.outlook.com (2603:10a6:10:1f0::12)
 by AM0PR04MB6964.eurprd04.prod.outlook.com (2603:10a6:208:18a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Tue, 28 May
 2024 16:08:10 +0000
Received: from DBBPR04MB7980.eurprd04.prod.outlook.com
 ([fe80::bea5:77ec:cc32:e52c]) by DBBPR04MB7980.eurprd04.prod.outlook.com
 ([fe80::bea5:77ec:cc32:e52c%4]) with mapi id 15.20.7611.030; Tue, 28 May 2024
 16:08:08 +0000
Message-ID: <646a33e0-5c1b-471c-8183-2c0df40ea51a@cherry.de>
Date: Tue, 28 May 2024 18:08:06 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/6] RK3588 and Rock 5B dts additions: thermal, OPP and
 fan
To: Alexey Charkov <alchark@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Chen-Yu Tsai <wens@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Diederik de Haas <didi.debian@cknow.org>, Dragan Simic <dsimic@manjaro.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
 <5122636.irdbgypaU6@phil> <8727e1c29bd6f562a7fc3de0ddac62cf@manjaro.org>
 <6230150.aeNJFYEL58@phil>
 <CABjd4YyRJS0AGehuBTDn8ys9uRRkGc0Usme3GX1POq3AQiWTBA@mail.gmail.com>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <CABjd4YyRJS0AGehuBTDn8ys9uRRkGc0Usme3GX1POq3AQiWTBA@mail.gmail.com>
X-ClientProxiedBy: VI1P194CA0041.EURP194.PROD.OUTLOOK.COM
 (2603:10a6:803:3c::30) To DBBPR04MB7980.eurprd04.prod.outlook.com
 (2603:10a6:10:1f0::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DBBPR04MB7980:EE_|AM0PR04MB6964:EE_
X-MS-Office365-Filtering-Correlation-Id: a715dc6d-68e3-4dc3-38c2-08dc7f305daf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005|7416005;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TTdTQ3YrVVBtT1hpRi8yWmhCaGY4eUZiRTVwWUtRYktHZnZFMWswRDFKRmRx?=
 =?utf-8?B?Y1FHR0FVdzJqRU5HbTdEdWtmLzN0bFBGTmJJZjlTSDQwaHlsWjZxNGc0SXJo?=
 =?utf-8?B?eUswOXROUDBTNGIzMGczSHV4VDBRalJ0TEZ4RXpmMGlYMWdMNk9OVk11NWpN?=
 =?utf-8?B?c25IUFVKNHZGTUVBU2xDWWY1UnFub01TZVQyeUlidU5hOEd0d01HNlJCYmdK?=
 =?utf-8?B?aWxtSDFvMy8vWlJOVzZXNnFlelA5L0pkUm8rUXB2L0NxNFNvQjBEcSsxMVdh?=
 =?utf-8?B?cVR4OGxEZzJCTHdqaXFMemo2U1pCSFhFTTFIZGR0NzY2U0VQdEQ4a1Q1QnJI?=
 =?utf-8?B?YUZFZ0NnendYKzVlVWhKWU9JMTgvZmZRSDAwR294TVFqbS8xUEpEdnp2UVpa?=
 =?utf-8?B?RWVDV3ZKV1RjcVJKQ0hqeCtMVkVvb0haYzg2NW9KUkwvZEJOS2JUeUpzMTlw?=
 =?utf-8?B?V24yMUV0RG13dm1jMUFHT3JvM1NReHRiNzUwTzBwcE9wR3dOaGV4L08xN3Z4?=
 =?utf-8?B?RXQ5WTFUZmVGZzRsRDk3TmEwdnRyUG1yT0U4VEV5YnlxejVQOGx5WXhKSDdi?=
 =?utf-8?B?cC9KaTl6SFl2RXd2WW10T2xNV3RMTTdBZnlISk4zc205YkJ6cjRLZ1h1cEgw?=
 =?utf-8?B?NC9BVnVsSFlSVDFteTR6WlpwS2JwdU5pSHh3OVAzZkFsTXBWOFlkbitPMER5?=
 =?utf-8?B?KzVPZnljSWR0eUE0VzZRZXJmTVg0Q201TWhDcWpUbFVJTm9LSlRtejlEZ2g4?=
 =?utf-8?B?Tmpla0NlU0RtZkgwUlZ4TGRxa0JhZVNnTjVaOVRyQ1hIUnJ4dEU0d2xGTGhD?=
 =?utf-8?B?QTNwSDQ4cjl5WWFacEpFd0FvOE5mSUNmTWpHVjgyTWE3TzRQcURENXpDNFJK?=
 =?utf-8?B?MEZxTzJBbk9jaTRxcHpWam9wT25tcVpST2g1VitmUGdsc3NIeUlERXV2cjds?=
 =?utf-8?B?bmdlNHM3TENLcE5Sc1ZMUENpNXlaNlljM0Y0ZFNVKzVQTHlHeC82YzlxSlFV?=
 =?utf-8?B?Q3RpZENXc0g2dXVQWUczc1hOcGk5UmJ3M0J5Ymp3eUxadmZ1NmxyY1d2YThQ?=
 =?utf-8?B?UlMxQjBBeUdJV3lBYmpFTHFBNkY5UURPSCtiSm03UHRCb0c2L0xPcUJCYi9R?=
 =?utf-8?B?VmFzOHNhUVZlN3ZxNW5EeFhEMWVpY0wwT2Jua3NXbFBqMnB1Y0Y5TDkwN3Zy?=
 =?utf-8?B?MUFSaFl3WlpYelMyOXg4Uk5DTi9PcnpuRzNpeGdPRm1jK3k4ZG1lWWRySEV2?=
 =?utf-8?B?bDQzNWZST29sT0tSSDQ0bUR6bi9LNU1qQWlxN1NyejBFMzFDUGlxZldheVpX?=
 =?utf-8?B?MHltTHo0a1kzZndlWlhpa2p3NStZNjB5cEJzRmhtMXM1WXdRcU9aajY0Mkx6?=
 =?utf-8?B?MFptS0ZuVUlQK2M0S29QSDkwOGgyeHVFVkpHWThsVEhDemFjOW0xLzlQVmto?=
 =?utf-8?B?VThjSjY3ZHdjN3NiU1p5Y1BZaldPb2FoOXdFSE5NNUozQThkQjV6NEord05s?=
 =?utf-8?B?bFhDaGQxcUhUQ0J2YW1ZcVJDZzdxakllOWpSQlB3NE1QNGhpUlpadnYzc1lr?=
 =?utf-8?B?V2FXZVVIKzlnSmNwdWJXZE4yK2FHSHhUUnBsOG81SEg1OEtpTnlweEdZY0xq?=
 =?utf-8?Q?3DdbHUc2oVBf+dzf0+MNHF8G3Lub2U/RI6GKlZMsAx7o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBBPR04MB7980.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(1800799015)(376005)(7416005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eE1PdTdYUUlpcjdONGlRait6UzlUeC9XY3M0d2FVREU5dmZMWXc0WGxOdW1M?=
 =?utf-8?B?d2cyVTZKRWl2dithTzJYZnFkMlI2MG1NajZFZXNTK1JFR3l0ZzM5Q21sYmoy?=
 =?utf-8?B?b1RYWFRob2wzaldHNXZjdGFnc0hCZjE4ZTk0NjU4UWxkdDI4WXIrNWo2VWZx?=
 =?utf-8?B?SzQrbktHTGxZSDdPNFZZcXFNbnM5dmI4Y2lIbjdHaWxRbXlwVDBMcHRFdzRV?=
 =?utf-8?B?UXowZ0RqWnZRSHdzSXc0QUgyS1ZhU3FVWVlQdlhnLzR2QlRqSEFUM1gxMGtK?=
 =?utf-8?B?WEJVbWhlajM1bWN4RGcvaVVoMElBNTZtRkZwc1YrOUxLeW02aGhHUXMvS21V?=
 =?utf-8?B?YmZRNFZOUUhNTjdkbHE0MWVTME1tcWJQejE4OEVEM2t4dm9TQ21aWklhODEw?=
 =?utf-8?B?VmFiaWM3VVBCVkxRNndpWXBIWC81WlpOLzBHa1pZcm9ib3lKd2RvQkFFT1lj?=
 =?utf-8?B?SkVING1DS0FwTmZRVHVBVzJvcTBVdjZzcElHMC9aSzB4YXNjUU5sbXZqKzNj?=
 =?utf-8?B?a1g5Nyt1L3kzT0k2ZklGdUhXL1RBYnF3cm9nKzJvcEw2eCtNcHFtZFlsMXhK?=
 =?utf-8?B?eGFqOE9rcHRvMHRjb3dPd1FtcDNyWlRRNEJMeVFCdGJSVGJlcjRaVkl6eUs0?=
 =?utf-8?B?NU5kNjRnemZtbmZ2ZjVpaXpmZSt2ZVlOTzVoTENFckhjZjRlbkRRNDd2NTdj?=
 =?utf-8?B?RHNPQ2N3Y0dJUE80NWl2YlZDQnR1c3BqZWMwTFdkd0ZuRGt3cU50SnFUenBZ?=
 =?utf-8?B?MXdqdUFoSlVkQTJUY3dBdU5pbUNHb2ZhWmIzTUdhdS9Tei9uU1ByZWROQVk0?=
 =?utf-8?B?cU00NjFleWp4R2tVajJKUkNuNEFjQWNYS0xhVy9KWTVURDlBOFg3YWNLSE5H?=
 =?utf-8?B?WmNTQ0kvNDlZNUJJWkhEc2puMW5oams0WWt6TitBZmNzUDd6SUdlU1NtcmUw?=
 =?utf-8?B?eER5TVduaExMOWNpTTlMOUNYekdYKzZyWnBVVXk2K2UvTSttK2I2M1dQam5o?=
 =?utf-8?B?NUJ0UmxRSzFpdGsyOUtWQ0RGOG1ldVgyUG9XZXVLSXVvRDg5TXc1cCtTNlJ6?=
 =?utf-8?B?T0FzTDVxQkZ4NGE4NHFyc3FjbHh4MEthRW1UWFBLV0NGVG10TzVIeUtlOHlz?=
 =?utf-8?B?aCtFeDR5RXMvWVRNS3M0ajFnMmNHWHlDSGRjRC90SnM4WU1SK3R5U2xTdEx0?=
 =?utf-8?B?OWFlVHM1UjNrNURPeVBLMjYxRGJUeDB3N1JKU3BxdlMrSVEreWhZVk1QTUJa?=
 =?utf-8?B?UUpKUFZlOW1idi9WTGlmT1hNR05Yb3lGc3BCbnV1bkJNRlY5cXdOTmNLNzVJ?=
 =?utf-8?B?cW54bDQ2M3JNREhZS2hNamdZejVDb25kY24zdUNPeURoSjRHQzdiazNqVDFw?=
 =?utf-8?B?bWlpNTdINXJNbnZuU0k2TVg1OEVhbUV1dG5QakFhb1lEaXRSQktqU2MwYXc2?=
 =?utf-8?B?VzlHazR1Mk5pNk9FdnZrZXN1T1M4Z0NmQ3ZXbWpQV3BLOXdCb0FXN1hPNE1a?=
 =?utf-8?B?SWk2U0xpQTZYdnRiMDg5VStIdmFhQU9wV3h1VEppUVJ3MU5CRDVpQUV3bGQw?=
 =?utf-8?B?ZnN2UTBTVVVjY2NZYlgxT0lIZnAzeEFxWlhxNVlHVUZoUWE0eUsvY2hCN095?=
 =?utf-8?B?VDkydUhUbklHVjFaTGNKS3EvZ29HNnJmWGtzS055QllQcUFLa0hYZmNiKzZW?=
 =?utf-8?B?OENDUmNaTk1tQk5RdGh5V254ZW9mcHg4dTI2MHMwY3J0dGRIUFA5NzU1bTVl?=
 =?utf-8?B?a3piUmxKaE8wRlZIR2phc2RkdndqVG9RQTlkak5Bd1k2MG53T3A5eGdsNzNr?=
 =?utf-8?B?QTZFbzZIdGlEc3g5R2RsdGNlR0lVSmtmZi8xV3VoWkV5VGJnMHJaa1o4Rjcz?=
 =?utf-8?B?RW1xTDVzMm4rOEZIU0c4Z01lV0lzb3ltcUFFL2I2cnZkYnpTMyt0dGFrd1lV?=
 =?utf-8?B?WUJGYlREaGtLcCtBSS9yTHRmRnp3Y1ZXcjdNUy9VTStnV0l2a29ZRVphck1G?=
 =?utf-8?B?djJMM3E3VlFldUFuT3Z0VDVyZ3dxSUc4NDFKR0RQNm95SlNRY1R4UWREZzdh?=
 =?utf-8?B?a3c3Q0Z2dDlSZGdlc0JBT1ljTnJpbWMvU2hONURvN04xMVA4NFp3OFFSUmp1?=
 =?utf-8?B?aUNoT0p3TVZ5cm94N1AvYWtOZktrTDV3OTRPcHhlNHk4ODI4elc0aWlkYjAw?=
 =?utf-8?B?Wnc9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: a715dc6d-68e3-4dc3-38c2-08dc7f305daf
X-MS-Exchange-CrossTenant-AuthSource: DBBPR04MB7980.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 May 2024 16:08:08.7955
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2DnjnalDj/RWWBUXSAMbArmncIFiCFJyaRk3XpbSEHs0mp5iEYcUQ0sZfHbtHvWgHjj0+6oPRTOWWHcMc3/wA1BuTvAV4YceS73QKhLsq1U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6964
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_090821_935354_DB7C67CA 
X-CRM114-Status: GOOD (  28.62  )
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

SGkgYWxsLAoKT24gNS8yOC8yNCA1OjQyIFBNLCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiBPbiBU
dWUsIDI4IE1heSAyMDI0IGF0IDE5OjE2LCBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRl
PiB3cm90ZToKPiAKPj4gQW0gRGllbnN0YWcsIDI4LiBNYWkgMjAyNCwgMTc6MDE6NDggQ0VTVCBz
Y2hyaWViIERyYWdhbiBTaW1pYzoKPj4+IE9uIDIwMjQtMDUtMjggMTY6MzQsIEhlaWtvIFN0dWVi
bmVyIHdyb3RlOgo+Pj4+IEFtIERpZW5zdGFnLCAyOC4gTWFpIDIwMjQsIDE2OjA1OjA0IENFU1Qg
c2NocmllYiBEcmFnYW4gU2ltaWM6Cj4+Pj4+IE9uIDIwMjQtMDUtMjggMTE6NDksIEFsZXhleSBD
aGFya292IHdyb3RlOgo+Pj4+Pj4gT24gTW9uLCBNYXkgNiwgMjAyNCBhdCAxOjM34oCvUE0gQWxl
eGV5IENoYXJrb3YgPGFsY2hhcmtAZ21haWwuY29tPgo+Pj4+Pj4gd3JvdGU6Cj4+Pj4+Pj4KPj4+
Pj4+PiBUaGlzIGVuYWJsZXMgdGhlcm1hbCBtb25pdG9yaW5nIGFuZCBDUFUgRFZGUyBvbiBSSzM1
ODgocyksIGFzIHdlbGwKPj4gYXMKPj4+Pj4+PiBhY3RpdmUgY29vbGluZyBvbiBSYWR4YSBSb2Nr
IDVCIHZpYSB0aGUgcHJvdmlkZWQgUFdNIGZhbi4KPj4+Pj4+Pgo+Pj4+Pj4+IFNvbWUgUkszNTg4
IGJvYXJkcyB1c2Ugc2VwYXJhdGUgcmVndWxhdG9ycyB0byBzdXBwbHkgQ1BVcyBhbmQgdGhlaXIK
Pj4+Pj4+PiByZXNwZWN0aXZlIG1lbW9yeSBpbnRlcmZhY2VzLCBzbyB0aGlzIGlzIGhhbmRsZWQg
YnkgY291cGxpbmcgdGhvc2UKPj4+Pj4+PiByZWd1bGF0b3JzIGluIGFmZmVjdGVkIGJvYXJkcycg
ZGV2aWNlIHRyZWVzIHRvIGVuc3VyZSB0aGF0IHRoZWlyCj4+Pj4+Pj4gdm9sdGFnZSBpcyBhZGp1
c3RlZCBpbiBzdGVwLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBhbHNvIGVuYWJsZXMgdGhlIGJ1aWx0
LWluIHRoZXJtYWwgc2Vuc29yIChUU0FEQykgZm9yIGFsbAo+PiBib2FyZHMKPj4+Pj4+PiB0aGF0
IGRvbid0IGN1cnJlbnRseSBoYXZlIGl0IGVuYWJsZWQsIHVzaW5nIHRoZSBkZWZhdWx0IENSVSBi
YXNlZAo+Pj4+Pj4+IGVtZXJnZW5jeSB0aGVybWFsIHJlc2V0LiBUaGlzIGRlZmF1bHQgY29uZmln
dXJhdGlvbiBvbmx5IHVzZXMKPj4gb24tU29DCj4+Pj4+Pj4gZGV2aWNlcyBhbmQgZG9lc24ndCBy
ZWx5IG9uIGFueSBleHRlcm5hbCB3aXJpbmcsIHRodXMgaXQgc2hvdWxkCj4+IHdvcmsKPj4+Pj4+
PiBmb3IgYWxsIGRldmljZXMgKHRlc3RlZCBvbmx5IG9uIFJvY2sgNUIgdGhvdWdoKS4KPj4+Pj4+
Pgo+Pj4+Pj4+IFRoZSBib2FyZHMgdGhhdCBoYXZlIFRTQURDX1NIVVQgc2lnbmFsIHdpcmVkIHRv
IHRoZSBQTUlDIHJlc2V0IGxpbmUKPj4+Pj4+PiBjYW4gY2hvb3NlIHRvIG92ZXJyaWRlIHRoZSBk
ZWZhdWx0IHJlc2V0IGxvZ2ljIGluIGZhdm91ciBvZiBHUElPCj4+Pj4+Pj4gZHJpdmVuIChQTUlD
IGFzc2lzdGVkKSByZXNldCwgYnV0IGluIG15IHRlc3RpbmcgaXQgZGlkbid0IHdvcmsgb24KPj4+
Pj4+PiBSYWR4YSBSb2NrIDVCIC0gbWF5YmUgSSdtIHJlYWRpbmcgdGhlIHNjaGVtYXRpYyB3cm9u
ZyBhbmQgaXQKPj4gZG9lc24ndAo+Pj4+Pj4+IHN1cHBvcnQgUE1JQyBhc3Npc3RlZCByZXNldCBh
ZnRlciBhbGwuCj4+Pj4+Pj4KPj4+Pj4+PiBGYW4gY29udHJvbCBvbiBSb2NrIDVCIGhhcyBiZWVu
IHNwbGl0IGludG8gdHdvIGludGVydmFsczogbGV0IGl0Cj4+IHNwaW4KPj4+Pj4+PiBhdCB0aGUg
bWluaW11bSBjb29saW5nIHN0YXRlIGJldHdlZW4gNTVDIGFuZCA2NUMsIGFuZCB0aGVuCj4+IGFj
Y2VsZXJhdGUKPj4+Pj4+PiBpZiB0aGUgc3lzdGVtIGNyb3NzZXMgdGhlIDY1QyBtYXJrIC0gdGhh
bmtzIHRvIERyYWdhbiBmb3IKPj4gc3VnZ2VzdGluZy4KPj4+Pj4+PiBUaGlzIGxldHMgc29tZSBj
b29saW5nIHNldHVwcyB3aXRoIGJlZWZpZXIgaGVhdHNpbmtzIGFuZC9vciBsYXJnZXIKPj4+Pj4+
PiBmYW4gZmlucyB0byBzdGF5IGluIHRoZSBxdWlldGVzdCBub24temVybyBmYW4gc3RhdGUgd2hp
bGUgc3RpbGwKPj4+Pj4+PiBnYWluaW5nIHBvdGVudGlhbCBiZW5lZml0cyBmcm9tIHRoZSBhaXJm
bG93IGl0IGdlbmVyYXRlcywgYW5kCj4+Pj4+Pj4gcG9zc2libHkgYXZvaWRpbmcgbm9pc3kgc3Bl
ZWRzIGFsdG9nZXRoZXIgZm9yIHNvbWUgd29ya2xvYWRzLgo+Pj4+Pj4+Cj4+Pj4+Pj4gT1BQcyBo
ZWxwIGFjdHVhbGx5IHNjYWxlIENQVSBmcmVxdWVuY2llcyB1cCBhbmQgZG93biBmb3IgYm90aAo+
PiBjb29saW5nCj4+Pj4+Pj4gYW5kIHBlcmZvcm1hbmNlIC0gdGVzdGVkIG9uIFJvY2sgNUIgdW5k
ZXIgdmFyaWVkIGxvYWRzLiBJJ3ZlCj4+IGRyb3BwZWQKPj4+Pj4+PiB0aG9zZSBPUFBzIHRoYXQg
Y2F1c2UgZnJlcXVlbmN5IHJlZHVjdGlvbnMgd2l0aG91dCBhY2NvbXBhbnlpbmcKPj4+Pj4+PiBk
ZWNyZWFzZQo+Pj4+Pj4+IGluIENQVSB2b2x0YWdlLCBhcyB0aGV5IGRvbid0IHNlZW0gdG8gYmUg
YWRkaW5nIG11Y2ggYmVuZWZpdCBpbgo+PiBkYXkgdG8KPj4+Pj4+PiBkYXkgdXNlLCB3aGlsZSB0
aGUga2VybmVsIGxvZyBnZXRzIGEgbnVtYmVyIG9mICJPUFAgaXMgaW5lZmZpY2llbnQiCj4+Pj4+
Pj4gbGluZXMuCj4+Pj4+Pj4KPj4+Pj4+PiBOb3RlIHRoYXQgdGhpcyBzdWJtaXNzaW9uIGRvZXNu
J3QgdG91Y2ggdGhlIFNSQU0gcmVhZCBtYXJnaW4KPj4gdXBkYXRlcwo+Pj4+Pj4+IG9yCj4+Pj4+
Pj4gdGhlIE9QUCBjYWxpYnJhdGlvbiBiYXNlZCBvbiBzaWxpY29uIHF1YWxpdHkgd2hpY2ggdGhl
IGRvd25zdHJlYW0KPj4+Pj4+PiBkcml2ZXIKPj4+Pj4+PiBkb2VzIGFuZCB3aGljaCB3ZXJlIG1l
bnRpb25lZCBpbiBbMV0uIEl0IHdvcmtzIGFzIGl0IGlzIChhbHNvCj4+Pj4+Pj4gY29uZmlybWVk
IGJ5Cj4+Pj4+Pj4gU2ViYXN0aWFuIGluIGhpcyBmb2xsb3ctdXAgbWVzc2FnZSBbMl0pLCBhbmQg
aXQgaXMgc3RhYmxlIGluIG15Cj4+Pj4+Pj4gdGVzdGluZyBvbgo+Pj4+Pj4+IFJvY2sgNUIsIHNv
IGl0IHNvdW5kcyBiZXR0ZXIgdG8gbWVyZ2UgYSBzaW1wbGUgdmVyc2lvbiBmaXJzdCBhbmQKPj4g
dGhlbgo+Pj4+Pj4+IGV4dGVuZCB3aGVuL2lmIHJlcXVpcmVkLgo+Pj4+Pj4+Cj4+Pj4+Pj4gWzFd
Cj4+Pj4+Pj4KPj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvQ0FCamQ0
WXpUTD01UzdjUzhBQ05BWVZhNzMwV0EzaUdkNUxfd1AxVm45PWY4M1JDT1JBQG1haWwuZ21haWwu
Y29tLwo+Pj4+Pj4+IFsyXQo+Pj4+Pj4+Cj4+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXJvY2tjaGlwL3BreW5lNGcyY2xuMjdkY2R1M2ptN2JxZHFwbWQya3drYmd1aW9sbW96bnRqdWlh
anJiQGd2cTRudXB6bmE0by8KPj4+Pj4+Pgo+Pj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEFsZXhleSBD
aGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPj4+Pj4+PiAtLS0KPj4+Pj4+Cj4+Pj4+PiBIaSBI
ZWlrbywKPj4+Pj4+Cj4+Pj4+PiBEbyB5b3UgdGhpbmsgdGhpcyBjYW4gYmUgbWVyZ2VkIGZvciA2
LjExPyBMb29rcyBsaWtlIHRoZXJlIGhhc24ndAo+PiBiZWVuCj4+Pj4+PiBhbnkgbmV3IGZlZWRi
YWNrIGluIGEgd2hpbGUsIGFuZCBpdCB3b3VsZCBiZSBnb29kIHRvIGhhdmUgZnJlcXVlbmN5Cj4+
Pj4+PiBzY2FsaW5nIGluIHBsYWNlIGZvciBSSzM1ODguCj4+Pj4+Pgo+Pj4+Pj4gUGxlYXNlIGxl
dCBtZSBrbm93IGlmIHlvdSBoYXZlIGFueSByZXNlcnZhdGlvbnMgb3IgaWYgd2UgbmVlZCBhbnkK
Pj4+Pj4+IGJyb2FkZXIgZGlzY3Vzc2lvbi4KPj4+Pgo+Pj4+IG5vdCByZWFsbHkgcmVzZXJ2YXRp
b25zLCBtb3JlIGxpa2UgdGhlcmUgd2FzIHN0aWxsIGRpc2N1c3Npb24gZ29pbmcgb24KPj4+PiBh
cm91bmQgdGhlIE9QUHMuIE1lYW53aGlsZSB3ZSBoYWQgbW9yZSBkaXNjdXNzaW9ucyByZWdhcmRp
bmcgdGhlIHdob2xlCj4+Pj4gc3BlZWQgYmlubmluZyBSb2NrY2hpcCBzZWVtcyB0byBkbyBmb3Ig
cmszNTg4IHZhcmlhbnRzLgo+Pj4+Cj4+Pj4gQW5kIHdhaXRpbmcgZm9yIHRoZSB0ZXN0aW5nIERy
YWdhbiB3YW50ZWQgdG8gZG8gOy0pIC4KPj4+Cj4+PiBJJ20gc29ycnkgZm9yIHRoZSBkZWxheXMu
Cj4+Cj4+IFdhcyBkZWZpbml0bHkgX25vdF8gbWVhbnQgYXMgYmxhbWUgOy0pIC4KPj4KPj4gVGhl
IHNlcmllcyBoYXMganVzdCB0b28gbWFueSBkaXNjdXNzaW9ucyB0aHJlYWRzIHRvIHVucmF2ZWwg
b24gaGFsZgo+PiBhbiBhZnRlcm5vb24uCj4gCj4gCj4gRldJVywgSSB0aGluayB0aGUgbGF0ZXN0
IGV4Y2hhbmdlIHdlIGhhZCB3aXRoIFF1ZW50aW4gcmVnYXJkaW5nIHRoZSBPUFBzCj4gY29uY2x1
ZGVkIGluIOKAnGZhbHNlIGFsYXJt4oCdLCBnaXZlbiB0aGF0IHRoaXMgdmVyc2lvbiBvZiB0aGUg
c2VyaWVzIG9ubHkKPiBpbnRyb2R1Y2VzIGEgc3Vic2V0IG9mIHRoZW0gd2hpY2ggc2hvdWxkIGFw
cGx5IHRvIGFsbCBSSzM1ODgocykKPiAKCkNvcnJlY3QuCgpIb3dldmVyLi4uIEknbSB3b25kZXJp
bmcgaWYgd2Ugc2hvdWxkbid0IHNvbWVob3cgZm9sbG93IHRoZSBzYW1lIHBhdHRlcm4gCndlIGhh
dmUgdXNlZCBmb3IgdGhlIHJrMzM5OSBPUFBzPyBXZSBoYXZlIGEgZmlsZSBmb3IgdGhlICJ0cnVl
IiBSSzMzOTkgCk9QUHMsIHRoZW4gdGhlIE9QMSB2YXJpYW50IGFuZCB0aGUgUkszMzk5VC4KCldl
IGFscmVhZHkga25vdyB0aGVyZSBhcmUgYSBmZXcgdmFyaWFudHMgb2YgUkszNTg4IHdpdGggZGlm
ZmVyZW50IE9QUHM6IApSSzM1ODgoUy9TMj8pLCBSSzM1ODhKIGFuZCBSSzM1ODhNLiBJIHdvdWxk
bid0IGJlIHN1cnByaXNlZCBpZiB0aGUgClJLMzU4MiAodGhvdWdoIHRoaXMgb25lIGhhcyBhbHJl
YWR5IG9uZSBiaWcgY2x1c3RlciAob3IgdHdvIGJpZyBjb3JlcykgCmZld2VyIHRoYW4gUkszNTg4
KSBoYXMgZGlmZmVyZW50IE9QUHMgYXMgd2VsbD8KClNvLiBXZSBoYXZlIGFscmVhZHkgZGlzY3Vz
c2VkIHRoYXQgdGhlIE9QUHMgaW4gdGhhdCBwYXRjaCBhcmUgdmFsaWQgZm9yIApSSzM1ODgoUykg
YnV0IHRoZXkgYXJlbid0IGZvciB0aGUgb3RoZXIgdmFyaWFudHMuCgpJbiB0aGUgZG93bnN0cmVh
bSBrZXJuZWwsIGFueSBPUFAgd2hvc2Ugb3BwLXN1cHBvcnRlZC1odyBoYXMgYSBmaXJzdCAKdmFs
dWUgbWFza2VkIGJ5IEJJVCgxKSByZXR1cm4gbm9uLTAgaXMgc3VwcG9ydGVkIGJ5IFJLMzU4OE0u
IEluIHRoZSAKZG93bnN0cmVhbSBrZXJuZWwsIGFueSBPUFAgd2hvc2Ugb3BwLXN1cHBvcnRlZC1o
dyBoYXMgYSBmaXJzdCB2YWx1ZSAKbWFza2VkIGJ5IEJJVCgyKSByZXR1cm4gbm9uLTAgaXMgc3Vw
cG9ydGVkIGJ5IFJLMzU4OEouCgpUaGlzIG1lYW5zIHRoYXQsIGZvciBMSVRUTEUgY2x1c3RlcnM6
Ci0gb3BwLTE2MDgwMDAwMDAgbm90IHN1cHBvcnRlZCBvbiBSSzM1ODhKCi0gb3BwLTE3MDQwMDAw
MDAgb25seSBzdXBwb3J0ZWQgb24gUkszNTg4TSAoYnV0IGFscmVhZHkgYWJzZW50IGluIHRoaXMg
CnBhdGNoIHNlcmllcykKLSBvcHAtMTgwMDAwMDAwMCBvbmx5IHN1cHBvcnRlZCBvbiBSSzM1ODgo
UyksIG5vdCBSSzM1ODhKIG5vciBSSzM1ODhNCgpGb3IgYmlnIGNsdXN0ZXJzOgotIG9wcC0xODAw
MDAwMDAwIG5vdCBzdXBwb3J0ZWQgb24gUkszNTg4SgotIG9wcC0yMDE2MDAwMDAwIG5vdCBzdXBw
b3J0ZWQgb24gUkszNTg4SgotIG9wcC0yMjA4MDAwMDAwIG9ubHkgc3VwcG9ydGVkIG9uIFJLMzU4
OChTKSwgbm90IFJLMzU4OEogbm9yIFJLMzU4OE0KLSBvcHAtMjI1NjAwMDAwMCBvbmx5IHN1cHBv
cnRlZCBvbiBSSzM1ODgoUyksIG5vdCBSSzM1ODhKIG5vciBSSzM1ODhNCi0gb3BwLTIzMDQwMDAw
MDAgb25seSBzdXBwb3J0ZWQgb24gUkszNTg4KFMpLCBub3QgUkszNTg4SiBub3IgUkszNTg4TQot
IG9wcC0yMzUyMDAwMDAwIG9ubHkgc3VwcG9ydGVkIG9uIFJLMzU4OChTKSwgbm90IFJLMzU4OEog
bm9yIFJLMzU4OE0KLSBvcHAtMjQwMDAwMDAwMCBvbmx5IHN1cHBvcnRlZCBvbiBSSzM1ODgoUyks
IG5vdCBSSzM1ODhKIG5vciBSSzM1ODhNCgpUaGlzIGlzIHNvbWVob3cgYWxzbyBlbmZvcmNlZCBp
biBkb3duc3RyZWFtIGtlcm5lbCBieSByZW1vdmluZyB0aGUgT1BQIApub2RlcyBkaXJlY3RseSAo
aGVuY2UsIG5vdCBldmVuIHJlcXVpcmluZyB0aGUgY2hlY2sgb2Ygb3BwLXN1cHBvcnRlZC1odyAK
dmFsdWUpLCBjLmYuOgpodHRwczovL2dpdC50aGVvYnJvbWEtc3lzdGVtcy5jb20vdGlnZXItbGlu
dXguZ2l0L3RyZWUvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhqLmR0c2kKaHR0
cHM6Ly9naXQudGhlb2Jyb21hLXN5c3RlbXMuY29tL3RpZ2VyLWxpbnV4LmdpdC90cmVlL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4bS5kdHNpCgpZb3UnbGwgbm90IHRoYXQgdGhl
IFJLMzU4OEogYWxzbyBoYXMgbGVzcyBPUFBzIGZvciB0aGUgR1BVIGFuZCBOUFUgKGJ1dCAKdGhv
c2Ugc2hvdWxkIGFsc28gYmUgbWFza2VkIGJ5IHRoZSBvcHAtc3VwcG9ydGVkLWh3IHZhbHVlKS4K
CkNoZWVycywKUXVlbnRpbgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
