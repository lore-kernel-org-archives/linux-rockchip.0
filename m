Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D696AC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jun 2022 06:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:From:
	References:Cc:To:Subject:Date:Message-ID:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XWGAbcerWR1TI+qxxWG33uYubgt1QUsv2mQRaololN0=; b=EMkrh3u8RnMGIPoVxvSAv2V6w4
	ACVrI4ZQhapNXwZmzuE6P4hKguFRY1HgFANhBiKfTDRdG76TSugTtpOGg4PD/AsRGBc16jD3h3Gfg
	YENGzoKEUrvCFzvooZhhfsUSQVn7jRLxsY5ig/ZRBBLp8r7CiPWWi/w0JG58qFGWduR8s3Vw5/UCb
	Pe9RX/xmiAkk76x4fP1sZIMvnok7NVCBK8fzQdeabyieHoNfjRw2inDtEe7zTSl8cwLcTjQBpEEqQ
	M1wy1lAHemw+pQHTcPgPzD8xzyFQHnx9vjCzCRAr9ql2ukSz+/cN20Su38DhbI+8LXP3FmT5VuiLj
	EdTiEG5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nweWH-001miZ-ME; Thu, 02 Jun 2022 06:41:21 +0000
Received: from mail-ve1eur03on0601.outbound.protection.outlook.com ([2a01:111:f400:fe09::601] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nweWF-001mge-7K
	for linux-rockchip@lists.infradead.org; Thu, 02 Jun 2022 06:41:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LAepEflyOoUbsYjUXC+jxZnv64fDuev8/nPHJz7sgGsHMAr6M6M6wSEUBbHjfIlhsqEdhrHOSrHVFN/g5RpD6iHdgw4QtPJeJ9MURVwZNDoyfVZOlDPf0ZhgKWisui4j785iHT/WJkGOwOTik56XHnsDSfEXZKeqGU7/pjSiZJx7vPL0XfhDJ10/hZs3VHZcPcCRxCx2ana4dQDXpeHRKhakgPlKhAD9N9hZFJ3LjWk1LqG1hw2UGiwsUcUFqiahWeLT9d/awtEjbt2aNQwfoEIMyYjFoZjGxV1ezB0z1UwHMtH4aEXupBqJ2jehpedvxdHTcWveJx4ZUi+VNHGQXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LI3bV3WgoF0MCxqudPHtie6tZWCyOrR+YbqTQ3iESto=;
 b=WMrFlA3Lrkpe1DnNo5mQ6TXTMWq5o8V27/P813L9Sm/t2k8lMSodkDfym0uWNvqLIFSLP71vWUzyEnTPMhsgLAqOZcmvKhtJpfF2kdcwXfgNmAS7pCdKHC0P3hqKZwisBxYMj0IZhyoc+1Fz5XdG0MNeP70a3C2UkxVmoYcH+3N90a6wiKoT6x9mcxcfJa5Fper49HBRKWAT1rVW0T9HRo5/WAe8PWxn5henSuBJDr3hKvSdVQC/fuZmrbzHLHxLPwnhH7iGPR4rWZ5WwUjULil9kyxpkwR+cjbE61435upRt5yDiX+tp0ROwy0Fv8CEhGLcvADyLi7aM+K+2TI6PA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LI3bV3WgoF0MCxqudPHtie6tZWCyOrR+YbqTQ3iESto=;
 b=eDNB70ezAYUYLFQN+Oc1CeCJ4JI1izJ0+oetw3au6/e2eH+GquvcRBwX6NrLcBU8QfAQr2cYGmD/HqUUEVZMFgBq3qeEJHIGy5jEaeGiEGq7MXSLRzBYIMVNuPllgVGYJZyHUiAjZhWvtprHKE7+DuNK+GejDPj2+po8DHZOtlY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by DB9PR08MB7651.eurprd08.prod.outlook.com
 (2603:10a6:10:30e::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Thu, 2 Jun
 2022 06:41:13 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2%3]) with mapi id 15.20.5314.013; Thu, 2 Jun 2022
 06:41:13 +0000
Message-ID: <f33a0488-528c-99de-3279-3c0346a03fd6@wolfvision.net>
Date: Thu, 2 Jun 2022 08:41:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: rk3568-pinctrl for LCD RGB666/RGB656
Content-Language: en-US
To: Andy Yan <andy.yan@rock-chips.com>, Liang Chen <cl@rock-chips.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Jens Bauer <Jens.Bauer@wolfvision.net>
References: <3e9619d3-2a59-80eb-b701-90328c6943e6@wolfvision.net>
 <55089a25-67db-45bb-c61b-241ee836f025@rock-chips.com>
From: Michael Riesch <michael.riesch@wolfvision.net>
In-Reply-To: <55089a25-67db-45bb-c61b-241ee836f025@rock-chips.com>
X-ClientProxiedBy: ZR0P278CA0008.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:16::18) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d1ad933c-ba95-4f50-2018-08da4462e31f
X-MS-TrafficTypeDiagnostic: DB9PR08MB7651:EE_
X-Microsoft-Antispam-PRVS: 	<DB9PR08MB76516A2D54A1570E5292F9D1F2DE9@DB9PR08MB7651.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	Xhut+Fn6qpPYeJhaj9hcE0FPyAJ3OoKwdaQEAzrYVe+X/F/bFn1CR//QFfmTxNy2/XGVf0L9W5ea0hPpQ2v1DRDeeXCuz25JbFE2RnqThU1izWr4zJEkqb3QjW4rrkUoM9TcavM6YMrASL3lDdgG77DEsaHVq5C20kQnriE+87j49+SOhkmyNRwTZtdjJyGeEA+0kCiccJdKjhMUunV7wEB/zcl72aGXWdfRwvMxVNp456LXW22c351o15KeFba+0l1X3f2AMCdZ2Gp1xxJTyoztTOlDhlhX6TzUAU/y7RXWrAHHxK3gzGzdmiDgUDDiJAEtxYlXmTx77CWKKt+fL8+z27fRvjOOtiDBbKZshrcfIjOO0lNYTnK2U2kkKzfw+HOTO0we9v3gVJ2UFncrrz3c9zgemd34b2voPthOckaeY+oPnmSocHk3m+jB4U2oBo7HXzqIAAwjRM5AR5UArGsfMO/Nc+d1rsFZV68dxW53QThCw0ICJlA/ityn/15MYkixjE5qjOsPX/CNBdDPxGhYdtxhiWb9cfy2y9ydC87OxPwmot2RZcaeekjjf7R+0i7vTPEHv0ytRXQAx/TSAmyQa9PRHsCDqXGieAU9WzsLn+FKnDemDnEe9HVpQRqqGI97t+6cUkHAJ40JPYqfc+8llDSqHBKPehedsBwxkpbdE7hD/Ykyb3UUFWkg0oxxMvFI4nmjjLB219qTNE1zn9Ujx5slE4Xckmn9mZ06lAGV3SKjB72F3pVRpSxNmu+2ogPNBti6voncQnTJFSBzUMq0bQjuJD7F0iYmIRkpNUTW6FQYbImg0bbqzvHEmIJq
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(346002)(136003)(39840400004)(366004)(376002)(396003)(54906003)(508600001)(6512007)(66476007)(110136005)(4326008)(66556008)(6486002)(66946007)(2616005)(8676002)(8936002)(966005)(316002)(31696002)(107886003)(6506007)(53546011)(38100700002)(36756003)(41300700001)(186003)(86362001)(44832011)(5660300002)(2906002)(31686004)(52116002)(83380400001)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 	=?utf-8?B?T0lVbzRMS2xweUo1OVRpcUp2Y0NtQm0rYUVmSGk0aFZkTlVCSDlZZnBBTHdz?=
 =?utf-8?B?MFFSRjhUSWtHdzRmbXUzdEdvRGR4eU1ENVE5Ti9FYU1FMUl3Wkw2MW1sL20z?=
 =?utf-8?B?NkNUWHJoek5wWjdJeTNZWVdIeDRPcktSb1pnU1Rhdm5tZlgwL2lUb2xOOGVT?=
 =?utf-8?B?OW5qRUZBdGJZQzczVGo4Ymt0SXZqLyszMG9FSTFmdjB1SENWMDdiUUZOOXFF?=
 =?utf-8?B?VTYyWGxLcXZ5ZXAya3RGNVpEeFJKczhHMzJpV0RUeEw2Ums3aCtaZW1FK0pY?=
 =?utf-8?B?eWk5QWtPNVM1MXZQL2VJa0RnK2piV3U2UC9rVDREWG5HdGJtTkRiSlJjekxh?=
 =?utf-8?B?TENvSWxXa2J5ZWNJaHY2WFRTbHEzeXo5akRobFpSUzNVTWFBZmt3dmVLM01u?=
 =?utf-8?B?NE9KK2NOVnMxRUtaNGFJZjI2ckw2OWRYRGo0Qyt3d0RRZnRVNzZhd1FoZEJj?=
 =?utf-8?B?a0ErSVZ5ZFM5M1BybEZwTGx3Z1d4dC9kdXBnemJZL0dLckQwdUZ0SEhNYVAw?=
 =?utf-8?B?YlFDS0xTQ2NOVlNVYmhEYXZpTWtCWWZEK2xjSjdtdGtFeEo4NEo5TG9yR3RY?=
 =?utf-8?B?d1Ivd1M5azZaRmtTNWUwNHE5Q1FWM0RDOVY4RHl6cmxGWVkwYmdGajNuRnpR?=
 =?utf-8?B?VXlXT0UySE92RDRiNDV1dW05emNsVmNjQ2pKYXJBNGJBd2UycjVyL1NrV0Yx?=
 =?utf-8?B?U0FYSUhaN0V6QWwwZnkyaGpWSk93VitsRGFsd29rS25iUEg0RWc4Y0hEUUY4?=
 =?utf-8?B?b0xoSVpieEM2OUwxbW1uVlpYV2xJamlrOGhhYVh0bmtEODBLV21Sb1ZoejRG?=
 =?utf-8?B?cW5ic1o1eEVtY2QyOXJhRU02bEhKSE5YM001NWdiaVp2ZEtxM1ROSTcwYjJa?=
 =?utf-8?B?ekxWUURoRmYvOEtjVnN4OE44RWtWdU1Vbkc0ZW82dWZyQVR1dWswMm9KS2pq?=
 =?utf-8?B?UmNwZzNDdlR0emJVQmRaaFR0cDFieXYxdXlKNFc5dTBMckZVSVM3NzNiSkZP?=
 =?utf-8?B?QzVDSUVBNGFQWjJpR3k4eGptTzNLeEV1cnYwZUdtZnBiR3ZIczJqWE44dDQ3?=
 =?utf-8?B?V0kvRU95TEpvZFBxcUZ4TkpQQ0JSZlEyakNGLzNxUlRhNkNLcitmQk8rOE5D?=
 =?utf-8?B?dGNiVmhUWjNZWTNjRCtVQlNURFBCbnNiTUlseFE0MUhFbU5yWDNSczZBOFZx?=
 =?utf-8?B?eEdPcktReWVUNzJWTkJiVW5MTGNNRGdtVCs3dkxuYm5udlZGK1RUUzAvZjJy?=
 =?utf-8?B?ZHZxb253SUEwbGlka1FjaUVDVVY2dFVHY1M0T0wyQzJTUnQrYm9aaW1tTnNN?=
 =?utf-8?B?QlQxQ1lIK0pYV1hDbllqODRENm5Td0o3eENEaWw3Ums4ck9lWU45MVBnazFI?=
 =?utf-8?B?ZlZJa3ZjVm8xK0RzbFdmM3ZTRWREUVpXaTY3NXF4MC91MTl3eGVPUFY5WWt5?=
 =?utf-8?B?WFc2WGROZmkwTU9ORVNHVkNNeldRQ0h0MGNNMDh6R3MxNWFsTEFwc3ZuSERM?=
 =?utf-8?B?MkI4dUV6RXJFQ0NsSkJRUFNXUTFEVjRGUllBZGFWN0Q1VnJueXd4czV2c2l2?=
 =?utf-8?B?cHVtWG5ldjdXZzN3N1liaVJOVkxWL1RlSFhSTmJ5eFppSlREekk0cHR2VkZR?=
 =?utf-8?B?SmovNVFxdEgrb3VkRWNQM0JpTUJYclYrOGx5NHNNaldia1RRNjExK1N2RDRR?=
 =?utf-8?B?UnpNWXBnc1Jhdm9najFPeE0zdFhRTzkrQkF6UkduSXFTb0VzNWI1QmxHajAx?=
 =?utf-8?B?bEdGd0xaYTVRWTg0OHlaQUtqMXhpMGZNT0hIc21mNzVhSm5SaUsvT2FETXJm?=
 =?utf-8?B?eFdEbDZOM2lTeWlLUjdpNmtkUUFtbUV5WnBiT2xDYkUxWm5jU3pkRnd1UlU0?=
 =?utf-8?B?aGIzSjZRQi82YW5VVzJKUDRXcFU0UmkrdTVqZDRCT0g4VXplbE9uWVV4UmtG?=
 =?utf-8?B?aFBubWlmVEFsMEtnajMxdWVKTlVGRTBHU2FUV25sT3BwdXV3RXMzS2ZoY0tO?=
 =?utf-8?B?YVgzWjBNWVdRemF6SHVkUDJ1RWE0NEgvRXRlRUh1R0Nid1hBa1VtYUZrbHA3?=
 =?utf-8?B?dnBIN0JaK3NUd0JKVDN5emdPenVvWHRoVDBmYWZQR3puUDU0OUtOb3VzMXBB?=
 =?utf-8?B?NTR2RDhxNCtkcjRHakpIeXVWaHNCSDZVa0FsV0MxRy9nUXZ4SlEvYk81VUdL?=
 =?utf-8?B?MThtRnR5RWw3UFBQQlluTlMxYlcwZ1gwcEFiOXB5TWZJQUhyeFIzRG5pbVNV?=
 =?utf-8?B?Q1BJaXlpcmZxMVJyaXBCOUs0aTYvTFN1RDY3WjJHTldNczhVK2cxL0Q1aERS?=
 =?utf-8?B?cUgrRU4rOXpkdHlZQ1lJMERBY1A4Yll0YkovWklybzBxTE0rSXRXWGdhRW9T?=
 =?utf-8?Q?/X4eUHfIypbyFkVz4/ZNfp9OQEn+UHSW709t4oHhrZq2u?=
X-MS-Exchange-AntiSpam-MessageData-1: 	SHl5FzF1/5/N444cXW77LgZp3uywJZ7s6+0FjbzIglUGz37VlY1t/nso
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: d1ad933c-ba95-4f50-2018-08da4462e31f
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2022 06:41:13.5548
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dVBh46jxKTJSAq5lGKRYVM98XRoqyz1amoS69xsQfNAYZP/Ccd02XpGYJk5M/IiuRn+p0SsZb1MsDeddCeJtgsNk7TSEP6IxFBdooIkJF58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7651
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220601_234119_577392_165EF3AD 
X-CRM114-Status: GOOD (  16.08  )
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

Hi Andy,

Thanks a lot for providing the pin mappings.

On 6/2/22 03:38, Andy Yan wrote:
> Hi Michael:
> 
> On 5/27/22 20:46, Michael Riesch wrote:
>> Hello Liang,
>>
>> According to the RK3568 TRM the Video Output Processor (VOP2) is able to
>> emit parallel RGB data to LCDs in 24-bit (888), 18-bit (666) and 16-bit
>> (565) format. Based on this I would have expected that
>> rk3568-pinctrl.dtsi specifies one group of control pins (clock, hsync,
>> vsync, data enable) and three groups of data pins (with 24, 18, 16 pins,
>> respectively). Does this sound reasonable?

Just for clarification: Can the data pins which are not used by the LCD
in the respective operating mode be configured independently to their
alternative function? For example, can the pins D16 and D17 be used as
GPIOs or UART4_{TX,RX} in RGB666 mode?

If yes, it would probably make sense to reflect this in the
rk3568-pinctrl.dtsi by adding different groups of data pins.

>> However, there is only one group with the control pins and the data pins
>> D0 - D23. I cannot tell which pins have to be assigned to the different
>> groups. They are mapped 1:1 to Rockchip pin names (e.g., D0 is mapped to
>> GPIO2_PD0) but it is not clear which function (channel, bit) each pin
>> has in this context. Could you please elaborate on the mapping of the D0
>> - D23 pins in the different operating modes?
> 
> 
> For 18-bit(RGB666),
> 
> R0~R5 map to D18~D23
> 
> G0~G5 map to D10~D15
> 
> B0~B5 map to D2~D7
> 
> 
> for 16-bit(RGB565)
> 
> R0~R4 map to D17~D23

D17 -> D19, right?

Thanks and best regards,
Michael

> 
> G0~G5 map to D10~D15
> 
> B0~B4 map to D3~D7
> 
>> Thanks and regards,
>> Michael
>>
>> _______________________________________________
>> Linux-rockchip mailing list
>> Linux-rockchip@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
