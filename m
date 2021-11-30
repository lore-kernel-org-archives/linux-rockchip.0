Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADAD9C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Nov 2021 16:10:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XHlYKX81TWJJAXC3HCSkmo4/w5zABT0o9mQLm4mwBkQ=; b=DaxIr9YXK/8XPt
	WUaXI0/vd652I00QExFpSsR814pDRQRfSl5747fuawvscb5cUujOZLRgJYc1WN3+7BztgirSefb9Y
	in4N4vFD6AgZNOowkgLAe7YBEb1mB1Ugja6XOhyA0P+8v4BXf7YUJ+oG7Vwt5KU/RjjTu3dCy4Dq8
	OqlGS58XNrEdz1l8VB5DK5QozSKpz2BYgTRwyUemSVrJ4q4P7HWcTm+stxQojUY+QuXuuv0hsbm/I
	296UH53IcJjgIDBvcGNyZpmp+oY2vu8ywg7L+igcmEbPEI1iMoBTaIcyS0+3OnsRT0n+5yQeQq9gz
	jYedRWczT76bzL/4za+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms5iL-0066CN-9b; Tue, 30 Nov 2021 16:10:41 +0000
Received: from mail-sn1anam02olkn2092.outbound.protection.outlook.com
 ([40.92.44.92] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms5iI-0066BG-SD
 for linux-rockchip@lists.infradead.org; Tue, 30 Nov 2021 16:10:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PBAQP1u+tXe1eJdQ2H1+IBkQxhg1vbL5HKFRKi7qet66mfqqSUGxgpZ7FTAk5M4hlEQAfTBn72QemeD3sKyT1GcY4GdgEY4GCj+e1ZQFjbn/NbRZbFxc2loIQWZ36jBsKTH4bKoi6kBCB+clfizi94V1eijjUBkOkvvgj4OlpthcDeurq7AIPP7f1kQfHBvy8GJNSeFKR99nNf67ueYmdCd51oGNoPJ0/sfOiLEVs3/BDN3NSqdjYoo+MOjCBN7pRJ5IHhJp5paspu/2CqalizfD30UrHOHszrf+QXlRuzVZ74fv5uRcl17+UXAmUaBuR5PPwmgINo6M8hLRwQnSmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+ucM64DpDvU9fwdrjHp43VxzNii26HppDDMNOhuGVp4=;
 b=FyPzhw+k3pZZZzbR9caaLt62kFKy+y3gbYqPAlmcLtEk3upIZeo1/070rH856FU5T/o8Es5ZL0ID7carMGMHtt76ObObyKP/+0ULFdZOQHYZdR2hAFnHRWmVH9Z0445a2gtChbYI+sXRZjXrGciPspTvqHpLBRvH2jPbrFNnLqQk7GmHFG0HpkKOOlbsxqN2EOf65IfBb9aUnQdlNCqbm2ybCYEaRR0r+UtDeA1u+M4VMwEqqb+ruh4MVX7wzNnN/uxKQW51jMK6ZfDHe0lxLRjFnc4npP6IOwI+aewHtrhNkT7f5Ry+SXPdjz/7JuvgB/6IJ7wLvTfih7n0XgCuog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+ucM64DpDvU9fwdrjHp43VxzNii26HppDDMNOhuGVp4=;
 b=rYcYPwPjcESA6UWsLk6kA5+E0ok+/Zr00wMZxOS7s4nFDe7S24JXoIoNl+HOUtyVWgrtA9xFmwhKvjRs8blvm3V3lSIaCFhoL0Vzd3Ny7qzJNgd+H01R3obTuf9pBI6suvIwIDI+sFsy0PglrRWqgA9SoC+z6OUZmNEcUEA4ufLjFPVSc0qlHUwjpRHOjz3Gih4fya+Uw6dQKitnG4ywoxKbISm+L6igBtnWQn0cR7e7qQTsATkYm5qoBtnzpHY6bGyk6zSumbQlVpW/AtjCQVNZjAwYJ6Wt2tQ0Fyjcym4gL+fV0itBcQo085Gfbmt/E9rapfeOiKjaUFYqJfZ5bw==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by SN6PR06MB6351.namprd06.prod.outlook.com (2603:10b6:805:103::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Tue, 30 Nov
 2021 16:10:25 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::443:7159:802f:5024]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::443:7159:802f:5024%7]) with mapi id 15.20.4734.024; Tue, 30 Nov 2021
 16:10:25 +0000
Date: Tue, 30 Nov 2021 10:10:21 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, sre@kernel.org,
 maccraft123mc@gmail.com, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH v4 RESEND 0/4] power: supply: Add Support for RK817 Charger
Message-ID: <SN6PR06MB534222D7CA5732E689F5BA21A5679@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20210916194208.10387-1-macroalpha82@gmail.com>
 <2759402.V8G6Gt6Xmj@archbook>
Content-Disposition: inline
In-Reply-To: <2759402.V8G6Gt6Xmj@archbook>
X-TMN: [T2FFAGuGyJbpTgssaTHW2VmL95KS2qhD]
X-ClientProxiedBy: SN7PR04CA0189.namprd04.prod.outlook.com
 (2603:10b6:806:126::14) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20211130161021.GB9689@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SN7PR04CA0189.namprd04.prod.outlook.com (2603:10b6:806:126::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.20 via Frontend
 Transport; Tue, 30 Nov 2021 16:10:25 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 52c825ab-21ba-4f68-975d-08d9b41beb36
X-MS-TrafficTypeDiagnostic: SN6PR06MB6351:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yJtb7wacaqQyIbZ672vYS+oWwez7tAM2FHmvMV7KVlfbrtXWWWslsrGPdDL79dB9LmvJI9P6lKAUQwf8UQiroPPnN/ESWj4AX3ZUtEDsxNimo3/cGED6XFpDl51isT8pe4r2aW6aWBhP04B8MzNfRMjsMXyqIXWOgYJSvWAQ+bCUMX7KXl1nxWrQ2LmBfO2zouD40k+c1grZijdbmnZM6E3RyxMgveNKn9PkRe+QID+NKOny4ECmZIoLiMyk6DfuS5omgnqkTsac0LlP4LD31f/DpTPdLSFAiDKPuuEF2PTm1WlebRsivW1rURrjBQIakwspZOkvB3fgvFUjV1NAmeqxk/Xrd++sJi7JEjBBpglD1I68KEYBrI3WM5FLDe74JTqG+JNsBNOsOh8G+kiKAiNQ6pbt47eM9+dVWPrQksLg1mxJOCRaoOMTgsBgNc1gmiHcljhZAkjBD7vPZFWyrbw7tbxyuoc7OyrnWcoihtB2hHm0dsdyP6IRsU2JS4MhpP9na/OSMQXr8Efm7QrpAdv3F50DIqiVKoWxupisMdkb+6NzOkYhK/v35kU8TkNCBthEK/4+9ep2Kfz7b2l6DQ==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: zUbDjJsMExYnftjeRW9UO/RJuosTcKAQCb39SZH1s6ReI0v6NTAuYilggSULgVUhX7zNH7pQlVQFs9NDFIr0pd2IzNfpt6A7RGs3PCmHPCVh9G4M5WB+8TB4t0Nn2zejryJuhdDBvJGXmM09pVyaIFykz1zXgk7uhjJwujL2MWNPJQzIzuDCPWptyi57U7SD3rUJk5FU2hlzINASRFaPp7Rk11tr6Pv/tzUr56+2pNxoTUA5s4v5+/1MV7susHx6E2OW4rXMq7r3dhGzAsAFDNEGXFVw3mY9x0hUWU93LkEhBzqmxywMlQW4L9oOTXC/q+aF/HJn1h+Lg7Vh9dzSlC6267tryaoI9yVkOfGAeE3/r7FEJMcOwonFgm78ixH1rqRU7tcZ7YXwD8ykJjlTeA2i/Q+hUlDaOd5I2OTxMvw5I82ycCZFj29SHs5FC7DdEL+iPImbjaNCXQ+JwAy9WUjUXmPMtupc4QDFdjDc8vB6mMSeU76Da41jEiU6Rx5JQC8pO31GcnSfAxfIVCjiAj1vRCrpO97KSh7b8oMxbzbc5tkOK7Whvshs+TuKNykRni4ZPvSQI9Y+Xmil17m5VkRZQK+avgAKgMWZKx+C3bZ1gmj0+b0r4rKyrBL/rhK4ljZCPepplNgWqaQsuxkqdv7oVpxOVQrhlIztkuD9fQ/Oi0z4l6pQNo80PzhU2hmoBvILJGSv10kcIlPisjcu0w==
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-94543.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 52c825ab-21ba-4f68-975d-08d9b41beb36
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2021 16:10:25.7863 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR06MB6351
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_081039_013475_51E85BC7 
X-CRM114-Status: GOOD (  21.69  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Nov 30, 2021 at 03:03:03AM +0100, Nicolas Frattaroli wrote:
> On Donnerstag, 16. September 2021 21:42:04 CET Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > This series is to add support for the Rockchip rk817 battery charger
> > which is present in all Rockchip RK817 PMICs. The driver was written
> > as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
> > myself Chris Morgan <macromorgan@hotmail.com>.
> 
> Hi Chris and Maya,
> 
> Gave this a whirl on my Quartz64 Model A. I noticed that this will
> happily let me discharge past voltage_min_design:
> 
>  $ cat /sys/class/power_supply/rk817-battery/voltage_min_design 
>  3625000
>  $ cat /sys/class/power_supply/rk817-battery/voltage_avg 
>  3381360
> 
> Is this normal? It went all the way to under 3V before the
> board finally locked up.
> 
> Does the minimum voltage not affect some sort of cutout on
> the RK817? Does it even have one? Is it the driver's job to
> do something here or not?

It does not look like I coded that, but I can. The PMIC has a
selectable register (RK817_PMIC_SYS_CFG0 = 0xf1) to automatically shut
down the system at a certain voltage (between 2.7v and 3.4v in
increments of 100mv; bits 6-4), a register to set a low voltage value
(between 2.8v and 3.5v in increments of 100mv; bits 2-0), and a
register to set a low voltage action (either shut down the machine or
trigger an interrupt; bit 3 and then I believe the interrupt is read at
bit 7 of RK817_PMIC_INT_STS0 - 0xf8).

I guess I just assumed userspace would handle it, but that's probably
a bad assumption. What if I set the low voltage value to either 3.5v
or the min design voltage, whichever is less; and then set the low
voltage trigger to shut down the system? This would prevent your
battery from dropping below 3.5v or the min design voltage (whichever
is less, sadly 3.5v is as high as I can go for the minimum) in the
event userspace doesn't take action first? We could also set the
shutdown voltage to be 100mv less than the min design voltage and use
the low voltage interrupt to trigger an action, but I'm not sure what
action would be appropriate (and if userspace isn't listening it would
be moot anyway).

Thank you.

> 
> Regards,
> Nicolas Frattaroli
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
