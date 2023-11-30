Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD9EEC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 09:55:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5OpCLSB88ARQnLEuXqlzCVxknoZ5+1Y7iXnWOKOuhc=; b=KormwmTupSIwkP
	zX2W31D/9jQMmbOeLOF5ywOxsOZHl8NMQFAFeIsJAvg0VX+JCstdBS5qRfPxmPFzYDG32z/uAgXjZ
	Xh3mY9RZSmdsPpCyb1KJ9O0T70HvAqLeIw25qPmVKT7Idlycwk4HNS0RHApmKJ3/Abn0DwRp457ss
	i+pQ3n00eOeUFegQhx6GdL0mvPB7e/oEkzrqLQosZSjfUa3S8baVf7+HHXLeXSG2rQKlAnk1Ih6qy
	rfNHbL6GXK3eutnLtcJ7k95l37Chvy2W3pfverIQGg1ijAaGFhQtX29/56sNk4G+plZTW5T76Q1u5
	XZIppnx7KIbMMaiMqmWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8dky-00AMqJ-2V;
	Thu, 30 Nov 2023 09:54:52 +0000
Received: from mx1.tq-group.com ([93.104.207.81])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8dkv-00AMov-23;
	Thu, 30 Nov 2023 09:54:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1701338089; x=1732874089;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=hnCrBJas0jHQljOR6WgW83uYftpb7okUoxTkkR1KEP0=;
  b=f4yDez26/NW9ycGezqecZMSzjmRIMYmE/8N9ICAf7hDrfgfXGrv/D+rm
   RhBb1BdPkaC5Rc6x2Eqw2ecGHeqtFNIXaLsWnp/kPSmsk13DyN+Itc78e
   30thGbIumx2Mk33w9AokbYBGhGjWfePdrpHwrUTyFMGyl/LJ0u2MXvBFj
   opM/lo7dEDbthhlWe1sCB5bMkCy/BvNy6C2C/DjtPt934HGheS73wc+Mf
   2zXMncYR2F8j6XnIhhNtVSkNyg7gJGAgaQxjmbjtH7jNMVTMuGGlRRVZl
   toKYmeR+2TMsOe0EgxrUGd+1RtqmLY4OVJv+eB+k27m9R21eHx+Vo2hG8
   A==;
X-IronPort-AV: E=Sophos;i="6.04,237,1695679200"; 
   d="scan'208";a="34256271"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 30 Nov 2023 10:54:47 +0100
Received: from steina-w.localnet (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 84613280075;
	Thu, 30 Nov 2023 10:54:47 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>, Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com, Dafna Hirschfeld <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] media: rkisp1: debug: Add register dump for IS
Date: Thu, 30 Nov 2023 10:54:46 +0100
Message-ID: <4881112.31r3eYUQgx@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <ZWhaFL48cgdHsOPN@pyrite.rasen.tech>
References: <20231129092956.250129-1-paul.elder@ideasonboard.com> <170128834260.3048548.11979514587961676400@ping.linuxembedded.co.uk> <ZWhaFL48cgdHsOPN@pyrite.rasen.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_015449_974317_37A6F680 
X-CRM114-Status: GOOD (  24.56  )
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

Hi Paul,

Am Donnerstag, 30. November 2023, 10:47:00 CET schrieb Paul Elder:
> On Wed, Nov 29, 2023 at 08:05:42PM +0000, Kieran Bingham wrote:
> > Quoting Paul Elder (2023-11-29 09:29:55)
> > =

> > > Add register dump for the image stabilizer module to debugfs.
> > =

> > Is the Image Stabilizer on all variants of the ISP?
> > =

> > I.e. is it valid register space on the RK3399 implementation?
> =

> Yes, it is.

Is there some public documentation available how this ISP works? For RK3399=
 or =

i.MX8MP.

Best regards,
Alexander

> =

> > If so then:
> > Reviewed-by: Kieran Bingham <kieran.bingham@ideasonboard.com>
> > =

> > > Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> > > ---
> > > =

> > >  .../platform/rockchip/rkisp1/rkisp1-debug.c    | 18 ++++++++++++++++=
++
> > >  1 file changed, 18 insertions(+)
> > > =

> > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > > b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c index
> > > 71df3dc95e6f..f66b9754472e 100644
> > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-debug.c
> > > @@ -139,6 +139,21 @@ static int rkisp1_debug_dump_mi_mp_show(struct
> > > seq_file *m, void *p)> > =

> > >  }
> > >  DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_mi_mp);
> > > =

> > > +static int rkisp1_debug_dump_is_show(struct seq_file *m, void *p)
> > > +{
> > > +       static const struct rkisp1_debug_register registers[] =3D {
> > > +               RKISP1_DEBUG_SHD_REG(ISP_IS_H_OFFS),
> > > +               RKISP1_DEBUG_SHD_REG(ISP_IS_V_OFFS),
> > > +               RKISP1_DEBUG_SHD_REG(ISP_IS_H_SIZE),
> > > +               RKISP1_DEBUG_SHD_REG(ISP_IS_V_SIZE),
> > =

> > I expect so as you haven't added the register macros in this series so
> > they must already be there ...
> =

> Yep :)
> =

> =

> Paul
> =

> > > +               { /* Sentinel */ },
> > > +       };
> > > +       struct rkisp1_device *rkisp1 =3D m->private;
> > > +
> > > +       return rkisp1_debug_dump_regs(rkisp1, m, 0, registers);
> > > +}
> > > +DEFINE_SHOW_ATTRIBUTE(rkisp1_debug_dump_is);
> > > +
> > > =

> > >  #define RKISP1_DEBUG_DATA_COUNT_BINS   32
> > >  #define RKISP1_DEBUG_DATA_COUNT_STEP   (4096 /
> > >  RKISP1_DEBUG_DATA_COUNT_BINS)> > =

> > > @@ -235,6 +250,9 @@ void rkisp1_debug_init(struct rkisp1_device *rkis=
p1)
> > > =

> > >         debugfs_create_file("mi_mp", 0444, regs_dir, rkisp1,
> > >         =

> > >                             &rkisp1_debug_dump_mi_mp_fops);
> > > =

> > > +
> > > +       debugfs_create_file("is", 0444, regs_dir, rkisp1,
> > > +                           &rkisp1_debug_dump_is_fops);
> > > =

> > >  }
> > >  =

> > >  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)


-- =

TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
