From: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 3/9] media: hantro: Constify the control array
Date: Fri, 5 Jul 2019 19:17:16 +0200
Message-ID: <20190705191716.41ea819e@collabora.com>
References: <20190619121540.29320-1-boris.brezillon@collabora.com>
        <20190619121540.29320-4-boris.brezillon@collabora.com>
        <1fdb3115e6f5903b55a915c45bbfdec484842e83.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1fdb3115e6f5903b55a915c45bbfdec484842e83.camel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hans.verkuil@cisco.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Sakari Ailus <sakari.ailus@iki.fi>, linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, Nicolas Dufresne <nicolas@ndufresne.ca>, kernel@collabora.com, Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Jonas Karlman <jonas@kwiboo.se>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, Philipp Zabel <p.zabel@pengutronix.de>
List-Id: linux-rockchip.vger.kernel.org

On Fri, 05 Jul 2019 13:05:10 -0300
Ezequiel Garcia <ezequiel@collabora.com> wrote:

> On Wed, 2019-06-19 at 14:15 +0200, Boris Brezillon wrote:
> > controls[] is not supposed to be modified at runtime, let's make it
> > explicit by adding a const specifier.
> > 
> > Signed-off-by: Boris Brezillon <boris.brezillon@collabora.com>
> > ---
> >  drivers/staging/media/hantro/hantro_drv.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_drv.c b/drivers/staging/media/hantro/hantro_drv.c
> > index 28b0fed89dcb..db49d643ddb7 100644
> > --- a/drivers/staging/media/hantro/hantro_drv.c
> > +++ b/drivers/staging/media/hantro/hantro_drv.c
> > @@ -264,7 +264,7 @@ static const struct v4l2_ctrl_ops hantro_ctrl_ops = {
> >  	.s_ctrl = hantro_s_ctrl,
> >  };
> >  
> > -static struct hantro_ctrl controls[] = {
> > +static const struct hantro_ctrl controls[] = {
> >  	{
> >  		.id = V4L2_CID_JPEG_COMPRESSION_QUALITY,
> >  		.codec = HANTRO_JPEG_ENCODER,  
> 
> This patch here breaks the build:
> 
>   CC [M]  drivers/staging/media/hantro/hantro_drv.o
> /home/zeta/repos/linux/media_tree/drivers/staging/media/hantro/hantro_drv.c: In function ‘hantro_ctrls_setup’:
> /home/zeta/repos/linux/media_tree/drivers/staging/media/hantro/hantro_drv.c:319:23: error: assignment of member ‘id’ in read-only object
>     controls[i].cfg.id = controls[i].id;
>                        ^

Oops, didn't check bisectability.

> You can fix it by simply moving it after:
> 
> [PATCH 4/9] media: hantro: Simplify the controls creation logic

Yep, I'll do that.

Thanks,

Boris
