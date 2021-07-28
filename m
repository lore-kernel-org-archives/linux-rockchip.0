Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.9 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F41C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:15:38 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6057460F9C
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:15:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 6057460F9C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=hotmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uu9X3+3rlu+uBD3osshRBuXma7OkXZ4G43/QUc/AkWc=; b=P6MaeF1oJJnFHS
	dNOCsKwtUeA8FgnTkl9pYyZ7tqOI3ai+yhbPiTtRfITr+aJ+kcGPA1qGuxzTt/5k/BtuWgLyfum0e
	AVJzzyNLtHW0JmCinKQUb3qVklN8yU25KIO5TB+1+5ItvVXVEOrIRqIjCqOE9HqK0BlccZ4oV9lQf
	oelPfaAj77iLCY1Z3XvLBA5xX1mLetWvMsTB8dusFn1eJBDDTUeFwgzJ51WizP31Wp0lDNvn1fbbX
	dbEjoEEXjMrm1ITxehoQRTcAyD60r9taFDQDQ8m0JMr8cViRkNyJ+rYk4ZKed47c5iefkuwvjXsGA
	sihR+G3hP8flExWoNGNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kLN-0011W1-ML; Wed, 28 Jul 2021 14:15:33 +0000
Received: from mail-dm6nam08olkn2014.outbound.protection.outlook.com
 ([40.92.45.14] helo=NAM04-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8kLI-0011TT-UC; Wed, 28 Jul 2021 14:15:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iKgGmXf8RWD47eGrZHfM5aLFD+Ss/qYvXXSRqltCskiPjcM8h7tn/ybRsF4SFF8jgp0Re1FdQWz9FRhIUeirBl0FJ421BZ5fauoMpioaWqPqKhRXaMRFHQYYBBgowPsfITP9zBfTvXrJvZaia4UoKECsM0sRB8Jwu/HgcP91ijj7mthzSZb5wRNCfY17bJZOxMW7OnyEoCRQYbbFCU0WNstZbAtvJNAUHf/NKtog890U67V6j02JF+m1au+KlXbDKXxIcCMpdzpTRSGTC8kER3WWCUr9hdUlRUY0rMNGa1anKOQXlf/6/w9dB4YHyZgOfg8Y3v10DRfoqQDfzlEkxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tsEmWMyXPQr/H9TRQbIpypeMT8IOyT/3GAI340mCdYQ=;
 b=QADYgQDNGCRY7BGMTTJMiIL+zu4DmTlEvANSuI67v1rfnQmCBq4of1tnRuKo/VQcbiMcB2d1iacfpV1TSPoj13RPcCNTVVrCscJaI7vEUVdvJvqR0LBNdjMuYCeZiabFrG3Wcvz8O8ymHIU5FfXaFexD4jkiQxXZnbU3KSTvCe0a38Q4ZBNfgBFyLTLztoCQlp0f3pPlevNg7fHr1IE0ZytlpLbfS5yj3KCmu5slSBgVSlFvkJ0HuEGi5vZI4nlbHjvFhhWLmsZ5umYe1oydFGGW7giIKZ4xPIJQltvkFTc4U1FtsgH4l6AqdsEzz5U8MUCZX0+x0bQx5vXLCFgzdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tsEmWMyXPQr/H9TRQbIpypeMT8IOyT/3GAI340mCdYQ=;
 b=efRSt0ffcBvUQ7Vqo0fqLDtj/RFBfcJOoZdgmTa81W9mW2JsZ2Cr3Ew0xJaKOsCs2sRbpT0iQfIztK111uL16Owuz3FEyPZnXw/Uipn02eYjgE/V85ChOop7PcaKmvD06Ybk+iAfIwEeh1eB2EwsRoFpgHOnRUIS26hA1318vCwJFzHg3Cxq4Vju3OzxDjhuf6iNMaNVBUs7SxRfNwqWds9NL9Rmg86cx+2Syslm2QbvZPM+z9CiHN2FWjzJAsEwRkTbV8HupcbqCd1nrd2Bf577OD9wv6wxEDyjPqxESOFAN678EeocJFgkGbEDSAU8iohAhwko3+cAWhmD9OCJOQ==
Received: from BN8NAM04FT022.eop-NAM04.prod.protection.outlook.com
 (2a01:111:e400:7e85::4e) by
 BN8NAM04HT028.eop-NAM04.prod.protection.outlook.com (2a01:111:e400:7e85::450)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.24; Wed, 28 Jul
 2021 14:15:26 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 (2a01:111:e400:7e85::50) by BN8NAM04FT022.mail.protection.outlook.com
 (2a01:111:e400:7e85::398) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.18 via Frontend
 Transport; Wed, 28 Jul 2021 14:15:26 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:AB0C9BFF53E4C660BDBDA1FD4844F074BEE29474CDF74DEEE1F34BABEEE4A215;
 UpperCasedChecksum:29503E521F885380D62F320B95453FB8B499DD3E7E56474F22A87159B9D34FEF;
 SizeAsReceived:7803; Count:46
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::e1f4:5eb1:d552:af43]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::e1f4:5eb1:d552:af43%7]) with mapi id 15.20.4352.033; Wed, 28 Jul 2021
 14:15:26 +0000
Date: Wed, 28 Jul 2021 09:15:26 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Chris Morgan <macroalpha82@gmail.com>, linux-pm@vger.kernel.org,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 maccraft123mc@gmail.com, sre@kernel.org,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Lee Jones <lee.jones@linaro.org>
Subject: Re: [RFC v2 0/4] power: supply: Add Support for RK817 Charger
Message-ID: <SN6PR06MB5342D49BE4F5EBB271FDBB59A5EA9@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20210726190130.1973-1-macroalpha82@gmail.com>
 <CAMdYzYqjrReKOWBMsaGpjj-hSvQYap=hMeyvpeggKuz+mVkULw@mail.gmail.com>
Content-Disposition: inline
In-Reply-To: <CAMdYzYqjrReKOWBMsaGpjj-hSvQYap=hMeyvpeggKuz+mVkULw@mail.gmail.com>
X-TMN: [4Hug8a0bFFsOx4yr9Sj7/HhJaYz1XTgG]
X-ClientProxiedBy: SA9PR13CA0132.namprd13.prod.outlook.com
 (2603:10b6:806:27::17) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20210728141526.GA5923@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SA9PR13CA0132.namprd13.prod.outlook.com (2603:10b6:806:27::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4373.8 via Frontend Transport; Wed, 28 Jul 2021 14:15:25 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: ce3c1ef8-5d81-4d1a-69e7-08d951d22515
X-MS-TrafficTypeDiagnostic: BN8NAM04HT028:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8caAqaM5QF25WeQuIeaHpt+SQSTtRtdHdPldkb0d9t4ZgmXyEicJZ8LomAn5IgRSU0BquN5nylim81gfAGMTh7geIat86PhJKKx0oNMmin2Uy1JkRG0f2EF1kPLwH7RtYK20LVLr8OqLvIQjpAu8RtLiwih4DIKjsmXJSK3dHTuoGLyCuxUtUUmwpOWelde6P7DEtffsaj6sy+r8gKIZ1jAhTUpnZVTvgzkNEipVwtEGjVUIxqR5JkSdkIX7yAXVgIq7u5Lk2BLTNJtZ3NekzTUG5ZrLS2szf8VG5Qv5U5oL5ui16G88K2LPmYJvsLdGYKSp17JHqPKgHibgS/8BPzXOYXJu1CUjFudFL1OSTz8dtqylMnvDQ4iSSKXRMocV3FpaUhMmchPi0arDQFuWoYe2jjgOezUk2KlMJl61wNZaHGX5Ht6yicpCgJAIbZWo1eYsSBkKEDVquQ0QCpF3A+CHrmGqMktpkeRvnsJzjkc=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: cJzz6eCDkL5gg7mAnN5gROUyb9wDZ038vnzfuc9HQZSKg9qmNhh+XNnHj6RrtD6HvFQyEBjXtHPRAOkd1b0hexxboGgDV0AX45aX8OqtEZPryP4HRIo3n08KjNkz8d5/BVMq4keN7DZGJJAjX9yDoA==
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce3c1ef8-5d81-4d1a-69e7-08d951d22515
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 14:15:26.1825 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: BN8NAM04FT022.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8NAM04HT028
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_071529_063087_838628CF 
X-CRM114-Status: GOOD (  39.19  )
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

On Wed, Jul 28, 2021 at 08:57:52AM -0400, Peter Geis wrote:
> On Mon, Jul 26, 2021 at 3:02 PM Chris Morgan <macroalpha82@gmail.com> wrote:
> >
> > From: Chris Morgan <macromorgan@hotmail.com>
> >
> > As this is my first charger driver, I'm submitting it as an RFC so I
> > can get input from the community on what else is needed to make the
> > driver consistent with the quality upstream expects.
> >
> > This series is to add support for the Rockchip rk817 battery charger
> > which is present in all Rockchip RK817 PMICs. The driver was written
> > as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
> > myself Chris Morgan <macromorgan@hotmail.com>.
> >
> > The driver requires some basic parameters be described about the
> > battery in the devicetree such as the maximum capacity, the minimum
> > and maximum voltage for the battery, the maximum charge current, the
> > maximum charge voltage, and the value of sample resistors and sleep
> > currents.
> >
> > The hardware itself contains an ADC capable of measuring the voltage,
> > current, and temperature of the battery (though my implementation of an
> > Odroid Go Advance lacks a thermistor for temperature). It also contains
> > a columb counter, registers for tracking the measured voltage and
> > current at boot, and a few bytes of nvram for storing data.
> 
> Feel free to add my Tested-by: Peter Geis <pgwipeout@gmail.com>

Thank you. Have you checked out the audio driver yet? Would be nice to
see how it works on a device other than the Odroid Go Advance.

> 
> Tested on the Pine64 Quartz64 Model A.
> We can't go as low on the battery voltage, otherwise the SOC becomes
> unstable before it can shut down.
> <3625000 0> seems sufficient for us though (adding this for the
> benefit of anyone else testing).
> 
> Voltages are accurate as measured at the battery.
> Are there plans to expose the thermal sensor (if that's possible)?

Unfortunately it might be more than we are capable of. The output of
the thermal sensor from the ADC is stored in register 0x7c and 0x7d,
however the datasheet doesn't tell me the scale/how to translate it
to degrees. For the other ADC values there were coefficients in the
BSP kernel, but there is nothing for the temperature unfortunately.
Additionally, my hardware doesn't have a thermistor, so even if I
wanted to reverse engineer it some way I don't have the means. For
me those registers just read 0xff 0xff, which I assume is what it
reads when the values are not present.

> 
> >
> > Changes from V1:
> >
> >  - Fixed a CLANG warning regarding an uninitalized variable.
> >  - Fixed a CLANG warning regarding a pointer as a bool value always
> >    returning as true.
> >  - Added Maya Matuszczyk to the Signed-off-by.
> >
> > Chris Morgan (4):
> >   [RFC v2 1/4] dt-bindings: Add Rockchip rk817 battery charger support
> >   [RFC v2 2/4] mfd: Add Rockchip rk817 battery charger support
> >   [RFC v2 3/4] power: supply: Add charger driver for Rockchip RK817
> >   [RFC 4/4] arm64: dts: rockchip: add rk817 charger to Odroid Go Advance
> >
> >  .../devicetree/bindings/mfd/rk808.txt         |  35 +-
> >  .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  25 +
> >  drivers/mfd/rk808.c                           |  16 +-
> >  drivers/power/supply/Kconfig                  |   6 +
> >  drivers/power/supply/Makefile                 |   1 +
> >  drivers/power/supply/rk817_charger.c          | 932 ++++++++++++++++++
> >  include/linux/mfd/rk808.h                     |  87 ++
> >  7 files changed, 1099 insertions(+), 3 deletions(-)
> >  create mode 100644 drivers/power/supply/rk817_charger.c
> >
> > --
> > 2.25.1
> >
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > https://na01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infradead.org%2Fmailman%2Flistinfo%2Flinux-rockchip&amp;data=04%7C01%7C%7Ca5cf5e4a240e4f76b67508d951c75713%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637630738863903897%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C1000&amp;sdata=driHUKoWSfpQ5yV7E3Jo7pyQDwoxZ7wl56A8OB0XwyA%3D&amp;reserved=0

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
