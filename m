From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH] pinctrl: rockchip: return ENOMEM instead of EINVAL if allocation fails
Date: Wed, 06 May 2020 12:51:29 +0200
Message-ID: <2632193.tXVvSI4HnL@diego>
References: <20200506101424.15691-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7Bit
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20200506101424.15691-1-dafna.hirschfeld@collabora.com>
Sender: linux-gpio-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, helen.koike@collabora.com, ezequiel@collabora.com, dafna3@gmail.com, kernel@collabora.com, linus.walleij@linaro.org
List-Id: linux-rockchip.vger.kernel.org

Am Mittwoch, 6. Mai 2020, 12:14:24 CEST schrieb Dafna Hirschfeld:
> The function rockchip_pinctrl_parse_dt returns -EINVAL if
> allocation fails. Change the return error to -ENOMEM
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>
