Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 598A1C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 10:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e6QuSYh6Ejxm/t7HbjHRbLD4gsQH9LNT2esLca7g/n4=; b=QCbE1IkYrqixCf
	FQYCRyJrYzJkp/+2xCQl8VNl5o5omsttlfm3yjVK2cSZybq2gTP+tuhXPjrmxPLzedLGXX9FAGwSj
	mmYzgQXoo0xOT+ABYJNqTsE7FOCzQqqzhjYhk3zdlW6hbRyxTsknzOxbepJxjYAhHVaAHzl1lz3q/
	rY61QsiyNGHKy07fS6xD+pXmWZbJjawHdDbfMeUkWpURAlaZiTjyy28tZqTtugPmFvA3yHDIFZ2RP
	1Y2PGaHARKHty5iToYV9Ynx95s8ZJ2qQECaV0GSWj3FLTcuflFs64d4r8h1BzChS9Dv0+rUugaBZG
	uYaHaiy5mGkOOBLeSHOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzEFV-009JnJ-1d;
	Wed, 17 May 2023 10:19:13 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzEFQ-009Jfo-2M;
	Wed, 17 May 2023 10:19:10 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.226])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4QLpvs6SKZz67bLC;
	Wed, 17 May 2023 18:18:01 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.23; Wed, 17 May
 2023 11:19:03 +0100
Date: Wed, 17 May 2023 11:19:02 +0100
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
CC: Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>,
	<linux-rockchip@lists.infradead.org>, Kyungmin Park
	<kyungmin.park@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Michael
 Riesch <michael.riesch@wolfvision.net>, <kernel@pengutronix.de>, Will Deacon
	<will@kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v4 04/21] PM / devfreq: rockchip-dfi: Add SoC specific
 init function
Message-ID: <20230517111902.00003867@Huawei.com>
In-Reply-To: <20230517092040.GT29365@pengutronix.de>
References: <20230505113856.463650-1-s.hauer@pengutronix.de>
	<20230505113856.463650-5-s.hauer@pengutronix.de>
	<20230516164017.00002774@Huawei.com>
	<20230517092040.GT29365@pengutronix.de>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml500005.china.huawei.com (7.191.163.240) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_031908_914053_065833B4 
X-CRM114-Status: GOOD (  17.05  )
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


> >   
> > > +
> > > +	return 0;
> > > +};
> > > +
> > > +struct rockchip_dfi_devtype_data {
> > > +	int (*init)(struct rockchip_dfi *dfi);
> > > +};
> > > +
> > > +static struct rockchip_dfi_devtype_data rk3399_devtype_data = {
> > > +	.init = rk3399_dfi_init,  
> > 
> > I guess the 'why' will become apparent later in the set, but at this
> > stage a callback to get the ddr type would have made more sense and
> > kept the data local to where it was needed.  
> 
> struct rockchip_dfi_devtype_data will still have a single member by the
> end of this series. The reason I still prefer a struct type is that I've
> seen enough drivers that passed a single ad-hoc value in devtype data
> that I had to convert to pass a struct type because I had to add another
> value.
> 
> Well, I just realized that I have configured several values that I could
> have put in that struct in the SoC specific init function instead, so
> there's no real point in using a struct type.

I'm fine with the above being a struct - it was more the question of why
do everything in one 'init' function rather than having more specific
callbacks, e.g. one to just read the DDR type where you need it.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
