From: Sean Paul <sean@poorly.run>
Subject: Re: [PATCH 0/2] add new DRM_DEV_WARN macro
Date: Mon, 18 Nov 2019 14:24:50 -0500
Message-ID: <20191118192450.GA135013@art_vandelay>
References: <20191114132436.7232-1-wambui.karugax@gmail.com>
 <8736ep1hm2.fsf@intel.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <8736ep1hm2.fsf@intel.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Wambui Karuga <wambui.karugax@gmail.com>, maarten.lankhorst@linux.intel.com, mripard@kernel.org, sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch, hjc@rock-chips.com, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Nov 15, 2019 at 01:52:53PM +0200, Jani Nikula wrote:
> On Thu, 14 Nov 2019, Wambui Karuga <wambui.karugax@gmail.com> wrote:
> > This adds a new DRM_DEV_WARN helper macro for warnings log output that include
> > device pointers. It also includes the use of the DRM_DEV_WARN macro in
> > drm/rockchip to replace dev_warn.
> 
> I'm trying to solicit new struct drm_device based logging macros, and
> starting to convert to those. [1]
> 

This sounds good to me, I'd much prefer the non-caps versions of these
functions. So let's wait for those to bubble up and then convert rockchip to
drm_dev_*

Sean

> BR,
> Jani.
> 
> 
> [1] http://patchwork.freedesktop.org/patch/msgid/63d1e72b99e9c13ee5b1b362a653ff9c21e19124.1572258936.git.jani.nikula@intel.com
> 
> 
> 
> 
> >
> > Wambui Karuga (2):
> >   drm/print: add DRM_DEV_WARN macro
> >   drm/rockchip: use DRM_DEV_WARN macro in debug output
> >
> >  drivers/gpu/drm/rockchip/inno_hdmi.c | 3 ++-
> >  include/drm/drm_print.h              | 9 +++++++++
> >  2 files changed, 11 insertions(+), 1 deletion(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Sean Paul, Software Engineer, Google / Chromium OS
