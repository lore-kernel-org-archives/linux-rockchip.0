Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F22B8C4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 10:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0qz/dRFqijGz/7gh+25/0OuWk0whgglmcA0to8Yy6Q=; b=cxPkcYAdq8YjaD
	rfqsziWuIPKT7PjFGTgUmlY5q8M5Hwq7x3T5Brhc4zePfsHBqcCKc4y2SHJCh76FgsWxDuSFFjZJV
	j0Q/8p2HCwghkhoDBiSIv1Suh8xU16CNhwF+I8kNQJpObZvhXX6o5eWYoxzJxUnnCZnieOyIIiroB
	5ClT2w2yz3yWiVivitbHpOVksJRc35jUPbdw4Pisno1joI+ILasG0p19nkWikGYc6ulmoPfs7uXbE
	nxGp8XSmf+jpquI3XNOhQnOJAVA6EUS67FmK8t2i1ew3O3Qz7e7VogPcbNxl6MpWXQCBiy7Ozurb+
	E6UI3gvi8xcsRYTjfuGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8e8A-00AQLr-1O;
	Thu, 30 Nov 2023 10:18:50 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8e86-00AQKl-30;
	Thu, 30 Nov 2023 10:18:48 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2c9afe6e21fso10395101fa.0;
        Thu, 30 Nov 2023 02:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701339524; x=1701944324; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c5FGYC1au+a2xY09Qm1hrPpvUGudmGYI587sIOf2nQU=;
        b=JPgT/S/ENTi/dPrHFwY5hbMRXfZbkXFGlZuEDNAzCk6uTw+rj45wYByf19OdM7eUh+
         Qv08qe0rAQ08OhtDbk+NRT1rrz4156ZG4l5sIt4yDHDs56hDvgLzianztqQDJeAnnk4z
         lWUXJj3ULsSJ1b/FJQzUDjZbXn+DlQVihkIalQPqgwoEXo8oWJ/RwmAt/dU3l+Xs7Exb
         F2cLmceBoPr22P9h/J7mHxUrK/KiNd9k2No+MN3SSjQ0MZS6NQ42uIy0AfNfNEQ16h6v
         9lgx7ovhxJ+/+I6dl7ZBjQvVRkzdbiQCd74iqc9WGlRTKkWWUngff/BQEhy0WvG2iSED
         KbZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701339524; x=1701944324;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c5FGYC1au+a2xY09Qm1hrPpvUGudmGYI587sIOf2nQU=;
        b=ZvlzeDYqDV4dR53G/RldtuVlnqH/TeqkYjqG4HQIQz8jHKTsA8C5ToukSRKHPqXO1W
         BYdyJI37c/yd46hvjoDzd4duTiYd9uxG+KmNtKUCI4qvEiTiBllnlNsGKs8jAe277glA
         z628P0DLmhAC+B/RHzq6xs6pRDtu1k+VYDnpr4J/0qRxRhg5nsOfzZ0lne/W/J2/Bdo3
         dn295Vd4PiRPY1pe3xQrx2qKrybt5zbE1k1gMRHtwhH+3llfjZBSacvII2OrmQDyW/oU
         zgVB8xpi0CddfCp5k+JGwy1wxKxPyv4O95hxNnph+owD35xMFmDsHBsqJwJSVA4b9HYe
         hkPA==
X-Gm-Message-State: AOJu0Yymtv6qR4vwsfUL7GFo9pQtce8+oXWw7J33SEvtS06yx7cETbxb
	2NM8RX/GmquyGY/bwVN2LMD1vxBxH6Q=
X-Google-Smtp-Source: AGHT+IEZ+H12n904PcCJ7l4olz+SFWc7iywSBqp3Ai7Zj9ZXEYMer4AAaHhzG9aSVrfDt+Sq3y9b3Q==
X-Received: by 2002:ac2:504f:0:b0:50b:bf06:ea0b with SMTP id a15-20020ac2504f000000b0050bbf06ea0bmr4812487lfm.53.1701339524296;
        Thu, 30 Nov 2023 02:18:44 -0800 (PST)
Received: from tom-HP-ZBook-Fury-15-G7-Mobile-Workstation (net-2-39-143-167.cust.vodafonedsl.it. [2.39.143.167])
        by smtp.gmail.com with ESMTPSA id hg10-20020a05600c538a00b0040b398f0585sm1566915wmb.9.2023.11.30.02.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 02:18:43 -0800 (PST)
Date: Thu, 30 Nov 2023 11:18:41 +0100
From: Tommaso Merciai <tomm.merciai@gmail.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Kieran Bingham <kieran.bingham@ideasonboard.com>,
	Paul Elder <paul.elder@ideasonboard.com>,
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] media: rkisp1: debug: Add register dump for IS
Message-ID: <ZWhhgQPSgKkkK/ma@tom-HP-ZBook-Fury-15-G7-Mobile-Workstation>
References: <20231129092956.250129-1-paul.elder@ideasonboard.com>
 <170128834260.3048548.11979514587961676400@ping.linuxembedded.co.uk>
 <ZWhaFL48cgdHsOPN@pyrite.rasen.tech>
 <4881112.31r3eYUQgx@steina-w>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4881112.31r3eYUQgx@steina-w>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_021846_970944_40E61E2C 
X-CRM114-Status: GOOD (  30.13  )
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

Hi Alexander,

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

For the ISP there is some public docs into imx8mp reference manual at page =
5895
chapter:

13.14 Image Signal Processor (ISP)

https://www.nxp.com/webapp/Download?colCode=3DIMX8MPRM
https://www.nxp.com/design/development-boards/i-mx-evaluation-and-developme=
nt-boards/evaluation-kit-for-the-i-mx-8m-plus-applications-processor:8MPLUS=
LPD4-EVK

This is not the full docs I think but cover some part of the ISP
functionality.

Hope this help.

Regards,
Tommaso

> =

> Best regards,
> Alexander
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

> =


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
