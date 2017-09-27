From: Sean Paul <seanpaul@chromium.org>
Subject: Re: [PATCH v2 1/8] drm/rockchip/dsi: correct Feedback divider setting
Date: Wed, 27 Sep 2017 15:51:42 -0400
Message-ID: <20170927195142.mp74x3skue4sfbmm@art_vandelay>
References: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <1506412523-1766-1-git-send-email-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nickey Yang <nickey.yang@rock-chips.com>
Cc: mark.yao@rock-chips.com, robh+dt@kernel.org, heiko@sntech.de, mark.rutland@arm.com, airlied@linux.ie, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, briannorris@chromium.org, hl@rock-chips.com, zyw@rock-chips.com, bivvy.bi@rock-chips.com, xbl@rock-chips.com
List-Id: linux-rockchip.vger.kernel.org

On Tue, Sep 26, 2017 at 03:55:16PM +0800, Nickey Yang wrote:
> This patch correct Feedback divider setting:
> 1、Set Feedback divider [8:5] when HIGH_PROGRAM_EN
> 2、Due to the use of a "by 2 pre-scaler," the range of the
> feedback multiplication Feedback divider is limited to even
> division numbers, and Feedback divider must be greater than
> 12, less than 1000.
> 3、Make the previously configured Feedback divider(LSB)
> factors effective
> 4、Add the definition of the MIPI PHY register.
> 
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>
> ---

Can you please add a changelog to your patches so it's easy to see what's
changed?

Thanks!

Sean

>  drivers/gpu/drm/rockchip/dw-mipi-dsi.c | 219 ++++++++++++++++++++++-----------
>  1 file changed, 146 insertions(+), 73 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi.c
> index 9a20b9d..c933a3a 100644

<snip>

> -- 
> 1.9.1
> 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
