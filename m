Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C168EC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 11:34:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZbpZ/LUGuRkGnyF+DexWlpkJ+dWinzYoO7hES21HV4=; b=10aJAy6iq2gL89
	P3RsnfAalpztR81ie+74R0n63Njfvz4xQRpXB6T5u1Jbc1vAOUmyWGZB8pjsmKj9AMDn52npylR/S
	9IYiScktGlu+VkulxdkzX5x9isRcIsreTalPE5EDxnu/6E5zG2Py8jEc2CGDoDwHzYJRZFNhJQ2PZ
	3b/hybIldFd9hEKZP7HvsVs0HWcOaNbk/efSGBMHW5wa2lSYth79abzNz0W7blknF16inmmqX4PgD
	VqUj3RKEZc+mWK8Q+rCDLT8Wk6/jEJ36FGjZ0tohT78h0TsYXdfmEF0cAWrTlISoDIouCKCZFTqMY
	o+hTXtV3Dj4T0wNbis4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8fJ4-00Aabo-2g;
	Thu, 30 Nov 2023 11:34:10 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8fJ1-00AaaW-26;
	Thu, 30 Nov 2023 11:34:09 +0000
Received: from pyrite.rasen.tech (h175-177-049-156.catv02.itscom.jp [175.177.49.156])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 16425276;
	Thu, 30 Nov 2023 12:33:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1701344007;
	bh=dUdQo/NnsNM0ahRbgo/sOvGeBK2fSa+ow0mpMw2kxiM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ufA17wQ07OWsddNEeEKk0rpmFotp+SrjId4NeAj9f0nM69ANSnBI6AEOrAtqDsNEq
	 NKXuDyvRnP7mJhrclRVYpchhgfyc8qhev4w3uA8yvJjWKEfRWvCj0VDewkdz8SeWBk
	 BtLIO5D62xclXqLIGt9Mv8CGzVkIii01BMPsn2eA=
Date: Thu, 30 Nov 2023 20:33:53 +0900
From: Paul Elder <paul.elder@ideasonboard.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] media: rkisp1: debug: Add register dump for IS
Message-ID: <ZWhzIeW0VlDRztmS@pyrite.rasen.tech>
References: <20231129092956.250129-1-paul.elder@ideasonboard.com>
 <170128834260.3048548.11979514587961676400@ping.linuxembedded.co.uk>
 <ZWhaFL48cgdHsOPN@pyrite.rasen.tech>
 <4881112.31r3eYUQgx@steina-w>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4881112.31r3eYUQgx@steina-w>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_033407_826403_3412A717 
X-CRM114-Status: GOOD (  28.49  )
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

On Thu, Nov 30, 2023 at 10:54:46AM +0100, Alexander Stein wrote:
> Hi Paul,
> =

> Am Donnerstag, 30. November 2023, 10:47:00 CET schrieb Paul Elder:
> > On Wed, Nov 29, 2023 at 08:05:42PM +0000, Kieran Bingham wrote:
> > > Quoting Paul Elder (2023-11-29 09:29:55)
> > > =

> > > > Add register dump for the image stabilizer module to debugfs.
> > > =

> > > Is the Image Stabilizer on all variants of the ISP?
> > > =

> > > I.e. is it valid register space on the RK3399 implementation?
> > =

> > Yes, it is.
> =

> Is there some public documentation available how this ISP works? For RK33=
99 or =

> i.MX8MP.

Not that I'm aware of. I've been told there's some leaked documentation
in the RK3288 (without registers), and another one for the RK3399 (with
registers)?


Paul

> =

> > =

> > > If so then:
> > > Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> > > =

> > > > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > > > ---
> > > > =

> > > >  .../platform/rockchip/rkisp1/rkisp1-debug.c    | 18 ++++++++++++++=
++++
> > > >  1 file changed, 18 insertions(+)
> > > > =

> > > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > > > b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c index
> > > > 71df3dc95e6f..f66b9754472e 100644
> > > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > > > @@ -139,6 +139,21 @@ static int rkisp1_debug_dump_mi_mp_show(struct
> > > > seq_file *m, void *p)> > =

> > > >  }
> > > >  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_mi_mp);
> > > > =

> > > > +static int rkisp1_debug_dump_is_show(struct seq_file *m, void *p)
> > > > +{
> > > > +       static const struct rkisp1_debug_register registers[] =3D {
> > > > +               RKISP1_DEBUG_SHD_REG(ISP_IS_H_OFFS),
> > > > +               RKISP1_DEBUG_SHD_REG(ISP_IS_V_OFFS),
> > > > +               RKISP1_DEBUG_SHD_REG(ISP_IS_H_SIZE),
> > > > +               RKISP1_DEBUG_SHD_REG(ISP_IS_V_SIZE),
> > > =

> > > I expect so as you haven't added the register macros in this series so
> > > they must already be there ...
> > =

> > Yep :)
> > =

> > =

> > Paul
> > =

> > > > +               { /* Sentinel */ },
> > > > +       };
> > > > +       struct rkisp1_device *rkisp1 =3D m->private;
> > > > +
> > > > +       return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
> > > > +}
> > > > +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_is);
> > > > +
> > > > =

> > > >  #define RKISP1_DEBUG_DATA_COUNT_BINS   32
> > > >  #define RKISP1_DEBUG_DATA_COUNT_STEP   (4096 /
> > > >  RKISP1_DEBUG_DATA_COUNT_BINS)> > =

> > > > @@ -235,6 +250,9 @@ void rkisp1_debug_init(struct rkisp1_device *rk=
isp1)
> > > > =

> > > >         debugfs_create_file("mi_mp", 0444, regs_dir, rkisp1,
> > > >         =

> > > >                             &rkisp1_debug_dump_mi_mp_fops);
> > > > =

> > > > +
> > > > +       debugfs_create_file("is", 0444, regs_dir, rkisp1,
> > > > +                           &rkisp1_debug_dump_is_fops);
> > > > =

> > > >  }
> > > >  =

> > > >  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
> =

> =

> -- =

> TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
> Amtsgericht M=FCnchen, HRB 105018
> Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
> http://www.tq-group.com/
> =

> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
