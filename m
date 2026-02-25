Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C88A2FD45FA
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Feb 2026 22:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZldqOxWciTi4zKza+blgUxWtNxf7tkv8RT2jsyrweM=; b=ypZ79aKu8emOHH
	kjn5C9HOamOvebBcCAhFsOZMpBWsSJlv6ylSbYoT/N0Bl5+45ePl49AJOr4dhVrMkbHg8pIPVEBIh
	VheDquCbI+9SNTahpb0tm9Wq7adIlexAVrlK90G+spFL3uNV036uTY9tcuRqLmMy9z9Y+MPfb2DX9
	/nWhM9fk5DnALE/LBuaiGUu2tg8KxZQiQKhdqbk/f8lULk/BIUbsmJ0fvNvNVxUQhZtZ1JdNPe7/T
	juHekxoA0/65We5w1P2+97/li8M4ovVDVUNHOXhyiJyiHRWL4EbVWbdHAELqBb2hzm0H7YhBtBryn
	zCMYkOFRL18BYDW56VeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvNk3-000000051r4-1F6H;
	Wed, 25 Feb 2026 22:52:27 +0000
Received: from mail-southcentralusazolkn19013044.outbound.protection.outlook.com ([52.103.14.44] helo=SA9PR02CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvNk0-000000051qh-2ezc
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Feb 2026 22:52:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u+HAU9yY79VSO10lIhZdV3O5miwKqj8QVn3l74s/MVZCgfWFPBnpMLCIZlGgaKF5hD3TnEvQxYGN3ehuucr+nERDyY2OeQ5l44wn9tLEpCcz1F9jEFPv2kESNG47Stb2YPfrVX27dVtZISH39PKxUSuUcD2Np8CcoiQCfopdfx3hgAJCf5tsAz1gPK370VimOxi+SYkF9Rbu/WJkedzQ1koAGA5QWdplSwwI3C7RMKiiYO8PN47rMNGwY99ZNZxhKpcB+OZdcR8hvJV/d7C9NkS8Hgc4FtlCCB9XVmKFH9JSSifxwe1DMzgrYx4an2x/5gPx5XypPT9m6Pg6KpM6nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AAlL595UObHW1Lt6IaW7F9PB4C4L0dQS3PUAJfvf+XY=;
 b=m602OTGQGl7HuqOint/wkYxf9jmlbWladPvjtVtngThbbkYF08xXNSNdtXvF24A+iydhAElwHDWzexJ3fRO9XCKKRYBih4FmwypyH+fd0L+jblCrZc3SclQYKBr3VB0PcS6Ca4fEiiQzb0z/uKmi41cLrQSQ04UwjOlGmLKlogds9FJh8IdqPSAzWH3DaJOi/n9ptOqj2uQba6yudaCE/XjABiYP6yRcc2IamsuSKKPfZhz9gadGdJF9VuWN08zm+SeewhVVaW9aDo29bj3WtWj4OruZ7bzMpVfHwQjZVKLvPTaN5Pe0Y+kxhejMtjXcEF291J0RyghF1crywqDDbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AAlL595UObHW1Lt6IaW7F9PB4C4L0dQS3PUAJfvf+XY=;
 b=kc9KshkZiD0w1mw/hjVQzkMZ83P3f3pbiWxhRfvukXzfTLWQvlH+hkpthEB69FTh43n04KnuPtxhrSW1tzOjlFFjiORDMAStA9E7gVLYzaFFJyLvySABv8JphDpFmnCH66cxrUQW3mqfgM20Kw1RA4frO0yWEQoFXKbgGiE/vLd+7woS7UZwWyUJiRuQO+mtNXotKeFoBG++p7yjaAXLNBNOGIFXkBzATA+1xNC0vWAJlyiLjyrVRuyPQp/OMN/ZC+DsaHi9vpAsjcV+hOD+Zoo2oQw8u7XbC3kp3aSYEKPS+XGPGF7NZqguuDy3Q8OKN1IjkMhdn9Hzi+XAX91oJg==
Received: from SN6PR1901MB4654.namprd19.prod.outlook.com (2603:10b6:805:b::18)
 by MN2PR19MB3917.namprd19.prod.outlook.com (2603:10b6:208:1e3::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.17; Wed, 25 Feb
 2026 14:20:16 +0000
Received: from SN6PR1901MB4654.namprd19.prod.outlook.com
 ([fe80::57b1:b92:26fc:c937]) by SN6PR1901MB4654.namprd19.prod.outlook.com
 ([fe80::57b1:b92:26fc:c937%5]) with mapi id 15.20.9632.010; Wed, 25 Feb 2026
 14:20:16 +0000
Date: Wed, 25 Feb 2026 08:20:13 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-iio@vger.kernel.org,
	andy@kernel.org, nuno.sa@analog.com, dlechner@baylibre.com,
	jic23@kernel.org, jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH 0/3] Add Invensense ICM42607
Message-ID: <SN6PR1901MB465422A4BAFD469CD6966E0BA575A@SN6PR1901MB4654.namprd19.prod.outlook.com>
References: <20260224163109.370930-1-macroalpha82@gmail.com>
 <aZ3iz18O3UEDTDqm@smile.fi.intel.com>
Content-Disposition: inline
In-Reply-To: <aZ3iz18O3UEDTDqm@smile.fi.intel.com>
X-ClientProxiedBy: SN7P222CA0020.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:124::10) To SN6PR1901MB4654.namprd19.prod.outlook.com
 (2603:10b6:805:b::18)
X-Microsoft-Original-Message-ID: <aZ8FHZeRiVaqq9IO@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR1901MB4654:EE_|MN2PR19MB3917:EE_
X-MS-Office365-Filtering-Correlation-Id: 33cb8d81-8b9c-4d54-8731-08de7478fee3
X-MS-Exchange-SLBlob-MailProps: CLk2x5OX5VYv3c8Emt0jD2wdZaenNeU3Alcum/0otVG1luGOL+yGFKw1VJDn48Q9otdNq4VgO61S49rMmL6vpJgPAobiM0d0AsNTuVi56BX22ZL1ZpNDKoeNgfR/fYJTP2reEjvXeya155reSrdHzXNiWb0zgq8v1KVSxukOxIiKyalccyZqDYd7EJoBVpcnmHAVMhLKtwHo1AxlbXk/YYAq0hcEdqpk8db2WdJL/SXTeELWKQexkmlcE/ZnCrhLOfS8IFy0qiIgvdMcnIy9V1YaEU3qbbZ48D3Imd/qaYa0mxKCnPE49hherb4Eff4Wmv5ZvYr914uva5BkTojA/CGl+CZ1r+BCuypEojPMqs7/FH/EiZVnLlBV7hAkT7TlGfqoPxgdzFc+qJZ/HiCTditzNnmyoFFkCJbAowKID0gSMpJyRKlt46qmz3BBho5Dgv/GyBquYtLBKyqvccQ04xBHclHa9NN4rDY5P6x9iLHcUP5Jc3C3mog1Rn20oC/b0rECec8bv1YgCfxfE3OB54QRVX6UE+6fS+SR570MXTiMvAZLUX1RDwcSnsYcD/USA4DLrA7ga0EIA92mlG+k48W7cvDGkSSisYUEVZwQgNTc0RvEjk/wxgvKc2VHSRKolsocTGpmXijDnznWCX7NUHM30q8oiIWBxbQWtu3IN0fqwkWAftdkPBwhGAUeF+W2Awy66OERcHbewDy48aiIgQ==
X-Microsoft-Antispam: BCL:0;ARA:14566002|8060799015|23021999003|15080799012|461199028|6090799003|5072599009|19110799012|440099028|3412199025|40105399003|52005399003;
X-Microsoft-Antispam-Message-Info: HRqDX7Dg5wIH46bJ9VVfcab4EC3lSJD+PMUf/wRwtACYX1vu1hwRq38x7vBjpMetH9gGe7MP5yFFD8nqFluGx1owetFdzdMxbUdAHRAaIETkw3Inne2YEDMEVufoYxTem2ib4k++Hql+/y5+g15wzp2wg9EDVXs7qUn7QsD0xj5aHmD4/+0Mkqctq5ViQ1zKwg9TYh9XnxRqMx7PL4PI+5K+yDkBK5Hbo1VEZUtSF+1aZzODdVhF23FnnkZMsfZefqeEKQSJycmP3EpwOrbD4txh+B5yXZtA5gt6WK1tSlfQ6cTPIYSVAMXOpJkrqWB2uWFtAgCsekSC70l4xoKxjJqn/Kh3RnbZJAi9V7CCTU8Yzmp7xrNZ2Ref3FkhwEXwazaI+fHHzu7FGy/dGJAWBAfZWX/s2gmh19tBaVg0MiGTn+E1RskzgHDAM0lOaMBAZsrEJIxcNFwTZhsBQIcRPN73zM7FZYHWqFSu+8CP3WUBCRN9Jadji1RDDc0yjk+/kDdXOoStmiwsdmq82qH57MSVL/8zaQDnHjtrjW9OCLBr4jQyU25G6POqRjrgj5WM13R8mcIV3NaxLFHOOmjA4JHy9xTiE4G1WfzKq3eWoXltHz4digCahzqa4GqQcMw+fkcRJPCHuDd9PXdf284MiYwA1BchzptN5fK/XGifgUR+H9PUsJuD8s49ky8sj8YJojvw1/9loHE0Ylj3/oOpBsXCAtclgWFnqA6pupiLoI36Pz6BuV0KiH2Ng9OQquW8HyF+CbbRC3Cw1BB2k6316qxgQ8E3mL9txP6YFS4XUohV7CI8rZ3HCvd9QdSeIdzMfE6Hzv5i1FCnoFID6MwXSX46M/JNK97L6o3J4pjvZnyrXDoD+GAr1asXsdVRg671OJfbOXVXOChKni+EznkJRxxYuf3N3aUyqb/GGDWxjoQfQ4IX3CnWbkFEFvDrqkW7
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?cLsKzjqBH/C7OiE7IFvEa8e5jlozfYfZ8vBz8X5kSAQoZxpZr0nkxbdcnh?=
 =?iso-8859-1?Q?YX3RHaFhJmaS6KWKjYi05KYbpUbkLSqntn5ZPMbeXGxp3ZQZJ3FNS0Ism1?=
 =?iso-8859-1?Q?OjqgDkFf0WowNnWP6VKHIcNoKoC1bSYdnwN+m0yAwmaPick7P/LyK+LFj6?=
 =?iso-8859-1?Q?zzt84/cVGFfkdqfkAyyfgvCown8WAHECh0MWiaHK4YUIOLiLJR7QC/W+yq?=
 =?iso-8859-1?Q?iR242+GkkMUSTz75fq/llClPILQVOoRUBhrkeCcZhwl3479w/s2JAD7IGS?=
 =?iso-8859-1?Q?CS5LPSGZ9+nSrXzVt5hXHoj+OX3FxhEVzNhBWurv+cfe/5Y3JLd69YNig6?=
 =?iso-8859-1?Q?vJVQwTCpy8hw1t5vTwaJqGy659seKzmoVI6InrmQexcSzA7zneCM4JV2TP?=
 =?iso-8859-1?Q?mc2oaF1RYZ0aguwJgga28wNPJ9ZsoNIR9bnEXrel/TuEL1csqj3rcaFqG2?=
 =?iso-8859-1?Q?2mFzvWIqHNLvscJPTyRmXRdQMoEXM3HYMv2kEePdwYNlJxnBXABvH+ylGs?=
 =?iso-8859-1?Q?bFTekoAA/yF4NyQPLOd4s4i1X4D5jJmc6gZahyJYUvzdQ+C/eer6masLIx?=
 =?iso-8859-1?Q?0wWkuQncq2HJ0T/yVuudo9LCHn88Pp5+S3vYynVQF5qywy0iWTt93qI6V3?=
 =?iso-8859-1?Q?Kv8wWfRLiXUYGTKwXx+hqTIio2fozEzrKWhbrXHGl6KJhJw5VzdFHfvQQa?=
 =?iso-8859-1?Q?n1x8MslKxiUId7vmP2LiHKoZ7nm3GwlmLuXCeb1ZG6sB3KdXCMBfJu8kjY?=
 =?iso-8859-1?Q?+0ngZvMN4zNMhw1QhmwTch0XmYu+hQHgByVL+hRa414csP+VQD3kRCY+7u?=
 =?iso-8859-1?Q?ou9vT+RvdW5d4Yz3rUjBVZEz+4280kWvNwvYGJ2do9S1I6rOewXUWTkgoT?=
 =?iso-8859-1?Q?zfwzLwzGZaLwCuG2oM5KNLkAhq2SiCSRoh5hcsRnaiKNRWWPQL37EpY+PI?=
 =?iso-8859-1?Q?+nJkW5SiBTunVU6UQhzbpZgGixdTVBIhzJTzy6Mr7Rbl3P1h3bB5didWMe?=
 =?iso-8859-1?Q?r2tHOkqxU5HRJxCwtgm+zF+Uo+J9FuQE/38k6j8J4xgHYXvmuhdPHMbekz?=
 =?iso-8859-1?Q?Qnw/avEwkwUstnKgXHVUEZtBp4xX92a3oOEEpiIUC4v0W2b+w6bglD3ySx?=
 =?iso-8859-1?Q?vEevzKNEfeEAVMm45wza3UfuX3AXat+re2PF3EzrkIKxZjCcbab7wnyS+s?=
 =?iso-8859-1?Q?pf5EOGjuemSYr3vrsekSucx14Dzw4n6aTkwTjkHc2OmYSbrPyOr/EJHoI0?=
 =?iso-8859-1?Q?vTqohzf4Zwypo2xOlkSyzJcdud2EJeWzAgPkdfvnZFDJO8d3dyouR7imjw?=
 =?iso-8859-1?Q?iZoyCw3Xg56QomiE23XFWrVQEl3fmoGRDZWQVBxTV3Vh272lA15czchwYo?=
 =?iso-8859-1?Q?WDGFXDj1NrrL02SKdccUA/hafEZ9d5MIPJGRKeKbvfleVZfhE497SoFjAM?=
 =?iso-8859-1?Q?1oibaJSTqvtiKC5+hrTrkw7oI8R0m54c0BLT2A=3D=3D?=
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-990eb.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 33cb8d81-8b9c-4d54-8731-08de7478fee3
X-MS-Exchange-CrossTenant-AuthSource: SN6PR1901MB4654.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 14:20:15.8666
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR19MB3917
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260225_145224_674120_82AC4EC7 
X-CRM114-Status: GOOD (  14.21  )
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

On Tue, Feb 24, 2026 at 07:41:35PM +0200, Andy Shevchenko wrote:
> On Tue, Feb 24, 2026 at 10:31:02AM -0600, Chris Morgan wrote:
> =

> > Add support for the ICM42607 IMU. This sensor shares the same
> > functionality but a different register layout with the existing
> > ICM42600.
> > =

> > This driver should work with the ICM42607 and ICM42607P over both I2C
> > and SPI, however only the ICM42607P over I2C could be tested.
> =

> Thanks for your contribution, but...
> =

> NAK.
> =

> It's unreviewable bulk out of 4kLoC! I even won't bother looking at any o=
ther
> messages in this (too mini) series.
> =

> TL;DR: reviewable code is limited at ~750 (or less) =B1 150 LoC per patch.

Please disregard this series then, I will do my best to split it apart
into smaller pieces and resubmit.

Thank you.

> =

> -- =

> With Best Regards,
> Andy Shevchenko
> =

> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
