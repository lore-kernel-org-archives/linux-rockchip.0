From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v2] drm/rockchip: shutdown drm subsystem on shutdown
Date: Fri, 12 Apr 2019 10:43:24 -0700
Message-ID: <CAD=FV=WYLtRqHvqDCx4Yy7gp_AEjAXtTbPzZnqTGKZBoXwCa0Q@mail.gmail.com>
References: <20190402113753.10118-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20190402113753.10118-1-heiko@sntech.de>
Sender: stable-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, dri-devel <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Vicente Bergas <vicencb@gmail.com>, Jeffy Chen <jeffy.chen@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <marc.zyngier@arm.com>, Brian Norris <briannorris@chromium.org>, Doug Anderson <dianders@chromium.org>, stable@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Apr 2, 2019 at 4:38 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> From: Vicente Bergas <vicencb@gmail.com>
>
> As explained by Robin Murphy:
> > the IOMMU shutdown disables paging, so if the VOP is still
> > scanning out then that will result in whatever IOVAs it was using now going
> > straight out onto the bus as physical addresses.
>
> We had a more radical approach before in commit
> 7f3ef5dedb14 ("drm/rockchip: Allow driver to be shutdown on reboot/kexec")
> but that resulted in new warnings and oopses on shutdown on rk3399
> chromeos devices.
>
> So second try is resurrecting Vicentes shutdown change which should
> achieve the same result but in a less drastic way.
>
> Fixes: 63238173b2fa ("Revert drm/rockchip: Allow driver to be shutdown on reboot/kexec")
> Cc: Jeffy Chen <jeffy.chen@rock-chips.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Cc: Marc Zyngier <marc.zyngier@arm.com>
> Cc: Brian Norris <briannorris@chromium.org>
> Cc: Doug Anderson <dianders@chromium.org>
> Cc: stable@vger.kernel.org
> Suggested-by: JeffyChen <jeffy.chen@rock-chips.com>
> Suggested-by: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> [adapted commit message to explain the history]
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

I picked this back to the Chrome OS 4.19 kernel and tried it on
rk3288-veyron-jerry.  Rebooting caused no complaints (I confirmed this
code was running by adding a printk).

I plugged in to an HDMI monitor.  Rebooting caused no complaints.

I then let the display idle off (just in case that mattered).  Again
no complaints.

Thus, in case it's helpful:

Tested-by: Douglas Anderson <dianders@chromium.org>
