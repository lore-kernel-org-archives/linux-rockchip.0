From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] pinctrl: rockchip: fix memleak in rockchip_dt_node_to_map
Date: Tue, 12 May 2020 19:46:13 +0200
Message-ID: <CACRpkdZ7QSNfMSm1NEFC9zbH8tkOieoPr39Fx3kzxgmER1cqAw@mail.gmail.com>
References: <20200506100903.15420-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20200506100903.15420-1-dafna.hirschfeld@collabora.com>
Sender: linux-gpio-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, helen.koike@collabora.com, ezequiel@collabora.com, dafna3@gmail.com, kernel@collabora.com, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

On Wed, May 6, 2020 at 12:09 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:

> In function rockchip_dt_node_to_map, a new_map variable is
> allocated by:
>
> new_map = devm_kcalloc(pctldev->dev, map_num, sizeof(*new_map),
>                        GFP_KERNEL);
>
> This uses devres and attaches new_map to the pinctrl driver.
> This cause a leak since new_map is not released when the probed
> driver is removed. Fix it by using kcalloc to allocate new_map
> and free it in `rockchip_dt_free_map`
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Patch applied.

Yours,
Linus Walleij
