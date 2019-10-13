From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 1/1] drm/rockchip: vop: add the definition of dclk_pol
Date: Mon, 14 Oct 2019 00:03:31 +0200
Message-ID: <1778208.Lq4l6xoKsQ@phil>
References: <20191010034452.20260-1-nickey.yang@rock-chips.com> <20191010034452.20260-2-nickey.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191010034452.20260-2-nickey.yang@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Nickey Yang <nickey.yang@rock-chips.com>
Cc: hjc@rock-chips.com, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, seanpaul@chromium.org, laurent.pinchart@ideasonboard.com
List-Id: linux-rockchip.vger.kernel.org

Am Donnerstag, 10. Oktober 2019, 05:44:52 CEST schrieb Nickey Yang:
> Some VOP's (such as px30) dclk_pol bit is at the last.
> So it is necessary to distinguish dclk_pol and pin_pol.
> 
> Signed-off-by: Nickey Yang <nickey.yang@rock-chips.com>

applied to drm-misc-next with Sandy's Reviewed-by

Thanks
Heiko
