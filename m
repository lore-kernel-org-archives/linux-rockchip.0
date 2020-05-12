From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] pinctrl: rockchip: return ENOMEM instead of EINVAL if
 allocation fails
Date: Tue, 12 May 2020 15:19:48 +0200
Message-ID: <CACRpkda0cSqXLb0JaXvFY58rxkgStbCRC2QE9=CB8pMT6vA0GA@mail.gmail.com>
References: <20200506101424.15691-1-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-gpio-owner@vger.kernel.org>
In-Reply-To: <20200506101424.15691-1-dafna.hirschfeld@collabora.com>
Sender: linux-gpio-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, helen.koike@collabora.com, ezequiel@collabora.com, dafna3@gmail.com, kernel@collabora.com, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
List-Id: linux-rockchip.vger.kernel.org

On Wed, May 6, 2020 at 12:14 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:

> The function rockchip_pinctrl_parse_dt returns -EINVAL if
> allocation fails. Change the return error to -ENOMEM
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Patch applied withe Heiko's review tag, thanks!

Yours,
Linus Walleij
