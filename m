Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E4A606A32F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 18:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qCUYq/BH;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=mdvQIJ4P
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xnnqGNpZIcguCgRkRLJGU4MUCneKLGvBQsul9BE63LA=; b=qCUYq/BH9vAC4qAMaHJn/29qjq
	h9qj8ODjRywsc605QK238Cp7O3vnaIVm20dbdfJcXitQzVZGYJ8ETspODnq/ldkaixWwW8ZYxL84G
	AUNw7Gpzp5COi4pkpzeSFzjTgnmEmv66gpuZopGUKpE4NTo2/4CnTKtY5etcMwgb/L25sL+vcQALU
	WrH+t49nDNTJbSAcqM4my64BdlzGh2lJOn9nAPrKOumP4rss+i7qH9XY9xbTuFuj/hQ/NYHG7RlVU
	uPPavdvp6OGEJz6sotZMfZjgP7P3LUc+rlgO1FPFTe1uuMCrcR1cOH9reqd4/dSBcZnphlB/yC4bB
	kz30cyIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOIuw-00000003MgU-0hbW;
	Tue, 03 Nov 2026 18:07:30 +0000
Received: from mail-westus3azolkn190100002.outbound.protection.outlook.com ([2a01:111:f403:d116::2] helo=PH7PR06CU001.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOIuu-00000003Mfc-1xOJ
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 18:07:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e+e7T5a0L9q/2z4druD20o5Sfeho8fn6l2MC4tKE5SCIkl+9WnYyasKl+vRC/XHVmSQK331trV/UJmyKxpxTqtM4FP1RvTO3ThBpm8sZMYSyHacJ7KovI09KcJ4AMkolSWfdYBph32BSIqxBS3GqB69zOjHwE3ktROcpFpBWE6BXoNRAZpLkoS/Z/CFDx4Uq0mbMOplVpt5Svi0AOj41/Ba9V30sXq5YJGmWbyBbiniQkAiDAwebeju5Ji7M5gK0P1eh8necoj8VlXyA+oZBndql2tYe98BZMqB22PcDCgFtbpUuelfXxpKssxxEEtMjP1bmdteQlvoSMn4IIOp5lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=90lnrWcFTUAatRTj/raHe6MLnRalHX+RAVcx0pQTZqg=;
 b=qdIMcXo3Zq8M71IkqUN3PcJxn3eR23vC7huxRyjvSFrYvsPrGqL1AQ1xei7DCBFQWPdGLpPTAaXqYAVSVG8qKwoQEag2Bw9ndrlS8zNiDAOK82b/uYLRLXwyDUfK0510PJiK2CNzvLFcoIXmkbPK2ZOJ1qUV6SYskUsS+qf3q0PZBV//RFLniwID3wnAmXNyUQz1p28ueHhv8bSHXv0Tx6n3XRF5zkdY4ipTRAbwQA006dBjmEjPSqYlp83Kg9rrVioeSokI3KEMfyFMxBq62oPLViWE8jIldEYpF9WAEWlFIaTc/5ByGnTzdTs7Q0/SEx4t/TdeBebwitrKO9ZyNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=90lnrWcFTUAatRTj/raHe6MLnRalHX+RAVcx0pQTZqg=;
 b=mdvQIJ4PasJUeIpG+U1aieVOXSGaYVGW8bxWkTiTQZGAnfzLhW4zh71h1fBXbaBVBGWlUjP8vWZ0EciNVOBVJU/5Y582sspKfQ4HVsMy8218dIr7+JQcxUZTVfYpqEK59rVdb6VeDmuct1/PvaidYNCZdm/EaTeUmu1MQ+sA6LhEjlM7GBl4DT30WH5xr9XVsevCTZwwlXWN9XFdQwPeyvtQBOVmPZQ9bcK9uGu0e2JKCHmHsC8nN90flZstvAOrky6kyOorSDwaVySIKsa4yGOo9r4u6Gi0P5M80vcJyfIWD1HanvZ5fijU4scApI8K719lMgkMM7LG+fMPaP/7Ig==
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18) by SA3PR19MB9427.namprd19.prod.outlook.com
 (2603:10b6:806:494::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.569.12; Tue, 3 Nov
 2026 18:07:22 +0000
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172]) by PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172%4]) with mapi id 15.21.0592.007; Tue, 3 Nov 2026
 18:07:22 +0000
Date: Tue, 3 Nov 2026 12:07:19 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
	shawn.lin@rock-chips.com, diederik@cknow-tech.com,
	michael.riesch@collabora.com, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: timer: rockchip: Add rk3568 compatible
Message-ID: <PH0PR19MB9973388CD960185681A4C3E16DA5692@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20261103153144.343764-1-macroalpha82@gmail.com>
 <20261103153144.343764-2-macroalpha82@gmail.com>
 <3661431.qSoW2BAyJ8@diego>
Content-Disposition: inline
In-Reply-To: <3661431.qSoW2BAyJ8@diego>
X-ClientProxiedBy: SN7PR04CA0093.namprd04.prod.outlook.com
 (2603:10b6:806:122::8) To PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18)
X-Microsoft-Original-Message-ID: <auoi184KI0OGJbcT@wintermute.localhost.fail>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR19MB997338:EE_|SA3PR19MB9427:EE_
X-MS-Office365-Filtering-Correlation-Id: d8adf13c-5eac-4c51-5624-08df39d54e64
X-Microsoft-Antispam: BCL:0;ARA:14566002|8060799015|25010399006|4140399003|19110799012|12121999013|37011999003|5072599009|15080799012|25031999004|6090799003|23021999003|24021099003|55001999006|52005399003|40105399003|56899033|3412199025|440099028;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?EPFmb1YLvCd+PgMqEggX16T6XMH3mhLy6JZl0O3Llx+yCNJxp77S93axZe?=
 =?iso-8859-1?Q?oI/YCqLbrBuNzs/8JaGdUxeugpjuckNcpUKR37GfiUUQllV8uwia/hBkWB?=
 =?iso-8859-1?Q?vz+d7A08XqZbyPLVj5xKIFmDJAkmzame1dQGjUmRT6GqbbEs6EDMPfqccr?=
 =?iso-8859-1?Q?/mE6+XGgBiNXIYi0kc3ye7JzjYbyhiX064KtOJWn20VXIrmly5tvrUSTRC?=
 =?iso-8859-1?Q?KaGOpBBzR3ay0tMEYlP1kPkvN8L4IDuqHC9HNoPq4hkjTP4s1nYVcnvL3m?=
 =?iso-8859-1?Q?RMXrhYwbfI0tDU4BVlQDOznZ0OF4+1wVd22aGVB0XI4+ihc1pmqSjWAD6F?=
 =?iso-8859-1?Q?fIc+R6x0/DbK2uyo10Eg9U5KYp7oKjVLdoQ0v9vYKuogTmJBMTRjty9P8B?=
 =?iso-8859-1?Q?Fd4ChDKItf5Uf5RZx6E1IvzQuSa+v/HF3X8mcQ0fi5IruYXUpduB/aiGBg?=
 =?iso-8859-1?Q?PzbR+QMj55SLN4hdSvzu/QhP3+p+KycT1MYmXG0Pe+6taQVhj5NDit0WQS?=
 =?iso-8859-1?Q?Tk0aFCISCGGnOuY5p2MwIAwp+2DW785vFKpqa/N7yXSohmE8UNalql2UTm?=
 =?iso-8859-1?Q?yhBCgRA5UFekhgXa98aVkc2KsDHnMgsnyG+HZWRnCvKYdQiZOZM9UIO6wC?=
 =?iso-8859-1?Q?4CSoLU0lvXDU2xFfQkoFidfpEuH1FNQTKS9RDmfftD22WDvFjobauNY3Rs?=
 =?iso-8859-1?Q?YPsEIY5CrDtsz0cHgkePalB1D2dwZda3UXppKH0NMhDIhsp6fe8wOZC/w2?=
 =?iso-8859-1?Q?99jWEVyyUdWhBQNhGSXDe5Iat1IML4rHj5IsPJ7mMWr+rf6osVoBIPElY+?=
 =?iso-8859-1?Q?ZzT8afm2IijDU37v7ToVqCGEgfBX+KC//OT0HyTKAm3E1WKXaAOY6GiD3/?=
 =?iso-8859-1?Q?wMHppf14Fre6nEBY+foMzh4/SwOFrwW9+K7hOcR6fsNGSR4nutsgWW0iZF?=
 =?iso-8859-1?Q?F+gLQ+EEdtTTsL8CQsk1PYWyFprgaHmO8DmTXq8p19f90QpDZ8/ZIH0IzI?=
 =?iso-8859-1?Q?mr0a52l10MtJMt4H7ASUSj2nHn4ws9U2ioEr5l4ABZjwm4pR/Ka6RgVxRU?=
 =?iso-8859-1?Q?PEUNdFO33BU5iFjMhhfeYdukBYwbSvs0p5q3+eO1spt+nfeioKxCgjyJ0C?=
 =?iso-8859-1?Q?CGuGLldAZEsIaM1YsH+IRko2mnEL4=3D?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?y98GTm44P20FouGzxr62EGF8B6wtKyn3eTtPiGorDRr3na7QglMko1GErU?=
 =?iso-8859-1?Q?GQ1R3sxkSBgNqJGKk5gmCrnBR3oMHdkmy/YiMBg4Sndfh2r/DW6Q9c9kD/?=
 =?iso-8859-1?Q?2tAxH9lJaMVVFizNmin/OCrD6rTHk1zQsZ7otmtmgS+OKhmSvnHPideHfy?=
 =?iso-8859-1?Q?C8svSmgNwyvf11fWUwDOW+ckY3nYNuLH2jTeBnXaNkK2/IzBIVZPy8wTYT?=
 =?iso-8859-1?Q?LURAmtFN5wI8uUozVdc+ZMth1sT6N2R9U904KcUiVqzEHsn2YnURgymBr5?=
 =?iso-8859-1?Q?Mc8dYlr+uCp/9Iln4IeQZjJOTPnuQyG6MdMUppybG2uBDOllMbZ17DrbQ2?=
 =?iso-8859-1?Q?VSLjqVWpvrhT2HnSQNSI2TC/m4zCvI+YlNAkZMZoSXdGnFJnuG053MNbZx?=
 =?iso-8859-1?Q?M0+YwHdb0ekG3UleQdRlxKtIg8xdPn+hweHfhtUbK2bhz2XOwUwxyZb+I2?=
 =?iso-8859-1?Q?B42Dun5Dti37R9BF3GnIqGjwpPQnBFb7fQTZFTRLD0DYwJT68hwU3JA4iF?=
 =?iso-8859-1?Q?zmMXZMPIOdu0R6zzrmqaYZb6mfYqGaBOyu1oWEdNUR5Wd85b884Qxq//S6?=
 =?iso-8859-1?Q?zlwh8V0kt9UtUyp/+62Ab4vVz+e4QI4SFOBRM1qCAe/onN4LZDlhkAn9Q2?=
 =?iso-8859-1?Q?+ie19Qr+6rS96fLSofyWQdWntIyIUyg3Ak77qsXO7/pphIs30QREjP78A6?=
 =?iso-8859-1?Q?HZDCRlhiQP8HIe1HWb2RGTwIczrqxcEaSwVJHBZ9gb/KUwCe2QEsAR15jc?=
 =?iso-8859-1?Q?QViSK3y3jFc4W91C2WyZMrmv1fQm8/RW2etiC3pycTTxrI5XxmwP9seDrq?=
 =?iso-8859-1?Q?eF/WhEZy9MHFT61wQ11f5VrR8UKIfqfvjBm30Ra9ROAy00MLOeoDkYIE64?=
 =?iso-8859-1?Q?SCKRQlAY4H/XOlxVXZWPXbv+VUMP9UtunjXcHckOfwvixund5mupkDHUbO?=
 =?iso-8859-1?Q?lHfxVv3a20wHy9zM2mG/MTGy4FnZ2slv5dhuRf/MmRcKPvReQstgjTXuzI?=
 =?iso-8859-1?Q?0EXI+NwdzBHPkNLCnKeNbf1AqovtIlHHSHbCkTwDvvzZtmr89htj2vB3ew?=
 =?iso-8859-1?Q?qo0/bmgqq+BVocJ8EFm1uaDq2RsbclUMnCTAF83KaUMJlhLZmDfjZsEqni?=
 =?iso-8859-1?Q?ABDHSAVTs2k9TTwkRA0aSj/E2//+lnN8jEHhHQl7yp3BFHMZ2lHBjX+NtO?=
 =?iso-8859-1?Q?fI91bLKvGGnA1IjDH/V/paZPQixyMX2c6sDKU72v6dzdEoHWCd/CW3dFqu?=
 =?iso-8859-1?Q?CMlMwU8pp6aqGRvA7S1M3YMkt0TxqkQZ/VBhxxdzizgtL7wd28nghpZCn/?=
 =?iso-8859-1?Q?LW2ZeZAZIMPCkqox07BZnYL1Pq+Cx6ef3jVTSyvhjknembADuIJeqgQDK+?=
 =?iso-8859-1?Q?l/eRIE4nZVuvQb5ytjCMwR4uON3auHhf8A1hbAkRxUQTHednAGSc1F+OSK?=
 =?iso-8859-1?Q?33slLqmHCaokbzpi?=
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-990eb.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: d8adf13c-5eac-4c51-5624-08df39d54e64
X-MS-Exchange-CrossTenant-AuthSource: PH0PR19MB997338.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2026 18:07:21.9031
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR19MB9427
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_100728_506680_909AC885 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -1.7 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Nov 03, 2026 at 06:01:37PM +0100, Heiko St=FCbner wrote:
> Hi Chris,
> =

> Am Dienstag, 3. November 2026, 16:31:43 Mitteleurop=E4ische Normalzeit sc=
hrieb Chris Morgan:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > =

> > Add compatible string for Rockchip RK3568 timer.
> > =

> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
> =

> Please make sure to check get_maintainers to catch all needed recipients.
> =

> # scripts/get_maintainer.pl -f Documentation/devicetree/bindings/timer/ro=
ckchip,rk-timer.yaml
> =

> you're especially missing the clocksource maintainers:
>     Daniel Lezcano <daniel.lezcano@kernel.org> (maintainer:CLOCKSOURCE, C=
LOCKEVENT DRIVERS,in file)
>     Thomas Gleixner <tglx@kernel.org> (maintainer:CLOCKSOURCE, CLOCKEVENT=
 DRIVERS)
> =

> and some additional lists:
>     linux-kernel@vger.kernel.org (open list:CLOCKSOURCE, CLOCKEVENT DRIVE=
RS)
>     linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC=
 support)
> =

> the clocksource part does not seem to have a dedicated list, so
> linux-kernel should be included.
> =

> =

> Heiko
> =

> =


I apologize, sorry about that. I assumed since I was only modifying the
device-tree and bindings I didn't need to copy the rest of the teams.

Should I resubmit with the additional names?

Thank you,
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
