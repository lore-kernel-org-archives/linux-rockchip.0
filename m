From: Sandy Huang <sandy.huang@rock-chips.com>
Subject: Re: [PATCH 1/6] drm/rockchip: vop: no need wait vblank on crtc enable
Date: Thu, 3 Aug 2017 20:36:49 +0800
Message-ID: <69cdfbce-d6ab-56d9-2514-243cfa7e42ee@rock-chips.com>
References: <1501494569-6825-1-git-send-email-mark.yao@rock-chips.com>
 <1501494577-6884-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1501494577-6884-1-git-send-email-mark.yao@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi mark,

在 2017/7/31 17:49, Mark Yao 写道:
> Since atomic framework, crtc enable and disable are in pairs,
> no need to wait vblank.
> 
> Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
> ---
>   drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 36 -----------------------------
>   1 file changed, 36 deletions(-)
> 

Reviewed-by: Sandy huang <sandy.huang@rock-chips.com>
