Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCDB606A31A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 14:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=i7iAxXj3;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=hotmail.com header.i=@hotmail.com header.a=rsa-sha256 header.s=selector1 header.b=hS8/kTrs
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vAB/f7fJzBDrSmJsAXlYpynYdTeu/dFJxnNvn9DzFFg=; b=i7iAxXj31SuLFJhzu0cEknhgCu
	+GxsAh9z7SNWRKeL3SzEVyRlRh6xvF72fl/95XbND01czs90VKJ1PDI8nlweuzvQnFwJ00qxk36Vo
	7JikPK5LQoIJPJaKlxNonX8ujalsOHn8gyzo3eG1d/QiwVebkU30abldr46YWczLON7oSzVfxZ/6o
	Ff1viqt9Dne5auXotZYqytL7ekbrL61jV/94N5B4BqJ89Jci7hSbo4FlD57acoLGjLV32HKr9DzVi
	KJG6ZkGCpTmR5ljCSqs+1xY9NOgl17eip+Qi2US/91hYx7VwiJFktbZ38UDnZH8UaXkLp2js6SLOb
	h78cRS6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM4Sd-00000007BCI-0NGO;
	Wed, 28 Oct 2026 14:17:03 +0000
Received: from mail-southcentralusazolkn190110001.outbound.protection.outlook.com ([2a01:111:f403:d10c::1] helo=SN4PR0501CU005.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM4Sa-00000007BAu-3zbA
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 14:17:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hgGYbRX9kCaXNJrOkwOgphtop30Kz77u2O2UzCgmJKx9Ux9IFdzhlK8qL0+95Zj62KcqP/6WwR9ulN7kHfWDUo9WQh1qzCk/pO5irf4tX7bBZi969TNOWRBOwa8MpNjUReyYqMqi+AZQftQ8yg2VUjrKTrzZxDb3bIXlydHvRjrE16RGe7MuUxS937tQcn2OcljPiZ2YYzyRhnTif2IiIlEmj618UnzWQiRrkxPphb0dXd1+csrYGQ6qWC5aG0XDMNZFhqtB2IPbhf6s6ESEUtaWzqG8oqiEN+X99YT+7wjqjVpketKaYyW87rQEuaqtAQxG579Am2wB3CZlP3h1Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/lqn198qINFWG7f1Vvwe0tuCLfWp3p8eFZLE/aH/fjc=;
 b=AERFiNzyar3cPU8bFXCm9Jed+E+IDAvIExu86IgWXhPaVePii/CEUPjs9mpJq8Ws4wWZE6+axck+XmG4Pxt72HHEGTEIlRxuhTWJGsloeaz4CsAONI3H8fKD42D4a66PHCjMy/2oZ6TWs416opN85DJVuEjjSl346ocgGBtJ0rVQZoZnaHs3cVt1xpA0z/dw6Aj3A9jnaTqd3evRIL2x0PAI/6JBHryfbiP5NSvQYK1u8xEdN905AJDE++S7CogUj1u58yT07WYPOD5OaUr3h3gjNKAqJvlAEBWw6lzfLco6/yRQeMV18LnQOs9UiwHJUgbm5PVKhy/ZAFITLEnWgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/lqn198qINFWG7f1Vvwe0tuCLfWp3p8eFZLE/aH/fjc=;
 b=hS8/kTrsoOuiQqk8+NRX46DebpaeZ0hXb9rXgFvSkU3wpSdw3WdKZHhQTfZ10sa7y2+jP+Qn0YjQqDqD7F9muS+6aPyvCpd5ptRk3Gcak3j1VwkoAlNvGqjrJ2Rniqwtbdc1A9fmVMSeHQF1G1QOTS82Pnnt/STakccPDUrj1y0vehRsjGkZGf2mYmWDhFtcO6JR4LJJgWXau2vtBZLkF+BQMlZw7bk3WX82VtiBL9EtKH7aQccsEcRcteEkr0PavauO0KYjhDVCXUckZN/x9uEKX7hPtURdWigdOhbO9ymrWqckzJno00Q1aHDOdezv6WAzH7HnEjgUGpOig1CUDw==
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18) by FT1PR19MB252318.namprd19.prod.outlook.com
 (2603:10b6:170:32::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.569.8; Wed, 28 Oct
 2026 14:16:55 +0000
Received: from PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172]) by PH0PR19MB997338.namprd19.prod.outlook.com
 ([fe80::fd22:ee23:3e25:3172%4]) with mapi id 15.21.0569.007; Wed, 28 Oct 2026
 14:16:54 +0000
Date: Wed, 28 Oct 2026 09:16:42 -0500
From: Chris Morgan <macromorgan@hotmail.com>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: linux-pm@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	maccraft123mc@gmail.com, zhangqing@rock-chips.com,
	zyw@rock-chips.com, sre@kernel.org, conor+dt@kernel.org,
	krzk+dt@kernel.org, robh@kernel.org, lee@kernel.org,
	Zetarancio <zetarancio@users.noreply.github.com>
Subject: Re: [PATCH 4/5] dt-bindings: power: supply: rk817-charger: Add
 rockchip,gate-function-disable
Message-ID: <PH0PR19MB997338A311F3D5587E47E4197EA56F2@PH0PR19MB997338.namprd19.prod.outlook.com>
References: <20261026174834.1652309-1-macroalpha82@gmail.com>
 <15875856.JCcGWNJJiE@diego>
 <PH0PR19MB997338FA74EFF7CD338356EB88A5602@PH0PR19MB997338.namprd19.prod.outlook.com>
 <2849967.uZKlY2gecq@diego>
Content-Disposition: inline
In-Reply-To: <2849967.uZKlY2gecq@diego>
X-ClientProxiedBy: SA0PR13CA0003.namprd13.prod.outlook.com
 (2603:10b6:806:130::8) To PH0PR19MB997338.namprd19.prod.outlook.com
 (2603:10b6:510:3b1::18)
X-Microsoft-Original-Message-ID: <auIDygtapro3lVHe@wintermute.localhost.fail>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR19MB997338:EE_|FT1PR19MB252318:EE_
X-MS-Office365-Filtering-Correlation-Id: da2b30cf-87dc-4727-2c1d-08df34fe1ded
X-Microsoft-Antispam: BCL:0;ARA:14566002|24021099003|55001999006|8060799015|25010399006|4140399003|19110799012|37011999003|6090799003|25031999004|51005399006|23021999003|15080799012|5072599009|40105399003|56899033|440099028|3412199025;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?9wHUyKqbXw24W20BukFTMD0LfhPpZbDg2FynPxz2T14MRDWyYs05JMUF/5?=
 =?iso-8859-1?Q?hKXlx5vn2jeB8f6LxOyHkvUQ1tFL/D4odh5YXT9B2TU1uoRMyP7e0JhYTq?=
 =?iso-8859-1?Q?h1zXoXJH9cRMbgMRBvtaxiIJBsm6iFN9bFft6d6Nsld9HPBiVdvoQwT9GU?=
 =?iso-8859-1?Q?XTXGvSebR+j2Z6bsnil1qvtNZwivVvSTNZyEnzTPg+WunxhdCWcB9tLbIA?=
 =?iso-8859-1?Q?riQJ/bvxDCNmFrWJIwu14g/JrIOAkOkXsqhfaUt9vbI5gThs9CGC5nITWP?=
 =?iso-8859-1?Q?ur0M1a3nBdv0znLxKgavOwO8yy3BEdGeASuBLz14x1jfRiHaawgz70OY7X?=
 =?iso-8859-1?Q?GVkqm4v0eRBNSRyHHm3aLq6er/bQBCZndM1nFJF5RIXdkbtWKFxREoF+eq?=
 =?iso-8859-1?Q?+VXZpRLKv/VJN7Cdjf96EkILc4FJzwe1tNyRl6gfW0BrKqUUgcOm9sXdbo?=
 =?iso-8859-1?Q?W5M4mbYwAaXnqAcC2UaQDhhIaWXNrEJcxiM5VIVc0oD+m8VyADKbYsehP5?=
 =?iso-8859-1?Q?Lrx0ROewN3wzT0IVHKdQD2tPvdX22F4F64pEDzi1hn2GABd+/iUaePwkfi?=
 =?iso-8859-1?Q?Y+NM6lgtZzsJkFKxaG/MGNdyjluhFkrFx/NX9Lv5j0/D1Pd3VTXUDhw2YQ?=
 =?iso-8859-1?Q?aHzekUZ1YkjfmiLWvtX66Yr7d0Zp/vDUoCWSwp2p2+pqkTxnn8gzuuxzPx?=
 =?iso-8859-1?Q?EnrDgzo11dxV8FatCCRpRM2nwG34XtsDzjY2vlyqeW09H92L1vxeXZKVlW?=
 =?iso-8859-1?Q?TJFQ/OwUvhGklAuklYg75eusoWYVhm51/d+1qyc+V6WPwrTFv6bwARgCRK?=
 =?iso-8859-1?Q?buNw4W3fFQlkMaSerV/2Eus7vSem30eXmZritnpavu2ueznPduxpA/xs8c?=
 =?iso-8859-1?Q?8+P+EIO372/3D5ohMlyXlcsw4hReC2OdUw2mMTJ1COgO/r24mHdWrnw1KY?=
 =?iso-8859-1?Q?Jm8igpUe5avfXNk0eqBFb2g4r9bYUc+DKDZ7jmPr1auKWTVpB/A3c6eTo8?=
 =?iso-8859-1?Q?8Mugww88gggruXbOhCTSNe//UP6c1qmLR5v9FGmoarDij/Z6Kc2GYRL/Ly?=
 =?iso-8859-1?Q?B3quQ+/qqzLS1n232PMhK9MuYz6hz1xUylPO+cPCmWfc?=
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?CSLritMEtl0RvPpgiwo7UW59oWIpYGfjiLYcyL/7o4ulUQRzoKM8aqIZH1?=
 =?iso-8859-1?Q?K3yIhQtJS8dmGNt4odtpClk8mwFer9V5alQlOXXm1eerYDkvtBpzL83XWS?=
 =?iso-8859-1?Q?KvYzuyDsAUHxde60/VTbuYv08r50FNISjQu9IveBB6bHwTUiN9lAHrzyzG?=
 =?iso-8859-1?Q?ou6Bmd4KmMy9XAoso7pCYf2/obma6hqctVWB5quk3K0NzCmGtiQ5tRU/y3?=
 =?iso-8859-1?Q?ABPxQYiGWcsGipSfgx+327ck9SL05nWS9i9wq2J//NCzSEZf6DUchTfcbw?=
 =?iso-8859-1?Q?den0GASgWjc7XTMCYLI2S9VfxVe9txo2deK9ezsmusaetS/xfkWpnZgfi6?=
 =?iso-8859-1?Q?FLu8Ga4oUPuIBSuvcfLB09RfOkSVPoX3fGDJ1F2rd7JpW90lUI/E/nvt+c?=
 =?iso-8859-1?Q?ViwFXGL3S+jyyNiBMBd3ieMKZXEEET2h8DBdanX53wdIQRVUVyBUN9U8TX?=
 =?iso-8859-1?Q?qp/5ueqdHlk0IEbIylEruWjN+/u9CbYy5fzBYLk3uUcm9+QjpAs3FicjGm?=
 =?iso-8859-1?Q?zXeo1+t0ZulYXT9Z+FsBi3Qvo8OS8+HomUwOhFloTwlTvr7sf5GoIg1kRF?=
 =?iso-8859-1?Q?0fLWwUZOBHnvuGXOQ00nt2h5f2dzVdjyZxuG7ETg1HECaR0y9nHvOLZTv5?=
 =?iso-8859-1?Q?rAXT23XKkArCPef2vpQ1HJJltUhFs76A5NZb92FTDnqg5zhoyKcmKc9Aw5?=
 =?iso-8859-1?Q?LbqJEKvgjaXIqmh8sWsnLJ/a+d1A2cenDyxDVBgj7nsxeBZndJdEuWQwUt?=
 =?iso-8859-1?Q?pOD72jjaPiwAxx35qxy1luKR+FwhgPiv9FxECAUjN8dV0+hn+H6wZ/TNrY?=
 =?iso-8859-1?Q?hRWzU239o8fwtPICnOXJiLgvYtF1q54MH4xwfobT6Gs7izEhvpsAd0cEZf?=
 =?iso-8859-1?Q?6UqGtsttbcV8V84MhUTzNdNudXSGBnEQeNmWs/yptdf2tEkiswMS1Vq8ID?=
 =?iso-8859-1?Q?hvbpXGSVi8Y7sSK6fn2U+tf5MOX43wn4HHsRtbLkcQnh3W6vr9/6fMfXLU?=
 =?iso-8859-1?Q?2cD3F8DgyYqL52p9SNdehc0dnR0r0W1Hng+5Azpr4AvtehUZrYjwG90xYc?=
 =?iso-8859-1?Q?sublgOl2cqw4Bk6XGf7jbwZSkuhD7gHM4hmxe1CCYp0nJYR5doZTlla4IP?=
 =?iso-8859-1?Q?CjaByHUhmwuL0SJ/KfLFarsibZMd4wdE1tfj8Xm1idL9A5MPOG22kxOp4Z?=
 =?iso-8859-1?Q?DnOJtmZlXq7DQ2iHQiUUPb6DB2wxQ0mI+GHy3r7BwjWCDgMeJTHVtvlA0j?=
 =?iso-8859-1?Q?pRKntNdzb/K49U6XjbPyQ9XQVmKUstxeAG7p9RU5AWRQikxFy+DJ8e4xTe?=
 =?iso-8859-1?Q?Mu9fgwvdwJ9OoS2Nkjs6MzGQhyg6/Qy6zNQcMh6smHD1OELC7TqgYQ7CcV?=
 =?iso-8859-1?Q?KPuTz0GA0sD+Q99riukpUynvEsk9/dt2pOl2p3WnkPvbs1XU8EgQegXk71?=
 =?iso-8859-1?Q?iUm7M26IIQ0eZ+LJ?=
X-OriginatorOrg: sct-15-20-9412-4-msonline-outlook-990eb.templateTenant
X-MS-Exchange-CrossTenant-Network-Message-Id: da2b30cf-87dc-4727-2c1d-08df34fe1ded
X-MS-Exchange-CrossTenant-AuthSource: PH0PR19MB997338.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2026 14:16:54.1927
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FT1PR19MB252318
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_071700_999382_6ACABBF8 
X-CRM114-Status: GOOD (  35.67  )
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
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Tue, Oct 27, 2026 at 11:40:46PM +0100, Heiko St=FCbner wrote:
> Am Dienstag, 27. Oktober 2026, 16:53:10 Mitteleurop=E4ische Normalzeit sc=
hrieb Chris Morgan:
> > On Mon, Oct 26, 2026 at 08:23:40PM +0100, Heiko St=FCbner wrote:
> > > Hi Chris,
> > > =

> > > Am Montag, 26. Oktober 2026, 18:48:33 Mitteleurop=E4ische Normalzeit =
schrieb Chris Morgan:
> > > > From: Chris Morgan <macromorgan@hotmail.com>
> > > > =

> > > > Add a boolean attribute for the rk817-charger to control whether or=
 not
> > > > the system power is shutdown in battery off mode. The BSP kernel se=
ts
> > > > this value unless a device-tree attribute is present, and this attr=
ibute
> > > > is to replicate that behavior.
> > > =

> > > Devicetree is supposed to describe the hardware, so your description =
needs
> > > to describe the per-board property this represents.
> > > =

> > > Just because it's in a vendor-BSP is generally not enough justificati=
on :-) .
> > > =

> > > This is especially true as you wrote in the cover-letter that no known
> > > board actually needs this right now.
> > > =

> > > =

> > > Heiko
> > =

> > The datasheet describes this as "Whether the system voltage can be
> > shutdown in Bat_off mode" and the register itself is described as
> > SYS_CAN_SD. Maybe call it "rockchip,can-shutdown-bat-off"? Or given the
> > fact that I'm not aware of any boards that would need it today, should
> > I even bother with adding the devicetree override? The only reason I
> > am adding it is in case this "fix" introduces a regression it will
> > allow someone to set this flag, just like the BSP does.
> =

> First of all, I guess defining the terms better would be helpful, i.e.
> I don't know what that "battery off" mode is plus the whole enviroment
> this happens in.
> =

> Secondly, this new flag would cause a regression, because a board needing
> the old way would need to add that flag. But when a board actually
> requiring this turns up with an older devicetree without that new flag
> this breaks backwards compatiblity.
> =

> So if we have a function flag for the pmic, it would need to be the other
> way around.
> =

> As you said this is specific to battery powered devices, of which we don't
> have that many - especially in-tree. Can you maybe look in the vendor-tree
> if any board actually uses that?
> =

> =

> Heiko
> =

> =


In the next revision I'll just enable it, and put a note inline
stating that BSP offered a way to disable this behavior but I have
never observed a device doing so. The documentation around what this
bit does isn't exactly clear but from what I gather it sets the output
voltage of the battery to on even when the PMIC is off. Otherwise, when
the PMIC is off the battery output voltage is off. I see that at least
a few devices from Trim UI experience a power drain while off if this
bit is not cleared. Not sure why keeping the battery *on* fixes a power
drain, but I haven't noticed any other devices experiencing a
regression with this bit cleared, a few devices work better with this
bit cleared, and the BSP did it this way.

So next revision I'll just drop the devicetree pieces and always clear
the bit.

Thank you,
Chris

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
