From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 10/11] rockchip/vpu: Add support for non-standard
 controls
Date: Mon, 15 Apr 2019 13:07:34 +0900
Message-ID: <CAAFQd5CcJ=hAwLn7WxBO86MyLG7UM_2wqTs6qtNB2cgrsa9Guw@mail.gmail.com>
References: <20190304192529.14200-1-ezequiel@collabora.com>
 <20190304192529.14200-11-ezequiel@collabora.com>
 <CAAFQd5ApNfr-t-HfWP-6JKJUgMwkr6oXWFgOhUqzj46JO2AS8Q@mail.gmail.com>
 <a4e3c32c7b6357803122a304fe70ac8a3f829c58.camel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <a4e3c32c7b6357803122a304fe70ac8a3f829c58.camel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Jonas Karlman <jonas-uIzNG4q0ceqzQB+pC5nmwQ@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, Nicolas Dufresne <nicolas.dufresne-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Sat, Apr 13, 2019 at 4:25 AM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
> On Mon, 2019-04-01 at 12:14 +0900, Tomasz Figa wrote:
> > On Tue, Mar 5, 2019 at 4:27 AM Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
> > > Rework the way controls are registered by the driver,
> > > so it can support non-standard controls, such as those
> > > used by stateless codecs.
> > >
> > > Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > > ---
> > >  .../media/rockchip/vpu/rk3288_vpu_hw.c        |  2 +-
> > >  .../media/rockchip/vpu/rk3399_vpu_hw.c        |  2 +-
> > >  .../staging/media/rockchip/vpu/rockchip_vpu.h | 24 ++++++-
> > >  .../media/rockchip/vpu/rockchip_vpu_common.h  |  1 +
> > >  .../media/rockchip/vpu/rockchip_vpu_drv.c     | 65 +++++++++++++++++--
> > >  5 files changed, 84 insertions(+), 10 deletions(-)
> > >
> > > diff --git a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw.c b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw.c
> > > index 056ee017c798..630eded99c68 100644
> > > --- a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw.c
> > > +++ b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw.c
> > > @@ -112,7 +112,7 @@ const struct rockchip_vpu_variant rk3288_vpu_variant = {
> > >         .enc_fmts = rk3288_vpu_enc_fmts,
> > >         .num_enc_fmts = ARRAY_SIZE(rk3288_vpu_enc_fmts),
> > >         .codec_ops = rk3288_vpu_codec_ops,
> > > -       .codec = RK_VPU_CODEC_JPEG,
> > > +       .codec = RK_VPU_JPEG_ENCODER,
> > >         .vepu_irq = rk3288_vepu_irq,
> > >         .init = rk3288_vpu_hw_init,
> > >         .clk_names = {"aclk", "hclk"},
> > > diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
> > > index 0263584e616d..9eae1e6f1393 100644
> > > --- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
> > > +++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw.c
> > > @@ -129,7 +129,7 @@ const struct rockchip_vpu_variant rk3399_vpu_variant = {
> > >         .enc_offset = 0x0,
> > >         .enc_fmts = rk3399_vpu_enc_fmts,
> > >         .num_enc_fmts = ARRAY_SIZE(rk3399_vpu_enc_fmts),
> > > -       .codec = RK_VPU_CODEC_JPEG,
> > > +       .codec = RK_VPU_JPEG_ENCODER,
> > >         .codec_ops = rk3399_vpu_codec_ops,
> > >         .vepu_irq = rk3399_vepu_irq,
> > >         .vdpu_irq = rk3399_vdpu_irq,
> > > diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
> > > index b383c89ecc17..a90fc2dfae99 100644
> > > --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
> > > +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu.h
> > > @@ -25,6 +25,7 @@
> > >
> > >  #include "rockchip_vpu_hw.h"
> > >
> > > +#define ROCKCHIP_VPU_MAX_CTRLS          32
> > >  #define ROCKCHIP_VPU_MAX_CLOCKS                4
> > >
> > >  #define JPEG_MB_DIM                    16
> > > @@ -34,7 +35,10 @@
> > >  struct rockchip_vpu_ctx;
> > >  struct rockchip_vpu_codec_ops;
> > >
> > > -#define RK_VPU_CODEC_JPEG BIT(0)
> > > +#define RK_VPU_JPEG_ENCODER    BIT(0)
> > > +#define RK_VPU_ENCODERS                0x0000ffff
> > > +
> > > +#define RK_VPU_DECODERS                0xffff0000
> > >
> > >  /**
> > >   * struct rockchip_vpu_variant - information about VPU hardware variant
> > > @@ -79,6 +83,20 @@ enum rockchip_vpu_codec_mode {
> > >         RK_VPU_MODE_JPEG_ENC,
> > >  };
> > >
> > > +/*
> > > + * struct rockchip_vpu_ctrl - helper type to declare supported controls
> > > + * @id:                V4L2 control ID (V4L2_CID_xxx)
> > > + * @is_std:    boolean to distinguish standard from customs control.
> > > + * @codec:     codec id this control belong to (RK_VPU_JPEG_ENCODER, etc.)
> > > + * @cfg:       control configuration
> > > + */
> > > +struct rockchip_vpu_ctrl {
> > > +       unsigned int id;
> > > +       unsigned int is_std;
> >
> > Perhaps is_custom would make more sense? I'd expect most, if not all,
> > of the controls to be standard. (Actually I wonder why the MPEG2
> > controls are not standard.)
> >
>
> Maybe is_std is misleading. The idea was just to distinguish
> controls that can be registered with v4l2_ctrl_new_std,
> from those that need v4l2_ctrl_new_custom, not because the control
> is non-standard, but because it takes a custom v4l2_ctrl_config.
>
> Maybe the is_std flag can be completely removed, and instead
> use cfg.elem_size to distinguish the two type of controls.
>

I see. Then I guess the flag makes sense, but perhaps it could be
inverted and renamed to "has_custom_cfg"?

Best regards,
Tomasz
