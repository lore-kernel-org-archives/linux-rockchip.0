From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: psr: do not dereference encoder before it is null checked.
Date: Tue, 16 Oct 2018 15:00:20 +0200
Message-ID: <6610441.t0YFBFda2e@phil>
References: <20181013105654.11827-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20181013105654.11827-1-enric.balletbo@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc: David Airlie <airlied@linux.ie>, kernel@collabora.com, linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Samstag, 13. Oktober 2018, 12:56:54 CEST schrieb Enric Balletbo i Serra:
> 'encoder' is deferenced before it is null sanity checked, hence we
> potentially have a null pointer dereference bug. Instead, initialise
> drm_drv from encoder->dev->dev_private after we are sure 'encoder' is
> not null.
> 
> Fixes: 5182c1a556d7f ("drm/rockchip: add an common abstracted PSR driver")
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>

added a stable-tag and applied to drm-misc-next

Thanks
Heiko
