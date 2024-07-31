Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B989EC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Jul 2024 15:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIZU/ERNTtCKTt+m0HJMtP0MmTNOPEXbK7X2fs4Uc8U=; b=CN7mkgxqaghGXM
	g4aFB7DjQZnsAoJnrlOgeJiCcZpYC5ok4UEaRArgq2uZbbcAUZWcr+Lkh5k2ulceZoYZ4DZ3VRp0n
	GfZLQ1yhPtNwvCDQ2jm76TKGvf5dIYYfvkhgQWNTTYhnIWp1FQJDvm26YCrldD5hTZ+bNqaot0rjO
	lo6yr2hdBHzIVXUc1VuAGYRE9IsWcLMAVYUP1nReRUb1TMmOZ4KxzLO6kqVTaWJI8JqHI/56LJFJM
	f3eaGUUigACANJTTh5u0+PraWlWQmw9iw8/rscGoTaSldoQ4nLL7/SXsrz53mpVut36uePbj6AL27
	DaOudfI7humMqLxhc+mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZBII-00000001jDN-2439;
	Wed, 31 Jul 2024 15:31:14 +0000
Received: from mail-dm6nam12olkn20801.outbound.protection.outlook.com ([2a01:111:f403:2c17::801] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZBIF-00000001jCQ-1c2i
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Jul 2024 15:31:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YLvUTRDZENIuKu4xuTwMUjfC1RE8o8ZuQ/bFnwvJAxZNwKV3aTXBgVgUvj4xUPDxENSnAOmm9yka98Sx7lhB6qYavkY1UOM8HGUFiuHAFw+8pCujhVo8h4VQEp+RWe7snRxUx3itoU10AYYQGtHC7wJxDfyR88X6YXTRG6dv+1S+k93ACzRJZ8Kblt7IRcr60bOqgZLWg3nQRzRY4ky1OcgAozrIEaBKhFz2ZIkXCiZeQrI6SQb2sUCUZS6eY/7uU9MJW4YgdIgitGVQhEffvstWHRONV4EbeC1JZSp87y3FD4BuEW+II8r4ioAV1huLQHK73LholsOl+pqtJs4Psg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wrdWCxhQs2HvXf4C6GKiD2X61lr0vTcY1aeDUSn9ryA=;
 b=rL0ihprvTo1h8QHvKCL2UpCQuYtNAX4osZ8Bh3zaj8vKlA+jRUDWbtM8mxPeGKUy/Sr+VXa3cCZLnpj8IxhhqVigyg+Ym3sruF8OaVOes9j9G+OWdejTmuRjPT7oUn2ohwtY/8pqLJmH3nK4esNj8Bu89JLWxo3oI8j1kAFH4P62XwFgBNH5CF16CBBd1p1QRlujLQVOeXywilkfnoVYBlQEplcYfOQ/oUPZ7+4BhL6zqmwXXTs7ikcmZAYkKYacWvlWzbxcAV6MKN1O6EKqVeeCnIyKQtMNcTs/r34wK/xm0HKX8/XFNEYUt0E786nZPFi9PBqSw4E5F5pZalsZxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wrdWCxhQs2HvXf4C6GKiD2X61lr0vTcY1aeDUSn9ryA=;
 b=HIah0D2jdFyaDp+gpBDX2pGGiOa6/KgRTdFQH3vsMfuBdJ5MOTZ/QTMJfd2dP/9HatCXsk6z5qsM3Jc1IZ6/mpPhvyfcnqvto0CSvLrbvmEbD/UdQ2KHGkKucX7R8C33Pso2MjNnLMzceYBnlpDj68WxlO6ASB9etjyGcQVwLpN9uD+0FR0MdqaGcmkJdOnlh6/zUuRqwKPL5O5DshJ8AQyuHwslw/z2v+1G32/Lx/U+g/5WGQuXzlX9zOsBk/OwEhTdnR5icQIjtRqKI2qHAi7ruCMbQNehLIqAszblplWrZZ8n0h6cjuBybqWtUuLJK2umh0C5MSnzLa2mWDexwA==
Received: from MN2PR16MB2941.namprd16.prod.outlook.com (2603:10b6:208:e1::15)
 by SA0PR16MB3856.namprd16.prod.outlook.com (2603:10b6:806:84::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Wed, 31 Jul
 2024 15:31:01 +0000
Received: from MN2PR16MB2941.namprd16.prod.outlook.com
 ([fe80::9d62:95ae:c373:c490]) by MN2PR16MB2941.namprd16.prod.outlook.com
 ([fe80::9d62:95ae:c373:c490%4]) with mapi id 15.20.7828.021; Wed, 31 Jul 2024
 15:31:01 +0000
Date: Wed, 31 Jul 2024 10:30:54 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, jagan@edgeble.ai, andyshrk@163.com,
	jonas@kwiboo.se, sre@kernel.org, t.schramm@manjaro.org,
	conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH 3/5] arm64: dts: rockchip: Pull up sdio pins on RK3588
Message-ID: <MN2PR16MB2941F553BB291D82732FA729A5B12@MN2PR16MB2941.namprd16.prod.outlook.com>
References: <20240726194948.109326-1-macroalpha82@gmail.com>
 <20240726194948.109326-4-macroalpha82@gmail.com>
 <5127387.e8TTKsaY2g@diego>
Content-Disposition: inline
In-Reply-To: <5127387.e8TTKsaY2g@diego>
X-TMN: [/6y8RiLQPtqE0bwu6ESG5LsvjvhY2whCzAQVdxOH08E=]
X-ClientProxiedBy: SA9PR11CA0028.namprd11.prod.outlook.com
 (2603:10b6:806:6e::33) To MN2PR16MB2941.namprd16.prod.outlook.com
 (2603:10b6:208:e1::15)
X-Microsoft-Original-Message-ID: <ZqpYrun5vammWLeu@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR16MB2941:EE_|SA0PR16MB3856:EE_
X-MS-Office365-Filtering-Correlation-Id: a7741597-ae7b-46e6-bd06-08dcb175c5db
X-Microsoft-Antispam: BCL:0;ARA:14566002|5072599009|19110799003|461199028|8060799006|440099028|4302099013|3412199025|1602099012;
X-Microsoft-Antispam-Message-Info: ADrL0c8EQoD3enyZoIcYKDS7SNVLl6vpAeVOpQLFT5aiKNyobHJqdr4vaJa4ASJz5DpNpWHRNJT6AMHyCMIHgxzhSD3Ks/2n3TeID/erRuKx3pvtnaudjpqomc6PiWUur/A2enARTuw1FiMFfdEUkmvMeR9H7ISV7BC6+1yweZw+jSDl5SU6M0CcEgMT1UW5ZhVxxhjLoRp0hK2t1F6CDPdsEk4C7RwsiAzvPenRT3TxZr/k/JX9sBt2+w59PT8L8MOXCpT4x0uaVOXezkaKpIOF5tmFoI/OV6XkQnLEaZQV6vmCFIfewoOKp4GMDwlyOiNFPa5quBU+EhWFEUgNYlt0DYHO59/fol4lEPuJ67AA83nbgHaPg+f6Om2wHQfXOexUm7gJXQoErzEGkEISn8TFhzYA2Hcezpy2cuBPooPvR6VZfxVYS/KMDNS0j0AyoSDudlNsQN/1d3aHRr8Ac+WmvgLTASwEFdXvepMGsNhEsr2bMd0pxYkADAuPWhKLp96YpJeSF7zftSguVYQENnJioHkcu0vCbFCadrONFxGI+eQzIrko4N7fTBeyaeIuOWQDOVQ/j1lNKx3yOP6z3FOXaR9phPxygaFp0mE3a7rdyt6CKcjkEGmPzoEcSdyPSCb5uqxbkmKb8ElhLqwWF01nRf8mqmUBM6BooctqN7mhvt7mI6Sh0hQBLZnAmeBMjb5vw3922+npJm4ZmXP1YPMP7PwYgi8BxXGSCPIxzpUrQNF+AlZdoOFu8KO7v0HKys+4amxuG9GNl5yRQ0LNDA==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?h+gXA+DIPW2Dw70tWcbggpXjZ/7/eMxahXdgIER2tA7u7z6JhnSNky80WH?=
 =?iso-8859-1?Q?ilmrRUseCilomjbQgQtl8JRYLmHW+4bOz1ohrl/uYc6xJU9hr4jTEUxihL?=
 =?iso-8859-1?Q?N90ceSi60ypc+MHkV1ib8tdZJd2VXmaedAQaBfXm06pKfXuAlXxa7qdiMG?=
 =?iso-8859-1?Q?xGNYG0dOGcI4uUwoHtT8wMFbnWJGC0mrBL5CzRFIz3qBq88wuuiwHH8VCE?=
 =?iso-8859-1?Q?4n9HElykXzuQcKjWP0hm46fwH2j7C5s2Xd8PoKjrLsncIaT9TauMoa8Z/3?=
 =?iso-8859-1?Q?G3hPyi0CUx+F2r1yPXA+O4wWaC4qkXkEJhbTU6bQZ9tpY6LrnJSM54mL3+?=
 =?iso-8859-1?Q?NMoO05/QwjZ0ogK/Tf3FPzDzU5BC2LPUHhNP14qfuRTtf2z7auuoMNfEcx?=
 =?iso-8859-1?Q?Dpou2MISpF5c4t+OypXnQMxTOjPDW6Hf+N4QeBfpIvh3ZsB9e/+WJ+i2is?=
 =?iso-8859-1?Q?bHRWeNkLt/DwxoJS0TOrDShcS+pLOT3QSKKQ2+KXcGC22iu+cPH0SYZsq7?=
 =?iso-8859-1?Q?3NKB/0LVuzVaOKT9B2zjBfsyawYGFn3trj5OEgSg6L35HkqBJmC7R9UGVL?=
 =?iso-8859-1?Q?UrwszH1AGcddp3g9T/Bjc9HgRti9k9UnazlWSzIW4q57lz9eiy4TUbuYY/?=
 =?iso-8859-1?Q?Sm4uxG07tleQ2N0fEktmTifj2REFAQhmHiCKfA6FA8w5zDFOpMqVztsdqQ?=
 =?iso-8859-1?Q?s8xKlxQqrOudDveVdZEa1uk+WkoKUBxFi6sXm8kF4Qk3MFsB5PCACHBCtz?=
 =?iso-8859-1?Q?m8sqdbg275zUoRrfqDnop7mrYUoGs9DlIArrng58GRckVLQHU0bjbt7hfv?=
 =?iso-8859-1?Q?MINEgOggRJmEMOFKVEQJhvEbAGr6PM8KsD08qIV8hNgixtQg68Yf+VBF3K?=
 =?iso-8859-1?Q?aFSW/quPd/rTlfAXXTPMN7UFI+LF9SgvN8lo6PCeiZldRBOZSsj8d+0bQc?=
 =?iso-8859-1?Q?yNX9XSBE7Xv4VD9qeHnp6qDk/MeXUqagiElvGI9iu7LIP2cSlcFY5vFx0/?=
 =?iso-8859-1?Q?L1dweBqZGkb+Zob6DW3IrFiiJxYFPcNphXsQuepF+edrhWOLrfCfsQMmj7?=
 =?iso-8859-1?Q?pQgwYONNpu7eUVvt+2z26wz/2TSmwH8LxKOdbEbGB05Wmx4oPxIX5NeDHm?=
 =?iso-8859-1?Q?0Wl5JtLh2TXNfWB7aV4NkKqijlZMcAdoCyRqjM08DMCvWPtpPepED0sEpX?=
 =?iso-8859-1?Q?p51zR2DyZ6yPeXopC0k7w8sPFSpKT151/fKcjCA4xqoSSU4+0yDDms93AO?=
 =?iso-8859-1?Q?ufm6z9eh5kplqOSJQmZkIjRx2nc7irGcMsK6AiWvObSt1INmiYxD9rMrWx?=
 =?iso-8859-1?Q?c8CZDmxmjAt7HREfDdDBI7KHzg=3D=3D?=
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-559fc.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: a7741597-ae7b-46e6-bd06-08dcb175c5db
X-MS-Exchange-CrossTenant-AuthSource: MN2PR16MB2941.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 15:31:01.0611
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR16MB3856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_083111_450366_92D969F4 
X-CRM114-Status: GOOD (  20.20  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, Jul 26, 2024 at 11:42:28PM +0200, Heiko St=FCbner wrote:
> Am Freitag, 26. Juli 2024, 21:49:46 CEST schrieb Chris Morgan:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > =

> > When using an Ampak derived bcm43456 on an RK3588s based GameForce Ace
> > the WiFi failed to work properly until I set the SDIO pins from
> > pull-none to pull-up. This matches the vendor kernel located at [1].
> > I tested this then on an RK3588s based Indiedroid Nova and did not
> > observe any adverse effects.
> > =

> > [1] https://github.com/rockchip-linux/kernel/commit/b96485b7af46a99c14f=
3c4818eb18c7836eb809c
> =

> As you're essentially duplicating the change by Alex Zhao it might be
> nice to keep their authorship?
> =

> So, "From" + first Signed-off from Alex, then you add a
> [adapted to pinctrl filename change]
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> =

> below that.

Thank you, that was an oversight but I'll get it done in v2.

> =

> > =

> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> > =

> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi b/ar=
ch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> > index 30db12c4fc82..d1368418502a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> > @@ -2449,15 +2449,15 @@ sdiom1_pins: sdiom1-pins {
> >  				/* sdio_clk_m1 */
> >  				<3 RK_PA5 2 &pcfg_pull_none>,
> >  				/* sdio_cmd_m1 */
> > -				<3 RK_PA4 2 &pcfg_pull_none>,
> > +				<3 RK_PA4 2 &pcfg_pull_up>,
> >  				/* sdio_d0_m1 */
> > -				<3 RK_PA0 2 &pcfg_pull_none>,
> > +				<3 RK_PA0 2 &pcfg_pull_up>,
> >  				/* sdio_d1_m1 */
> > -				<3 RK_PA1 2 &pcfg_pull_none>,
> > +				<3 RK_PA1 2 &pcfg_pull_up>,
> >  				/* sdio_d2_m1 */
> > -				<3 RK_PA2 2 &pcfg_pull_none>,
> > +				<3 RK_PA2 2 &pcfg_pull_up>,
> >  				/* sdio_d3_m1 */
> > -				<3 RK_PA3 2 &pcfg_pull_none>;
> > +				<3 RK_PA3 2 &pcfg_pull_up>;
> >  		};
> >  	};
> >  =

> > =

> =

> =

> =

> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
