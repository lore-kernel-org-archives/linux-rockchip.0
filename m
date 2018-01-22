From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH 03/40] drm/rockchip: Respect page offset for PRIME mmap calls
Date: Mon, 22 Jan 2018 11:44:25 +0100
Message-ID: <2335179.Wol6YGBpGI@phil>
References: <20180115171614.14474-1-thierry.escande@collabora.com> <20180115171614.14474-4-thierry.escande@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20180115171614.14474-4-thierry.escande@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-rockchip@lists.infradead.org
Cc: Thierry Escande <thierry.escande@collabora.com>, Archit Taneja <architt@codeaurora.org>, Inki Dae <inki.dae@samsung.com>, Thierry Reding <thierry.reding@gmail.com>, Sandy Huang <hjc@rock-chips.com>, Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>, zain wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org, Tomasz Figa <tfiga@chromium.org>, Yakir Yang <ykk@rock-chips.com>, =?ISO-8859-1?Q?=D8rjan?= Eide <orjan.eide@arm.com>, Mark Yao <mark.yao@rock-chips.com>, Haixia Shi <hshi@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Am Montag, 15. Januar 2018, 18:15:37 CET schrieb Thierry Escande:
> From: Ørjan Eide <orjan.eide@arm.com>
> 
> When mapping external DMA-bufs through the PRIME mmap call, we might be
> given an offset which has to be respected. However for the internal DRM
> GEM mmap path, we have to ignore the fake mmap offset used to identify
> the buffer only. Currently the code always zeroes out vma->vm_pgoff,
> which breaks the former.
> 
> This patch fixes the problem by moving the vm_pgoff assignment to a
> function that is used only for GEM mmap path, so that the PRIME path
> retains the original offset.
> 
> Cc: Daniel Kurtz <djkurtz@chromium.org>
> Signed-off-by: Ørjan Eide <orjan.eide@arm.com>
> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> Signed-off-by: Thierry Escande <thierry.escande@collabora.com>

On rk3036 + lima and rk3328 + lima
Tested-by: Heiko Stuebner <heiko@sntech.de>
