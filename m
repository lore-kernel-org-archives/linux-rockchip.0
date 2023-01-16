Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C949C54EBE
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 15:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SdCoUrK2ynj+eI4v1dd36GMKgbQYQ7bAyEEZ3DPOd5k=; b=y6kQL/WrOiHXKnE1enNI36gpUD
	ED4x6Nvy+jXn6VPnQMCX+rfiziwCQCGG1alZkW3kXVNZHERAMQjIjamlRAd1Vq9VthQbwq6I5zita
	YvED+7e8qnRhiRteekb/hkJdOyEnhJx2vqCqo9mWDti46V2RiR8Yysbu1gBamX3Oh9CjSMSp49bKo
	dv4HTYnIVBrOOWlnXS6qbwl2/SZBgdh+3gfK7rrHo2XXS/jG63l7ddKJuPPGX8+9iaRHpKgiULvKg
	BDiZQGFoi3GE4uYR/k5AFAfehZK/B3/erzsfOhoe3ZGPzXFghW+cc1x2/GLOYIAztDkK/rrCLLXGA
	WNyaxXJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHRcX-00B9Do-Cf; Mon, 16 Jan 2023 15:42:01 +0000
Received: from mail-db3eur04olkn2085.outbound.protection.outlook.com ([40.92.74.85] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHRcT-00B9CM-Cl; Mon, 16 Jan 2023 15:41:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CSIQ1LU22AMoIOxo8+RtwbA20xXzxwzzW9jDEgSu+zw6qkwIp9syXHETC0g72x5yFFxaeVCO2wu+qnrLsBnp5fL6iz+fQNzyynQy9lD0k2J1P9FRJpGTgqkCnn31Ph1C/2a8b2kEQeg4G5LTPqL/ONna9t0K4UbFmlBHyBw+/lb0UViusQ6ZmQh7I2AlQSCAMDkRA9O8edFilGy/rurQnoEx++mWRQIkKkrKsjws50I/R3nfE3lA4rBP3XTwbR3iYObGoZd51AMHkGCyCBvvv7L23tmC2RLlzADFIEs4sSc4RrD0Y+swqekzUJCxh5Wh8o7RkziSCxvHad9G6F7klA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lBnv6b/6xZUXRnBuDK9EKIUhqTSQiJP41GnBfpIQmy8=;
 b=Xb6OCDQW0ATs34zVWeA8BtX2wRlIS6AbqyfadAsHrgprptxOuj9XlcXMENzTmXx6N2knmTF6hQ2BYjJZz9LH7NmuAjIO+elQ+bDb66UnB0iiL3d8F4Eka7mlCPH/vvxOzbuNugd0DwPi1qi+pKla76tn+EjeJk9S1RCQUNayNoBM1e+1u1P/yLnWUScRhZdzdNrzstVze6x973NYDKsT524CB1Jgvz2y8x9gxdbPCuTtOTV0EnOS9vzUJJh9n0F0Ek3SUytKKHOWPcPnB8fg+QAb2FeCjGahQu+nuT5idQNR8fmSuEC7mV6IsL5Pg4m1a/iPw3YteyD6eHTj0AjqdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DB9P190MB1594.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:247::8) by
 DB8P190MB0761.EURP190.PROD.OUTLOOK.COM (2603:10a6:10:12e::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Mon, 16 Jan 2023 15:41:53 +0000
Received: from DB9P190MB1594.EURP190.PROD.OUTLOOK.COM
 ([fe80::2567:af26:29a2:850]) by DB9P190MB1594.EURP190.PROD.OUTLOOK.COM
 ([fe80::2567:af26:29a2:850%8]) with mapi id 15.20.5986.023; Mon, 16 Jan 2023
 15:41:53 +0000
Message-ID:  <DB9P190MB15946D9C56FC807508BE7938ACC19@DB9P190MB1594.EURP190.PROD.OUTLOOK.COM>
Date: Mon, 16 Jan 2023 16:41:50 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] pinctrl: rockchip: fix mux route data for rk3568
To: Linus Walleij <linus.walleij@linaro.org>
Cc: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-gpio <linux-gpio@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
References: <20230110084636.1141740-1-jonas@kwiboo.se>
 <2023011017420455469534@rock-chips.com>
 <DB9P190MB1594C0CEEF186240558D58EDACFC9@DB9P190MB1594.EURP190.PROD.OUTLOOK.COM>
 <CACRpkdYRr_WDC59LC3iGqpTEcyGErdyCBLmB4Ox5ZQH3M70Lgw@mail.gmail.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <CACRpkdYRr_WDC59LC3iGqpTEcyGErdyCBLmB4Ox5ZQH3M70Lgw@mail.gmail.com>
X-TMN: [5yMCRYW3cFs9/tAWSZ47KP4Yp8eQ5GCL]
X-ClientProxiedBy: AS4P189CA0012.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5d7::15) To DB9P190MB1594.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:10:247::8)
X-Microsoft-Original-Message-ID:  <3cbb5e00-3289-0ed7-305f-51897d83b8b1@kwiboo.se>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DB9P190MB1594:EE_|DB8P190MB0761:EE_
X-MS-Office365-Filtering-Correlation-Id: 2af176a9-debe-4d5d-9023-08daf7d83103
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	h2gITo0wx6LcLzHwAjVoUy8PblXNxolsISgk5mvxQxMfOjje4JVTyB7fSrtsZuVtxq3E3uwcAvFJlOcQXAlpomD1wbvByiTWQyWFGrN/UZBC30PbIj8LGfgZkbLmwsVnMZlNr1JDe8riekHPUUvcIdwU/K1JeYV+OxJJVgrhlgXxuz9jBt4GNolvCXf4X93k0FCfww3N03jIx7IHjwhlwLtC7rTwoVyageB7yVQX4NA6YCnI8sTMRIypIdVAOx9mwOLGT2n3mpzyJrqcKkla3B6LjCLVP9qOxjj3SbFSE7q/BOhEZQhMWtTw/EBzrE4H6aLnWhEzPQQGxWzR7uRozALG8/xpmlk0GUUdElA3o9lbZGgpnHtWIebX9xf5el3gyHdIfqS1rzA4mcDhGHnpmNOemRYS2oAp0cy3qYSSu3hqFi/7TDG15mu1SNgyQhaWS7WxDwpDnlmyWoLVTXnoRm4GmwxWCQTSx8G/IWaj7V5aPYZ18sIdsLwDqdOu8NaoK619FPw9AL8wSCTuBGXPGO8bSnvNlt74/U/cTFbCU3RAYoSjZzDz7q+/jYsjaZHO6Yzn2kdKF3LufZiXDZLo/aacqOkhMYhgL0VEGYs8NprIZ96Dr43oHTyycCHu92HEUU9O0//aaYsvAaesrXfdkA==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?L29WUXlqTUw0ODBXMHk5MVdYNGVkcTRPNnVYbFYvSDQ3dEpuS0Z6TTJ2a3BV?=
 =?utf-8?B?QXBZZ2NoL0NkVm9malFWMXl4bXk3d2pRNm9YVDVUczdDT0lNVmRpOXVoNklw?=
 =?utf-8?B?TFJuWm9adGh1MmQ1RWlKcTJJRE5TK2Mvb0lKT2I3eG5OWkhQWlJFdElaa2hF?=
 =?utf-8?B?RXVWbGF1a2l6bnc1R2UxUnJ1dUpmblQ2NHorV1hGQzd3V3VIWWJ0R0tDWGww?=
 =?utf-8?B?MFhzeGNlYUJBU0J3RFRFZHBMeE5KcU1FN3V1Z3YwVnh6amhFQWYzTTZuRkZS?=
 =?utf-8?B?MlpybHZ1T3h1RHA3RndkVy91NkZrZUFpOWZRVWdPRUl0UkRhTDcxbTByMWhY?=
 =?utf-8?B?U3U1SWVFU1hSVGxiL3preVNPVnBQODZsdVlUL0gxU2xvV0VSR3k3NzZvcjcr?=
 =?utf-8?B?ZjdxUkhQRXRZQ2dLV21mTUJ6WHo2bnZDMk02aVNDSitmak1qbUtjNHJDUStK?=
 =?utf-8?B?UHE2ZlZvNWxlWW1OcWhXV2xUREx5ZE8wVGo3ek1IaVVOUWlWVGRpd1NoWjRn?=
 =?utf-8?B?Yk95ZTNrdWtzQmJ5aFdEVmtwV2oyMTZhV1UzRnA0QjBMVHlxZDZxLzRIbjFm?=
 =?utf-8?B?NURBYUNycnZaWjNhMW05OG5YNE9xVlB5c3B5WDJxdy95VlBOVTFZUlk3aHRB?=
 =?utf-8?B?aDlRVS94NUg0T0lVTzJneGJUc1l1ZlVHc20wZGdnMHBpTmp2bDVkcSsySnd1?=
 =?utf-8?B?U1RmbjRSZjJwTjFUc1FKOWdWTG9lYVYrOVVCdFFQVWtpcThsV0VyVm1VU0Zi?=
 =?utf-8?B?MGQrdndQOS9YQXNPWDNZaHMvbzYva1ZjNzcvZy9uVHpLTjJmWWxLOGt1bm0w?=
 =?utf-8?B?YldSSTludFZrNVhpaCt0OFMzMGd4RXduc3k2ZDJvQ2FNWStzMGV0Z3ZvWGRx?=
 =?utf-8?B?YUxpVElxWjFWUnpLdFpkYlNaWjRGU1BTbFFWTnh3dmliTVExcEtrOXlwWnNi?=
 =?utf-8?B?TW1Vb2JtK2x3TnpSMGxQdDgwekJhUnhVQmxHZjVqR2VqT2c4KzJ4OXFPd01q?=
 =?utf-8?B?NlVmb1dNdU9NQ1pYZUNXMFZKVi9nbXpwNXhTSnFualdHQ3lMVjE1Z0RuTDdu?=
 =?utf-8?B?STEvZ0owMmpjVVdxaDhoZ0VnV1crSUkrQXE1Qm8wOXp6THlNTmFpQ2dMaGZx?=
 =?utf-8?B?VFU4OUdPZnc1NGVhUFE2MnFhQTE2aytxL20yVlNEWGNyaVJTc0poWWhMYlN4?=
 =?utf-8?B?SmFZSUZsS0hNTm9sTnpsQnJFaXNiVlh2biszT3REYk5pOGpiSFR4OFovUUFv?=
 =?utf-8?B?MFJYNlkreFN1QTZFNnJzbUswaWM1Q2ltZmVGU3lscnh4a2gyQzh0QmZ6LzBG?=
 =?utf-8?B?WUU2TmxlNFhXZFhQWVdINEdrQlVGdVRtdzcyejQ4THkzQlFUL2hMYkp5d0Nh?=
 =?utf-8?B?eWJ5TEFFdDhFQm4vKzFlek41TGwwQ1RxamdINVc0c2Zmd3pZV1lkMGhYcGdy?=
 =?utf-8?B?eTZ3UGEwWmFwTlVuenNIajF6ZTMwSUhrRGJqaU9yTHduS1E0RktDdGF1ODRI?=
 =?utf-8?B?K3dFa2pKS2l3RU8zdlRET3d2dmJxUml5djdPdTQ0akdGUXNQaWZYS01xNzNt?=
 =?utf-8?B?SUZDcTRWdHBud1JIUjFtbDFuaTdsb3hST04zaW4yRVBKYVdQaG83QndsSmk0?=
 =?utf-8?B?bWYwOFBOVmEzblExUGROSHJzTFQyMFhjaFZuT3pRbm84aHZTdE1GUUwwMDdX?=
 =?utf-8?Q?PoRhDjVpT2xlOpSCE4Bh?=
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-91991.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 2af176a9-debe-4d5d-9023-08daf7d83103
X-MS-Exchange-CrossTenant-AuthSource: DB9P190MB1594.EURP190.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2023 15:41:53.7721
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8P190MB0761
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_074157_472382_3F36D547 
X-CRM114-Status: GOOD (  17.64  )
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

Hi Linus,

On 2023-01-16 13:39, Linus Walleij wrote:
> On Wed, Jan 11, 2023 at 9:42 AM Jonas Karlman <jonas@kwiboo.se> wrote:
>> On 2023-01-10 10:42, jay.xu@rock-chips.com wrote:
>>> Hi Jonas
>>>
>>> A patch from https://github.com/rockchip-linux/kernel/commit/55aa440fb85377a8b8c7e4bbc367463c235da804
>>> can you try it ?
>>
>> Good that this was fixed in vendor kernel long time ago.
>> Could have saved me some hours of troubleshooting if it would have been upstreamed to mainline :-)
> 
> Hm hm some technical debt to pay off here I see. It happens
> to us all.
> 
> Jonas is your patch identical or do you want to send a more
> inspired version with more of the fixes from the vendor tree?

My patch should be good to go, it seem to match the code in latest vendor 5.10 tree.

The vendor tree does contain one additional detection pin for GMAC1 IO mux M1,
GPIO4_B7 (gmac1m1-miim) in addition to the existing GPIO4_A7 (gmac1m1-rx-bus2).
However, I do not see any need for what seem to be a superfluous detection pin,
all in-tree device tree select both gmac1m1-rx-bus2 and gmac1m1-miim.

Best regards,
Jonas

> 
> I'm certainly not going to sit and wait for the patch to come
> from another source, so I would like to apply some version of
> this patch.
> 
> Yours,
> Linus Walleij


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
