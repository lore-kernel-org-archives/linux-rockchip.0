From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume static
Date: Mon, 27 Apr 2020 21:18:37 +0200
Message-ID: <158801509401.47920.2598441742545466292.b4-ty@sntech.de>
References: <20200426161653.7710-1-enric.balletbo@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200426161653.7710-1-enric.balletbo@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-kernel@vger.kernel.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, Collabora Kernel ML <kernel@collabora.com>, David Airlie <airlied@linux.ie>, Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

On Sun, 26 Apr 2020 18:16:53 +0200, Enric Balletbo i Serra wrote:
> This fixes the following warning detected when running make with W=1
> 
>     drivers/gpu/drm/rockchip//cdn-dp-core.c:1112:5: warning: no previous
>     prototype for ‘cdn_dp_suspend’ [-Wmissing-prototypes]
> 
>     drivers/gpu/drm/rockchip//cdn-dp-core.c:1126:5: warning: no previous
>     prototype for ‘cdn_dp_resume’ [-Wmissing-prototypes]
> 
> [...]

Applied, thanks!

[1/1] drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume static
      commit: 7c49abb4c2f8853520abc05b7f7e8b751fbb3086

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
