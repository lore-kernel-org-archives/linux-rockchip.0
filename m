From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [PATCH] drm: sysfs: Add to get current mode
Date: Wed, 5 Aug 2020 11:36:42 +0200
Message-ID: <CAKMK7uGmKJqZJ0ONQjjquZn6mksKbkScmcUSEA43eg1jFskmTg@mail.gmail.com>
References: <20200805083646.4123-1-hjc@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200805083646.4123-1-hjc@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Sandy Huang <hjc@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Tao Huang <huangtao@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, dri-devel <dri-devel@lists.freedesktop.org>, Kever Yang <kever.yang@rock-chips.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Aug 5, 2020 at 10:37 AM Sandy Huang <hjc@rock-chips.com> wrote:
>
> add this node to get the current true mode.
>
> Signed-off-by: Sandy Huang <hjc@rock-chips.com>

Uh what's this for? Since it's sysfs, I guess there's something
parsing this, which means we'd kinda need to have that piece too.

If it's just for debugging purposes, then we already have this
information in debugfs, together with everything else that's in the
atomic modeset state.
-Daniel

> ---
>  drivers/gpu/drm/drm_sysfs.c | 30 ++++++++++++++++++++++++++++++
>  1 file changed, 30 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
> index 939f0032aab1..f39bcd34853b 100644
> --- a/drivers/gpu/drm/drm_sysfs.c
> +++ b/drivers/gpu/drm/drm_sysfs.c
> @@ -19,6 +19,7 @@
>  #include <linux/slab.h>
>
>  #include <drm/drm_connector.h>
> +#include <drm/drm_crtc.h>
>  #include <drm/drm_device.h>
>  #include <drm/drm_file.h>
>  #include <drm/drm_modes.h>
> @@ -236,16 +237,45 @@ static ssize_t modes_show(struct device *device,
>         return written;
>  }
>
> +static ssize_t current_mode_show(struct device *device,
> +                     struct device_attribute *attr,
> +                     char *buf)
> +{
> +       struct drm_connector *connector = to_drm_connector(device);
> +       struct drm_display_mode *mode;
> +       struct drm_crtc_state *crtc_state;
> +       bool interlaced;
> +       int written = 0;
> +
> +       if (!connector->state || !connector->state->crtc)
> +               return written;
> +
> +       crtc_state = connector->state->crtc->state;
> +       if (!crtc_state)
> +               return written;
> +
> +       mode = &crtc_state->mode;
> +
> +       interlaced = !!(mode->flags & DRM_MODE_FLAG_INTERLACE);
> +       written += snprintf(buf + written, PAGE_SIZE - written, "%dx%d%s%d\n",
> +                           mode->hdisplay, mode->vdisplay,
> +                           interlaced ? "i" : "p", drm_mode_vrefresh(mode));
> +
> +       return written;
> +}
> +
>  static DEVICE_ATTR_RW(status);
>  static DEVICE_ATTR_RO(enabled);
>  static DEVICE_ATTR_RO(dpms);
>  static DEVICE_ATTR_RO(modes);
> +static DEVICE_ATTR_RO(current_mode);
>
>  static struct attribute *connector_dev_attrs[] = {
>         &dev_attr_status.attr,
>         &dev_attr_enabled.attr,
>         &dev_attr_dpms.attr,
>         &dev_attr_modes.attr,
> +       &dev_attr_current_mode.attr,
>         NULL
>  };
>
> --
> 2.17.1
>
>
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
