Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C074C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Nov 2021 18:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZG+u6Mw8IRgEyz77wb0xRV0vae+2/bEKD1KaGmR4R4=; b=aaf+b5Ep0alOIL
	GrFQfq04RcBkyuUUvTJF+vb+Uq1oj2wNlj9lVKxYghyr8R/3Wr1Sr7Kup4OzTHwe1yc1BtG4VRnCB
	kbX5IEQfYcUwYEXd/BeYbYc51Hf0d+Jb3+k7vUBFRSQJZ2JWXVH4I6nsEh/IVgVujwlHSyKwinFy2
	fm0ACZKj/RfedJOxC9e6fEz8brUDj9HepOxce2TFOjSDlFLLxQD+tvJE7K73CAF8t/2Dq0hD4/GZl
	8/JGApNfX5ZT9iU+cankvVQ/nKWJdn2+9VEx18mOnGRsqiicjlwcnLEwzwdKpejZjS3DtkflCTLlB
	5i2lKE5nJr2FJJ7MjBAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ms7wG-006VVJ-QQ; Tue, 30 Nov 2021 18:33:12 +0000
Received: from mail-mw2nam12olkn2087.outbound.protection.outlook.com
 ([40.92.23.87] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ms7wD-006VUk-BS
 for linux-rockchip@lists.infradead.org; Tue, 30 Nov 2021 18:33:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BYy2g7Xtqq1+qTrqBTBqcgbaAoF0lHb/g5ll6Cm4eLJIajmj/ziRaJJH/hh0Egxqv0UG6zB8CpToiQ/Er/IgId++UY3y9Oix7q4ynum8p5Bn4zT4H+SMhA1ZauhyZNUfOkKsvz7BQvy42fh5SATi8QQYqnrqI+Zv5xE+wiJYd1+zu5jMLHjo59cgWnGtQ3zdvn4CqmcFps8aU5qgP5rV/sjTkgptvZwQbIA7lAdXFYrMxXuEJuYys9OTr+gIjq2nte40oHAHV2Vb0RkcRPk4oWqjTGRredRvPJKMlLSvmFyZq/qrxCWBZDYy8LXtNRhnYyRBg67zcw0+hn6L433yQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lbmrCgltsaLzVwwaA1qMF+tkpaqpC6TtYm4Haw1OzaY=;
 b=N6VbA+A4k/v9bu2pF9Vhk8FweXWEk2B1pEafbUsfRJX6Rc4P1PGtaNgoJXUaNdZL0XcRimxBd68cQC9iEClNeIumMe6mH+DSIYOQ3vz07lTUParpgHWdjGXZlkcekM1pC4DMFC7RR19zPZM7TAWHWT+UnQtZPHBkNgjVSGYyUFPJJ329TuLfTqESZ1McNI4ooXjEtKWZkzBiTKOzFBumghqkMjzQwCdUgWng2vvMjE5UXfsiTSsEJnqApLI5Q5acxa8V8t+sK7FfcOszCMQU8zhFJ86E580tXnkrstR9c9aTnXKPICG89xphPGqsuszuzFk2L+4TkJDIynHKAfHLqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lbmrCgltsaLzVwwaA1qMF+tkpaqpC6TtYm4Haw1OzaY=;
 b=ZcnRg0jKU5+eQvDM96/8EfHWPn+T0IN/XJn6ALwYQtggrUn4OTXg+1o/piWLNUHdu1wo4RD45Gm2r5OJooAUINjEpgjrG4fsXxqg2dhW6WdGo/LByP9P7w1KQQmJUz2/HWJFQo5g4utFmWWOHvvN56ICN0fCl9xOzLVETZIVhfjrhXbpR6D0e5BlLj19WlEf35tkuEISP3vrJWywko0xBmDz1b7oGLqH4q6srK85wba0SFH1lej/D8ZK5JCzeNPoTG3GbjhAualqv80PiriQvfSv3a/W6xBmbi/GBFOeTOeKHEThgPQYxq6XIkJwDzUHbfKsRii0SIefBR7r1V2Rtw==
Received: from SN6PR06MB5342.namprd06.prod.outlook.com (2603:10b6:805:f9::31)
 by SN7PR06MB7183.namprd06.prod.outlook.com (2603:10b6:806:105::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Tue, 30 Nov
 2021 18:33:06 +0000
Received: from SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::443:7159:802f:5024]) by SN6PR06MB5342.namprd06.prod.outlook.com
 ([fe80::443:7159:802f:5024%7]) with mapi id 15.20.4734.024; Tue, 30 Nov 2021
 18:33:06 +0000
Date: Tue, 30 Nov 2021 12:33:02 -0600
From: Chris Morgan <macromorgan@hotmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, heiko@sntech.de, sre@kernel.org,
 maccraft123mc@gmail.com, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Subject: Re: [PATCH v4 RESEND 0/4] power: supply: Add Support for RK817 Charger
Message-ID: <SN6PR06MB5342DF2234B8F9599E1AF125A5679@SN6PR06MB5342.namprd06.prod.outlook.com>
References: <20210916194208.10387-1-macroalpha82@gmail.com>
 <2759402.V8G6Gt6Xmj@archbook>
 <SN6PR06MB534222D7CA5732E689F5BA21A5679@SN6PR06MB5342.namprd06.prod.outlook.com>
 <2197533.Eh1vGvx6NY@archbook>
Content-Disposition: inline
In-Reply-To: <2197533.Eh1vGvx6NY@archbook>
X-TMN: [gDhgEz+g26PTpnxg8den9i7yDsXIkFy2]
X-ClientProxiedBy: SN4PR0501CA0150.namprd05.prod.outlook.com
 (2603:10b6:803:2c::28) To SN6PR06MB5342.namprd06.prod.outlook.com
 (2603:10b6:805:f9::31)
X-Microsoft-Original-Message-ID: <20211130183302.GA9777@wintermute.localdomain>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from wintermute.localdomain (76.183.134.35) by
 SN4PR0501CA0150.namprd05.prod.outlook.com (2603:10b6:803:2c::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.9 via Frontend
 Transport; Tue, 30 Nov 2021 18:33:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9e2470d8-fb10-4d9e-8f63-08d9b42fda04
X-MS-TrafficTypeDiagnostic: SN7PR06MB7183:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PRoFoLHOLbIIQNK3kFjIvxJs4SSXKZmmUgGjHZpZfJRNg0t+IDFo//KgTidA42bAoHufrT+NXHuZPZadhmcQXDiYj2pSJG9KuPG3HX2n6qm1Um6ozR4rX8miXSQ8qQAagPPj1CvzXzwYweXdhySs0idWCezFN6lV9d59TBO2Bkj80rlkRhLJzM6xJriS8XNvwA0XYD4sRNqcn0qYsq1yX51OfULn3ir9a7wfPW+eBdqEgMRBJVhyn/79KvPjvQShBY/QE2wS1ZY0kXd1kqFoCGNZR+eYIUPkN47FC3W8xfn0+1SEbaxHRighNNw35gztWvHwFVaLqHuePh6lUDsFI++Q5VTzGMF6iWO2oJiNXr/Gwc6vAfwcty6R9LnPBc+6LOmtOwKP7C4+mQE7KwBr/QE+IOuoVgCjPkFXoIb9WIGHa+xmSHyPGlszkDrCdsBCyaLBQFNhfan+JQOUnOWFCcosJL/Kax71Az0Jq04cF/yH6beFp8QS45PzVZu6anzE67mBuQFqkUjrA3F2qvyC4v4WCzrQyMctmYiCy3wT083MgYQ4dx/0bseaM2WBnH3db8H2tgv0W/QR94+tt0pyew==
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: DF7EWS39pdBb8Ydh0XGabr+/KwXYF6Zi4023NfCcZfzvQRd64adf8cAuLPlG0YRBuv3snac6V83p8+SsEUkqKv/c8MHL0mSmf3llLMW94b953sbwz7FXLyT4Wu8+3YRPWUtkUvaN76IjEUD1xKRl6rpMfRkxxQ1cUM+4R8dSvCTm1yKz1lDJfk/1JlzrjCgAVlWXnCk3SI8kSQZupioiR07QOswV5+D8NK/L3DfagxfOPDANePbrhYDBO8wvZnM639bbMef3CJISsjLsWfwdlrQ/lxscJg3t9xH1VL2Z+pI6j2YGmNCTuFZzO07ntyYcE0TSkpTJRtBbdgeRgPIDzJ+qRhnqL8a1spZAlpMOXxGmoLyAQUeS4BZkQkD7/naRmzLrMYt/WrdDzU24SNnEV9CMLCUPw6v4ZsPG6HlXweVUH/k+y+zGdhHIkQX/iUMHIeUBQCoHGCklIcehjZhpiGTfDRW2Xn6dVJcNrQrQRSLnH9KC4+egdCmOoXpIbdudojpXrTlVaDtjqWKmSADt2YZrOYcNBRkQf5DYmdfmTLidXwzt36ZroqH4YxyZuK2HVNH39G7xnkiUV6ykjJaDgbTeHVJTLYg3kuLlkzTXf+MHJX/BWz9FZpjmpXR1HPow5SsSQ2nCe/o9Qe2R/zA6gLgpJpDE+yn5bbBcrxfYyvexXNqr3OsiUFrHrMVgJVXlFvkZxHh2U1RQI2weNrhnHw==
X-OriginatorOrg: sct-15-20-3174-20-msonline-outlook-94543.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: 9e2470d8-fb10-4d9e-8f63-08d9b42fda04
X-MS-Exchange-CrossTenant-AuthSource: SN6PR06MB5342.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2021 18:33:06.8427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR06MB7183
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_103309_496615_8DFD1039 
X-CRM114-Status: GOOD (  51.06  )
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

On Tue, Nov 30, 2021 at 07:12:11PM +0100, Nicolas Frattaroli wrote:
> On Dienstag, 30. November 2021 17:10:21 CET Chris Morgan wrote:
> > On Tue, Nov 30, 2021 at 03:03:03AM +0100, Nicolas Frattaroli wrote:
> > > On Donnerstag, 16. September 2021 21:42:04 CET Chris Morgan wrote:
> > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > > 
> > > > This series is to add support for the Rockchip rk817 battery charger
> > > > which is present in all Rockchip RK817 PMICs. The driver was written
> > > > as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
> > > > myself Chris Morgan <macromorgan@hotmail.com>.
> > > 
> > > Hi Chris and Maya,
> > > 
> > > Gave this a whirl on my Quartz64 Model A. I noticed that this will
> > > happily let me discharge past voltage_min_design:
> > > 
> > >  $ cat /sys/class/power_supply/rk817-battery/voltage_min_design 
> > >  3625000
> > >  $ cat /sys/class/power_supply/rk817-battery/voltage_avg 
> > >  3381360
> > > 
> > > Is this normal? It went all the way to under 3V before the
> > > board finally locked up.
> > > 
> > > Does the minimum voltage not affect some sort of cutout on
> > > the RK817? Does it even have one? Is it the driver's job to
> > > do something here or not?
> 
> Hi Chris,
> 
> > It does not look like I coded that, but I can. The PMIC has a
> > selectable register (RK817_PMIC_SYS_CFG0 = 0xf1) to automatically shut
> > down the system at a certain voltage (between 2.7v and 3.4v in
> > increments of 100mv; bits 6-4), a register to set a low voltage value
> > (between 2.8v and 3.5v in increments of 100mv; bits 2-0), and a
> > register to set a low voltage action (either shut down the machine or
> > trigger an interrupt; bit 3 and then I believe the interrupt is read at
> > bit 7 of RK817_PMIC_INT_STS0 - 0xf8).
> 
> Excellent, I think shutting down the system is definitely the way to
> go here, as by reaching this voltage we can assume userspace has gone
> missing and we don't know if the kernel is still alive.
> 
> > I guess I just assumed userspace would handle it, but that's probably
> > a bad assumption.
> 
> Yes, I didn't have upower installed, but over discharge protection
> shouldn't be handled by userspace at all. Had I connected an unprotected
> cell that didn't cut out at below 3V, it would've been irreversibly
> damaged due to a simple forgotten package install. Even if unprotected
> batteries are a bad idea, I think we best assume the worst case
> situation here.
> 
> > What if I set the low voltage value to either 3.5v
> > or the min design voltage, whichever is less; and then set the low
> > voltage trigger to shut down the system? This would prevent your
> > battery from dropping below 3.5v or the min design voltage (whichever
> > is less, sadly 3.5v is as high as I can go for the minimum) in the
> > event userspace doesn't take action first? We could also set the
> > shutdown voltage to be 100mv less than the min design voltage and use
> > the low voltage interrupt to trigger an action, but I'm not sure what
> > action would be appropriate (and if userspace isn't listening it would
> > be moot anyway).
> 
> A very simple solution would be to simply set the shutoff point to the
> voltage reaching less than 3.1V. The RK817 only charges Lithium/Li-Po
> batteries, and they should generally not be discharged below 3.0V. Of
> the protected batteries I own, over-discharge protection generally
> kicks in at the 3V threshold.
> 
> This gets rid of a lot of logic that could lead to bugs by simply setting
> a known good value to begin with.
> 
> I think I can summarise how I understand this is supposed to work as
> follows:
> 
>  - if battery reaches 0% and the battery alarm is rang, userspace should
>    power down the system
>      - this prevents unclean shutdowns
>  - if the battery reaches a dangerously low voltage for its chemistry,
>    the PMIC should cut power to the system as instructed by the kernel
>      - last resort measure in case userspace is absent and the battery
>        happens to be unprotected
>  - there may or may not be battery protection which kicks in at 3V, but
>    we should not rely on this working
>       - some 18650 cases infamously aren't sized to fit cells with a
>         protection circuit connected to it. I shan't name names.
> 
> In a freak accident where the kernel is completely locked up and the
> battery is unprotected and being drained, I presume that having set
> this PMIC register will still make it kick in, which lets me sleep
> a little sounder at night.
> 

Okay. The default value for automatic shutdown is 2.7v, but that's
probably too low. I'm wondering though if this should go in the main
MFD driver, rather than the battery driver? The reason why I ask is
that without a battery driver to raise the shutdown voltage to 3.1v,
the shutdown will not happen until 2.7v which risks damage to the
battery. This means devices in production today (such as anyone running
the Odroid Go Advance on a mainline kernel) on a battery will
experience this behavior. Setting that register value shouldn't do
anything harmful if you don't have a battery, so I assume if it's safe
to set it 100% of the time for battery users it's safe to set 100% of
the time in total. Which also begs the question, if this is such a
danger to the hardware, should we even be doing it in Linux? We could
be setting it in U-Boot, because if the MFD driver fails to load or the
kernel freezes before the MFD driver loads there is STILL the risk you
could undervolt the battery, regardless of fixing this in the MFD driver
or the battery driver.

Thank you.

> Regards,
> Nicolas Frattaroli
> 
> > 
> > Thank you.
> > 
> > > 
> > > Regards,
> > > Nicolas Frattaroli
> > > 
> > > 
> > 
> 
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
