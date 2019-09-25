From: Ayan Halder <Ayan.Halder-5wv7dgnIgG8@public.gmane.org>
Subject: Re: [PATCH] drm/rockchip: Add AFBC support
Date: Wed, 25 Sep 2019 09:28:26 +0000
Message-ID: <20190925092824.GA21018@arm.com>
References: <20190923122014.18229-1-andrzej.p@collabora.com>
 <da7f0c5e-9ca9-020d-5366-2b21a42acdff@baylibre.com>
 <332335a5-dc7f-2cce-601f-f73e9243dee5@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <332335a5-dc7f-2cce-601f-f73e9243dee5-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Content-Language: en-US
Content-ID: <5495A5E01BDFF9419EECBCB110C451E4-R04qaBv3nuicE4WynfumptQqCkab/8FMAL8bYrjMMd8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Andrzej Pietrasiewicz <andrzej.p-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: nd <nd-5wv7dgnIgG8@public.gmane.org>, Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Neil Armstrong <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, Sean Paul <sean-p7yTbzM4H96eqtR555YLDQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org" <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Maxime Ripard <mripard-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, "linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Sep 23, 2019 at 05:34:14PM +0200, Andrzej Pietrasiewicz wrote:
> Dear All,
> =

> As a result of my mistake I've sent this patch with an incorrect SOB chai=
n.
> Please kindly disregard this patch.
> =

> @Neil: thank you for your time you spent reviewing it and answering and I=
'm
> sorry it's to no effect.
> @Ezequiel, @Tomeu: I apologize to you. My mistake.
> =

> Regards,
> =

> Andrzej Pietrasiewicz
> =

> =

> W dniu 23.09.2019 o=A015:53, Neil Armstrong pisze:
> >On 23/09/2019 14:20, Andrzej Pietrasiewicz wrote:
> >>From: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> >>
> >>AFBC is a proprietary lossless image compression protocol and format.
> >>It helps reduce memory bandwidth of the graphics pipeline operations.
> >>This, in turn, improves power efficiency.
> >>
> >>Signed-off-by: Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> >>[locking improvements]
> >>Signed-off-by: Tomeu Vizoso <tomeu.vizoso-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> >>[squashing the above, commit message and Rockchip AFBC modifier]
> >>Signed-off-by: Andrzej Pietrasiewicz <andrzej.p-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> >>---
> >>  drivers/gpu/drm/rockchip/rockchip_drm_fb.c  | 27 ++++++
> >>  drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 94 ++++++++++++++++++++-
> >>  drivers/gpu/drm/rockchip/rockchip_drm_vop.h | 12 +++
> >>  drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 18 ++++
> >>  include/uapi/drm/drm_fourcc.h               |  3 +
> >>  5 files changed, 151 insertions(+), 3 deletions(-)
> >>
> >
> >[...]
> >
> >>diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourc=
c.h
> >>index 3feeaa3f987a..ba6caf06c824 100644
> >>--- a/include/uapi/drm/drm_fourcc.h
> >>+++ b/include/uapi/drm/drm_fourcc.h
> >>@@ -742,6 +742,9 @@ extern "C" {
> >>   */
> >>  #define AFBC_FORMAT_MOD_BCH     (1ULL << 11)
> >>+#define AFBC_FORMAT_MOD_ROCKCHIP \
> >>+	(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16 | AFBC_FORMAT_MOD_SPARSE)
> >
> >This define looks useless, what's Rockchip specific here ?
> >
Please reuse the existing AFBC modifiers.

Have a look at malidp_format_modifiers[] in which we have defined
the modifiers(for our driver) we are using.

In your case, it will be
DRM_FORMAT_MOD_ARM_AFBC(AFBC_FORMAT_MOD_BLOCK_SIZE_16x16|AFBC_FORMAT_MOD_SP=
ARSE)

> >Neil
> >
> >>+
> >>  /*
> >>   * Allwinner tiled modifier
> >>   *
> >>
> >
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel
