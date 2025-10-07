Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AC53CCA476
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 16:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:References:Cc:To:
	Subject:Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rFQspBly+Kamx/fortO56+8s69UfRwe9j1JpSKdcCSM=; b=mGF1jqgndXywCCxfzZPotFm/mb
	jvTr1USgjCsvSnK2S4FERk2J6s2rGIBvMMB0Ki3kXwrVNS1yAoagnrQ6OxBMjDe7Em6uZbEiwZ+qA
	n2mcqRLiDB+22EjGatCKrByYl7JPdfp7JCa6dE8P9eFJ2Uh09lHgH0rIq6utrtPpRH9jNJNiJqbAP
	NVxrH4iS18I2GH5qQoiQrNVpCy0EIiO/HL+spwCCrp1jNTKPoDzrYN0XEbTOPWP9/TWmVTsX55kCg
	xlc/Ny0uNOyTjYsfp3AL4+6A4+X7xA3ivDcL4deSRiC7Y/CcmpgmPo7HFhfHMBd4GyUCG8oXVZ1WM
	6Ir5ztPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Ac6-00000002Pdv-3PCP;
	Tue, 07 Oct 2025 16:32:34 +0000
Received: from mail-swedencentralazlp170130007.outbound.protection.outlook.com ([2a01:111:f403:c202::7] helo=GVXPR05CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v6Ac3-00000002PcY-3N9V;
	Tue, 07 Oct 2025 16:32:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mvz9JB2JL+yPegPrnzVG9iNTFFnICpM3hP+PFf7+wgZNt+7ErBXgBAVhMqyCTG3iKyOfUWL+YWTXKM53vW/OPOy85HVyFFSXZ58HptZ+bC078guP5ytRN+T/yLoZU9d33kDBAf7UcnWNWfWUKARODct/gHcdyx9G6eitvndu3vMUKgJLbXJkmgzI4bAihBhQBl13vYEPcmZpzg6eaM5NSm0Q5rp3WkqC8T4aAjuIRfJ9AKjMfv2yyUtF2SLJlStKRNQl+gkaENZuU61fwnqbReVtEurdLiZl3IY3yz69DZTh0dyxT4zzKmgjfpleNZ9z0CdhHTl0eIzWUv5+elw5XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MoMycbd1GHC9ZF3SPhH94/NJvBoKw7yzV4t8HZNYkM8=;
 b=ajCQKV2Nklv9KQfkP9JYaVigqtem5r70zV1Qw//HsujvvtnWt3SlN5XyVOXK2w6mAtOelOMu7X9ib86zRWJA+FqmPy59TLXLAdIEu0UtJElHPigLihFsbJxP/DLhEroMtg4y2AOnaok7btv0q1C4raUliItGmD5s3hRAI7BYaW2qD38JIBL8KxCTWtCPoswvBEvlJ6YORs65S9eJniEnjKpwjHbQhnt712Y3x+Y9wPJJVkCL8pBYbzF3/unj5q4Zqmjt/SqLD8QUuZqxUVSPZUvKiJwFy5GKoihieOHKUgmw2EkP6rdVx8lfJ5n12tYtHmqi6LIakdmnqM7UqXHElg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cherry.de; dmarc=pass action=none header.from=cherry.de;
 dkim=pass header.d=cherry.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cherry.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MoMycbd1GHC9ZF3SPhH94/NJvBoKw7yzV4t8HZNYkM8=;
 b=POqvVnkuH4N2kjcN25UMJpXopomofq5J9fHN7r3W4s8mkBF9tUgf3K3Vn+KhjzbsF+g/laPHCHu9erefI8h9bCWWBhIYwU/mZt3ydlzVYYMrhp5G+NyOPd1IbmMpyeel12h2Sdd80mIQsYaTpWknnabauK/W67qUyMQJ6kK4XlA=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cherry.de;
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com (2603:10a6:20b:42c::20)
 by PAXPR04MB9075.eurprd04.prod.outlook.com (2603:10a6:102:229::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Tue, 7 Oct
 2025 16:32:16 +0000
Received: from AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1]) by AS8PR04MB8897.eurprd04.prod.outlook.com
 ([fe80::5ee:7297:93b4:a8d1%6]) with mapi id 15.20.9182.017; Tue, 7 Oct 2025
 16:32:16 +0000
Message-ID: <88c6c40e-8c19-429d-a7d8-c8f2755f515c@cherry.de>
Date: Tue, 7 Oct 2025 18:32:15 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: add LinkEase EasePi R1
To: "Russell King (Oracle)" <linux@armlinux.org.uk>,
 Andrew Lunn <andrew@lunn.ch>
Cc: jjm2473 <jjm2473@gmail.com>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, kever.yang@rock-chips.com,
 naoki@radxa.com, honyuenkwun@gmail.com, inindev@gmail.com,
 ivan8215145640@gmail.com, neil.armstrong@linaro.org, mani@kernel.org,
 dsimic@manjaro.org, pbrobinson@gmail.com, alchark@gmail.com,
 didi.debian@cknow.org, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250929065714.27741-1-jjm2473@gmail.com>
 <20250929065714.27741-4-jjm2473@gmail.com>
 <d8ad476c-d0c7-4e97-9e76-540a539ffb52@lunn.ch>
 <CAP_9mL4ofig-X-w9wx1A5D_eVXROo6AVFBSwp4mh=kj7webpPA@mail.gmail.com>
 <7e219aef-88a0-4184-9553-30dcbc8dbd79@lunn.ch>
 <aOU-_tPOmkyuw_kx@shell.armlinux.org.uk>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@cherry.de>
In-Reply-To: <aOU-_tPOmkyuw_kx@shell.armlinux.org.uk>
X-ClientProxiedBy: FR0P281CA0058.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:49::19) To AS8PR04MB8897.eurprd04.prod.outlook.com
 (2603:10a6:20b:42c::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AS8PR04MB8897:EE_|PAXPR04MB9075:EE_
X-MS-Office365-Filtering-Correlation-Id: be8f1ebc-eb53-4835-196a-08de05bf13e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|7416014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RDVZY2NBVE5vNFoyQktoTU9MSFU0UVNMa09CckFhci9LR3l0N1hNWUZNdDNp?=
 =?utf-8?B?b1A4bWJUaFZpaHdHVFdLSml4Nk85a3Q0ZmpJWEw3WHdvYzgvWDlmQkRFeGNB?=
 =?utf-8?B?dHhidy9TZi8ybWRYNmZTQUFyZmVpaysydlNXdlNSM2F4SlUwN2hpakdyVzJV?=
 =?utf-8?B?bjczYjNIeEVTVFR5Kzd3Vk5VSytkU3BPUEl5REc0WTdDaWVrSGhIblNOSWVP?=
 =?utf-8?B?L0ZIbjF3SnBkanFhdStUNFF5YlllRW1xaW5QUnRQRmNHSW1xcEZXdHhubmhP?=
 =?utf-8?B?Sis0WnFEWE0xSHdua2Zja1ZwQy9acHJ4MVVyMnZFUFJIeDJDelhvdzBwYWpT?=
 =?utf-8?B?Y3pUbzN3M2RsZmg4KzVmRTNDQ3BaWjN0SDRZdWgvSVl4K0xNZzgwa24rN0Rj?=
 =?utf-8?B?KzVNWmpvQVZmbnE4QzNhcXc4TjBKdisveklQcXA3S2tLbkQ2V3BQQWdiRlFo?=
 =?utf-8?B?b1ZkcitzTTFCWXFhcEZhN2tqMm5SN2RiT1lBaDh1enJZbkRwZkFtQ1M1YzhG?=
 =?utf-8?B?NWpRWnQ0TExmdFZaUlR6RVhtZVVTT2JXUVlVOWtwdW42S25sUjkwdURMS25N?=
 =?utf-8?B?ejg5NTZsSGhlbitnejhRbnJKWnlQQTFpMkRkNDBJbDJHKzdIU3dmbFZzcVMx?=
 =?utf-8?B?VlZ2djZhaDhDRDNSVEdEQ3ErWmN6MloyVzhrOWQ0T1QwTDE4aG5zaG9qUjVk?=
 =?utf-8?B?TmxxVit0VTBncG1mUnJWZjNSQklXa1JEZlZpR2hOWEQ3Q0Y1aWhzcHNkemxX?=
 =?utf-8?B?U2VGZmJUYlNCQmxYSjhnMFlCOUJoRjJzbkhYdHZUYmhIR3FqNE9lVnZPWkxK?=
 =?utf-8?B?M0dQUDRVQjZJV2NkRG9aTHZ5YzhzUEJrWmhrVWQ0cE4xMUg4cXRDNkMwYVNZ?=
 =?utf-8?B?NTVlaXJkWWZ0L0pxRlBaM0hNTlcvYnVsOC9nWGZhM1B1ZDdTNWhZVThsZnFt?=
 =?utf-8?B?ZzB2d0xTYTZJcTZ0ejN5RTlPWDFEdU9JRzVJeEt0QmJFUEhna09LalNta0Z5?=
 =?utf-8?B?VlRoWGswZHJhTE1qcjVnbXdJNXlacWRLbnJRaFJxeVBKcStvV1N2TnFVRzZH?=
 =?utf-8?B?Vk9FVnk0ZStUcGR5VFhTSkFEM2JPN2kySEVsc0krZysySVdrSnE0SWJHYzNI?=
 =?utf-8?B?dWxNSGw2L2ZGMWV3SHpnMEVyQkdxMGxSd2hqNG54VE1MZCtCb2lkZFFTL21E?=
 =?utf-8?B?ODh2aUhmTWRJTE9scGZpSXFTY2h2SFJZN2xVVld3c2dveURzY2JRZ29QV00y?=
 =?utf-8?B?cWdCNHJvd1dwZC9MbEhkdXJXVHA5YXlCVlpvNm12UlExWExUQ2pyVEpZditr?=
 =?utf-8?B?R01WaGsyTVZoT0MrMkEwUVorUStvb2JvZG9wQmMwOTk2NzlER1MwNkNqSzEv?=
 =?utf-8?B?MzF3TUVxSS9rSXkxTGlaQ0FITGNtRTA4WHJ4SEpMYjVxMi9PcldCSmF3TXlI?=
 =?utf-8?B?N2xtVXluLzJRY1czZytySFBCdGlTNC90YW4zZFVVeDdaNnU0bldqd0g4QnF3?=
 =?utf-8?B?K3RaOFVGenV5a3RySkdqZU84K0RqQTl3UzQyZGJHM0hwb2dVRTJNRERFaEk2?=
 =?utf-8?B?dzNKVW8xUExkUjlpV3RiNkExdkdQaENuRWNEdkxSeWhGZ2ZleXFhdUcvK1lR?=
 =?utf-8?B?K24yK0F0VHlocTJ4TEsrd2pKKzE4NHdUZndvbHl1c3BjVEM0VXR5dUd3TXdJ?=
 =?utf-8?B?NG1XaWhrdkg2dUlXSVgwdFMxNGxoaUg2US94YXRWWkZZV0k4N1VqNHh5Rnc1?=
 =?utf-8?B?NzB1TXR4bFNveFhscllkeDh6YkllZW1DOC9uS1JZZ040bDdkcjd3RlgyRWdD?=
 =?utf-8?B?NW9GdFRZZHpJNjBoRGJWRUZ4SmhoM3VwZllyd3V5UnU3QWRYdXE0eHFLanRT?=
 =?utf-8?B?OFNLc0F4VDFsU0l2OVZ1aERSb2laTncxWUdsdVlYNDNUMHc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR04MB8897.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(7416014)(1800799024)(366016);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWFocU94V3RyeU9EdStFRWtvL1VjTHFwcHNIeXVnaGp1NVNsWFpWcUxrTXRx?=
 =?utf-8?B?NWtodjdVV04yK1Y1VDlwQUlZckZZZFVtVGNPQXVpWm1tNjlkYWRLWEZKc0RD?=
 =?utf-8?B?WVNDK2NkNmlhV3pOSFEycC9SRGVNVlFXMmQ3N1gyWE5kVDIyaU5MdU5UZm8r?=
 =?utf-8?B?NXZvQkRkc2JTeXJKOTgwU0JxdEFxYTJWaG5GTEhrSU1SZ1EvSEVaNmlpQWhM?=
 =?utf-8?B?YTI4aDFQWnNsN2ZBTGg0b0xmaWhTT2ZFY2I4ZHkyZHZraE94MHVmaW5ZQVg4?=
 =?utf-8?B?WXJpZWtQOGlxdngwTGEzK1JKcUk1ZzVjc3RUREp4N25ZV0tERVBMbEU2b2Nr?=
 =?utf-8?B?NHBqK3E5UVZRRkxhN3hvaVBPNW5abGt6KzlISzFNWUdoNG1YcFNSUjhOeTR6?=
 =?utf-8?B?UlNiVU5QQU1xS2djaVNNMnoyckcxNjlBYTE2SGNiWXJmM28yL3FodCtMVk1R?=
 =?utf-8?B?YzNuWk0ySmVMM3FDMXQwQk9jL2thcjVyNi9CaFc2Zkt5UytsWmpZM3FVbVFI?=
 =?utf-8?B?WWgveXUyTTBQYkdnZGtXRjVlanBEOFI4ZElKcWYrU3BaSlFLUnUxNVNhcVpZ?=
 =?utf-8?B?OVhQZE5KbXpsd0YwVU94WXhuWlZJS00xL0lLUkJodU5WMTN3QnhjSTNuY1VR?=
 =?utf-8?B?RXpvYjFYU0N6bHhSRVRFNU9ERk5nOFpvbzA3YjZRdStxTHd4QmUrcjRNZGV4?=
 =?utf-8?B?dFFJWWp4U1FManJDU2hPQWxha1Mva2pDMC9vNmFoNnlVYlFJcWF6alNKbjVY?=
 =?utf-8?B?QVBGOGMxcnM4N3ZZQzFmbWxCOURyRTlQdUlpVFhUTzErUHpRVDhFTDlPcjQ0?=
 =?utf-8?B?K1NDcEtCVnEvRCtTNm90T2h5Z2JQaFFPYm5JS0NUR1daWW9VMDYwaEhBQkxa?=
 =?utf-8?B?OUorV2xFd09rdmxMVVdWM1FESmRxZGpLclp3em9OSndWdnFJOWhmaytGQnV3?=
 =?utf-8?B?em5pV2RSdVZDcFF0VEgzdnB3akwwLzYveUtNanQ3UDM5VDl6R1hvbERrQTJ5?=
 =?utf-8?B?RWVvMkYxcW1LS2c3UDF5cjdSVDRqT3I4QjJWREFneE1IS2xvVFJxU3JjeW9P?=
 =?utf-8?B?b05PMmdaSElodnFRMXlpMWpMK2t0d1VkaHc2TkcxTW9wYlpoY0NkRjJ5VVdK?=
 =?utf-8?B?d2dlM1JGSXdvSjRnRmhhZXMzMkxyTDhKQmpkeS95R0tENWpTRmo4TDVIZmdS?=
 =?utf-8?B?WDJCc0E5R1V2d2tyeUc0K1V3QlpYVVg5a2d6blhLcXJ6WnRSS2ZlRVJkaXJQ?=
 =?utf-8?B?cEtTS3JuWE1QOUlQOGdzdmExMk83cFpwSUppczZwb1NUUXQxKzNGbDhrTXEx?=
 =?utf-8?B?Vkt1UmFsSTRoYkRXb2JPU0RCQ0doZTkwUFdYVEpjQWxKaGExSEYrWEZTeVNR?=
 =?utf-8?B?T2VobHB0NVhsRy9CcHNFaG1GU3R3eDJjZVNMSThkcVcrNjAxRXZ4S3NlL0ph?=
 =?utf-8?B?cFJPNmw0OWlteW9qMXIrZ3BITHMzaHBQRjhoRytUak03OEFkbWJlcW9pNkN2?=
 =?utf-8?B?NGQxKzhuTlJ0d0JEUTh3REY1a2ZzU0Vpb2ZlZGtoanlYUVFRK2tlNzBNZWRk?=
 =?utf-8?B?eEpkOGZPWlpXaHY2K2ZaTHRBSEZxSnJLREYvbXJyV1drQkVsR3ZqTUZnZ3JI?=
 =?utf-8?B?VDVWQTlTbWVDaENEOU9TUzBiT1czOCtIQzN2OVo4SXVQbHhOeEQ2d0Y2bXNQ?=
 =?utf-8?B?MjhxKzJ6ODhaeVRpTVk3R0hOZzdNTlNzRW1EOS9DR0lvTVFnYVFWMmN3YWpq?=
 =?utf-8?B?Z3p1NmFzNlNZWDFpNEg0VFZ6MXVIdEpGcnhsT1hxZC9kQ0RYU1E0eTlJbTcw?=
 =?utf-8?B?Qklia1UzMHRveEowQUtaYmhxQWJ2U3UrbDVnTzNqVGJzNVB4SWVULy9tdFNU?=
 =?utf-8?B?ZTM1SUdoQjdJT1ZDMUZSZnlBMWZBRFlra2NwTEtGajAreXh4UTdXNmJuTVds?=
 =?utf-8?B?dGFHOXVCRWhGUGlSaysyZTFtU1hrMG1XRmNsNWhQOWhSZEZ2RmRYdUJBMm1h?=
 =?utf-8?B?SDc0OStEanFJN0lhMis5eWVWeUtsMGowaDJ1MFRhRjR2bGlTZjNQcG1JWE5F?=
 =?utf-8?B?RFhBcGZuNHhXTzFkeWNJTjU1ZGl3NXVNN3BIQ05uUEZaZDRDREdsQVJZdlNR?=
 =?utf-8?B?cWREVGJ4N0dtVnNmNVpFVEtYTWVNOWtGdUtSSFlJTWJ5K0swaU1nd25oTVVo?=
 =?utf-8?B?N2c9PQ==?=
X-OriginatorOrg: cherry.de
X-MS-Exchange-CrossTenant-Network-Message-Id: be8f1ebc-eb53-4835-196a-08de05bf13e4
X-MS-Exchange-CrossTenant-AuthSource: AS8PR04MB8897.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2025 16:32:16.5549
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qMsQOGqRXgIU4zvd8VEsJjfgSSAVEb7n0FNk79bwwmVKOl3tsyxKNm85djsUbP84LZQWCsiNokPhrsy+3Xbn6lpa1pv9nQUUe4a6LUCAGe0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_093231_843679_6FE5D2C9 
X-CRM114-Status: GOOD (  20.65  )
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

SGkgUnVzc2VsLAoKT24gMTAvNy8yNSA2OjI1IFBNLCBSdXNzZWxsIEtpbmcgKE9yYWNsZSkgd3Jv
dGU6Cj4gT24gVHVlLCBPY3QgMDcsIDIwMjUgYXQgMDQ6NTc6MzJQTSArMDIwMCwgQW5kcmV3IEx1
bm4gd3JvdGU6Cj4+IE9uIFR1ZSwgT2N0IDA3LCAyMDI1IGF0IDEwOjMyOjI2UE0gKzA4MDAsIGpq
bTI0NzMgd3JvdGU6Cj4+PiBBbmRyZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+IOS6jjIwMjXlubQx
MOaciDbml6XlkajkuIAgMjM6NTHlhpnpgZPvvJoKPj4+PiBQbGVhc2UgY2hhbmdlIGl0IHRvIHJn
bWlpLWlkLCBhbmQgc21hbGxlciB0eC9yeF9kZWxheSB2YWx1ZXMuIE9yIHNob3cKPj4+PiB1cyB0
aGUgc2NoZW1hdGljcyB3aGljaCBjbGVhcmx5IHNob3cgZXh0cmEgbG9uZyBjbG9jayBsaW5lcy4K
Pj4+Cj4+PiBJbiBmYWN0LCB0aGUgUlRMODIxMUYncyBSWERMWSBhbmQgVFhETFkgc2lnbmFscyBh
cmUgYm90aCBwdWxsZWQgbG93LAo+Pj4ganVzdCBsaWtlIHRoZSBCYW5hbmEgUGkgQlBJLVIyIFBy
bywgc28gdGhlIGNvbmZpZ3VyYXRpb24gaXMgYWxzbyByZWZlcmVuY2VkOgo+Pj4gaHR0cHM6Ly9l
bGl4aXIuYm9vdGxpbi5jb20vbGludXgvdjYuMTUvc291cmNlL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LWJwaS1yMi1wcm8uZHRzI0wyMzcKPj4KPj4gUHVsbCBsb3cgbWFrZXMg
bm8gZGlmZmVyZW5jZSB0byB0aGUgMm5zIFJHTUlJIGRlbGF5cy4KPiAKPiBUbyBiZSBjbGVhciwg
d2hpbGUgdGhlIFJYRExZIGFuZCBUWERMWSBhcmUgaGFyZHdhcmUgc3RyYXBwaW5nIGNvbnRyb2xz
Cj4gdGhlIGhhcmR3YXJlIGNvbmZpZ3VyYXRpb24gb2YgdGhlIDJucyBSR01JSSBjbG9jayBkZWxh
eXMsIHRoZSByZWFsdGVrCj4gZHJpdmVyIGNhbiAoYW5kIGRvZXMpIG92ZXJyaWRlIHRoaXMgYWNj
b3JkaW5nIHRvIHRoZSBwaHktbW9kZSBwcm9wZXJ0eS4KPiBUaHVzIGhhcmR3YXJlIHN0cmFwcGlu
ZyBtYWtlcyBubyBkaWZmZXJlbmNlIHRvIExpbnV4Lgo+IAo+IFNvLCB3aGF0IHdlIGdldCBhdCB0
aGUgUlRMODIxMUYgUEhZIGlzOgo+IAo+IAlwaHktbW9kZQlyZWNlaXZlIGNsb2NrIGRlbGF5CXRy
YW5zbWl0IGNsb2NrIGRlbGF5Cj4gCSJyZ21paSIJCTBucwkJCTBucwo+IAkicmdtaWktcnhpZCIJ
Mm5zCQkJMG5zCj4gCSJyZ21paS10eGlkIgkwbnMJCQkybnMKPiAJInJnbWlpLWlkIgkybnMJCQky
bnMKPiAKPiBpcnJlc3BlY3RpdmUgb2YgUlhETFkgLyBUWERMWSBoYXJkd2FyZSBzdHJhcHBpbmcu
Cj4gCj4+PiBUaGUgdHhfZGVsYXkgYW5kIHJ4X2RlbGF5IHZhbHVlcyB3ZXJlIG9idGFpbmVkIHVz
aW5nIFJvY2tjaGlwJ3MKPj4+IGF1dG9tYXRpYyBzY2FubmluZyB0b29sOgo+Pj4gaHR0cHM6Ly9n
aXRodWIuY29tL2lzdG9yZW9zL2lzdG9yZW9zL2Jsb2IvNTQ3NDZkZmRiNWJkMzRkMWYyODFjZjQx
ZDFkMTYyMGQwYzNlZTY4Ni90YXJnZXQvbGludXgvcm9ja2NoaXAvZmlsZXMvZHJpdmVycy9uZXQv
ZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmstdG9vbC5jCj4+PiBodHRwczovL2dpdGxh
Yi5jb20vZmlyZWZseS1saW51eC9kb2NzLy0vYmxvYi9yazM1NngvZmlyZWZseS9Db21tb24vR01B
Qy9Sb2NrY2hpcF9EZXZlbG9wZXJfR3VpZGVfTGludXhfR01BQ19SR01JSV9EZWxheWxpbmVfRU4u
cGRmCj4+PiBodHRwczovL2dpdGh1Yi5jb20vYXhscm9zZS9ya2RvY3MvYmxvYi9tYWluL0NvbW1v
bi9HTUFDL1JvY2tjaGlwX0RldmVsb3Blcl9HdWlkZV9MaW51eF9HTUFDX1JHTUlJX0RlbGF5bGlu
ZV9FTi5wZGYKPj4KPj4gVmVuZG9ycyBnZXQgdGhpbmdzIHdyb25nLCBpbmNsdWRpbmcgdGhpcy4g
J3JnbWlpJyBtZWFucyB0aGUgUENCIGFkZHMKPj4gdGhlIDJucyBkZWxheS4gTmVhcmx5IGV2ZXJ5
IFJvY2tjaGlwIGJvYXJkIGZvbGxvd3MgUm9ja2NoaXAgYnJva2VuCj4+IHZlbmRvciByZWNvbW1l
bmRhdGlvbnMsIGFuZCB0aGVuIGkgY29tZSBhbG9uZywgcG9pbnQgb3V0IGhvdyBpdCBpcwo+PiB3
cm9uZywgYW5kIGFzayBmb3IgaXQgdG8gYmUgZml4ZWQsIGJlZm9yZSBiZWluZyBtZXJnZWQgdG8g
TWFpbmxpbmUuCj4gCj4gQ2FuIHdlIGF0IGxlYXN0IGdldCB0aGUgInR4X2RlbGF5IiBhbmQgInJ4
X2RlbGF5IiBEVCBwcm9wZXJ0aWVzICh3aGljaAo+IGFyZSByZWdpc3RlciB2YWx1ZXMpIHByb3Bl
cmx5IGRvY3VtZW50ZWQgaW4gdGhlIERUIGJpbmRpbmcgZG9jdW1lbnQ/Cj4gSSBrbm93IGZyb20g
dGhlIGRyaXZlciBjb2RlIHRoYXQgYSB2YWx1ZSBvZiAwIG1lYW5zICJubyBkZWxheSIuIE90aGVy
Cj4gdmFsdWVzIGFkZCBhbiB1bnNwZWNpZmllZCBkZWxheSAtIGl0IGlzIG5vdCBvYnZpb3VzIHdo
YXQgYW55IG5vbi16ZXJvCj4gdmFsdWUgbWVhbnMsIG9yIHdoYXQgdGhlIGRlZmF1bHQgbWVhbnMu
Cj4gCj4gVGhpcyB3b3VsZCBoZWxwIHVzIHVuZGVyc3RhbmQgd2hhdCB2YWx1ZXMgc3VjaCBhczoK
PiAKPiAJdHhfZGVsYXkgPSAweDNjIG9yIDB4NGYKPiAKPiBhbmQKPiAKPiAJcnhfZGVsYXkgPSAw
eDJmIG9yIDB4MjYKPiAKPiBhY3R1YWxseSBtZWFuIGluIHRlcm1zIG9mIHRoZSByZXN1bHRpbmcg
ZGVsYXkgYXQgdGhlIE1BQy4KPiAKCkkgY291bGRuJ3QgZmlndXJlIG91dCB3aGF0IHRoZXkgYWN0
dWFsbHkgbWVhbiBlbXBpcmljYWxseSwgc2VlIApodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51
eC1yb2NrY2hpcC85NmQzMmNlOC0zOTRiLTQ0NTQtODkxMC1hNjZiZTI4MTM1ODhAY2hlcnJ5LmRl
LwoKV2l0aG91dCBSb2NrY2hpcCdzIGV4cGxhbmF0aW9uIG9uIHdoYXQgdGhpcyBhY3R1YWxseSBk
b2VzLCBJJ20gbm90IHN1cmUgCnRoZXJlJ3Mgc29tZXRoaW5nIHdlIGNhbiBkbyBvbiB0aGlzIHNp
ZGUuCgpDaGVlcnMsClF1ZW50aW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
