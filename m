Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 029AAC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Apr 2022 07:34:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WycCMZqERNbtK4LW/B11bgGHnZuOaftOKd0U4ZzFdec=; b=wKr/Mz+IARyPLa
	oHQ8VSGPAM/4ofXygF1/Jz7t15DNb+Gm+ducOrPFJxJbm97oJdBFqIUFxWxEiqBwZYdFWXKeiWoZm
	SIYcLlegHhuAeIwZEXBtHLtnS5omINscJ01Pdd3tMdoaEJWUZpzvC4BRxr9qSBIRFnPX95DzrWCrK
	v9Bu36xjCu4b9TrFjVMm6ykksk9zViKcvY3iN/euP6WMFX+1LlPXodZeAD0eWXx+Bt3CzBSQ62zXW
	6kOuwt5YVOLSNTFah/TScO0rmjnepkGs28nCisYEjKJ2Xd1pBkXuFzI/5/h93ZSk9RmB+Vub4U+P5
	ZTGSaeQ3MvDd8u/teOCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njFiA-00CzEz-Er; Tue, 26 Apr 2022 07:34:14 +0000
Received: from mail-oa1-x34.google.com ([2001:4860:4864:20::34])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njFi7-00CzEB-Js
 for linux-rockchip@lists.infradead.org; Tue, 26 Apr 2022 07:34:13 +0000
Received: by mail-oa1-x34.google.com with SMTP id
 586e51a60fabf-d6e29fb3d7so18548975fac.7
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Apr 2022 00:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8ehkV6mnvrvV8SRKl9qJVoHX/FUhbl1B+R3BHH6VqTQ=;
 b=IFg5A0uJyXIlurj2BEpddgPQTCt+WAocY1pf0uopzmWUPh8MCSQAMMoWPJs/2IBMAV
 LbFa3qSXaY2O16ruF4Y4Pj+aVn9OFWLJypF6Skhbp+GmjZfQA4ZOC/532b9gfVO17bCG
 dxTdApJv9xHfEig22JVVq57zkc9d+KIn875Zg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8ehkV6mnvrvV8SRKl9qJVoHX/FUhbl1B+R3BHH6VqTQ=;
 b=JXs7IZLQBsdjNNzMiG/7V00bivePpsOJwmt1X8blEHgbmtEZTCIhllrXW9C6J9L/OS
 DGgpE2IyJ3kbHKPie9igY5dr0EPh0/1VZDl7C4ivlO/3G4PqCRbON6Gm7SKO96m3Cf+i
 Frh6dgEA4A3xn53FLPFisD9lVoP6GJBzrFDdiDUxEgkcy1vJx7yjA1cgrC8jK4OisXVT
 dlq17SVYiS5ALSM47iXxbzlv1FOYbShf5wYTelPaJueIs/zeXGhbliQ61hzJ/AU/Mo8i
 cLLbP9gFWwKXl45Cj2SOPqX5L2mNmcVggit5ecAcZs3Ia8i1lhndZ3YjvFVD0ewpIGfi
 cRvA==
X-Gm-Message-State: AOAM533FfmQDTz3qXbMyYE+8KPx4l7sAp+QTVhTZXPR/Vo0w+NLcqhPR
 RBsbx/dKxOmSvIT80+im5tT65zqMblxBWDJ+
X-Google-Smtp-Source: ABdhPJw4gsE0sOXhNwGiObWk74+yLtE2hTuetsajVTZaueM0Qwvfb+3u8ZOP2iBhXfkS3yQeDHE1ag==
X-Received: by 2002:a05:6870:5b9e:b0:cf:f6de:3e89 with SMTP id
 em30-20020a0568705b9e00b000cff6de3e89mr13018595oab.94.1650958444551; 
 Tue, 26 Apr 2022 00:34:04 -0700 (PDT)
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com.
 [209.85.167.172]) by smtp.gmail.com with ESMTPSA id
 q34-20020a056808202200b0032545864b89sm1307924oiw.14.2022.04.26.00.34.03
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 26 Apr 2022 00:34:03 -0700 (PDT)
Received: by mail-oi1-f172.google.com with SMTP id b188so19740555oia.13
 for <linux-rockchip@lists.infradead.org>; Tue, 26 Apr 2022 00:34:03 -0700 (PDT)
X-Received: by 2002:a05:6808:e88:b0:2fa:72da:55d4 with SMTP id
 k8-20020a0568080e8800b002fa72da55d4mr14275514oil.66.1650958442683; Tue, 26
 Apr 2022 00:34:02 -0700 (PDT)
MIME-Version: 1.0
References: <20220421234240.1694-1-laurent.pinchart@ideasonboard.com>
 <20220421234240.1694-14-laurent.pinchart@ideasonboard.com>
 <YmZ+89lToRXl4vFB@gmail.com> <Ymbxs2p9Tuf331qM@pendragon.ideasonboard.com>
In-Reply-To: <Ymbxs2p9Tuf331qM@pendragon.ideasonboard.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 26 Apr 2022 09:33:52 +0200
X-Gmail-Original-Message-ID: <CANiDSCvuWRfRDc7DhwESN_Z9+CCrQ_ofS=DZjMyV-=sojb=-Vw@mail.gmail.com>
Message-ID: <CANiDSCvuWRfRDc7DhwESN_Z9+CCrQ_ofS=DZjMyV-=sojb=-Vw@mail.gmail.com>
Subject: Re: [PATCH v4 13/21] media: rkisp1: Compile debugfs support
 conditionally
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Dafna Hirschfeld <dafna@fastmail.com>, 
 Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>, 
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220426_003411_708629_04D16B57 
X-CRM114-Status: GOOD (  23.16  )
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

On Mon, 25 Apr 2022 at 21:08, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Ricardo,
>
> On Mon, Apr 25, 2022 at 12:58:59PM +0200, Ricardo Ribalda wrote:
> > Laurent Pinchart wrote:
> >
> > > When CONFIG_DEBUGFS is disabled, there's no need to compile the debugfs
> > > support in. Make it conditional.
> > >
> > > Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > > Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>
> > > ---
> > > Changes since v3:
> > >
> > > - Fix double mention of rkisp1-debug.o in Makefile
> > > ---
> > >  .../media/platform/rockchip/rkisp1/Makefile    | 18 ++++++++++--------
> > >  .../platform/rockchip/rkisp1/rkisp1-common.h   |  9 +++++++++
> > >  2 files changed, 19 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/media/platform/rockchip/rkisp1/Makefile b/drivers/media/platform/rockchip/rkisp1/Makefile
> > > index 1a39bdcc608e..f7543a82aa10 100644
> > > --- a/drivers/media/platform/rockchip/rkisp1/Makefile
> > > +++ b/drivers/media/platform/rockchip/rkisp1/Makefile
> > > @@ -1,11 +1,13 @@
> > >  # SPDX-License-Identifier: GPL-2.0
> >
> > Are you sure that this work when rockchip is built as module?
>
> I'm fairly confident it does, as I build the driver as a module :-)

I am not qualified to review Kconfig :)

Thanks :)

>
> > > +rockchip-isp1-y := rkisp1-capture.o \
> > > +              rkisp1-common.o \
> > > +              rkisp1-dev.o \
> > > +              rkisp1-isp.o \
> > > +              rkisp1-resizer.o \
> > > +              rkisp1-stats.o \
> > > +              rkisp1-params.o
> > > +
> > > +rockchip-isp1-$(CONFIG_DEBUG_FS) += rkisp1-debug.o
> > > +
> > >  obj-$(CONFIG_VIDEO_ROCKCHIP_ISP1) += rockchip-isp1.o
> > > -rockchip-isp1-objs +=      rkisp1-capture.o \
> > > -                   rkisp1-common.o \
> > > -                   rkisp1-debug.o \
> > > -                   rkisp1-dev.o \
> > > -                   rkisp1-isp.o \
> > > -                   rkisp1-resizer.o \
> > > -                   rkisp1-stats.o \
> > > -                   rkisp1-params.o
> > > diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > > index 07a92ed8bdc8..a7ffe2830fa8 100644
> > > --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > > +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> > > @@ -518,7 +518,16 @@ void rkisp1_stats_unregister(struct rkisp1_device *rkisp1);
> > >  int rkisp1_params_register(struct rkisp1_device *rkisp1);
> > >  void rkisp1_params_unregister(struct rkisp1_device *rkisp1);
> > >
> > > +#if IS_ENABLED(CONFIG_DEBUG_FS)
> > >  void rkisp1_debug_init(struct rkisp1_device *rkisp1);
> > >  void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1);
> > > +#else
> > > +static inline void rkisp1_debug_init(struct rkisp1_device *rkisp1)
> > > +{
> > > +}
> > > +static inline void rkisp1_debug_cleanup(struct rkisp1_device *rkisp1)
> > > +{
> > > +}
> > > +#endif
> > >
> > >  #endif /* _RKISP1_COMMON_H */
>
> --
> Regards,
>
> Laurent Pinchart



-- 
Ricardo Ribalda

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
