From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH -next] phy: rockchip-typec: Make usb3_pll_cfg and dp_pll_cfg static
Date: Tue, 19 Mar 2019 16:40:35 +0100
Message-ID: <9533465.g4Uc9Oev60@diego>
References: <20190319153028.22452-1-yuehaibing@huawei.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20190319153028.22452-1-yuehaibing@huawei.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Yue Haibing <yuehaibing@huawei.com>
Cc: kishon@ti.com, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 19. März 2019, 16:30:28 CET schrieb Yue Haibing:
> From: YueHaibing <yuehaibing@huawei.com>
> 
> Fix sparse warning:
> 
> drivers/phy/rockchip/phy-rockchip-typec.c:403:16: warning: symbol 'usb3_pll_cfg' was not declared. Should it be static?
> drivers/phy/rockchip/phy-rockchip-typec.c:420:16: warning: symbol 'dp_pll_cfg' was not declared. Should it be static?
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

looks good,
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
