From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH v2 0/7] drm/rockchip: switch to drm_mm for support arm64 iommu
Date: Thu, 09 Feb 2017 00:36:28 +0100
Message-ID: <4892535.e058iD2sG7@diego>
References: <1486456542-18675-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1486456542-18675-1-git-send-email-mark.yao@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>
Cc: David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 7. Februar 2017, 16:35:35 CET schrieb Mark Yao:
> Some iommu patches on the series[0] "iommu/rockchip: Fix bugs and
> enable on ARM64" already landed, So drm/rockchip related patches [1] and [2]
> ready to landed, this series just rebase them to lastest drm-next.
> 
> And fix some bugs for drm/rockchip drm_mm
> 
> [0]: http://www.spinics.net/lists/arm-kernel/msg513781.html
> [1]: https://patchwork.kernel.org/patch/9196367
> [2]: https://patchwork.kernel.org/patch/9196369

I've managed to get some output on my rk3399-gru with this series ;-)
and rk3288 also kept on working, so

On rk3288 and rk3399
Tested-by: Heiko Stuebner <heiko@sntech.de>
