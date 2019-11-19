From: "james qian wang (Arm Technology China)" <james.qian.wang-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCHv2 3/4] drm/komeda: use afbc helpers
Date: Tue, 19 Nov 2019 08:34:36 +0000
Message-ID: <20191119083429.GA2881@jamwan02-TSP300>
References: <2485717.1SzL54aMiy@e123338-lin>
 <20191104221228.3588-1-andrzej.p@collabora.com>
 <20191104221228.3588-4-andrzej.p@collabora.com>
 <20191108160954.GA17321@arm.com> <20191113020146.GB2746@jamwan02-TSP300>
 <20191113113954.GN23790@phenom.ffwll.local>
 <20191114015220.GA16456@jamwan02-TSP300>
 <CAKMK7uH06iu9OTz-1ZTbv6oVBHtBojSQE6sUu1GWfWk1om8LQQ@mail.gmail.com>
 <20191118070949.GA27075@jamwan02-TSP300>
 <20191118095136.GC23790@phenom.ffwll.local>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <20191118095136.GC23790-dv86pmgwkMBes7Z6vYuT8azUEOm+Xw19@public.gmane.org>
Content-Language: en-US
Content-ID: <205D95BD016D564090D9ED0429C1BAF5-R04qaBv3nuicE4WynfumptQqCkab/8FMAL8bYrjMMd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Daniel Vetter <daniel-/w4YWyX8dFk@public.gmane.org>
Cc: nd <nd-5wv7dgnIgG8@public.gmane.org>, Mihail Atanassov <Mihail.Atanassov-5wv7dgnIgG8@public.gmane.org>, "kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, =?iso-8859-1?Q?Heiko_St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Liviu Dudau <Liviu.Dudau-5wv7dgnIgG8@public.gmane.org>, Maarten Lankhorst <maarten.lankhorst-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Sandy Huang <hjc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Maxime Ripard <mripard-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrzej Pietrasiewicz <andrzej.p-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org" <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, Ayan Halder <Ayan.Halder-5wv7dgnIgG8@public.gmane.org>, Sean Paul <sean-p7yTbzM4H96eqtR555YLDQ@public.gmane.org>, Brian Starkey <Brian.Starkey-5wv7dgnIgG8@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Nov 18, 2019 at 10:51:36AM +0100, Daniel Vetter wrote:
> On Mon, Nov 18, 2019 at 07:09:56AM +0000, james qian wang (Arm Technology China) wrote:
> > On Thu, Nov 14, 2019 at 11:12:13AM +0100, Daniel Vetter wrote:
> > > On Thu, Nov 14, 2019 at 2:52 AM james qian wang (Arm Technology China)
> > > <james.qian.wang-5wv7dgnIgG8@public.gmane.org> wrote:
> > > > On Wed, Nov 13, 2019 at 12:39:54PM +0100, Daniel Vetter wrote:
> > > > > On Wed, Nov 13, 2019 at 02:01:53AM +0000, james qian wang (Arm Technology China) wrote:
> > > > > > On Fri, Nov 08, 2019 at 04:09:54PM +0000, Ayan Halder wrote:
> > > > > > > On Mon, Nov 04, 2019 at 11:12:27PM +0100, Andrzej Pietrasiewicz wrote:
> > > > > > > > There are afbc helpers available.
> > > > > > > >
> > > > > > > > Signed-off-by: Andrzej Pietrasiewicz <andrzej.p-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> > > > > > > > ---
> > > > > > > >  .../arm/display/komeda/komeda_format_caps.h   |  1 -
> > > > > > > >  .../arm/display/komeda/komeda_framebuffer.c   | 44 +++++++------------
> > > > > > > >  2 files changed, 17 insertions(+), 28 deletions(-)
> > > > > > > >
> > > > > > > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > > > > index 32273cf18f7c..607eea80e60c 100644
> > > > > > > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > > > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_format_caps.h
> > > > > > > > @@ -33,7 +33,6 @@
> > > > > > > >
> > > > > > > >  #define AFBC_TH_LAYOUT_ALIGNMENT       8
> > > > > > > >  #define AFBC_HEADER_SIZE               16
> > > > > > > > -#define AFBC_SUPERBLK_ALIGNMENT                128
> > > > > > > >  #define AFBC_SUPERBLK_PIXELS           256
> > > > > > > >  #define AFBC_BODY_START_ALIGNMENT      1024
> > > > > > > >  #define AFBC_TH_BODY_START_ALIGNMENT   4096
> > > > > > > > diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > > > > index 1b01a625f40e..e9c87551a5b8 100644
> > > > > > > > --- a/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > > > > +++ b/drivers/gpu/drm/arm/display/komeda/komeda_framebuffer.c
> > > > > > > > @@ -4,6 +4,7 @@
> > > > > > > >   * Author: James.Qian.Wang <james.qian.wang-5wv7dgnIgG8@public.gmane.org>
> > > > > > > >   *
> > > > > > > >   */
> > > > > > > > +#include <drm/drm_afbc.h>
> > > > > > > >  #include <drm/drm_device.h>
> > > > > > > >  #include <drm/drm_fb_cma_helper.h>
> > > > > > > >  #include <drm/drm_gem.h>
> > > > > > > > @@ -43,8 +44,7 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > > > > >         struct drm_framebuffer *fb = &kfb->base;
> > > > > > > >         const struct drm_format_info *info = fb->format;
> > > > > > > >         struct drm_gem_object *obj;
> > > > > > > > -       u32 alignment_w = 0, alignment_h = 0, alignment_header, n_blocks, bpp;
> > > > > > > > -       u64 min_size;
> > > > > > > > +       u32 alignment_w = 0, alignment_h = 0, alignment_header, bpp;
> > > > > > > >
> > > > > > > >         obj = drm_gem_object_lookup(file, mode_cmd->handles[0]);
> > > > > > > >         if (!obj) {
> > > > > > > > @@ -52,19 +52,15 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > > > > >                 return -ENOENT;
> > > > > > > >         }
> > > > > > > >
> > > > > > > > -       switch (fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK) {
> > > > > > > > -       case AFBC_FORMAT_MOD_BLOCK_SIZE_32x8:
> > > > > > > > -               alignment_w = 32;
> > > > > > > > -               alignment_h = 8;
> > > > > > > > -               break;
> > > > > > > > -       case AFBC_FORMAT_MOD_BLOCK_SIZE_16x16:
> > > > > > > > -               alignment_w = 16;
> > > > > > > > -               alignment_h = 16;
> > > > > > > > -               break;
> > > > > > > > -       default:
> > > > > > > > -               WARN(1, "Invalid AFBC_FORMAT_MOD_BLOCK_SIZE: %lld.\n",
> > > > > > > > -                    fb->modifier & AFBC_FORMAT_MOD_BLOCK_SIZE_MASK);
> > > > > > > > -               break;
> > > > > > > > +       if (!drm_afbc_get_superblk_wh(fb->modifier, &alignment_w, &alignment_h))
> > > > > > > > +               return -EINVAL;
> > > > > > > > +
> > > > > > > > +       if ((alignment_w != 16 || alignment_h != 16) &&
> > > > > > > > +           (alignment_w != 32 || alignment_h != 8)) {
> > > > > > > > +               DRM_DEBUG_KMS("Unsupported afbc tile w/h [%d/%d]\n",
> > > > > > > > +                             alignment_w, alignment_h);
> > > > > > > > +
> > > > > > > > +               return -EINVAL;
> > > > > > > To be honest, the previous code looks much more readable
> > > > > > > >         }
> > > > > > > >
> > > > > > > >         /* tiled header afbc */
> > > > > > > > @@ -84,20 +80,14 @@ komeda_fb_afbc_size_check(struct komeda_fb *kfb, struct drm_file *file,
> > > > > > > >                 goto check_failed;
> > > > > > > >         }
> > > > > > > >
> > > > > > > > -       n_blocks = (kfb->aligned_w * kfb->aligned_h) / AFBC_SUPERBLK_PIXELS;
> > > > > > > > -       kfb->offset_payload = ALIGN(n_blocks * AFBC_HEADER_SIZE,
> > > > > > > > -                                   alignment_header);
> > > > > > > > -
> > > > > > > >         bpp = komeda_get_afbc_format_bpp(info, fb->modifier);
> > > > > > > > -       kfb->afbc_size = kfb->offset_payload + n_blocks *
> > > > > > > > -                        ALIGN(bpp * AFBC_SUPERBLK_PIXELS / 8,
> > > > > > > > -                              AFBC_SUPERBLK_ALIGNMENT);
> > > > > > > > -       min_size = kfb->afbc_size + fb->offsets[0];
> > > > > > > > -       if (min_size > obj->size) {
> > > > > > > > -               DRM_DEBUG_KMS("afbc size check failed, obj_size: 0x%zx. min_size 0x%llx.\n",
> > > > > > > > -                             obj->size, min_size);
> > > > > > > We need kfb->offset_payload and kfb->afbc_size to set some registers
> > > > > > > in d71_layer_update(). At this moment I feel like punching myself for
> > > > > > > making the suggestion to consider abstracting some of the komeda's afbc
> > > > > > > checks. To me it does not look like komeda(in the current shape) can take
> > > > > > > much advantage of the generic _afbc_fb_check() function (as was suggested
> > > > > > > previously by Danvet).
> > > > > > >
> > > > > > > However, I will let james.qian.wang-5wv7dgnIgG8@public.gmane.org,
> > > > > > > Mihail.Atanassov-5wv7dgnIgG8@public.gmane.org, Ben.Davis-5wv7dgnIgG8@public.gmane.org comment here to see if
> > > > > > > there could be a way of abstracting the afbc bits from komeda.
> > > > > > >
> > > > > >
> > > > > > Hi all:
> > > > > >
> > > > > > Since the current generic drm_afbc helpers only support afbc_1.1, but
> > > > > > komeda needs support both afbc1.1/1.2, so I think we can:
> > > > > > - Add afbc1.2 support to drm afbc helpers.
> > > > > > - for the afbc_payload_offset, can we add this member to
> > > > > >   drm_framebuffer ?
> > > > > > - The aligned_w/h are important for afbc, so can we have them in
> > > > > >   drm_framebuffer ?
> > > > >
> > > > > How expensive is it to recompute these from a struct drm_framebuffer?
> > > > >
> > > > > I'd just go with one function which computes all these derived values, and
> > > > > stuffs them into a struct drm_afbc. Then drivers call that once or so.
> > > > >
> > > >
> > > > A struct drm_afbc, good idea, I like it. :-)
> > > >
> > > > and we can compute it when do the afbc size check like
> > > >
> > > >   drm_afbc_check_fb_size(..., &komeda_fb->drm_afbc);
> > > 
> > > Discussed this also with Andrzej on irc on where exactly to place
> > > stuff. I think ideally we'd be able to get rid of the custom
> > > malidp_fb_create completely, and komeda should also be able to get rid
> > > of most of the open-coded checks (it's largely reinveting
> > > drm_gem_fb_create_with_funcs, imo better to just call that first, then
> > > then do a few more calls of the specific things you need to have
> > > computed in addition).
> > > -Daniel
> > 
> > The afbc support is the only reason why malidp/komeda define our own
> > fb_create(), it is good for komeda and malidp if we put afbc support
> > directly into the standard drm_gem_fb_create_with_funcs.
> > 
> > BTW:
> > 
> > can we add one more argument: fb_struct_size to
> > 
> >   drm_gem_fb_create_with_funcs(..., size_t fb_struct_size);
> > 
> > then driver can use it to extend its own fb struct and add some private
> > infos.
> 
> Hm, this isn't how we usually do it for subclassing - the trouble with
> this is that the size of the allocation is very far away from where we
> actually allocate, automated checkers have a harder time with this
> pattern.
> 
> Usually what we do is split the kzalloc out from the _create function,
> leaving just _init behind. Then you have roughly (pseudo-code):
> 
> 	drm_gem_fb_create_with_funcs(args) {
> 		struct drm_gem_fb *fb;
> 
> 		fb = kzalloc(sizeof(*fb));
> 		if (!fb)
> 			return -ENOMEM;
> 
> 		return drm_gem_fb_init_with_functions(fb, args);
> 	}
> 
> If you then need a bigger function, you just allocate that bigger
> function, and pass &fb->base to the _init function. Costs 3 additional
> lines (for the kzalloc and error checking), but easier to read&verify for
> both humans and compilers.
> 
> I guess what we could then do is create a drm_gem_afbc_create function
> which sets this all up for a
> 
> struct drm_gem_afbc_framebuffer {
> 	struct drm_gem_framebuffer base;
> 	/* afbc stuff */
> };
> 
> and then also fills out all derived afbc values, so more than just
> calling drm_gem_fb_init_with_functions. And drivers could still have their
> own version with even more checks on top.
> 
> And all afbc supporting drivers could then use that. Feels a bit like
> overengineering to me, but if you feel like that's justified to do it's a
> good solution.

Hi Daniel:

This solution looks good, it can fit all our requirement.

Thanks
James.

> Cheers, Daniel
> > 
> > Thanks
> > James
> > > >
> > > > Thanks.
> > > > James
> > > >
> > > > > For reworking drm_framebuffer itself I think it's probably a bit too
> > > > > earlier. And if we do it, we should maybe go a bit more bold, aiming to
> > > > > property-fy all the framebuffer settings, maybe even making it extensible,
> > > > > and have drivers handle a corresponding drm_framebuffer_state.
> > > > >
> > > > > A third option would be to create a drm_afbc_framebuffer which embeds
> > > > > drm_framebuffer and which drivers would need to use. But also feels a bit
> > > > > like too much churn. Recomputing should be quick enough and much easier.
> > > > > -Daniel
> > > > >
> > > > > >
> > > > > > Thanks
> > > > > > James
> > > > > >
> > > > > > > Thanks anyways for taking a stab at this.
> > > > > > > -Ayan
> > > > > > > > +
> > > > > > > > +       if (!drm_afbc_check_fb_size(mode_cmd->pitches[0], bpp,
> > > > > > > > +                                   mode_cmd->width, mode_cmd->height,
> > > > > > > > +                                   alignment_w, alignment_h,
> > > > > > > > +                                   obj->size, mode_cmd->offsets[0],
> > > > > > > > +                                   AFBC_SUPERBLK_ALIGNMENT))
> > > > > > > >                 goto check_failed;
> > > > > > > > -       }
> > > > > > > >
> > > > > > > >         fb->obj[0] = obj;
> > > > > > > >         return 0;
> > > > > > > > --
> > > > > > > > 2.17.1
> > > > >
> > > > > --
> > > > > Daniel Vetter
> > > > > Software Engineer, Intel Corporation
> > > > > http://blog.ffwll.ch
> > > 
> > > 
> > > 
> > > -- 
> > > Daniel Vetter
> > > Software Engineer, Intel Corporation
> > > +41 (0) 79 365 57 48 - http://blog.ffwll.ch
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> http://blog.ffwll.ch
