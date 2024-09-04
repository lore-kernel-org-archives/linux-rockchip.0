Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A2E7CD3431
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 09:30:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Gv6+y67fbslWXDDECK8wTQSmSB6MIyr9dbcShPBu7FA=; b=nUx+cZZ03tJ125DoklBpNPBOX9
	HrrKmh4/wOt8GZS6fldoWB8Es296Yoep1AS09Kp/qMqkEghg/z3DweOWTQl6dXZTnOTTXQpWsLQcw
	9GG6BrHPGc8Y0GsZzGzfRGnBk4nFhdpln9MJd8KU+TRVxydo2yN/uuKA+aeZ4VwvIiIxRzM6YZiDe
	bAHd7JD8DTyu1YkXINYITNpzgUDrJ9i6ybglwjGPF7aNVrpKc0O8fLR+MoleDoeBhJAloycHcCsI3
	YImPu2GcL9q5TcKKL6zlwYbP7QkoSlyxeo7koSB8Z3sdpKeIIGvXwruknltlJHwsFHYQEPgmnfuiZ
	FWe5alJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slmLa-00000003ghr-1CFU;
	Wed, 04 Sep 2024 09:30:42 +0000
Received: from mail-northeuropeazlp170110001.outbound.protection.outlook.com ([2a01:111:f403:c200::1] helo=DB3PR0202CU003.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sllrq-00000003YdW-47fS;
	Wed, 04 Sep 2024 09:00:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mYxYUK3ROkSF51MdGnFOAHkGK0hluR/wqFHVHq1elUp6v7FuTGf12BMNeMkuVJXIkOVG4LmYvxX/mH37QdJ+nErn786xCkVyjP9B9mPDjqoXhL32DR5IV8eAvsWxOftyNvWTv4pWgBn7klPu/d51ezdAEqKCdRIZ3XnKRsDBAocr5GayDax9xI/k3nmp7cHmDzStlWs+qEi+ODSUXK5+rVX1whLHy12TfIcZxH4CV1xrfd+Gv5TtjAJauuZ0wsQLZalsfa5FivjibY+zHuUW3k36BHMxA50Rl/Xtf+jElAdf3lFKqsGhcfYCqn2jrfQvmjEi+xlKFQyjISbcvTn2eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wr8HMo97RfTfwd3EnVkN4RO1/qCpnHhrVCirCSv317M=;
 b=s8lww4nSwX6g9fhH3Ah4XM5loC8QiNs1V0OtSJt+lpeQVrLpXlYLqVgigL7Gh3Qd1Y/EJWshLE/yMOnpKyx2TyF4FpDBmGFX1CIuvJBXkutG/N1CuAXTKwEzrtJQMvOsP+qX/RgVJ8DsZDEo39dAbkRWpGqTLKdTqBnlLrrc50CkNxdU0myufWC7k6AcATW8Y3NTkWxMpuLuF7o/e9IY0fhtlqmIoWLrDq79mP1uTCj3IR4L6JBjBI5EKl7/A8qzuvF26yhBx5yegtPrC0bRZEyZlgqpvKdB2c+/PvMAl8qLdmbe8QQpTzm6tRbplWRFuB//voQytnj2s1GPKPXrBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wr8HMo97RfTfwd3EnVkN4RO1/qCpnHhrVCirCSv317M=;
 b=pgf8g90FGmZMlLEU+tvCQilq+qgZADATjINQ+Cd22HO3ka10Y5GRn0BKnCBfyWdHdBK3CWMMSTVj73UJiCjnAqv7NuVxDcjETOExgTAwt8EizjF0SU2T7JkH4ItoZ2zMn73Mqx42PT8zMAJp3rlyJm49JaXETMI8iJN6ZTqNScA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=axentia.se;
Received: from DU0PR02MB8500.eurprd02.prod.outlook.com (2603:10a6:10:3e3::8)
 by AS2PR02MB9141.eurprd02.prod.outlook.com (2603:10a6:20b:5f8::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.23; Wed, 4 Sep
 2024 08:59:55 +0000
Received: from DU0PR02MB8500.eurprd02.prod.outlook.com
 ([fe80::aff4:cbc7:ff18:b827]) by DU0PR02MB8500.eurprd02.prod.outlook.com
 ([fe80::aff4:cbc7:ff18:b827%3]) with mapi id 15.20.7918.024; Wed, 4 Sep 2024
 08:59:49 +0000
Message-ID: <4e4d7c65-3c3f-5208-ce08-b63ad39ab425@axentia.se>
Date: Wed, 4 Sep 2024 10:59:47 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v7 2/8] i2c: muxes: add support for tsd,mule-i2c
 multiplexer
Content-Language: sv-SE
To: Farouk Bouabid <farouk.bouabid@cherry.de>,
 Andi Shyti <andi.shyti@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Quentin Schulz
 <quentin.schulz@cherry.de>, Jean Delvare <jdelvare@suse.com>,
 Guenter Roeck <linux@roeck-us.net>, Heiko Stuebner <heiko@sntech.de>,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20240902-dev-mule-i2c-mux-v7-0-bf7b8f5385ed@cherry.de>
 <20240902-dev-mule-i2c-mux-v7-2-bf7b8f5385ed@cherry.de>
 <fvk5u2j7wu7pjrlpbbnggp3vhopotctu2vr3fh77kl2icrvnyt@tukh2ytkiwdz>
 <45c51083-ee63-45e7-b8d4-3822213530f4@cherry.de>
From: Peter Rosin <peda@axentia.se>
In-Reply-To: <45c51083-ee63-45e7-b8d4-3822213530f4@cherry.de>
X-ClientProxiedBy: AM0PR06CA0105.eurprd06.prod.outlook.com
 (2603:10a6:208:fa::46) To DU0PR02MB8500.eurprd02.prod.outlook.com
 (2603:10a6:10:3e3::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR02MB8500:EE_|AS2PR02MB9141:EE_
X-MS-Office365-Filtering-Correlation-Id: 67806190-7ab4-477e-53c0-08dcccbfee87
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|7416014|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TU5xU0RVYnhBUXZaUkgrMlhPaExyNDAraHprMHlySHA3RVFzR1JWOE81bDR4?=
 =?utf-8?B?d3Y4TmdwYS9WUGo1Q212UnJQL3YvSFBoYWV2ZXlPbmVFVlM1cWN0QU05MDhZ?=
 =?utf-8?B?bExEcTJPM3ZvVHhEWGYrYkNhYnZWdFp3WkM0c05VQ2Q3aWhHUmRCcVJoNy9Q?=
 =?utf-8?B?UzFtZmlFbTZjTUlwZ0Y5TjBGOW1SSHhWb0NmcnZzZWZrM3FsNWNIWmppNjJC?=
 =?utf-8?B?YVpBZlNiS1duZExTUUZvek95SFRPa0tZZmJjZ3ZtekhZMThvTjZKSndWM2c3?=
 =?utf-8?B?aklmT1ovWHF1YmZUYzJuWnpMRkJ3emdqM1Vud21CK1BQbFJRcE40VmZtY2tH?=
 =?utf-8?B?T0xUSlJvbm9rbndHdEdQV283MUVlVWxyTlFzZ2xsaU5ROHVIamdKY0hZTjZh?=
 =?utf-8?B?QzVaclBjZjlRZVlUQ290WU9PaVQ0VXFZdWpMODh4bXN1ZkNlb3hmQmNuUnQ2?=
 =?utf-8?B?Q2l6Uzg1N3VDai9WdXdabCtycjNOa0dpdlJPWXVHOXU2TjhFTHRFU2RudFRB?=
 =?utf-8?B?UlYyL2g2bzZKaUMremloMGVwV0ttdkdYbkZYTzlXTDltWHIrZWdORzh2QkhO?=
 =?utf-8?B?dE1zRWxMSUI3aVFsb1JxRWREdlhtSnc4NDdnUFFoeGI2S0tOaGYvQ1UwZGly?=
 =?utf-8?B?VzZXakF5cnpxeTlqWnYrWTZqSHI0TVE1Z2ozWWRDcnc3ek9jblcyUUlOSzZO?=
 =?utf-8?B?cDRaR1g1cXNRM1FIUDlqaEcxWlYxWnZDaEFlcDllSy9GSU5WT2lPcThRcU9m?=
 =?utf-8?B?RllOcXg2REhFTmlzdXdyQW45eFZhWnkvaVY1ZEVWUGJCcFlQOFdlVDU4OU1s?=
 =?utf-8?B?OFRLNjNMd3lkUGs2QkJ0NVZ5WFpsV0Y5dXFDK2w4NGx5TjNDREFRMXFyeWxo?=
 =?utf-8?B?K2VWV2tDNkhyQ05WZkQzMWZvck9iR2lGMGx6WXM2ZUtZQ0UwQnlEK0hKRUll?=
 =?utf-8?B?VHdnNnRpSUIxZ2NzWnVudkZpOEI0L1VWK1VmWUVYUXMwOGtsblZCNm5ZYSs4?=
 =?utf-8?B?OXpuaUJLUzI3VWtIbTRVNnh6eGN0VUxXNWVpc0V6OVpJYnk0T2lhMzBtKzRl?=
 =?utf-8?B?K3gwNFRFWFhqekl2Tk9HQXoxWVhWckFoOHlQeldIWWZPVWFVMUVyTGE2dkJm?=
 =?utf-8?B?ZmZGR3pnVTFmQzdoNzRNbVhmZTVFeVJ2TjNidVhjYkZYTkFqeENXVnd1bHpn?=
 =?utf-8?B?Q1ViQUNZaWdTcUtuQVVXS214VU85N1A0U01UeFJnamZPamFZbzJja1pDWTMx?=
 =?utf-8?B?bDI5bklmZWhWWmxXUVNCSjJaU3pGVDhIbzByYmhvTERsbEtJOURmeEt2M1Nt?=
 =?utf-8?B?eUl0QVlmanFEY2NHVlZBWW1odmRLdWRMUmhNV1Q5ZUFaVFRzL3RsSks5cVBp?=
 =?utf-8?B?bi9WRERsNzhHOWN5bVB1RHphdHVKenN3S1p5U0JKK25rTTNxbDRKU2l0QnY5?=
 =?utf-8?B?T2d5aTZhdXB2MUs3ZDl2TElNTFFMV0dxdXdwbHlqUVBxUzdoTCtsM2JXcEZK?=
 =?utf-8?B?bnFtaE0rQ3lQMlRIeUxaTGZGSjB4L3d1REExVG9qRUpwOGFRNU5zWlhEa0RI?=
 =?utf-8?B?Q0F1SFAzdHR6dFhCYmtTSWJGNjJIWkVrZks1RkdLeUthNjFybHV5M3FHc1Bl?=
 =?utf-8?B?MlhrWk5CUXZOOGJsdVZ0RnRMQ2MwbHI0a1g1aHdjcGJsVzlFaUErYVZVenEy?=
 =?utf-8?B?UFBxYnNUa0NDYXVNbnNKYnRCNzVsMTcwVmpBcWNxaHdmRW1YZUYvR0N2ZVdP?=
 =?utf-8?B?QWd3bEJvbXlmQy9lOXh4NithS1l6TFVkQjJvdXhtMnJSVitjK3J0VnBuWDJW?=
 =?utf-8?B?K1ZmcE1rajc3SVo5QUtyQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR02MB8500.eurprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(7416014)(376014)(1800799024);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qnp2QzdERWRWMWdsaEM3cW52a3h2K1BGcFZoY1NKbGFxdmZaeFFrSU5QbzRl?=
 =?utf-8?B?bUF6RHRLZzh2aDcrcDlaZzRYbndDYkpkajlTamVOYTQ2a3l4QlloaEhLUVZW?=
 =?utf-8?B?b2ZadW84K2hWTjByY3J2TVIzMzg4VkhmbDEwOTBJZXpmd09UeG9JQWlpZjll?=
 =?utf-8?B?bTNyY3BOMGM2Ui9kYWtMVGlLWmlvM1A4VEhjTTh4S3VRK0dJUzVjeFRsNGhC?=
 =?utf-8?B?Ylg3Zm9xR2ZFNVoxdmR1eWhzK09wbGpjTFI4L1k2NmttSnp6V01hRThuUC8v?=
 =?utf-8?B?ZDZ4dEMza1Q1dnZyQUVwWlFOZElNd1JOVFdVRWs2WFNOUzV2RE1QVWZoTnlz?=
 =?utf-8?B?YzJmSVVtdmN0K0lzNnlCQ2JEWUtpWWd6WkRrYldjMTJXQUE5T2pYNUp2KzNY?=
 =?utf-8?B?N1VScnMydHBCSXZpT0JlL2UxT0FhM0creFFBcUhpRW1HNWpwRFoyM3M2RVJM?=
 =?utf-8?B?bjRCbWV1TTQ4d05TbHYzQmlDU2VKL09EZEZ6Yk9iZ3dBS2xhdzNncG94QWZu?=
 =?utf-8?B?QXRkNTFnMEhZZjZ3c3hOcUY3LzJxQm5MTWpCcWdrNDk3UXFGVFNrdktNZ3NC?=
 =?utf-8?B?TWJCb3ZOS3NsRVpYdld6a1ZpZmgycUMxTWczYVBuYXhjMG5OSTh4NFFhMy9O?=
 =?utf-8?B?clB4VnZ6aXdkNGlHTDBsYTZaSXk4ZnkwYm1RQmZ2MHNCOGVlbC9RY2p4Zm9i?=
 =?utf-8?B?eDZwWWVnRFNzWDFmSmF6SWVqNjVxZXBQTFVBeEZtKzUwaDBiSmtqazFiaEU0?=
 =?utf-8?B?ZUtvRFRWbE1mMktnVzY0cFZVOENzQUVuOUVDdm5EODdyMjVmQVJkVCtsU1hq?=
 =?utf-8?B?SkpuZzZKSkh3RjlQUzZFaFlmeFBoN2QwNjFYYlFaaktkN3F4MmhmbWFpUnM0?=
 =?utf-8?B?RzU2SXlxb25KUE04elFQUit4QXhublJyUzBORWVvbTFzUGdBMHJ3bXR5QStT?=
 =?utf-8?B?ZkxpYXJ1TGpjak43RXVnYUVFTExEOWlGb0RqR3JBWjNuUWxRYmM3ci9tblZs?=
 =?utf-8?B?TWQxK1Q5UG5hNndRMmNxbWZzcnhPTHFhbGt6V2JnQTVOanZkQmNuUVA0N3dp?=
 =?utf-8?B?YUppVGxielpYL3NMSUF2S1l3bk1KUXpEQUY4NnE3ME1PcEVwbHJkL0VZdEdV?=
 =?utf-8?B?aHZobU9NQTdud2hBYkFtUjdwZE1XTlVERmFSOS9Xc0hvdGNhR2RaU2l2b2ZO?=
 =?utf-8?B?aERENEt5aUs0VVBvcHFva3d2dmtPQlJreGIvMmE4dDRnTWZtK2FzeDdqQnZ6?=
 =?utf-8?B?MlRwQWluck92V2Z4RnVMeXEvdVcrNUczOGdJeTVxaFM1Y1BZMGRTVFA2ODlW?=
 =?utf-8?B?UUsxQzNQL0NoakdXdTd4L2xkTmhjbml0YS9nczhnY21RL2lWSVVlNzFNWUFK?=
 =?utf-8?B?UXZHeC80TWJ4ZTRoTGJQVzExZTgwY1VhL011bTRtOFpaMmducTExVURxVHRK?=
 =?utf-8?B?RnVDdm9QRnFPZUsweE9MOVhMM0V4UjNFSnJVakVXUDZDTlVJaFVLQTVKVk1C?=
 =?utf-8?B?NnNZVGdtdlBXSm5XajlWb1cxbTNMOCtVZXJqK2dsZFIxUkNwQWNnVjJqY29O?=
 =?utf-8?B?ZXZocnlXM2hlVTBuYVN4UExkaVVZdS84YjhwNGhQcDRLem52bkFPL2RVODBv?=
 =?utf-8?B?WS9YNmhCTXh3bFFnWTJBMUNsVzVQNGpWSmxHMng2aTNpME1JbThGSGFERjVW?=
 =?utf-8?B?UVZiQ0pxbUlGUU9RS0t5Z1MyaFRsNVd0OGVlcGJsWUZZRzJkSGN6d28yOEk0?=
 =?utf-8?B?Y1hTL0ZRZ3AyRUwyb0dFRmhmR1NkWjdwcDNVK0MwT3hmY01sVVJRaEZ4RmR0?=
 =?utf-8?B?QWNnMkJMVXZZTnF0NkFIaTVPWDFtbVFwalJ1OTRBT3MvQndGcGtocjh1aFJB?=
 =?utf-8?B?MGdUelg1Z1BEeUtyVml4dTU0NUozRlBWdjhMdXg5Nllrbkx3S0p6QXgvODhI?=
 =?utf-8?B?M2hJR0tRRnNVNTNVNzl3L0lsOFFFaU4xdjY4dEVRdXp4YmQ4Q0UwOHpsTXZ4?=
 =?utf-8?B?N3JGUE1xanNyVFVxTGJWbzBlOWU0ZUtWcmppTlBJZmUrY0VvM2JjYXluSU5E?=
 =?utf-8?B?aG5KbUhzU1Z4UEQ0NTZheUhITHNVNUIzWlVMQnhRNUsyU1JRbnNBNkVqL1dB?=
 =?utf-8?Q?c50LV/alseuFTLePGZnjKqoI5?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 67806190-7ab4-477e-53c0-08dcccbfee87
X-MS-Exchange-CrossTenant-AuthSource: DU0PR02MB8500.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2024 08:59:49.3782
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hCnvvIqo8y3I6/VIj4ljBWyaJaF8LEuBIS1GmN7/88q4tTu1zpXUBR6y79apQLHn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR02MB9141
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_015959_393422_6E82F2AD 
X-CRM114-Status: GOOD (  11.65  )
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

SGkhCgoyMDI0LTA5LTA0IGF0IDEwOjM1LCBGYXJvdWsgQm91YWJpZCB3cm90ZToKPiBIaSBBbmRp
LAo+IAo+IE9uIDAzLjA5LjI0IDE3OjEzLCBBbmRpIFNoeXRpIHdyb3RlOgo+IAo+IFsuLi5dCj4g
Cj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0ID0gaTJjX211eF9hZGRfYWRhcHRlcihtdXhjLCAwLCBy
ZWcpOwo+Pj4gK8KgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCByZXR1cm4gcmV0Owo+PiBkbyB3ZSBuZWVkIHRvIGRlbGV0ZSB0aGUgYWRhcHRlcnMgd2Ug
YWRkZWQgaW4gcHJldmlvdXMgY3ljbGVzPwo+Pgo+IAo+IFdlIGNhbGxkZXZtX2FjdGlvbl9vcl9y
ZXNldCgpIGJlZm9yZSB0aGUgbG9vcCB0byBhZGQgYWRhcHRlci1yZW1vdmFsIHRvIHRoZSBlcnJv
ciBwYXRoLiBJIHRoaW5rIHRoYXQgZG9lcyB0aGUgam9iCj4gCj4gZm9yIHVzIG9yIGFtIEkgbWlz
c2luZyBzb21ldGhpbmcgPwoKSSBtaXNzZWQgdGhhdCB0b28sIGJ1dCBpdCBMR1RNLiBJdCdzIHNh
ZmUgdG8gY2FsbCBpMmNfbXV4X2RlbF9hZGFwdGVycygpIGFzCnNvb24gdGhlIG11eCBjb3JlIGhh
cyBiZWVuIGFsbG9jYXRlZCwgc28gdGhlcmUgaXMgbm8gcmlzayBpdCBpcyBjYWxsZWQgdG9vCmVh
cmx5IG9yIHNvbWV0aGluZy4gV2l0aCB0aGF0IHNhaWQsIEkgYWdyZWUgd2l0aCBBbmRpIG9uIHRo
ZSBuYW1pbmcgYW5kIHRoZQpuaXRwaWNrcy4KCkNoZWVycywKUGV0ZXIKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
