From: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] pinctrl: rockchip: Replace HTTP links with HTTPS ones
Date: Fri, 17 Jul 2020 13:31:13 +0200
Message-ID: <CACRpkdY3woSgK5bAHxY6aEXe1Hx5Tpxa+0hyA4T_DiFOd5HjXw@mail.gmail.com>
References: <20200713183541.36963-1-grandmaster@al2klimov.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200713183541.36963-1-grandmaster@al2klimov.de>
Sender: linux-kernel-owner@vger.kernel.org
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Jul 13, 2020 at 8:35 PM Alexander A. Klimov
<grandmaster@al2klimov.de> wrote:

> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
>
> Deterministic algorithm:
> For each file:
>   If not .svg:
>     For each line:
>       If doesn't contain `\bxmlns\b`:
>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>           If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
>             If both the HTTP and HTTPS versions
>             return 200 OK and serve the same content:
>               Replace HTTP with HTTPS.
>
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>

Patch applied.

Yours,
Linus Walleij
