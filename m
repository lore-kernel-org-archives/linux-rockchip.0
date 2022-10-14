Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF256C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Oct 2022 15:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q57gBH1aoOeBw6FWZaoXNcbpAAClHTnk5hHt53t8EEA=; b=nrb0exjZGfyvD3
	j9yGLK+f6mFaytjHstFmNBcY/opNrlApGfxT4Gtw3xvzT/9szoxGP/91qJD63c0EOl1byF/hB9Ztl
	MC9TXOq8WlEOQTMmMW5Ydh5K+NlFmg/O49WTcUgg4X5MepQ3w3b0KZTypGbiSU/G+Q3qvKbJr3RqA
	XdSF2phkj9EGxUAwJjUKkFyJcc192MJqr3rSqam5XO9csgdn0USi3AC4QCMPSSxfbwGy4oC9oi5Gr
	RxWzJWQbVrixM0UBIMNAPlzsPBnZ/wI/P2sACPbRUgOYO/yJrQZ83keJRWI84V6l9lTxWAhxobbMf
	pW0Sq6t6OebLr1GoVIsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojMVQ-00FAGJ-Mn; Fri, 14 Oct 2022 15:21:48 +0000
Received: from frasgout.his.huawei.com ([185.176.79.56])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ojMVD-00FAAJ-S4; Fri, 14 Oct 2022 15:21:38 +0000
Received: from fraeml714-chm.china.huawei.com (unknown [172.18.147.226])
	by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4MpqpB4bcPz67FSP;
	Fri, 14 Oct 2022 23:20:34 +0800 (CST)
Received: from lhrpeml500005.china.huawei.com (7.191.163.240) by
 fraeml714-chm.china.huawei.com (10.206.15.33) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 17:21:25 +0200
Received: from localhost (10.202.226.42) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2375.31; Fri, 14 Oct
 2022 16:21:24 +0100
Date: Fri, 14 Oct 2022 16:21:23 +0100
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
CC: Miquel Raynal <miquel.raynal@bootlin.com>, Nuno =?ISO-8859-1?Q?S=E1?=
	<nuno.sa@analog.com>, <linux-arm-kernel@lists.infradead.org>,
	<linux-iio@vger.kernel.org>, <linux-amlogic@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-imx@nxp.com>, Chen-Yu Tsai
	<wens@csie.org>, Andriy Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>,
	Ciprian Regus <ciprian.regus@analog.com>, Vladimir Zapolskiy <vz@mleia.com>,
	Cixi Geng <cixi.geng1@unisoc.com>, Neil Armstrong <narmstrong@baylibre.com>,
	Sascha Hauer <s.hauer@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>,
	Fabio Estevam <festevam@gmail.com>, Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, "Pengutronix Kernel
 Team" <kernel@pengutronix.de>, Baolin Wang <baolin.wang@linux.alibaba.com>,
	Hans de Goede <hdegoede@redhat.com>, Alexandru Ardelean
	<aardelean@deviqon.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
	Haibo Chen <haibo.chen@nxp.com>, Lars-Peter Clausen <lars@metafoo.de>, "Jyoti
 Bhayana" <jbhayana@google.com>, Jonathan Cameron <jic23@kernel.org>, "Andy
 Shevchenko" <andy.shevchenko@gmail.com>, Florian Boor
	<florian.boor@kernelconcepts.de>, Chunyan Zhang <zhang.lyra@gmail.com>,
	"Orson Zhai" <orsonzhai@gmail.com>, Shawn Guo <shawnguo@kernel.org>, Kevin
 Hilman <khilman@baylibre.com>
Subject: Re: [PATCH v3 3/4] iio: health: max30102: do not use internal
 iio_dev lock
Message-ID: <20221014162123.00000420@huawei.com>
In-Reply-To: <fccf3f41b32e881eb79ee78852fa40a62b134c00.camel@gmail.com>
References: <20221012151620.1725215-1-nuno.sa@analog.com>
	<20221012151620.1725215-4-nuno.sa@analog.com>
	<20221012204556.7648df2e@xps-13>
	<fccf3f41b32e881eb79ee78852fa40a62b134c00.camel@gmail.com>
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.29; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.42]
X-ClientProxiedBy: lhrpeml100006.china.huawei.com (7.191.160.224) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221014_082136_249684_6E6D0A75 
X-CRM114-Status: GOOD (  31.06  )
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

On Fri, 14 Oct 2022 09:25:59 +0200
Nuno S=E1 <noname.nuno@gmail.com> wrote:

> On Wed, 2022-10-12 at 20:45 +0200, Miquel Raynal wrote:
> > Hi Nuno,
> > =

> > nuno.sa@analog.com=A0wrote on Wed, 12 Oct 2022 17:16:19 +0200:
> >   =

> > > The pattern used in this device does not quite fit in the
> > > iio_device_claim_direct_mode() typical usage. In this case, we want
> > > to
> > > know if we are in buffered mode or not to know if the device is
> > > powered
> > > (buffer mode) or not. And depending on that max30102_get_temp()
> > > will
> > > power on the device if needed. Hence, in order to keep the same
> > > functionality, we try to:
> > > =

> > > 1. Claim Buffered mode;
> > > 2: If 1) succeeds call max30102_get_temp() without powering on the
> > > =A0=A0 device;
> > > 3: Release Buffered mode;
> > > 4: If 1) fails, Claim Direct mode;
> > > 5: If 4) succeeds call max30102_get_temp() with powering on the
> > > device;
> > > 6: Release Direct mode;
> > > 7: If 4) fails, goto to 1) and try again.
> > > =

> > > This dance between buffered and direct mode is not particularly
> > > pretty
> > > (as well as the loop introduced by the goto statement) but it does
> > > allow
> > > us to get rid of the mlock usage while keeping the same behavior.  =

> > =

> > What about adding a TODO comment saying something like: "this comes
> > from static analysis and helped dropping mlock access, but someone
> > with
> > the device needs to figure out if we can simplify this dance"?
> > Because
> > the reason behind all this is that we don't want to risk breaking the
> > driver, but perhaps a simpler approach would work, right?
> >   =

> =

> Hi Miquel,
> =

> AFAIU, either the device is powered (when buffer mode enabled) and we
> can do the reading or it's not and we need to power it on/off
> "manually" while making sure we don't race against enable/disabling
> buffers. This "dance" is needed mainly to make sure that we grab
> 'mlock' one way or another... The other way would be to use some
> specific device lock together with a flag (as discussed) but as
> discussed with Jonathan we decided to go down this road... So,
> honestly, I don't really see the necessity of "marking" this code with
> a TODO but of course if someone comes in with something simpler, great
> :).

Agreed.  I don't expect to see any improvement in this in the future
so a TODO would just be noise and might encourage people to propose
the 'get the lock on it's own function' that we are going through this
dance to avoid adding.

Jonathan

> =

> Anyways, as I said, I'm not really keen in spinning a new version to
> add this comment so I will defer the decision to Jonathan :)  =

> =

> Thanks for the help!
> - Nuno S=E1
> =



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
