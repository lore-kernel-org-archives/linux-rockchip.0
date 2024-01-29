Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDD12C47DB3
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jan 2024 17:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bHuzVPVYOFjQ2D2qZPuAgHT3V3UTM2MuMxy9fJ1YQ8E=; b=E+YPrAp0cSgKRxh8xUjjtYd6Cb
	XSGluXsOe4BMnK+EoOL7qTxE4U6OG3X8At867UUVvVUUO2dJb0eUiO0Eo5p4h3oT3ELLg3E3abzS1
	BiWzZaql/BdwLG6tOj/1UdT7VxTroNkOD2kZO43iD45pGh9vU/BoMkH19yTIA6C6DQ22xyfzxKD6q
	ukZB+p9ndB+OWDJ6ayp3ZcF/LDgkn4XOCx/rzR6mIPQUY58vfB9ZeRCHBoXpoofb4a8XJBhp7jY5X
	5No/cc1AuANWIoXA5BnNYw1EzoI4TfIvaYO5+JR+n9v963HdFE57wSvC+LNT3+HDhYhW5A/zRA66x
	XD6EECEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUVH5-0000000Dhsd-39U3;
	Mon, 29 Jan 2024 17:18:23 +0000
Received: from mail-db3eur04on0619.outbound.protection.outlook.com ([2a01:111:f400:fe0c::619] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rUVH2-0000000DhrS-0hQd;
	Mon, 29 Jan 2024 17:18:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WD0sNLC2qC+8haWpjvny/DDAiXHGoEnzAsGgNDF8HM6zsUEWhxbzTNdyWuxUaMGiVRbqomVjLaUwon1JFDWh4fOsyuNSO7bzz1pmkBZUQVG7kkrqj7DPqxyyeh6cSSR8eyTfeSXeDGHznvOPONmD3HmwFVwTCqh4U/atMAtGE6zwci8GwNdUmW80cdNPYoTOslyFyZEep3ujuJAKzhJFXq8xoLK8konOLQU4dqKAA51vHFa/oPQ1apIO+Kvbuxmmaf13aW+WvQnzGVjjO+F3BtRSEVwmhPBPjyRLmKPOGuDsaGBQCNab9yAyT/+EiYi5o7olSvMm1q3Njh81bEkdsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3CuoHn6ZemvEc29Crsa4aryT+7Y3WCGfLdesFo1vfH8=;
 b=S3KuCeJOwttwgff8MzBOpAR8NoKYe3FYKY//Bk3Pnk/HfJr69Yn5WZzEcVdZmyHFKHcmtSUhHsvwQZghLd/AQ+ZrQw23XdY1dZ+fscj6JlihHJAlk3RdZzTBHI42LYwDAX2Dl0brVllHsndcbU6OnE5uLaMg2z5HvZyykmcgQ8cP7dpiES9NcOrsbBaG08QizOhc1QRYjZMR+qwIRg+ativTUrfhDWj3WWp1mIyx+LSO10Dyf9EfYTuJe7QOv3q+VGUvzWni5vMbk9VdcNeC5V0RR6IxLdp4FaqY6N3aj0r8PZqRPFy8yC3tR0/zFq3uZBUlokG8xcL/etGGZxelmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3CuoHn6ZemvEc29Crsa4aryT+7Y3WCGfLdesFo1vfH8=;
 b=TkjZYj2pVO8U2nP+h8tRGH0NIAsrVWTFY17H1THRS9AA8p1vs2Y4QbDcfcyPggXkWAwCyqEZjAyYAw1kpZTV6FSEI+pXns145mKmJ/hDjvVkQiL1zb+OepgU/a4MXNYe8RTfwVP+8dqyZl84JYjJeVp8iDikBP5rtRgEBFZmxlDLXBLSEYza0jV6KIbfPAaduadANjOicPAEdndd4+pr7wQ2qVhtZwqUM2APwsPIQrsu4EuwmxgEOk5LadNs5kAjB4cL4puR6EgrM11SlNcD66Vd8D0cM9RgQDe63/Te/VWwHBY8C2U9thzp8aBlkfl1wusmMc6oHVLV5csuTf0Eiw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PA4PR04MB7821.eurprd04.prod.outlook.com (2603:10a6:102:c5::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Mon, 29 Jan
 2024 17:18:12 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::550d:ad96:e3cb:9a6e%4]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 17:18:11 +0000
Message-ID: <f9ad6973-f4c0-4315-9e47-2ac6581198df@theobroma-systems.com>
Date: Mon, 29 Jan 2024 18:18:09 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: drop unneeded status from
 rk3588-jaguar gpio-leds
Content-Language: en-US
To: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
 Heiko Stuebner <heiko.stuebner@cherry.de>
References: <20240129114851.2019861-1-heiko@sntech.de>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20240129114851.2019861-1-heiko@sntech.de>
X-ClientProxiedBy: VI1PR09CA0148.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::32) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PA4PR04MB7821:EE_
X-MS-Office365-Filtering-Correlation-Id: ea71ea73-0d47-4994-d803-08dc20ee4518
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ePi2BYdz9FHAed1m9B839vHPFXzRGXku6yQYvZIi/LM2nj3l2Vcva/0iKq6W9yT3nEaRYokHHaZFfkchDnCapdg1xBbgI1S113F31cjQlxN3zAbGAbjeZpNPojwnebN7iwK/xgzeadS5L7yZyIzGCxhFvXV8cufQbIpvTUXeEF1BQlhiLWzGT/1PXZcwC4H4KL4qmHvXAWXFnJ+G8n8laZVsQMB3ZmuANKC7FC1i5XE87hFLIvU5bwEF2TFxQ2+uV0suzOoSs+eKEshwcwGJHxge/3c/1knneYPxgr+kUYOYZmpun0+rHJEX7e1KYty4im9OA+exHTazTIvvZMGhzmax4Xqm4tGCzUAxvqjQlBgqm28umxwoEoBy62mOucoLjmXIr1KGP8aWUbb0pEHo2ETVLqBaOvMHUgmR8gc0H4HBbYG8WgLFDwN3aHlx/72jQJAUH40wOcytuJ1qhPirEVyrh9mkFMaNDwihXGTbrhC8ocb1xNfJ7UeOEupeV4N6/FfiuDtY0qUz+EyuUqrznzGJR6/+6FC+ArJvLV23OZAHkPWclvEdspIKT6t2H0GZV9zBLXZoO9aF3zJZr9ECQi4LfvljXPlkemNW6MU/wrGghb9JuNMplrS/G0xF+/5wXgEuY49Qw26TsQOpl7dBNg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(136003)(376002)(39850400004)(346002)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(66556008)(5660300002)(8936002)(4326008)(44832011)(8676002)(4744005)(86362001)(31696002)(2906002)(316002)(36756003)(38100700002)(66946007)(66476007)(53546011)(6506007)(6512007)(478600001)(6486002)(107886003)(41300700001)(26005)(2616005)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VmwxdldKcTBOZDN3a09FbHZ6a1NtWlVpQnBuNThLUjljVFBHNm12YmJsWWFm?=
 =?utf-8?B?N2x5MTdleEdiSGx0TWt4N0tUNTZZYXE2U1lwZjdHbm1DVmFDaFJpRWloblRL?=
 =?utf-8?B?bnRGZ1I4bkVSYmRFYjYrTkJNQkxHU2dYYVhYRkc4NWVSRU5jNkdOMUtDU3p4?=
 =?utf-8?B?KzVOeVR5THB6ZDZBanZScWdyR2ZZN1VVeUVQZllnVGk5WkszVmVJdjkvSGxT?=
 =?utf-8?B?RjFIbkE0OWRoWU1vZENiaFVDeHlCMkJjbmovNHFvSDJtRjEvMnJ5Z28xeXpN?=
 =?utf-8?B?eTdqbFVRdkhmczVIQXlzS0hPcjM0cCtqVldkZ01SV0poVDZRYnZQSitONTg3?=
 =?utf-8?B?eUtydWJ3aHNGSENZY2NPRG1mM2JldExKRFh1Y3lHazFFYWZzM3pUWmIyQ1N3?=
 =?utf-8?B?WXhjeDB1aG42MDdyaUEyMVBmaHczU2hOTGgvcDRsYVVRRTFKSXBRV3h2VE5R?=
 =?utf-8?B?RW9tby9qckxpR3ZncEh3bm9qVS9JeTI4TGdZOGczejJjUGZhSjdvL214QjV3?=
 =?utf-8?B?NHJVbjJsTHFDMGhCVlZiYm5saWZVQnBjb0krZVRqUUxKZFZsQmQ5b0FxUWRI?=
 =?utf-8?B?UitXcGtqVmlnalhVL1dqWFo1b09MS1liNGJQUnNzSjNFWGlGR0VOZGJvL3RF?=
 =?utf-8?B?cVU4dEVzTDBVRU1KV0Q0SHhEM000bW4ybjRoUjZsLytQckxLTDdDZ3ZXWlV3?=
 =?utf-8?B?TVp5Z2ZMOXRxaWI4Y1RwUkN4SE9tU05KaWF3Sll4cnVFUGxwQnpld2dhWkcx?=
 =?utf-8?B?bkZRNStrRi9DYVRYb3FlMmhzeGFUZjhrbWVNK0lFMEV2bG03aEpBS2NhMXJu?=
 =?utf-8?B?TUhYcldxdll4UU4zblE0K1V1YzkwZFRpWVExeGFQT1M5MWcyV2RRUzREOTEy?=
 =?utf-8?B?K1AraG1za0FjZklBYkVEQ29DVzF3Njg5K1ZtYWQxL21zL0FKNkRHR1FOTjJo?=
 =?utf-8?B?ZU1YY2tQcnc3RmZGUnBNeEVMM3pKSlhuKzdHUng0MU9tMWo1TFo0S2pZK3Fz?=
 =?utf-8?B?T2RhYVdXSk41Q3ZpYWw5T2dMd2kwQ0N2aHZ2TEpRM1lONUZ6NFVZOS9IL0FJ?=
 =?utf-8?B?OEgwRUxabnZ6aURCcFA0bVZkVWVaZlZUQ0Ryc0lnOWxQVENYeUVMdFF1UWhw?=
 =?utf-8?B?YkxLOFFsSGdFZWw5VFIxdkxRZy8xYnN2NGt5VzB6UUhRRjdQeFJvVFRJZmYr?=
 =?utf-8?B?akRYQTQvYkpJd1hTQXZiczIrQUFTNmtoOWRKRUpRaHJDRGN4NzFJYzl3TzRI?=
 =?utf-8?B?WTM5M0ZvNjZwMVRtMXNYTzNsZTczU05rUjJuSUMxUU5VaDlYTmFoSXNrZVIy?=
 =?utf-8?B?OW5lVmpJakIzNEozdjRPaldUT01raWx5UFdDME9jcjBiYnhCcjEvVHdpSmRY?=
 =?utf-8?B?aDZKQXVWc01hWTZwSXh4QUdxZXl3VEREMGVoZkhRUE8yWWpxVmROaStOdENw?=
 =?utf-8?B?bEROOHlnRGlqbkdaNXZGNFc0RUxjUW9MNmE3MGhPRnpPMjViVTI2YjE3b0t0?=
 =?utf-8?B?KzJsMHRnSUJHUXo3T2NsbWk0QmFQc2xUVFdvL0dwdWJxeGR2UU9xYUR1ZEdw?=
 =?utf-8?B?ZEF4dnNTUG9sa2NFcFRmWlFBdC9OdTZxb0ZHc3E0MGx5NXc3TjBSWTBaUFJw?=
 =?utf-8?B?WG9Gcm1FamYrSHZKYllXdnVJZy9iYVZXTXFMNjBvdmxwRkdUNHNaOXpEQnVB?=
 =?utf-8?B?SzZCc202VGZzKzk0ckFubEUwMm82MWloeWJvQnZhejdmQ3hCYVp2Ulo1ekxE?=
 =?utf-8?B?Y3NYVlpjbUlmQ0FzV3Bjdms3bjh4YUVlZWhTQldYMlBnWWlUOUJDT25Dc3pV?=
 =?utf-8?B?cTdrN2xWRUdNU1Y0ZGljV1lEUXNCbzlyUWV6VlNJWWo1RGNxT1dGeWlZVVNP?=
 =?utf-8?B?T2pGd3Z6MHU2c0VtUHphbW5nbitseDQ5bGdrV3dQNytJeG5xRk4vSmJ1MGNB?=
 =?utf-8?B?ZVBxOFlxM2hMaTlRZTZ0MFBVdzVZUVN2QzZUd0JwQURWMnIxY1J0eS9pZWx4?=
 =?utf-8?B?eWhIR3BUM0wzQ0thWkloVGVOSUEzMW44RXRjWUMxZHZNZGllNWFmQ2VyTVBQ?=
 =?utf-8?B?SVpwS2pVWnJ6NEFXZWtwRjFVdlFEY3Z6OSt6SVZiUjRIOFdpYWg0eDVVQ1R5?=
 =?utf-8?B?d21iS3RRSFVQRmZoVXUyOGNXSXlLZ2RkL2tqMS9UdThDazJqZHBTN05keklN?=
 =?utf-8?Q?1Fwcao2ylnid4urNquVmuk0=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea71ea73-0d47-4994-d803-08dc20ee4518
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 17:18:11.5871
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MFedepBW9otfgv2xBg+baURUjepbp368yBgvvHGuulrR30mqllYTtm44uYazMFizj1z7+YHpZiET+o8jyv0JisMvMV34KQmwBolWt74iitEoDrsbT4Km7UhKQgAAtZMP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR04MB7821
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240129_091820_252595_C02B6F84 
X-CRM114-Status: UNSURE (   7.90  )
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

On 1/29/24 12:48, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@cherry.de>
> 
> The default status is okay, so it is definitly not necessary to set
> it on a newly added node.
> 
> Fixes: d1b8b36a2cc5 ("arm64: dts: rockchip: add Theobroma Jaguar SBC")
> Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>

Reviewed-by: Quentin Schulz <quentin.schulz@theobrona-systems.com>

Thanks,
Quentin

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
