From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] pinctrl: rockchip: fix memleak in rockchip_dt_node_to_map
Date: Wed, 06 May 2020 12:57:41 +0200
Message-ID: <12037872.zK0gPHFAvL@diego>
References: <20200506100903.15420-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20200506100903.15420-1-dafna.hirschfeld@collabora.com>
Sender: linux-gpio-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, helen.koike@collabora.com, ezequiel@collabora.com, dafna3@gmail.com, kernel@collabora.com, linus.walleij@linaro.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 6. Mai 2020, 12:09:03 CEST schrieb Dafna Hirschfeld:
> In function rockchip_dt_node_to_map, a new_map variable is
> allocated by:
> 
> new_map = devm_kcalloc(pctldev->dev, map_num, sizeof(*new_map),
> 		       GFP_KERNEL);
> 
> This uses devres and attaches new_map to the pinctrl driver.
> This cause a leak since new_map is not released when the probed
> driver is removed. Fix it by using kcalloc to allocate new_map
> and free it in `rockchip_dt_free_map`
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
