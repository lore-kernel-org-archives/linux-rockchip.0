From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 02/40] drm/rockchip: support prime import sg table
Date: Mon, 22 Jan 2018 11:44:06 +0100
Message-ID: <1548424.6SePbG5DsY@phil>
References: <20180115171614.14474-1-thierry.escande@collabora.com> <20180115171614.14474-3-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180115171614.14474-3-thierry.escande@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: Thierry Escande <thierry.escande@collabora.com>, Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, zain wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org, Tomasz Figa <tfiga@chromium.org>, Yakir Yang <ykk@rock-chips.com>, =?ISO-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>, Mark Yao <mark.yao@rock-chips.com>, Haixia Shi <hshi@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 15. Januar 2018, 18:15:36 CET schrieb Thierry Escande:
> From: Haixia Shi <hshi@chromium.org>
> 
> The prime fd to handle ioctl was not used with rockchip before. Support
> was added in order to pass graphics_Gbm and to support potential uses
> within Chrome OS (e.g. zero-copy video decode, camera).
> 
> Signed-off-by: Haixia Shi <hshi@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Thierry Escande <thierry.escande@collabora.com>

On rk3036 + lima and rk3328 + lima
Tested-by: Heiko Stuebner <heiko@sntech.de>
