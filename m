From: Brian Norris <briannorris@chromium.org>
Subject: Re: [PATCH v2] drm/rockchip: shutdown drm subsystem on shutdown
Date: Thu, 11 Apr 2019 18:54:04 -0700
Message-ID: <CA+ASDXMRU_krasnMi3Z7ctwu3Pvza9hbLyOg6qNP7YJ5zRLVbw@mail.gmail.com>
References: <20190402113753.10118-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <stable-owner@vger.kernel.org>
In-Reply-To: <20190402113753.10118-1-heiko@sntech.de>
Sender: stable-owner@vger.kernel.org
To: Heiko Stuebner <heiko@sntech.de>
Cc: Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Vicente Bergas <vicencb@gmail.com>, Jeffy Chen <jeffy.chen@rock-chips.com>, Robin Murphy <robin.murphy@arm.com>, Marc Zyngier <marc.zyngier@arm.com>, Doug Anderson <dianders@chromium.org>, stable <stable@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

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

Works without complaints on RK3399 Scarlet devices:

Tested-by: Brian Norris <briannorris@chromium.org>

Can't vouch for kexec.
