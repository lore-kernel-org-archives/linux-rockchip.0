Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53224C87FCC
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Jul 2025 15:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxzkkuWb5MuDx2IUstlb0T723BuEkuUpoqs2qCrbYYw=; b=hhppf50lEAfGA3
	Q0viA76kFXOOj6mHfi2Il8JuvwxJfj5em9FEspEeLKUqTdObGf82eLOJiYlYINJwzgPviUCGsfE+O
	bIS29h10qwfPY6cdiO6JHOiyFZrLPrZBf3sMdtdi7IY4LotESsFC7RnC5RtQjzWFdqZMKU3Fnb6KE
	ysZNcLoVdpN8IraXTVHKTf+JH595RovlX04JX8tfmXysxg06yC4BGFClGlLWb+K+90OJjbucw8GCn
	u7TW9vBB9nsSl7RfIBclTPeABIDxrvky1YPQsaMsoPfgX02Fg900X1ZlcbEQzTRYWhRkg9dOGLa2Y
	0B7mbFBn3OO9qXbTenNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhV8Z-00000003xlD-2HF6;
	Thu, 31 Jul 2025 15:24:07 +0000
Received: from mail-sn1nam02olkn2080e.outbound.protection.outlook.com ([2a01:111:f403:2c06::80e] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhV7A-00000003xVm-48jv
	for linux-rockchip@lists.infradead.org;
	Thu, 31 Jul 2025 15:22:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=piRpgivxUWFh7gcwLf+GIG6vX6TOk89nXAjjmlJqz5Yh0MBdcQL8RpNrKDy6bOplprWKJyaRokID3KyvejhZ6ARm34BJOmoa0+ZKQrisBKhwVQUp+hIZ+TMgWYW5BBF85Usi9yNKjJNdtrb5aW0RKxr0b/Nciq/2CkhaNF6YSnVfdyW5NbXl1j/79E1A7UpR4IL4UOHOHwZRy/3Fxu8U3nNcW2e77ngJp8ACFGXhlN8ULzfbxI3swHPLejK71qrofqShF238cSS15fXUG5GoRqihQ/4pxSDtmOa8k3a9dl1v8uDPelFoodBnWGABU6m9BHUOw/bUUMF4e3Zxj0uQVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rWIZXn8cUp1/COK1YXJcrDiKnTo+3dPMhDq/6+xov20=;
 b=Y9NGOEifnu/mSskMQYWlNh53LTqXrUfJtsFO8thSoMmicnKqBX0A01Kt7vbYHvKhYnazZ7WNxE/Z/RhPShBL53u6gFRceLM2YMgCZD+mkEGzdMm8ZAl3uiEh6OchCLvOLtwFwYbGmuRlzHyGxLmSMywr822p5v85Tvs1PEaC3HPDfPZDD9LA1TSvblpNpFtnzcoOCUfGiH/u27jh6muF4gmyUAC+nojDw4UqpcsfposJXa7nt6YVmZfDUFoF8Na3OqzOK9cO/dFlhF8FD2UoQext5IcTMTM85Qaxm3Q55XS5LUX0XTyqkiV+zr0IUH5S0+1sxEpp6NlhDTG4Mgnnrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rWIZXn8cUp1/COK1YXJcrDiKnTo+3dPMhDq/6+xov20=;
 b=QYUFCtIaYHuDkRcJ7rRqkIJLBz7w88ROnrL5BVZo4WH60GIER/NYEEmAp/MAVhVZfosiJviHy79s6gM47BJHQt4freZ9r/ISBSfKTJ/wGaY71IQakse5uR+jJyZI4FGPHn8myXll6s1lYGUqxWscXjIU0O6EpKoeoznSEq/3fkRha+fbXek9yykf3dpIetyEj4iguFP99DWEwNwk86lIpT3vAbG/qSoO7ElAalY6DVsArJc+HZtq3ewBEJ7Uv0ogz2JGXMzn8fUzNAgjhIJNTS0z2SeQNUcNATcgIXGMMGGvYJVox9uGrRQ83Cub8muFZ00BgxNEslpLMjLEDHCGkw==
Received: from SN6PR1901MB4654.namprd19.prod.outlook.com (2603:10b6:805:b::18)
 by BY1PR19MB8014.namprd19.prod.outlook.com (2603:10b6:a03:532::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.5; Thu, 31 Jul
 2025 15:22:35 +0000
Received: from SN6PR1901MB4654.namprd19.prod.outlook.com
 ([fe80::7ffe:9f3a:678b:150]) by SN6PR1901MB4654.namprd19.prod.outlook.com
 ([fe80::7ffe:9f3a:678b:150%6]) with mapi id 15.20.8989.009; Thu, 31 Jul 2025
 15:22:35 +0000
Date: Thu, 31 Jul 2025 10:22:31 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	broonie@kernel.org, lgirdwood@gmail.com, sre@kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org, lee@kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 2/5] mfd: bq257xx: Add support for BQ25703A core driver
Message-ID: <SN6PR1901MB465433EF9BEF814B7E8EBE5CA527A@SN6PR1901MB4654.namprd19.prod.outlook.com>
References: <20250722164813.2110874-1-macroalpha82@gmail.com>
 <20250722164813.2110874-3-macroalpha82@gmail.com>
 <43e615db-8313-4a6f-8806-219c7b921481@kernel.org>
Content-Disposition: inline
In-Reply-To: <43e615db-8313-4a6f-8806-219c7b921481@kernel.org>
X-ClientProxiedBy: DM6PR06CA0101.namprd06.prod.outlook.com
 (2603:10b6:5:336::34) To SN6PR1901MB4654.namprd19.prod.outlook.com
 (2603:10b6:805:b::18)
X-Microsoft-Original-Message-ID: <aIuKNy7GbHBUZZ9x@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR1901MB4654:EE_|BY1PR19MB8014:EE_
X-MS-Office365-Filtering-Correlation-Id: ddc1a64f-c858-4724-6234-08ddd0461317
X-Microsoft-Antispam: BCL:0;ARA:14566002|15080799012|461199028|5072599009|6090799003|19110799012|8060799015|51005399003|3412199025|440099028|40105399003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WDRfSwi3UqBnl7Njb8767JXJV2Qjt2ZyAVsS/oFQiN2JVcvPdA4oiBi+XzCs?=
 =?us-ascii?Q?PUYTMXthexcz9PQqw4Ltgb2vS9COhm8HSCvcMzN2aLZTl7wzcWSbt95mUAg6?=
 =?us-ascii?Q?JKpz/fAstaTYcFkBiWF4YuNtZLFuseX7fdPuJV7pGzLGn1XmqN/6ww1cfswB?=
 =?us-ascii?Q?0uH4uyG0WKr5zubaUYMFO18BSWB+l/lPI85zmMwr0D8f4hbZ+WhYimXwRRyK?=
 =?us-ascii?Q?axtCDUbGH+XBk0p2x4GiR7XWL5s+T6fi0gEt4JuaWrAN4KuPsyXgvIDmqIQJ?=
 =?us-ascii?Q?DflGmzvfZOcOx9n5Mb6ekDHsAemVsDoruT99GBmjkPIxw1LJkVroEbnifKP3?=
 =?us-ascii?Q?i2yjPMnGmra5eetpoTpvMFEyFMxyFGSHun817kUrnWsjDPYgXQgSg+YIBy+F?=
 =?us-ascii?Q?7vQwN+5XXlP9T5T/dB/VwMl4D0h9aXpLhWEI2bsNMNDU3uYZD8D+Zay1pygo?=
 =?us-ascii?Q?XxS9GR814HiRPYvZDXOcAs5LMj6bxxYJidRlBNGuNbKdU2Z7ICNu+naTSirN?=
 =?us-ascii?Q?4a5MHAMiwI/AKLG/mUVg8/1BJL5w+yWVV/VUw0UGZD6S8+6XYCln/zUjAvu/?=
 =?us-ascii?Q?bj+nVb78IW7z4IXEjSgW2rNa37zaeJXNlmz77Ii6MPEl5FZfZKohFTOcAM47?=
 =?us-ascii?Q?Ej6bvAts6oSJoecMf3TFXBqRzp36i9QKjpgXuHsnFlYTcAAE4x8FCknznwFw?=
 =?us-ascii?Q?prOoYMHyUSOeO5k4IGD2iEui7cxjktMZU0c613tex8jA/pT/puL+HqSDkbx0?=
 =?us-ascii?Q?7zbYVQjKU3ltMAzSJSpLStb2mg/S4qSDMg3/ohie7Ceg8LYd/gHhlZSdcbba?=
 =?us-ascii?Q?asP0aZAyna6ZO3Sk+Jq1tblBAkWEdEHgfLRL3H7qw1RHFF5UUDxpqWqCy6fn?=
 =?us-ascii?Q?l3G+srge0cTITihFZWH38soETtHobQRzx550l0JPPukw/xnDGSBxaZ1yEQi7?=
 =?us-ascii?Q?Z1EXGOVvN40WmBpYvxC7HYtKUqXmEDzRSW4xjnqNCmHO9wtwXT0ltcvAPQaP?=
 =?us-ascii?Q?TEdcGh8LLZ0VDTwfV1Le8WkMpt9wQDR6kedOe7da+djKJR0lxzFrbjt7uGeY?=
 =?us-ascii?Q?1jbdyxNVP12SVSJJktenbSfgf5jF8hRXQx9oHqphaeC+MLGlF5wZaUw5cxDj?=
 =?us-ascii?Q?4l8GBU8k6TYeD4uDksuQ+3B1ciToo4ozO6dGyrbbk/PJv0af44wMM4s=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZyRpeWkIYjflKcthZKVonI/nyvdPAbPpBHdsxD3tTB3MXzdb3sX38s2m/9pV?=
 =?us-ascii?Q?5UdGCc/wdeDuC+gNlKtadKl6AHcQRjGMwc9pakKqiTc9l3RfZsS60+XlIOOy?=
 =?us-ascii?Q?iDYNaOXCMOprebkxh82KGWdRz/I+5QKY1mm1rQNXffa1I0aNYazBjQpeOeQP?=
 =?us-ascii?Q?ALBV/b6FhVCit28VBMgOY1/klyHc1EG464ZW/gaq3HnBxAx4HakeKOvsfmh/?=
 =?us-ascii?Q?7B4L1lVdnHscigMl3LjARG8TYSgxekfcBW2ZFBYav1V0LOk+3Ac/5nLVPVdC?=
 =?us-ascii?Q?r3D84TPfsPHORPFwukScd4rSIsPw33uKXXTncu9Q4UX5lStBso6WdzqPinOO?=
 =?us-ascii?Q?Uh192p8wA1xnpAKaHISsBokmD4x2gqXeRAzDy5BHLBnXIyEA4I5psMMml2s8?=
 =?us-ascii?Q?MEZpHAICPpmS8P7QCNXTmWuTHOfADWXaW49GWbnIaxTXRQ1E/Wd79wyp8rqV?=
 =?us-ascii?Q?2BJXE1mKQ5QLarPrY4eVktrMpFzAuJf7ni98OB78mysH9KZL5golbdgPIhh4?=
 =?us-ascii?Q?4A2KJXhuoScPqDRicFYV91syPLQflXmaMsDV0haTSULkdjkTt4lYSuBtzg4/?=
 =?us-ascii?Q?TQDDDaSLJygn2j4/kVPYp3bLLWvX2yvAEOKI9iIG520hy6s7wxHsDfxMpYeD?=
 =?us-ascii?Q?RgtzidwbQw0dZjcS5R/lOYiyuAGn8SdhdTJ/HzOUCkrnswtMki23Hw0oaby2?=
 =?us-ascii?Q?r2/rQ6rzycdq6gHN7zhfVHlQH5QWCuYzbVacd0ksZ94hfmDj25L2UNDtoFLX?=
 =?us-ascii?Q?70GVL3TGwL99D/RqnKyxKC0kJ4W51S7qksHaqEWZ6jwG22K6lU34nmphGIJR?=
 =?us-ascii?Q?6Dc7ZRDm+I8X3wc99UPtOKLjQuOL05cYEoCjBifjl0EwSPSRnIWCTy3P/TEC?=
 =?us-ascii?Q?ieN+3lFI2HRPUSYzv01gyYD3DfT5cXEaF4su+bbgVNi9DBOLP9//G+nQF5l1?=
 =?us-ascii?Q?rCFodJhi0+/SAP5kJ95f34nK984Plig6samFNw5G6oS0C3mERhJHPLjn63ER?=
 =?us-ascii?Q?SGfn36STx3eNkwlh07sUZOOROPR9JTB03vekuubNERenCBkhSUVa/9Xj4Lir?=
 =?us-ascii?Q?+xV9UBcGvd7T85Vbg9ItrzyAl0265atWV2NHVGnNMeb1XS4tAQKuFnKwg/kv?=
 =?us-ascii?Q?za/uH9KLPOLXsVtypaeAGxvRl7xDtHhqd+7bRO0LpS89x9Bge7O8UgGJzdd4?=
 =?us-ascii?Q?X1khdxFw7y+cc3scCdgr03dG+WQJeik57rMoH9+1GcitJcbed8gnsAqhkgz9?=
 =?us-ascii?Q?IDgO52n++ZisWdbGiLxz8igk28b9MSc0WrSGcURtUeu4GO6VRKal/9BHhgUy?=
 =?us-ascii?Q?cuQ89GkSwZioEuDnxgwE4NE/?=
X-OriginatorOrg: sct-15-20-8534-20-msonline-outlook-2c339.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: ddc1a64f-c858-4724-6234-08ddd0461317
X-MS-Exchange-CrossTenant-AuthSource: SN6PR1901MB4654.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2025 15:22:35.2015
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR19MB8014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_082241_046987_E75475A3 
X-CRM114-Status: GOOD (  14.84  )
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

On Thu, Jul 31, 2025 at 12:43:30PM +0200, Krzysztof Kozlowski wrote:
> On 22/07/2025 18:48, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > The Texas Instruments BQ25703A is an integrated charger manager and
> > boost converter.
> > 
> > The MFD driver initalizes the device for the regulator driver
> > and power supply driver.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Where did this happen?

This was a mistake by me, and I am sincerely sorry... I wasn't trying
to pull the wool over on you. I think I got mixed up with 1/5 and 2/5,
I should only have had your review on patch 1/5. It looks like I still
have an issue to fix on patch 2/5 and should have no Reviewed-by tags
as of yet for 2/5 (or 5/5).

> 
> 
> Best regards,
> Krzysztof

Thank you,
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
