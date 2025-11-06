Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D867CCFA13
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 23:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvwgJZOrW0diEa1wP4q7y6HDGafJuZ6QgttwvT9nHT8=; b=fh+OKKyfBrLzIe
	j4jiVjcV8zCGWWJ5+QNMX1CnrP50oF4auLOZ90HuHswwNt13IieVEPPVuK1uDMT858CIIk3nFPooy
	IVfYhVSD5hh7yJIkWS4GgcDdYlPFVS2NKvW7CNtwYXeXNQ247hVI8H8O0j0dL6mZKH7BRpCG+WVLc
	xxFdRiQUFHECZ2rFpjRfShs646vhoZXU+FqZMwNrTaGxtti2ojJxKevsnS+8ova6MGkvxa6TBVdeU
	mKu4izHa6n5zvpvSSoST5zxsXIDbCo+LrX+vAbORrvDttiziZxvgKx/wSdxPdW5geToPUJuQNme6U
	MHKMj26LwoFGdWM84t3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9fQ-0000000GPCd-0q1g;
	Thu, 06 Nov 2025 23:45:24 +0000
Received: from mail-southcentralusazolkn190120000.outbound.protection.outlook.com ([2a01:111:f403:d114::] helo=SN4PR2101CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH9fM-0000000GPCC-1Koi
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 23:45:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OECis1QJWKtHNl1egOhi3UPJr2o0XyBy/PdUH1Bb/jtcLaUe4UobtsF1PuWLlZchuEKsdM+Pqbx3R95Ovk1bKKkpm8a07oYYGbA9LCWTxfXy+UjC3rs2KfXaNThYMaNVSrNa+F1q8LJscbb4Vf7eyTJuFO8TvHYp8bd7lhC10zeu6efSLMLd6K7TrbGH85tKHyJhl6BaFv0EOgOJTjgsE6dC2Ee/uuWoLUGlzbk9Y+MCCWveVU6gLjZs1xBAAIUENPwIwk36pNYUEKpmFkFFHaJsFTakh03g63vjObR2m6K7Vo9BwYP1vDy5eNonB3JRwyU/Om0qpzBXjcHF6QcTpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=96Fg5i2BBLIjd3AcQKHT770+U9gtYHIJdIbsIkq5ULs=;
 b=q18DcZEIE1+2Dh1yicMP0WKqUUwkW/r94Pr4Ugu2UPYw4vup4Kcm3psrCtcDGpdQD4SX78tbukZI813oucorJwzupKqvlttVpp7UoSWurSUSdKAy798nwOUEFbNxxbyBOWL9xXUB3nCXswjisrI2t0f+DtXUVxZU90vNU+J4o+kCyJO4WNEsY/t4aPJP+rDeDBO5+urADlzOw+ickBNmnrQcQ0xUMYrJ0tcj2S1QkzSa9EF9ZGOTmymrWIrO9SP3+i8h6BUTo6lRFGTfP8eKQWSN8prJLlDufJeTD3T3OyeLJat0EnzzhhnsvWrJqJynxoA3zagBSQM7S3S58ScffQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=96Fg5i2BBLIjd3AcQKHT770+U9gtYHIJdIbsIkq5ULs=;
 b=qOZOM1x9D/Eg+kwSnQeZ8tQ9Zxfjt5931LGz+J+vPMsF34hDk1dUmIYm0kggIB3eyf8imi15aD6uK/IJdj+0PpECFwrXSuF6WER+SLUVLiK4SVvvTnhR0+PlFc3dB2VR+Hk4sLzjDB8Al6d0Nd7DH77AlvxM0yApX3W26WV4LpBkmRZPLiSp2ZKT0z3TYiRVV5flE8G+uylGcfWtQtzXz9Y833Wz3qKEiuI8U0rT25mj5raLlfZMROmI4D40XFZElpUS6s2HwVUAMQztGUmNeVVzML+lm+SiopfNHA+3JcFM/tvh41TT1Ns36pvbjEAczmzY7bLFU7m0tu9XnEPrag==
Received: from SN6PR1901MB4654.namprd19.prod.outlook.com (2603:10b6:805:b::18)
 by SJ0PR19MB6583.namprd19.prod.outlook.com (2603:10b6:a03:47e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Thu, 6 Nov
 2025 23:45:12 +0000
Received: from SN6PR1901MB4654.namprd19.prod.outlook.com
 ([fe80::7ffe:9f3a:678b:150]) by SN6PR1901MB4654.namprd19.prod.outlook.com
 ([fe80::7ffe:9f3a:678b:150%5]) with mapi id 15.20.9298.010; Thu, 6 Nov 2025
 23:45:12 +0000
Date: Thu, 6 Nov 2025 17:45:07 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com, damon.ding@rock-chips.com,
	jbx6244@gmail.com, conor+dt@kernel.org, krzk+dt@kernel.org,
	robh@kernel.org
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Add Additional pinctrl defs
 for Indiedroid Nova
Message-ID: <SN6PR1901MB4654BD4EBF84CCA3DF4FD902A5C2A@SN6PR1901MB4654.namprd19.prod.outlook.com>
References: <20251105205708.732125-1-macroalpha82@gmail.com>
 <20251105205708.732125-3-macroalpha82@gmail.com>
 <3438819.aeNJFYEL58@phil>
Content-Disposition: inline
In-Reply-To: <3438819.aeNJFYEL58@phil>
X-ClientProxiedBy: SA1P222CA0109.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:806:3c5::26) To SN6PR1901MB4654.namprd19.prod.outlook.com
 (2603:10b6:805:b::18)
X-Microsoft-Original-Message-ID: <aQ0zA2pKwrgjLYDe@wintermute.localhost.fail>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR1901MB4654:EE_|SJ0PR19MB6583:EE_
X-MS-Office365-Filtering-Correlation-Id: ff574721-af18-452c-d7cb-08de1d8e8604
X-MS-Exchange-SLBlob-MailProps: CLk2x5OX5VZScfi4ujRs8C9HlrkUiLpJqqxd2c+zQLPkeN0Oaq9X27otEklo4W04sBXvHj14fEwWWL9C86K1uHnzdDCOrycQn1T3DoDfWA/vbr8KP2V/3fTzXpCsVQ/Jz/dTTfoqGlqiAP/ZlUCPdwEYpC2rDTQCyN8vj9+A+pqgPn9toqDsq/fbWTGEh6Sxf7hoVsHD5KijrMJArElOpj9UfzRMvQ4GPpTy9qUOA2/DV1IbXE5SNQLTRsDWUQlT2E8DtSPFBCmyEhQLkH7aCTNLywvG+6XVKmcCmH+zvUHs7v56NcvW4R+iINZFdUDZ7gt+Y6tnWsVa6kn8ghl47awbMlL0f7Hj/Tx4XfkIBK3U7BUj3sMQkDjGlUvMsWNlUh23GsG3cQwlX+TkewopDYeF6MBwmlwPoTWGUj8D/3y9gK7GEALU/THt7H164QS88P7eKG5wjKbo2qoqu+Xuu6TLaCD5EfSSreIUoQHvtQ2QYqrsRuWiV9Fk0Cc2RaK58ic78lCrNLdoe4rFvBuCg7jrVK3zUDJeWvMtoNYzajIg0aMcop0GoWaCRZW4/p2LondWHsUGPlePrrWjeg0nLBSIStz9P+i9WQZHno4RiBWIJxagPwnF7Fwhz9nJpwGLLjhmasvUKxGeLCag08/6JvHjY1abMsIcFoNeYjsgRfR13ebSjDjarN00O7Iwt9/orc6BrhbchITTqrV4pKT2ZQ==
X-Microsoft-Antispam: BCL:0;ARA:14566002|41001999006|23021999003|5072599009|461199028|6090799003|19110799012|15080799012|8060799015|51005399006|40105399003|440099028|3412199025;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?/jR3tMGq4PGDR36PZH3i/XVhnheYK+pNaP6kKbuBMM5ZUMFuIaZXFGQ98Z?=
 =?iso-8859-1?Q?JpKdHaEBrtM6GbAMrANMrqUXJbTxs9jcSFOLJGrVTwRvj+CZhK6i7jLYdb?=
 =?iso-8859-1?Q?r+2dYKll2a+5V3ZoQph4Biu+AH3G2X+IS1NvxXYH8XJ4tIPQOsqhLgqpuw?=
 =?iso-8859-1?Q?0aPklsqa4HJL1U/bx9iFAoyNiTp4QvDB6uM+gqBH1CWvzl5ctn8OSmkxNx?=
 =?iso-8859-1?Q?s1vryAHsSzEozAsC72luYVYK3jorZ6H1m0ULSEBuzJwNnwIr39iGuLOFUc?=
 =?iso-8859-1?Q?t3qHlv8nRnjK3CbUZzNZwXUb+HPyCAXi/c6/a9zXvgO7MmkUVyfZOwfeTI?=
 =?iso-8859-1?Q?SBVhkYXtFnNNYPNZKoL6o1TrZdmDKUuJnXY/PCJvZGgnOxPijVOQcy6WFr?=
 =?iso-8859-1?Q?OP8e49kUOWZdX4poj1s2sssODZC6NDbMGCDMfLNcMz2k2Ds8xTpkLAD4XL?=
 =?iso-8859-1?Q?3s15NhFJRyydLdbJlHdgLD/T5uCjHI3Vzq08el/AO7UUBoG97rPLOX7uwf?=
 =?iso-8859-1?Q?5Hth4U4cbW/kJMIk7UxzhYBPxpwXXl0qSxU0g/dTkrG5mg0pjW4I2ldkao?=
 =?iso-8859-1?Q?Zn39ge9wtTMeFEW+WNeAu+ZUVDhkXHv6tBV0rerOcwjdIQ07yBX1F/OYli?=
 =?iso-8859-1?Q?wvriIIIFIgkWxpvHnIDERq0sKfP9K3Y1GluEZ8/yJZ3JZE5ySRjONeHcgj?=
 =?iso-8859-1?Q?HcGOciAjiHjVR5UYqTiI2OLAfRa3j7mM8L/dCZk/TuWSfGs/J8k1122VTb?=
 =?iso-8859-1?Q?j3W12kKsZAwS8MWCcQAUx/2sANTw9lvClClpbuVhG014r5uJrMAd93yW2q?=
 =?iso-8859-1?Q?bL9LD6bZk9hPhtY1K2Odut+aIiJh5hkfGTEsw8l1+Z8HqbvscCvpaXwHpk?=
 =?iso-8859-1?Q?yITj/240RsvBDNHisKcrVkusndcDTxAFxrxqeVIMKZWk1ra/q/Bc8c7/xa?=
 =?iso-8859-1?Q?d5WiwX/bs2OUYGhWkAs3i4pgJgk6f2pfkvxhtQ504tQrbceQz0Y/KegMNY?=
 =?iso-8859-1?Q?O5NslNwK64FlydzQ11dEKbqn0+9yCV/Aq+bTKNgyYHrzlpHYfWMHIhe14b?=
 =?iso-8859-1?Q?uvjhhO0QngGePDNTe/vLxS6NkmkSCabnd3AB7UbKXiOUTxPSV5Fbu/q5Iq?=
 =?iso-8859-1?Q?pbxAFhVVuaazk71DGzjbpJ8E6qv+ehxsc8cYaVVKpnCBzkEx6VTTa6s7Lz?=
 =?iso-8859-1?Q?/WVGLzspgB1f5T2sNJh6gla4UOU0nobRd3OXhXQ4AoDjnZTe2wkYJ1Z7HA?=
 =?iso-8859-1?Q?UKIVUanm165xzqJAwUhwboaMdrqS9zbWfqYH3taX0=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?5GrLqSEfyGboVZOGEqKEtqEo00/kGrZ7mRakajrnVWYBFssxAfx4MHim9M?=
 =?iso-8859-1?Q?pYDQiP1p4xfsIVHpOux+ivl59nJDjkRC8jyKSKXCGkBiOWUInXV0zW28Ui?=
 =?iso-8859-1?Q?2gcd03Ww9veo9OeGZTCdYXvPXe8yhGRvC/Q2PHC7egbMvVBwx9Nc/9HiXm?=
 =?iso-8859-1?Q?eKE3QItiyv8WpoANEoKGU3ovzQ5+uQ14sr3Q4wnzz0K0P9C5q6dFgWgD3y?=
 =?iso-8859-1?Q?+QfvS4L3HaaCQuMiNGqPpJRg4nRq0az9m/LDAWIKxb85YdV53SIvxHmpNv?=
 =?iso-8859-1?Q?vdoPzynkGYFl4c9DqxMCCDPCov16hhiKXQMLgxhWlfYpIibbKGyrAUsX86?=
 =?iso-8859-1?Q?SrlglohjTpA5CvP0YxSO+v5KpMTHVdDTBiR35XOniFSof6QtzlePLfcDYM?=
 =?iso-8859-1?Q?H/oh0qe9QErVpzu8J4uueRwPolNcYCU4/XF2X8JrISTl1a1GTlcYV19XsA?=
 =?iso-8859-1?Q?YBjP1e2ZSmfkp5748SX6aabNdHIW2RTx9Am6idoqkjdiff83KNGaE5Apf5?=
 =?iso-8859-1?Q?sceuF1KBmQ7CYDIks3Qi4/sVs1Q0aw/pEg1mITCnqW0KmqiDYL+b79L21V?=
 =?iso-8859-1?Q?wo92GuG/jYElrcU+mhaghXAu/AeKeiNldx5u3AJgk5TKtW3nIEC+F39MTD?=
 =?iso-8859-1?Q?LL5TSlAbVGzK0QBBOO66+BwqWTMHw2DJYkOoqkWAKp/FgFljoOjP6sr9fA?=
 =?iso-8859-1?Q?kj+OSgMLVeSeZxAss2Fre7jcHBbH6dk1HhjydefvKzKpx3Umc79nG+tcga?=
 =?iso-8859-1?Q?gI3oMoZ5UQtW0UL7cD4phMEbKekA2hiFUrCDBvE9d2PvbPyYfskUsFsHzZ?=
 =?iso-8859-1?Q?k8xTyZp3jbom9iFDwYz5ZPQSgGQA2zHpN45v1UB2M//jTkV7xPSUOJraEi?=
 =?iso-8859-1?Q?nOAljCjx7YOd0sSItYco2SGnfPKK/hxah+FKcQ1Y5PP9PPhpwSy4aS1owg?=
 =?iso-8859-1?Q?jLvZaN3qimqDR3zO9kq1+tcnoUlTJvwzziZFjOaRP+KEekElFTqlQCxmI+?=
 =?iso-8859-1?Q?c5rNWaIbWkv+1nZc5P5VnZxQDNNeWXVCHANODBca58U2jOlTtjnrFbFGiJ?=
 =?iso-8859-1?Q?VBrJniGvg5o8ojDRqhAzUR1x55y88qbKjXgLrQoG7eZ/QldcamJFgJzGvx?=
 =?iso-8859-1?Q?bfsV2/XsSRjStx3PUxC84deGyMEt5Momsq/50EaCQ3etVaA89pXqgCZSnW?=
 =?iso-8859-1?Q?PnM1a2XrhUOnebcbFVhiaYgQd4a/9COv8Kx428HipNVo8qYsJAbBtXgUOg?=
 =?iso-8859-1?Q?2/Vh0EcVHgjwnvlLUYITqeBwc73WiLumoP6lTT0oP1Ez9WlbW7YrIOefTd?=
 =?iso-8859-1?Q?xhw7ZsEWtrfsTVmEFvpEIEJczLa7JovMi9IvOeG6DA0YDJJvtcA4WGwxsY?=
 =?iso-8859-1?Q?guyM/GMXGK?=
X-OriginatorOrg: sct-15-20-9115-0-msonline-outlook-15bf1.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: ff574721-af18-452c-d7cb-08de1d8e8604
X-MS-Exchange-CrossTenant-AuthSource: SN6PR1901MB4654.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Nov 2025 23:45:12.1737
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR19MB6583
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_154521_253349_EFEBFF2B 
X-CRM114-Status: GOOD (  23.81  )
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

On Thu, Nov 06, 2025 at 08:45:33PM +0100, Heiko Stuebner wrote:
> Hi Chris,
> =

> Am Mittwoch, 5. November 2025, 21:57:05 Mitteleurop=E4ische Normalzeit sc=
hrieb Chris Morgan:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > =

> > Define the pinctrl nodes for the WiFi interrupts, correct the pinctrl
> > for the ethernet according to the schematic, and add the clk32k_in
> > control for the RTC. Add the correct regulator mapping for the PCIE
> > too.
> =

> way too much completely different things to stuff into one patch.

Sorry, to me this seemed like a few tiny fixes that, excluding the pcie
regulator addition, all related to correcting pinctrl definitions. I'll
be happy to split it up if need be. The SDIO wifi is really just adding
the interrupt pin... there was just a bit of stuff to add on top so I
could define it correctly; for ethernet I'm replacing the reset pin with
the PCIE port reset pin and adding other PCIE pins defined in the
schematic, and the clk32k_in is just adding another pin to note that the
RTC output is connected to that pin.

Thank you,
Chris

> =

> - Adding the sdio wifi is one
> - ethernet is next ... you're not fixing, but removing the pinctrl?
> - pcie2 fixes is another one
> - and the clkin32k as well
> =

> =

> Heiko
> =

> > =

> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 43 ++++++++++++-------
> >  1 file changed, 28 insertions(+), 15 deletions(-)
> > =

> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b=
/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > index debab7732b71..f40782b6c7db 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
> > @@ -406,7 +406,7 @@ rtc_hym8563: rtc@51 {
> >  		clock-output-names =3D "hym8563";
> >  		interrupt-parent =3D <&gpio0>;
> >  		interrupts =3D <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
> > -		pinctrl-0 =3D <&hym8563_int>;
> > +		pinctrl-0 =3D <&hym8563_int>, <&clk32k_in>;
> >  		pinctrl-names =3D "default";
> >  		wakeup-source;
> >  	};
> > @@ -459,8 +459,11 @@ &i2s5_8ch {
> >  };
> >  =

> >  &pcie2x1l2 {
> > -	pinctrl-0 =3D <&rtl8111_perstb>;
> > +	pinctrl-0 =3D <&pcie20x1m0_perstn>, <&pcie20x1m0_clkreqn>,
> > +		    <&pcie20x1m0_waken>;
> >  	pinctrl-names =3D "default";
> > +	reset-gpios =3D <&gpio3 RK_PD1 GPIO_ACTIVE_HIGH>;
> > +	vpcie3v3-supply =3D <&vcc_3v3_s3>;
> >  	status =3D "okay";
> >  };
> >  =

> > @@ -486,12 +489,6 @@ bt_wake_host: bt-wake-host {
> >  		};
> >  	};
> >  =

> > -	ethernet-pins {
> > -		rtl8111_perstb: rtl8111-perstb {
> > -			rockchip,pins =3D <3 RK_PD1 RK_FUNC_GPIO &pcfg_pull_up>;
> > -		};
> > -	};
> > -
> >  	hym8563 {
> >  =

> >  		hym8563_int: hym8563-int {
> > @@ -500,13 +497,6 @@ hym8563_int: hym8563-int {
> >  		};
> >  	};
> >  =

> > -	sdio-pwrseq {
> > -		wifi_enable_h: wifi-enable-h {
> > -			rockchip,pins =3D
> > -				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
> > -		};
> > -	};
> > -
> >  	usb-typec {
> >  		usbc0_int: usbc0-int {
> >  			rockchip,pins =3D
> > @@ -518,6 +508,18 @@ typec5v_pwren: typec5v-pwren {
> >  				<4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
> >  		};
> >  	};
> > +
> > +	wifi {
> > +		wifi_enable_h: wifi-enable-h {
> > +			rockchip,pins =3D
> > +				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
> > +		};
> > +
> > +		wifi_host_wake_irq: wifi-host-wake-irq {
> > +			rockchip,pins =3D
> > +				<0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
> > +		};
> > +	};
> >  };
> >  =

> >  &saradc {
> > @@ -538,6 +540,7 @@ &sdhci {
> >  };
> >  =

> >  &sdio {
> > +	#address-cells =3D <1>;
> >  	bus-width =3D <4>;
> >  	cap-sd-highspeed;
> >  	cap-sdio-irq;
> > @@ -549,9 +552,19 @@ &sdio {
> >  	no-sd;
> >  	non-removable;
> >  	sd-uhs-sdr104;
> > +	#size-cells =3D <0>;
> >  	vmmc-supply =3D <&vcc_3v3_s3>;
> >  	vqmmc-supply =3D <&vcc_1v8_s3>;
> >  	status =3D "okay";
> > +
> > +	sdio_wifi: wifi@1 {
> > +		reg =3D <1>;
> > +		interrupt-parent =3D <&gpio0>;
> > +		interrupts =3D <RK_PA0 IRQ_TYPE_LEVEL_LOW>;
> > +		interrupt-names =3D "host-wake";
> > +		pinctrl-0 =3D <&wifi_host_wake_irq>;
> > +		pinctrl-names =3D "default";
> > +	};
> >  };
> >  =

> >  &sdmmc {
> > =

> =

> =

> =

> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
