From: Nicolas Dufresne <nicolas@ndufresne.ca>
Subject: Re: [PATCH 6/6] hantro: Refactor for V4L2 API spec compliancy
Date: Wed, 11 Mar 2020 15:05:46 -0400
Message-ID: <b24e52a8b9c110ad7ded0b031cadc57c74ec8b84.camel@ndufresne.ca>
References: <20200311174300.19407-1-ezequiel@collabora.com>
         <20200311174300.19407-7-ezequiel@collabora.com>
         <02c89cb555c10ae61a365a2f54eb72bc4aee3c78.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <02c89cb555c10ae61a365a2f54eb72bc4aee3c78.camel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Tomasz Figa <tfiga@chromium.org>, kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>, Alexandre Courbot <acourbot@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Le mercredi 11 mars 2020 à 16:01 -0300, Ezequiel Garcia a écrit :
> On Wed, 2020-03-11 at 14:43 -0300, Ezequiel Garcia wrote:
> > Refactor how S_FMT and TRY_FMT are handled, and also make sure
> > internal initial format and format reset are done properly.
> > 
> > The latter is achieved by making sure the same hantro_{set,try}_fmt
> > helpers are called on all paths that set the format (which is
> > part of the driver state).
> > 
> > This commit removes the following v4l2-compliance warnings:
> > 
> > test VIDIOC_G_FMT: OK
> > 	fail: v4l2-test-formats.cpp(711): Video Capture Multiplanar: TRY_FMT(G_FMT) != G_FMT
> > test VIDIOC_TRY_FMT: FAIL
> > 	fail: v4l2-test-formats.cpp(1116): Video Capture Multiplanar: S_FMT(G_FMT) != G_FMT
> > test VIDIOC_S_FMT: FAIL
> > 
> > Reported-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
> > Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> > ---
> [..]
> > @@ -227,12 +232,12 @@ static int vidioc_g_fmt_cap_mplane(struct file *file, void *priv,
> >  	return 0;
> >  }
> >  
> > -static int vidioc_try_fmt(struct file *file, void *priv, struct v4l2_format *f,
> > -			  bool capture)
> > +static int hantro_try_fmt(const struct hantro_ctx *ctx,
> 
> Oops, it seems there's a warning due to ctx being const-qualified.

Indeed:

drivers/staging/media/hantro/hantro_v4l2.c: In function ‘hantro_try_fmt’:
drivers/staging/media/hantro/hantro_v4l2.c:282:30: warning: passing argument 1 of ‘hantro_needs_postproc’ discards ‘const’ qualifier from pointer target type [-Wdiscarded-qualifiers]
  282 |       !hantro_needs_postproc(ctx, fmt))
      |                              ^~~
In file included from drivers/staging/media/hantro/hantro_v4l2.c:29:
drivers/staging/media/hantro/hantro.h:420:42: note: expected ‘struct hantro_ctx *’ but argument is of type ‘const struct hantro_ctx *’
  420 | hantro_needs_postproc(struct hantro_ctx *ctx, const struct hantro_fmt *fmt)
      |                       ~~~~~~~~~~~~~~~~~~~^~~

> 
> That should be fixed of course.
> 
> Regards,
> Ezequiel
> 
> 
