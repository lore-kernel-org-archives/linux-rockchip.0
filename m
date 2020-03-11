From: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] drm/rockchip: rgb: don't count non-existent devices when determining subdrivers
Date: Wed, 11 Mar 2020 10:00:45 +0100
Message-ID: <2624804.tm1DkxDElZ@phil>
References: <20200121224828.4070067-1-heiko@sntech.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200121224828.4070067-1-heiko@sntech.de>
Sender: linux-kernel-owner@vger.kernel.org
To: hjc@rock-chips.com
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, miquel.raynal@bootlin.com, christoph.muellner@theobroma-systems.com
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 21. Januar 2020, 23:48:28 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> rockchip_drm_endpoint_is_subdriver() may also return error codes.
> For example if the target-node is in the disabled state, so no
> platform-device is getting created for it.
> 
> In that case current code would count that as external rgb device,
> which in turn would make probing the rockchip-drm device fail.
> 
> So only count the target as rgb device if the function actually
> returns 0.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

applied to drm-misc-next
