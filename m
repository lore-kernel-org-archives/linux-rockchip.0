Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B700EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jul 2023 07:41:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zq/G9Nn5bjxzbDDwos2lTRduZqRy/7Zh71m3M5CuiIA=; b=WaQNbZ/a1Cerbyhzji2kZgI7a2
	33l6yBuB9hC8nOb2k96l0qYee6LUYALvkejPIGHtkLbxa02/dL/j/n8EokISGgMBsVFy39005ZWC0
	fwEp1gB/L+nhfyqxF1Iep+kGsVi6fDloDvWqQNbTlFfh+NlCKOg383l3KlxCrdYj37ZXPeKDkwPwI
	SRGjV1mRqV1lqd8nzxzpzSQ9jjOJs6XBqUWOOGHCQKr4QStxynvJY4OFFK0zfLneEsjKUFqmjUA5T
	bPYdCUV+S3DyFc7puBMxcjHM7cma7P8+tNZgLuiLUbCj0nJM0WLBC0NYagQcOh4DnX4csAz0QvZu1
	NMn4Ff4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLIqw-003Kj6-0i;
	Mon, 17 Jul 2023 07:41:06 +0000
Received: from mail-vi1eur02on2060e.outbound.protection.outlook.com ([2a01:111:f400:fe16::60e] helo=EUR02-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qLIqr-003Khk-2B
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jul 2023 07:41:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QccKchgK96hsW+YpC9Pzr/ajvpb7r91buuJqUVmxFK+WVjMCvVPWMRoSDR0GOcXJIj0P9174tJiqDK+r6e83OZzB1h6bkZVaRSOvUNmJnrF1CSVyPJQ2OK7Ap2JW5McEZE2yxYhAAGbVAYxVgYp3WSUrPGpjDGBlRBMI/7j17byf5RJuCC2xNGuvFT6jNfdW3hIxzXiNVbID1PzIfR+imbJthXIzeiWxQsWWNbSJjsK9AOZiZy0FTZVXrDcv9mvvaHFUJXiqZVEaBp8U6G68XgVqR2YV5a7c6eV4VPnLI+4Wpt+5ceOgzN9Sfyuir3QjiFH8t1qiRrmPXdqD1AKtbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/sDC7RR3CqCOQgCUa4gNkS6M0upZQiwwu9yvKxq/F0=;
 b=CH3Iwc2tOnfeTia4F3o00KUYvMg/Faxuzc2PiYhIH+hvMrfh6HiZpi7A1kxlJTA6kKV0AGog5XXyYRU8O1asLvUNcUw462vAXn7/2u3hNwcCEA7ncxHUZCW7cIKNoO20TGrRrIsIg54H8yQXIp5Z1P+f9vDSwpVBzsCqEP62fTdSxEvozlRAj4s1CRZo1RkQb9ecr6Zo8q+No+WGtY5ljpn1pNrYE59N0ootrQojpDBKtcJxM+DBYMT7CKQZHOw6a7Yp+u61cJuuOvl7voDaHr5tvs3Ytvw51bICrNnn62qnH8KDi04g119nXyqeSsp2KmP5iU7aPA64w5FzP7Sm8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B/sDC7RR3CqCOQgCUa4gNkS6M0upZQiwwu9yvKxq/F0=;
 b=ne+4IDd6fL6cf+vM03ffv/yaODLkQgn4YXscUNYjOEBOwAR6wRXxbm4k5AYO76qFT/+5yBDdWL2JibLzDokJmyTDRHKaAIw24AXaJ10zZ+aZJPTrzfA6n2YK6su14QX89qe2LXNouU1bPJfll7ZsYqgerVZWp/PjOSENx8z/U4o=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PAXPR08MB7333.eurprd08.prod.outlook.com (2603:10a6:102:230::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 07:40:55 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4fd7:91a9:a92b:295a]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::4fd7:91a9:a92b:295a%4]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 07:40:55 +0000
Message-ID: <d8f7f21e-f10c-17c9-2462-f21f49196096@wolfvision.net>
Date: Mon, 17 Jul 2023 09:40:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH] arm64: dts: rockchip: rock-3a: make ethernet work
To: Jonas Karlman <jonas@kwiboo.se>, FUKAUMI Naoki <naoki@radxa.com>,
 Heiko Stuebner <heiko@sntech.de>, Anand Moon <linux.amoon@gmail.com>
Cc: linux-rockchip@lists.infradead.org
References: <20230714063027.74489-1-naoki@radxa.com>
 <25008843.6Emhk5qWAg@phil> <3e4a649c-a8fe-ff84-3beb-c56be1afff9b@kwiboo.se>
 <88A84626E8619FC1+da8b7cbd-ecc3-bd30-ed88-d6f13a39acd3@radxa.com>
 <a8de59ae-777a-a52f-cc23-573b500754a7@kwiboo.se>
Content-Language: en-US
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <a8de59ae-777a-a52f-cc23-573b500754a7@kwiboo.se>
X-ClientProxiedBy: ZR2P278CA0034.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:47::15) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|PAXPR08MB7333:EE_
X-MS-Office365-Filtering-Correlation-Id: f5116efb-a36e-46ce-89e9-08db86992745
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hq/ej+gvp7M/iACTzujFOwZbESbRdeZKC7ZeZ0rLEt5Mnro2bIBM0skIqmQcvFt9HJ72gucnvkDKr8M+rptWxsYfyS/mz4CorWd7m2ZycuY1/fF6Ed+U9/dJ3r9okYLfWMfci3WD7X58q959qwyiLRMo8XETNQmLboAgMPhylPkySTHZ2SetPqee0ywcDl20TrXbAo0ceTWKnrRveV9PjDL4nPv+fibceN2RqDyh9vYJlMmokyHaXF5GLWrw62hm76GoZqAMJDB2mfgakagllKFeEaLQ3T/kxYVY4sC5znSCyBLqaboe5HlEpY5Tng3YMbYuQBwiY1BgDsHY4uf5pLe+mpEjwuSFJMwKQ7to3XQxSj8TZ7Jrx53oFZg4Rs3QDBOGvwLrfnR/rhyrcP8jnRSlq7L6two8DTY0AQ0U2QkoAZFnnH+L/xjVjWZlPeNLEXEC3T2+EEr0C7NuYTtwYlidbB+am28Eeu6ojVEQt1kh6h6FcZF0OIH0YzlBlYBKpCz9uP29+gYHNijP4paq3ppcJzwqTYFSH0Hb+rydZ4DgaowawRyflVpZwSYPt9Jnxmp0ouuULqkyqq2QkYFuV7PF1L4Ux60nlpgGt9aXYDvodRoAKKxuK8BXctogDuSKgAApSuRQqZAIs393wMfGeQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(39840400004)(366004)(376002)(396003)(136003)(451199021)(36756003)(86362001)(31696002)(38100700002)(2906002)(478600001)(4326008)(110136005)(6486002)(53546011)(6506007)(6512007)(966005)(8676002)(8936002)(316002)(44832011)(41300700001)(66946007)(31686004)(5660300002)(66556008)(66476007)(2616005)(83380400001)(186003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Si95UXI2djBaT0FDbG9CTVBGblhpa2lGeTMrZ0REMDZhRHovYk1YL25ha0t3?=
 =?utf-8?B?b3N4VHd5enVPbldqbWJPYUJTNTExc0J1NWFHQnhGcUozaUc0MVNWa0dGMVVR?=
 =?utf-8?B?Y3Z0Y25obEVFV2lYY2hocmt1K1R5V0NSMTRsMVA3OUt3Ryt5MzdBSWVRdXlx?=
 =?utf-8?B?VCttZUFEUzJzY1oxeWVPeWszb1ZyaFNwa0NOQ2NjcTN3aUR6L2gyMlhEVmJk?=
 =?utf-8?B?NmJtcHR0UmJZSnJwR1hmNUJwYVpkWDY4c0pOU0l5MmdUSmNWUmp1TVcySU9y?=
 =?utf-8?B?SUFZbENaRTE4K3lwbGVCcU5idlRBckVKRHo0MXNQYkdZeXVrT1cwWTlKblNj?=
 =?utf-8?B?c2VIeTZlOEROb3BSQ3BtWG5QL2ttenRRNkxTZElDVTJsV2FVY1pLaU1HTk55?=
 =?utf-8?B?OFVraUZrUGVqRTB4SzUrTzVQc2J4V2dvM20wNWEwM3NqZDU0Q3hNWXd6ZmpR?=
 =?utf-8?B?ZFc2dllKaTEwc3Y4M1I3V0RCUjVRb3ZKdGpRdysrejJ4U0M1TGtpSnlIVDVI?=
 =?utf-8?B?bUNjWnZhUjdDL2NQVUFsNWZWU3JhK1hwL2ljbzZRc2NhTkdQVUlCb0NwUGFS?=
 =?utf-8?B?UFg4TUJNOUNEbjVQRUxGRmMrNmFMdDZkTmZQS3lEZ2w5eXM5dTYzeTFFV2xm?=
 =?utf-8?B?NFZVektMV1lXT3R6VGwvNGJTWWpYRTVyYXk5bjZDUVdwVmtBOXYvd25xaTYw?=
 =?utf-8?B?SFo2ZEZRMEVzeldFWTBnUGVpRTI5Wklja1J6THgrdVU0VUVCcXNieDY0bjBS?=
 =?utf-8?B?MU82VjhWNmZERkVOSUxSMXg1dVB5Y3VXMGh0UlRSTG9rQUxZY2NsS3RRdlc3?=
 =?utf-8?B?czRhRUIyZ0JwVU9FR3R5bU9ETVlObE5LcG1iendzS0txZExRZmxQRWdxZUxY?=
 =?utf-8?B?OGZaSjRXNnpUVjhkN0dOUjU1bTFoN2xxY0Z2MEVpeWRLbmJjZlU3SWthUUtP?=
 =?utf-8?B?a0wzTXhSTit2QVRPaUEwMUNBTSsyb25Bazg1Z09zNTZMYkVhSmFsbzhvcDRq?=
 =?utf-8?B?Y1NiQVJNSFNSUEJrY2tnMFJQWlIwaEVQZnlMQnFyTkVMc2F5Y1lYNVVZZTlq?=
 =?utf-8?B?eWRsUkNXTDlqWDRSU0RNZE9mOVRRZWMrQmhhT1ZrQTU2MmZham5CUXFWR2tS?=
 =?utf-8?B?anR2VnYxcHI0MUNGQ2RydTIzcGZuc3dFWWNJbnJjMzBCTytKQW5mMmNRQ2c4?=
 =?utf-8?B?Q3lmNUFBWi85cndyQ05vWXhQcjhqMFcxODRmNWVVWk05Wnk3dUFNT3g3alJ1?=
 =?utf-8?B?VHUxbkxaZkZqK1grSVFZUUkwYjYraGxNTDF1ZytYOHZkcWZYVnhoUlpBeXVy?=
 =?utf-8?B?VFB0VER4YWR0aU1PSHN6KyttcWhMUHg5aWxyTk5NSXFybVB5R2ZMVEpBRHFT?=
 =?utf-8?B?dzNmSmVqVGtOU1M2dUVwVUtVRXI3N3RTNXBZejE0cjFtTFNKQmgrRGMxN2lD?=
 =?utf-8?B?RG1QRTdtZEt6K2dFWENSVHk4WHdwdDVtTUtzdlZneXNhbENnN204N0NVc2xa?=
 =?utf-8?B?WjB3dXlaYlZ2RE9PcERKWFZWMHZlbjd1RHdDc2I5WVJYdytGRVkxQVZsZ2c5?=
 =?utf-8?B?aHF2K0dPakJJQmpZREFVeUdtRFQxNmJyKzJiZERwaThYbXVHUitWK3ZWdXNw?=
 =?utf-8?B?eDFLTnp4c2pQUThXMTRIdnRscUZ5bEhDd0RQZHlOZVUycUNOcm9mdkNtQWhM?=
 =?utf-8?B?RTlYVmhmL0lLRVVBbTBWdUpWVFBqcTluNUZyeFNJZG9pSjVtZUt5cGtBUytT?=
 =?utf-8?B?Vk0vY1NxN3R0M0UyNnVGODlDeEJ4THpFTzB3U1RMYTY0SUlGdXZOa1ZUQ0Zj?=
 =?utf-8?B?eVZqUUNFNDVBUlpnMXIvbitVcXFIUDEwNUpBZnJkcDc4RUF0bW4zVkkrSTRt?=
 =?utf-8?B?ckFOYkJHTDZiREV2TGNlYWVXVDdUNFc3OXU1VytNcmdndzRLVEVZOWF0ckZW?=
 =?utf-8?B?dFppbmpmYlVUQmtZVERnVFppNWVURnZyT2JXRkE5aUM0NXMrTXNlemhhSHVu?=
 =?utf-8?B?QUc5b05BMzQ5RXNrWDlZZ2Z2Qkl5SmZzMXBPK2RZSWRzdzBkaldJMTZhS2xZ?=
 =?utf-8?B?SnZlK0s0Y2o5T0FISUNZa0pFbCtvS1Q1d0RpTHpyWFVLTWF3REs2ZW9JWkRZ?=
 =?utf-8?B?emtjR1lVRXB0WUk3cVZsbWtoTVBBN0lDUURoNk83MVZCK3BBcUFmZ0NpQy9i?=
 =?utf-8?B?ajFKSVJNbmJkQkhXSzRROHBsMGNCb1hjQTJLR2ZNanFQalpVMnlqS3lnMTlo?=
 =?utf-8?B?TDMxQkpzTmxnS1BtcWZqY09uRFZnPT0=?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: f5116efb-a36e-46ce-89e9-08db86992745
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 07:40:55.1308
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5p8TVC83W2ELBXQCHnub+zhDBc8J6QT7MFwiNnKmq5Of1OwMMrB6psLUgXPK1MRgB3l/K2rO4qJbk9aGJBUXlqHU+FZcToWBeAdQ6w5gWec=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB7333
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230717_004102_000307_C9A014E5 
X-CRM114-Status: GOOD (  29.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi all,

In addition to what has been already said:

On 7/16/23 15:50, Jonas Karlman wrote:
> On 2023-07-15 06:49, FUKAUMI Naoki wrote:
>> hi,
>>
>> On 7/15/23 01:24, Jonas Karlman wrote:
>>> On 2023-07-14 17:46, Heiko Stuebner wrote:
>>>> Am Freitag, 14. Juli 2023, 08:30:27 CEST schrieb FUKAUMI Naoki:
>>>>> ethernet on Radxa ROCK 3A is not working by following error:
>>>>>
>>>>>   rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
>>>>>   rk_gmac-dwmac fe010000.ethernet eth0: stmmac_open: Cannot attach to PHY (error: -19)
>>>>>
>>>>> to fix this problem, align related properties with vendor kernel
>>>>>   https://github.com/radxa/kernel/blob/linux-5.10-gen-rkr4.1/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>>>
>>>>> Fixes: 22a442e6586c ("arm64: dts: rockchip: add basic dts for the radxa rock3 model a")
>>>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>>>
>>>> There also is a second patch in the mix adding the gmac1_clkin
>>>> ef9f4b4a5020 ("arm64: dts: rockchip: Add support of external clock to ethernet node on Rock 3A SBC")
>>>>
>>>> And this patch does the exact opposite as the original nodes.
>>>> Can someone please mention board versions? Or did the gmac1 never
>>>> really work in the first place?

As far as I know all schematics versions state that the PHY produces the
clock (see the most recent schematics here:
https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf)

Although using the internal MAC clock works as well, using the
gmac1_clkin is most probably the correct way.

>>> Ethernet have worked and probably still works booting with vendor U-Boot.
>>>
>>> However, when booting using mainline U-Boot the ethernet PHY is never
>>> initialized or reset due to lack of a ethernet gmac driver for rk35xx.
>>
>> surely I'm using mainline u-boot.

Ah, this might explain why I never experienced this issue: I am using
mainline barebox with GMAC support.

>>> With an early work-in-progress gmac driver the ethernet PHY is working
>>> same as with vendor U-Boot, and the ethernet PHY is identified.
>>>
>>> This revert from using reset-gpios to using the deprecated
>>> snps,reset-gpio is probably the wrong way forward.
>>>
>>> I suspect there is a bug in net/phy/mdio_device.c on how reset-gpios
>>> is asserted/deasserted, it works differently than how I would expect it
>>> to work, and also differs in how U-Boot handles reset-gpios.
>>>
>>> Some earlier findings regarding this reset issue:
>>> https://github.com/Kwiboo/linux-rockchip/compare/rk3568-eth-phy-reset~2...rk3568-eth-phy-reset
>>>
>>> Will try to get a proper patch/rfc out later this weekend or early next
>>> week after re-testing that on latest kernel.
>>
>> thank you so much for your awesome work!
> 
> Thanks, made some progress on tracking down the root cause.
> From what I have discovered so far there is a chicken-and-egg problem:
> 
> - phy needs to be reset or phy_id read back as 0xffffffff on mdio bus
> - phy device is not created because a valid phy_id is not read back
> - phy device needs to be created before it can be reset
> 
> Possible workarounds so far:
> - phy is reset in U-Boot
>   - very early work-in-progress at https://github.com/Kwiboo/u-boot-rockchip/commit/6ee80f9a895a32551cf30dd4252a4960ed80dfc9
> - phy is reset using mdio bus reset
>   - similar to old https://github.com/Kwiboo/linux-rockchip/commit/8597fcfa0c5c792dabb44a2db7b283c56c99ec6a
> - phy is reset using deprecated snps,reset-gpio
>   - similar to mdio bus reset

There was a similar discussion here:
https://lore.kernel.org/all/CAMdYzYo_DGiO0UxJEb3xues7Um=X9AgPvz+Xp_YWb9pp9HaScg@mail.gmail.com/

The approach that moves the reset to the MDIO bus has been mentioned
there as well. On the first glance this approach looks reasonable to me.

Best regards,
Michael

> [...]
>>>>> ---
>>>>>   .../boot/dts/rockchip/rk3568-rock-3a.dts      | 32 ++++++-------------
>>>>>   1 file changed, 10 insertions(+), 22 deletions(-)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>>> index 917f5b2b8aab..f9381ab9629b 100644
>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>>>> @@ -32,13 +32,6 @@ hdmi_con_in: endpoint {
>>>>>   		};
>>>>>   	};
>>>>>   
>>>>> -	gmac1_clkin: external-gmac1-clock {
>>>>> -		compatible = "fixed-clock";
>>>>> -		clock-frequency = <125000000>;
>>>>> -		clock-output-names = "gmac1_clkin";
>>>>> -		#clock-cells = <0>;
>>>>> -	};
>>>>> -
>>>>>   	leds {
>>>>>   		compatible = "gpio-leds";
>>>>>   
>>>>> @@ -256,18 +249,24 @@ &cpu3 {
>>>>>   
>>>>>   &gmac1 {
>>>>>   	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
>>>>> -	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
>>>>> -	clock_in_out = "input";
>>>>> +	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
>>>>> +	assigned-clock-rates = <0>, <125000000>;
>>>>> +	clock_in_out = "output";
>>>>>   	phy-handle = <&rgmii_phy1>;
>>>>> -	phy-mode = "rgmii-id";
>>>>> +	phy-mode = "rgmii";
>>>>>   	phy-supply = <&vcc_3v3>;
>>>>>   	pinctrl-names = "default";
>>>>>   	pinctrl-0 = <&gmac1m1_miim
>>>>>   		     &gmac1m1_tx_bus2
>>>>>   		     &gmac1m1_rx_bus2
>>>>>   		     &gmac1m1_rgmii_clk
>>>>> -		     &gmac1m1_clkinout
>>>>>   		     &gmac1m1_rgmii_bus>;
>>>>> +	snps,reset-gpio = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>>>>> +	snps,reset-active-low;
>>>>> +	/* Reset time is 20ms, 100ms for rtl8211f */
>>>>> +	snps,reset-delays-us = <0 20000 100000>;
>>>>> +	tx_delay = <0x42>;
>>>>> +	rx_delay = <0x28>;
>>>>>   	status = "okay";
>>>>>   };
>>>>>   
>>>>> @@ -588,11 +587,6 @@ &mdio1 {
>>>>>   	rgmii_phy1: ethernet-phy@0 {
>>>>>   		compatible = "ethernet-phy-ieee802.3-c22";
>>>>>   		reg = <0x0>;
>>>>> -		pinctrl-names = "default";
>>>>> -		pinctrl-0 = <&eth_phy_rst>;
>>>>> -		reset-assert-us = <20000>;
>>>>> -		reset-deassert-us = <100000>;
>>>>> -		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
>>>>>   	};
>>>>>   };
>>>>>   
>>>>> @@ -630,12 +624,6 @@ vcc_mipi_en: vcc_mipi_en {
>>>>>   		};
>>>>>   	};
>>>>>   
>>>>> -	ethernet {
>>>>> -		eth_phy_rst: eth_phy_rst {
>>>>> -			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
>>>>> -		};
>>>>> -	};
>>>>> -
>>>>>   	hym8563 {
>>>>>   		hym8563_int: hym8563-int {
>>>>>   			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
>>>>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
